(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:4>[1]#_g32650_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop$<MOP:4>[1]#typedef-body?|
      (lambda (_stx29593_)
        (letrec ((_body-opt?29596_
                  (lambda (_key29599_)
                    (memq (gx#stx-e _key29599_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx29593_ _body-opt?29596_))))
    (define |gerbil/core/mop$<MOP:4>[1]#generate-defclass|
      (lambda (_stx27377_ _id27379_ _super-ref27380_ _slots27381_ _body27382_)
        (letrec* ((_wrap27384_
                   (lambda (_e-stx29590_)
                     (gx#stx-wrap-source
                      _e-stx29590_
                      (gx#stx-source _stx27377_))))
                  (_make-id27386_
                   (if (uninterned-symbol? (gx#stx-e _id27379_))
                       (lambda _g32383_ (gx#genident _id27379_))
                       (lambda _args29587_
                         (apply gx#stx-identifier _id27379_ _args29587_))))
                  (_get-mixin-slots27387_
                   (lambda (_super29561_ _slots29563_)
                     (letrec* ((_tab29565_ (make-hash-table-eq))
                               (_dedup29567_
                                (lambda (_mixins29572_)
                                  (let _lp29575_ ((_rest29578_ _mixins29572_)
                                                  (_r29580_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest29578_))
                                        (let ((_slot29582_ (car _rest29578_)))
                                          (if (hash-get _tab29565_ _slot29582_)
                                              (let ((__tmp32384
                                                     (cdr _rest29578_)))
                                                (declare (not safe))
                                                (_lp29575_
                                                 __tmp32384
                                                 _r29580_))
                                              (begin
                                                (hash-put!
                                                 _tab29565_
                                                 _slot29582_
                                                 '#t)
                                                (let ((__tmp32386
                                                       (cdr _rest29578_))
                                                      (__tmp32385
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot29582_
                                                               _r29580_))))
                                                  (declare (not safe))
                                                  (_lp29575_
                                                   __tmp32386
                                                   __tmp32385)))))
                                        (reverse _r29580_))))))
                       (gx#stx-for-each
                        (lambda (_slot29569_)
                          (hash-put! _tab29565_ (gx#stx-e _slot29569_) '#t))
                        _slots29563_)
                       (if (let () (declare (not safe)) (not _super29561_))
                           '()
                           (if (gx#identifier? _super29561_)
                               (let ((__tmp32387
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r27388_
                                         _super29561_))))
                                 (declare (not safe))
                                 (_dedup29567_ __tmp32387))
                               (let ((__tmp32388
                                      (concatenate
                                       (map _get-mixin-slots-r27388_
                                            _super29561_))))
                                 (declare (not safe))
                                 (_dedup29567_ __tmp32388)))))))
                  (_get-mixin-slots-r27388_
                   (lambda (_type-id29555_)
                     (let ((_info29558_
                            (gx#syntax-local-value _type-id29555_)))
                       (append (let ((__obj31820 _info29558_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj31820
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj31820
                                        '4
                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop$<MOP:2>#class-type-info::t
                                      __obj31820
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r27388_
                                     (let ((__obj31821 _info29558_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj31821
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj31821
                                              '3
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                            __obj31821
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots27381_ _stx27377_)
          (let* ((_name27390_ (symbol->string (gx#stx-e _id27379_)))
                 (_super27393_ (map gx#syntax-local-value _super-ref27380_))
                 (_struct?27396_ (gx#stx-getq 'struct: _body27382_))
                 (_g2739927407_
                  (lambda (_g2740027403_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2740027403_)))
                 (_g2739829551_
                  (lambda (_g2740027411_)
                    ((lambda (_L27414_)
                       (let ()
                         (let* ((_g2743027438_
                                 (lambda (_g2743127434_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2743127434_)))
                                (_g2742929547_
                                 (lambda (_g2743127442_)
                                   ((lambda (_L27445_)
                                      (let ()
                                        (let* ((_g2745827466_
                                                (lambda (_g2745927462_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2745927462_)))
                                               (_g2745729543_
                                                (lambda (_g2745927470_)
                                                  ((lambda (_L27473_)
                                                     (let ()
                                                       (let* ((_g2748627494_
                                                               (lambda (_g2748727490_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2748727490_)))
                      (_g2748529539_
                       (lambda (_g2748727498_)
                         ((lambda (_L27501_)
                            (let ()
                              (let* ((_g2751427522_
                                      (lambda (_g2751527518_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2751527518_)))
                                     (_g2751329535_
                                      (lambda (_g2751527526_)
                                        ((lambda (_L27529_)
                                           (let ()
                                             (let* ((_g2754227559_
                                                     (lambda (_g2754327555_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g2754327555_)))
                                                    (_g2754129531_
                                                     (lambda (_g2754327563_)
                                                       (if (gx#stx-pair/null?
                                                            _g2754327563_)
                                                           (let ((_g32389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2754327563_ '0)))
                     (begin
                       (let ((_g32390_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g32389_)
                                    (##vector-length _g32389_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g32390_ 2)))
                             (error "Context expects 2 values" _g32390_)))
                       (let ((_target2754527566_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32389_ 0)))
                             (_tl2754727569_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g32389_ 1))))
                         (if (gx#stx-null? _tl2754727569_)
                             (letrec ((_loop2754827572_
                                       (lambda (_hd2754627576_
                                                _slot2755227579_)
                                         (if (gx#stx-pair? _hd2754627576_)
                                             (let ((_e2754927582_
                                                    (gx#syntax-e
                                                     _hd2754627576_)))
                                               (let ((_lp-hd2755027586_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2754927582_)))
                                                     (_lp-tl2755127589_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2754927582_))))
                                                 (let ((__tmp32391
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd2755027586_
                                                                _slot2755227579_))))
                                                   (declare (not safe))
                                                   (_loop2754827572_
                                                    _lp-tl2755127589_
                                                    __tmp32391))))
                                             (let ((_slot2755327592_
                                                    (reverse _slot2755227579_)))
                                               ((lambda (_L27596_)
                                                  (let ()
                                                    (let* ((_g2761327630_
                                                            (lambda (_g2761427626_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2761427626_)))
                                                           (_g2761229522_
                                                            (lambda (_g2761427634_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2761427634_)
                          (let ((_g32392_
                                 (gx#syntax-split-splice _g2761427634_ '0)))
                            (begin
                              (let ((_g32393_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g32392_)
                                           (##vector-length _g32392_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g32393_ 2)))
                                    (error "Context expects 2 values"
                                           _g32393_)))
                              (let ((_target2761627637_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32392_ 0)))
                                    (_tl2761827640_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g32392_ 1))))
                                (if (gx#stx-null? _tl2761827640_)
                                    (letrec ((_loop2761927643_
                                              (lambda (_hd2761727647_
                                                       _getf2762327650_)
                                                (if (gx#stx-pair?
                                                     _hd2761727647_)
                                                    (let ((_e2762027653_
                                                           (gx#syntax-e
                                                            _hd2761727647_)))
                                                      (let ((_lp-hd2762127657_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2762027653_)))
                    (_lp-tl2762227660_
                     (let () (declare (not safe)) (##cdr _e2762027653_))))
                (let ((__tmp32394
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd2762127657_ _getf2762327650_))))
                  (declare (not safe))
                  (_loop2761927643_ _lp-tl2762227660_ __tmp32394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf2762427663_
                                                           (reverse _getf2762327650_)))
                                                      ((lambda (_L27667_)
                                                         (let ()
                                                           (let* ((_g2768427701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2768527697_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2768527697_)))
                          (_g2768329513_
                           (lambda (_g2768527705_)
                             (if (gx#stx-pair/null? _g2768527705_)
                                 (let ((_g32395_
                                        (gx#syntax-split-splice
                                         _g2768527705_
                                         '0)))
                                   (begin
                                     (let ((_g32396_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g32395_)
                                                  (##vector-length _g32395_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g32396_ 2)))
                                           (error "Context expects 2 values"
                                                  _g32396_)))
                                     (let ((_target2768727708_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32395_ 0)))
                                           (_tl2768927711_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g32395_ 1))))
                                       (if (gx#stx-null? _tl2768927711_)
                                           (letrec ((_loop2769027714_
                                                     (lambda (_hd2768827718_
                                                              _setf2769427721_)
                                                       (if (gx#stx-pair?
                                                            _hd2768827718_)
                                                           (let ((_e2769127724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2768827718_)))
                     (let ((_lp-hd2769227728_
                            (let ()
                              (declare (not safe))
                              (##car _e2769127724_)))
                           (_lp-tl2769327731_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2769127724_))))
                       (let ((__tmp32397
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd2769227728_ _setf2769427721_))))
                         (declare (not safe))
                         (_loop2769027714_ _lp-tl2769327731_ __tmp32397))))
                   (let ((_setf2769527734_ (reverse _setf2769427721_)))
                     ((lambda (_L27738_)
                        (let ()
                          (let* ((_mixin-slots27755_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots27387_
                                     _super-ref27380_
                                     _slots27381_)))
                                 (_g2775827775_
                                  (lambda (_g2775927771_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2775927771_)))
                                 (_g2775729509_
                                  (lambda (_g2775927779_)
                                    (if (gx#stx-pair/null? _g2775927779_)
                                        (let ((_g32398_
                                               (gx#syntax-split-splice
                                                _g2775927779_
                                                '0)))
                                          (begin
                                            (let ((_g32399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g32398_)
                                                         (##vector-length
                                                          _g32398_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g32399_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g32399_)))
                                            (let ((_target2776127782_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32398_
                                                      0)))
                                                  (_tl2776327785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g32398_
                                                      1))))
                                              (if (gx#stx-null? _tl2776327785_)
                                                  (letrec ((_loop2776427788_
                                                            (lambda (_hd2776227792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot2776827795_)
                      (if (gx#stx-pair? _hd2776227792_)
                          (let ((_e2776527798_ (gx#syntax-e _hd2776227792_)))
                            (let ((_lp-hd2776627802_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2776527798_)))
                                  (_lp-tl2776727805_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2776527798_))))
                              (let ((__tmp32400
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2776627802_
                                             _mixin-slot2776827795_))))
                                (declare (not safe))
                                (_loop2776427788_
                                 _lp-tl2776727805_
                                 __tmp32400))))
                          (let ((_mixin-slot2776927808_
                                 (reverse _mixin-slot2776827795_)))
                            ((lambda (_L27812_)
                               (let ()
                                 (let* ((_g2783027847_
                                         (lambda (_g2783127843_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2783127843_)))
                                        (_g2782929500_
                                         (lambda (_g2783127851_)
                                           (if (gx#stx-pair/null?
                                                _g2783127851_)
                                               (let ((_g32401_
                                                      (gx#syntax-split-splice
                                                       _g2783127851_
                                                       '0)))
                                                 (begin
                                                   (let ((_g32402_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32401_)
                        (##vector-length _g32401_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g32402_ 2)))
                 (error "Context expects 2 values" _g32402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2783327854_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32401_
                                                             0)))
                                                         (_tl2783527857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g32401_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl2783527857_)
                                                         (letrec ((_loop2783627860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2783427864_ _mixin-getf2784027867_)
                             (if (gx#stx-pair? _hd2783427864_)
                                 (let ((_e2783727870_
                                        (gx#syntax-e _hd2783427864_)))
                                   (let ((_lp-hd2783827874_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2783727870_)))
                                         (_lp-tl2783927877_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2783727870_))))
                                     (let ((__tmp32403
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd2783827874_
                                                    _mixin-getf2784027867_))))
                                       (declare (not safe))
                                       (_loop2783627860_
                                        _lp-tl2783927877_
                                        __tmp32403))))
                                 (let ((_mixin-getf2784127880_
                                        (reverse _mixin-getf2784027867_)))
                                   ((lambda (_L27884_)
                                      (let ()
                                        (let* ((_g2790127918_
                                                (lambda (_g2790227914_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2790227914_)))
                                               (_g2790029491_
                                                (lambda (_g2790227922_)
                                                  (if (gx#stx-pair/null?
                                                       _g2790227922_)
                                                      (let ((_g32404_
                                                             (gx#syntax-split-splice
                                                              _g2790227922_
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
                  (let ((_target2790427925_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32404_ 0)))
                        (_tl2790627928_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g32404_ 1))))
                    (if (gx#stx-null? _tl2790627928_)
                        (letrec ((_loop2790727931_
                                  (lambda (_hd2790527935_
                                           _mixin-setf2791127938_)
                                    (if (gx#stx-pair? _hd2790527935_)
                                        (let ((_e2790827941_
                                               (gx#syntax-e _hd2790527935_)))
                                          (let ((_lp-hd2790927945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2790827941_)))
                                                (_lp-tl2791027948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2790827941_))))
                                            (let ((__tmp32406
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd2790927945_
                                                           _mixin-setf2791127938_))))
                                              (declare (not safe))
                                              (_loop2790727931_
                                               _lp-tl2791027948_
                                               __tmp32406))))
                                        (let ((_mixin-setf2791227951_
                                               (reverse _mixin-setf2791127938_)))
                                          ((lambda (_L27955_)
                                             (let ()
                                               (let* ((_g2797227989_
                                                       (lambda (_g2797327985_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2797327985_)))
                                                      (_g2797129474_
                                                       (lambda (_g2797327993_)
                                                         (if (gx#stx-pair/null?
                                                              _g2797327993_)
                                                             (let ((_g32407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2797327993_ '0)))
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
                               (error "Context expects 2 values" _g32408_)))
                         (let ((_target2797527996_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32407_ 0)))
                               (_tl2797727999_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g32407_ 1))))
                           (if (gx#stx-null? _tl2797727999_)
                               (letrec ((_loop2797828002_
                                         (lambda (_hd2797628006_
                                                  _ugetf2798228009_)
                                           (if (gx#stx-pair? _hd2797628006_)
                                               (let ((_e2797928012_
                                                      (gx#syntax-e
                                                       _hd2797628006_)))
                                                 (let ((_lp-hd2798028016_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2797928012_)))
                                                       (_lp-tl2798128019_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2797928012_))))
                                                   (let ((__tmp32409
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd2798028016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf2798228009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop2797828002_
                                                      _lp-tl2798128019_
                                                      __tmp32409))))
                                               (let ((_ugetf2798328022_
                                                      (reverse _ugetf2798228009_)))
                                                 ((lambda (_L28026_)
                                                    (let ()
                                                      (let* ((_g2804328060_
                                                              (lambda (_g2804428056_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2804428056_)))
                     (_g2804229457_
                      (lambda (_g2804428064_)
                        (if (gx#stx-pair/null? _g2804428064_)
                            (let ((_g32410_
                                   (gx#syntax-split-splice _g2804428064_ '0)))
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
                                (let ((_target2804628067_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32410_ 0)))
                                      (_tl2804828070_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g32410_ 1))))
                                  (if (gx#stx-null? _tl2804828070_)
                                      (letrec ((_loop2804928073_
                                                (lambda (_hd2804728077_
                                                         _usetf2805328080_)
                                                  (if (gx#stx-pair?
                                                       _hd2804728077_)
                                                      (let ((_e2805028083_
                                                             (gx#syntax-e
                                                              _hd2804728077_)))
                                                        (let ((_lp-hd2805128087_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2805028083_)))
                      (_lp-tl2805228090_
                       (let () (declare (not safe)) (##cdr _e2805028083_))))
                  (let ((__tmp32412
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd2805128087_ _usetf2805328080_))))
                    (declare (not safe))
                    (_loop2804928073_ _lp-tl2805228090_ __tmp32412))))
              (let ((_usetf2805428093_ (reverse _usetf2805328080_)))
                ((lambda (_L28097_)
                   (let ()
                     (let* ((_g2811428131_
                             (lambda (_g2811528127_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2811528127_)))
                            (_g2811329440_
                             (lambda (_g2811528135_)
                               (if (gx#stx-pair/null? _g2811528135_)
                                   (let ((_g32413_
                                          (gx#syntax-split-splice
                                           _g2811528135_
                                           '0)))
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
                                             (error "Context expects 2 values"
                                                    _g32414_)))
                                       (let ((_target2811728138_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32413_ 0)))
                                             (_tl2811928141_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g32413_ 1))))
                                         (if (gx#stx-null? _tl2811928141_)
                                             (letrec ((_loop2812028144_
                                                       (lambda (_hd2811828148_
                                                                _mixin-ugetf2812428151_)
                                                         (if (gx#stx-pair?
                                                              _hd2811828148_)
                                                             (let ((_e2812128154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2811828148_)))
                       (let ((_lp-hd2812228158_
                              (let ()
                                (declare (not safe))
                                (##car _e2812128154_)))
                             (_lp-tl2812328161_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2812128154_))))
                         (let ((__tmp32415
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2812228158_
                                        _mixin-ugetf2812428151_))))
                           (declare (not safe))
                           (_loop2812028144_ _lp-tl2812328161_ __tmp32415))))
                     (let ((_mixin-ugetf2812528164_
                            (reverse _mixin-ugetf2812428151_)))
                       ((lambda (_L28168_)
                          (let ()
                            (let* ((_g2818528202_
                                    (lambda (_g2818628198_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2818628198_)))
                                   (_g2818429423_
                                    (lambda (_g2818628206_)
                                      (if (gx#stx-pair/null? _g2818628206_)
                                          (let ((_g32416_
                                                 (gx#syntax-split-splice
                                                  _g2818628206_
                                                  '0)))
                                            (begin
                                              (let ((_g32417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g32416_)
                                                           (##vector-length
                                                            _g32416_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g32417_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g32417_)))
                                              (let ((_target2818828209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32416_
                                                        0)))
                                                    (_tl2819028212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g32416_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2819028212_)
                                                    (letrec ((_loop2819128215_
                                                              (lambda (_hd2818928219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2819528222_)
                        (if (gx#stx-pair? _hd2818928219_)
                            (let ((_e2819228225_ (gx#syntax-e _hd2818928219_)))
                              (let ((_lp-hd2819328229_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2819228225_)))
                                    (_lp-tl2819428232_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2819228225_))))
                                (let ((__tmp32418
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2819328229_
                                               _mixin-usetf2819528222_))))
                                  (declare (not safe))
                                  (_loop2819128215_
                                   _lp-tl2819428232_
                                   __tmp32418))))
                            (let ((_mixin-usetf2819628235_
                                   (reverse _mixin-usetf2819528222_)))
                              ((lambda (_L28239_)
                                 (let ()
                                   (let* ((_type-slots28270_
                                           (if (gx#stx-null? _slots27381_)
                                               '()
                                               (let ((__tmp32419
                                                      (let ((__tmp32420
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27738_
                                                                _L27667_
                                                                _L27596_)
                                                               (foldr (lambda (_g2825528260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2825628263_
                                       _g2825728265_
                                       _g2825828267_)
                                (let ((__tmp32421
                                       (let ((__tmp32422
                                              (let ((__tmp32423
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2825528260_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2825628263_
                                                      __tmp32423))))
                                         (declare (not safe))
                                         (cons _g2825728265_ __tmp32422))))
                                  (declare (not safe))
                                  (cons __tmp32421 _g2825828267_)))
                              '()
                              _L27738_
                              _L27667_
                              _L27596_))))
                (declare (not safe))
                (cons __tmp32420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp32419))))
                                          (_type-mixin-slots28287_
                                           (if (gx#stx-null?
                                                _mixin-slots27755_)
                                               '()
                                               (let ((__tmp32424
                                                      (let ((__tmp32425
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L27955_
                                                                _L27884_
                                                                _L27812_)
                                                               (foldr (lambda (_g2827228277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2827328280_
                                       _g2827428282_
                                       _g2827528284_)
                                (let ((__tmp32426
                                       (let ((__tmp32427
                                              (let ((__tmp32428
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2827228277_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2827328280_
                                                      __tmp32428))))
                                         (declare (not safe))
                                         (cons _g2827428282_ __tmp32427))))
                                  (declare (not safe))
                                  (cons __tmp32426 _g2827528284_)))
                              '()
                              _L27955_
                              _L27884_
                              _L27812_))))
                (declare (not safe))
                (cons __tmp32425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp32424))))
                                          (_type-name28294_
                                           (let ((__tmp32429
                                                  (let ((__tmp32430
                                                         (let ((_$e28290_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body27382_)))
                   (if _$e28290_ _$e28290_ _id27379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32430 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp32429)))
                                          (_type-id28301_
                                           (let ((__tmp32431
                                                  (let ((__tmp32432
                                                         (let ((_$e28297_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body27382_)))
                   (if _$e28297_
                       _$e28297_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                          _L27414_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32432 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp32431)))
                                          (_type-constructor28316_
                                           (let ((_$e28312_
                                                  (let ((_e2830328305_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body27382_)))
                                                    (if _e2830328305_
                                                        (let* ((_e28309_
                                                                _e2830328305_)
                                                               (__tmp32433
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e28309_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp32433))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e28312_ _$e28312_ '())))
                                          (_properties28350_
                                           (let* ((_properties28319_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body27382_))
                                                       (let ((__tmp32434
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp32434 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28332_
                                                   (let ((_$e28322_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body27382_))))
                                                     (if _$e28322_
                                                         ((lambda (_print28326_)
                                                            (let* ((_print28329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print28326_ '#t))
                                _slots27381_
                                _print28326_))
                           (__tmp32435
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print28329_))))
                      (declare (not safe))
                      (cons __tmp32435 _properties28319_)))
                  _$e28322_)
                 _properties28319_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties28345_
                                                   (let ((_$e28335_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body27382_))))
                                                     (if _$e28335_
                                                         ((lambda (_equal28339_)
                                                            (let* ((_equal28342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal28339_ '#t))
                                _slots27381_
                                _equal28339_))
                           (__tmp32436
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal28342_))))
                      (declare (not safe))
                      (cons __tmp32436 _properties28332_)))
                  _$e28335_)
                 _properties28332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties28345_))
                                          (_type-properties28391_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties28350_))
                                               '()
                                               (let* ((_g2835328361_
                                                       (lambda (_g2835428357_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2835428357_)))
                                                      (_g2835228387_
                                                       (lambda (_g2835428365_)
                                                         ((lambda (_L28368_)
                                                            (let ()
                                                              (let ((__tmp32437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32438
                                    (let ((__tmp32440
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp32439
                                           (let ()
                                             (declare (not safe))
                                             (cons _L28368_ '()))))
                                      (declare (not safe))
                                      (cons __tmp32440 __tmp32439))))
                               (declare (not safe))
                               (cons __tmp32438 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp32437))))
                  _g2835428365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2835228387_
                                                  _properties28350_))))
                                          (_metaclass28401_
                                           (let ((_$e28394_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body27382_)))
                                             (if _$e28394_
                                                 ((lambda (_metaclass28398_)
                                                    (if (gx#identifier?
                                                         _metaclass28398_)
                                                        _metaclass28398_
                                                        '#f))
                                                  _$e28394_)
                                                 '#f)))
                                          (_type-metaclass28404_
                                           (if _metaclass28401_
                                               (let ((__tmp32441
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass28401_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp32441))
                                               '()))
                                          (_final?28407_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body27382_)))
                                          (_type-struct28410_
                                           (let ((__tmp32442
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?27396_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp32442)))
                                          (_type-final28413_
                                           (let ((__tmp32443
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?28407_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp32443)))
                                          (_g2841628433_
                                           (lambda (_g2841728429_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2841728429_)))
                                          (_g2841529419_
                                           (lambda (_g2841728437_)
                                             (if (gx#stx-pair/null?
                                                  _g2841728437_)
                                                 (let ((_g32444_
                                                        (gx#syntax-split-splice
                                                         _g2841728437_
                                                         '0)))
                                                   (begin
                                                     (let ((_g32445_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g32444_)
                          (##vector-length _g32444_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g32445_ 2)))
                   (error "Context expects 2 values" _g32445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2841928440_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32444_
                                                               0)))
                                                           (_tl2842128443_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g32444_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2842128443_)
                                                           (letrec ((_loop2842228446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2842028450_ _type-body2842628453_)
                               (if (gx#stx-pair? _hd2842028450_)
                                   (let ((_e2842328456_
                                          (gx#syntax-e _hd2842028450_)))
                                     (let ((_lp-hd2842428460_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2842328456_)))
                                           (_lp-tl2842528463_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2842328456_))))
                                       (let ((__tmp32446
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2842428460_
                                                      _type-body2842628453_))))
                                         (declare (not safe))
                                         (_loop2842228446_
                                          _lp-tl2842528463_
                                          __tmp32446))))
                                   (let ((_type-body2842728466_
                                          (reverse _type-body2842628453_)))
                                     ((lambda (_L28470_)
                                        (let ()
                                          (let* ((_g2849128499_
                                                  (lambda (_g2849228495_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2849228495_)))
                                                 (_g2849029407_
                                                  (lambda (_g2849228503_)
                                                    ((lambda (_L28506_)
                                                       (let ()
                                                         (let* ((_g2851928527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2852028523_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2852028523_)))
                        (_g2851829336_
                         (lambda (_g2852028531_)
                           ((lambda (_L28534_)
                              (let ()
                                (let* ((_g2854728555_
                                        (lambda (_g2854828551_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2854828551_)))
                                       (_g2854629301_
                                        (lambda (_g2854828559_)
                                          ((lambda (_L28562_)
                                             (let ()
                                               (let* ((_g2857528583_
                                                       (lambda (_g2857628579_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2857628579_)))
                                                      (_g2857429215_
                                                       (lambda (_g2857628587_)
                                                         ((lambda (_L28590_)
                                                            (let ()
                                                              (let* ((_g2860328611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2860428607_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2860428607_)))
                             (_g2860229203_
                              (lambda (_g2860428615_)
                                ((lambda (_L28618_)
                                   (let ()
                                     (let* ((_g2863128639_
                                             (lambda (_g2863228635_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2863228635_)))
                                            (_g2863029199_
                                             (lambda (_g2863228643_)
                                               ((lambda (_L28646_)
                                                  (let ()
                                                    (let* ((_g2865928667_
                                                            (lambda (_g2866028663_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2866028663_)))
                                                           (_g2865829195_
                                                            (lambda (_g2866028671_)
                                                              ((lambda (_L28674_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2868728695_
                                   (lambda (_g2868828691_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2868828691_)))
                                  (_g2868629160_
                                   (lambda (_g2868828699_)
                                     ((lambda (_L28702_)
                                        (let ()
                                          (let* ((_g2871528723_
                                                  (lambda (_g2871628719_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2871628719_)))
                                                 (_g2871429089_
                                                  (lambda (_g2871628727_)
                                                    ((lambda (_L28730_)
                                                       (let ()
                                                         (let* ((_g2874328751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2874428747_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2874428747_)))
                        (_g2874229085_
                         (lambda (_g2874428755_)
                           ((lambda (_L28758_)
                              (let ()
                                (let* ((_g2877128779_
                                        (lambda (_g2877228775_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2877228775_)))
                                       (_g2877029081_
                                        (lambda (_g2877228783_)
                                          ((lambda (_L28786_)
                                             (let ()
                                               (let* ((_g2879928807_
                                                       (lambda (_g2880028803_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2880028803_)))
                                                      (_g2879829077_
                                                       (lambda (_g2880028811_)
                                                         ((lambda (_L28814_)
                                                            (let ()
                                                              (let* ((_g2882728835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2882828831_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2882828831_)))
                             (_g2882629051_
                              (lambda (_g2882828839_)
                                ((lambda (_L28842_)
                                   (let ()
                                     (let* ((_g2885528863_
                                             (lambda (_g2885628859_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2885628859_)))
                                            (_g2885429025_
                                             (lambda (_g2885628867_)
                                               ((lambda (_L28870_)
                                                  (let ()
                                                    (let* ((_g2888328891_
                                                            (lambda (_g2888428887_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2888428887_)))
                                                           (_g2888228999_
                                                            (lambda (_g2888428895_)
                                                              ((lambda (_L28898_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2891128919_
                                   (lambda (_g2891228915_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2891228915_)))
                                  (_g2891028973_
                                   (lambda (_g2891228923_)
                                     ((lambda (_L28926_)
                                        (let ()
                                          (let* ((_g2893928947_
                                                  (lambda (_g2894028943_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2894028943_)))
                                                 (_g2893828969_
                                                  (lambda (_g2894028951_)
                                                    ((lambda (_L28954_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp32447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32450 (gx#datum->syntax '#f 'begin))
                                (__tmp32448
                                 (let ((__tmp32449
                                        (let ()
                                          (declare (not safe))
                                          (cons _L28954_ '()))))
                                   (declare (not safe))
                                   (cons _L28506_ __tmp32449))))
                            (declare (not safe))
                            (cons __tmp32450 __tmp32448))))
                     (declare (not safe))
                     (_wrap27384_ __tmp32447)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2894028951_)))
                                                 (__tmp32451
                                                  (let ((__tmp32452
                                                         (let ((__tmp32487
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp32453
                        (let ((__tmp32454
                               (let ((__tmp32455
                                      (let ((__tmp32486
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp32456
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
                                                               (let ((__tmp32471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32472
                                     (let ((__tmp32473
                                            (let ((__tmp32474
                                                   (let ((__tmp32475
                                                          (let ((__tmp32476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32477
                                (let ((__tmp32478
                                       (let ((__tmp32479
                                              (let ((__tmp32480
                                                     (let ((__tmp32481
                                                            (let ((__tmp32482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32483
                                  (let ((__tmp32484
                                         (let ((__tmp32485
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L28926_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp32485))))
                                    (declare (not safe))
                                    (cons _L28898_ __tmp32484))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp32483))))
                      (declare (not safe))
                      (cons _L28870_ __tmp32482))))
               (declare (not safe))
               (cons 'mutators: __tmp32481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L28842_ __tmp32480))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp32479))))
                                  (declare (not safe))
                                  (cons _L28814_ __tmp32478))))
                           (declare (not safe))
                           (cons 'predicate: __tmp32477))))
                    (declare (not safe))
                    (cons _L28786_ __tmp32476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp32475))))
                                              (declare (not safe))
                                              (cons _L28758_ __tmp32474))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp32473))))
                                (declare (not safe))
                                (cons _L28730_ __tmp32472))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp32471))))
                  (declare (not safe))
                  (cons _L28702_ __tmp32470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp32469))))
                                            (declare (not safe))
                                            (cons _L28674_ __tmp32468))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp32467))))
                              (declare (not safe))
                              (cons _L28646_ __tmp32466))))
                       (declare (not safe))
                       (cons 'struct?: __tmp32465))))
                (declare (not safe))
                (cons _L28590_ __tmp32464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp32463))))
                                          (declare (not safe))
                                          (cons _L28618_ __tmp32462))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp32461))))
                            (declare (not safe))
                            (cons _L28562_ __tmp32460))))
                     (declare (not safe))
                     (cons 'name: __tmp32459))))
              (declare (not safe))
              (cons _L28534_ __tmp32458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp32457))))
                                        (declare (not safe))
                                        (cons __tmp32486 __tmp32456))))
                                 (declare (not safe))
                                 (cons __tmp32455 '()))))
                          (declare (not safe))
                          (cons _L27414_ __tmp32454))))
                   (declare (not safe))
                   (cons __tmp32487 __tmp32453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27384_ __tmp32452))))
                                            (declare (not safe))
                                            (_g2893828969_ __tmp32451))))
                                      _g2891228923_)))
                                  (__tmp32488
                                   (let ((__tmp32512
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp32489
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L28097_
                                             _L27596_)
                                            (foldr (lambda (_g2897628983_
                                                            _g2897728986_
                                                            _g2897828988_)
                                                     (let ((__tmp32490
                                                            (let ((__tmp32500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp32491
                           (let ((__tmp32497
                                  (let ((__tmp32499
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp32498
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2897728986_ '()))))
                                    (declare (not safe))
                                    (cons __tmp32499 __tmp32498)))
                                 (__tmp32492
                                  (let ((__tmp32493
                                         (let ((__tmp32494
                                                (let ((__tmp32496
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp32495
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2897628983_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp32496
                                                        __tmp32495))))
                                           (declare (not safe))
                                           (cons __tmp32494 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp32493))))
                             (declare (not safe))
                             (cons __tmp32497 __tmp32492))))
                      (declare (not safe))
                      (cons __tmp32500 __tmp32491))))
               (declare (not safe))
               (cons __tmp32490 _g2897828988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L28239_
                                                      _L27812_)
                                                     (foldr (lambda (_g2897928991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2898028994_
                             _g2898128996_)
                      (let ((__tmp32501
                             (let ((__tmp32511 (gx#datum->syntax '#f '@list))
                                   (__tmp32502
                                    (let ((__tmp32508
                                           (let ((__tmp32510
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp32509
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2898028994_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32510 __tmp32509)))
                                          (__tmp32503
                                           (let ((__tmp32504
                                                  (let ((__tmp32505
                                                         (let ((__tmp32507
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp32506
                        (let ()
                          (declare (not safe))
                          (cons _g2897928991_ '()))))
                   (declare (not safe))
                   (cons __tmp32507 __tmp32506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32505 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp32504))))
                                      (declare (not safe))
                                      (cons __tmp32508 __tmp32503))))
                               (declare (not safe))
                               (cons __tmp32511 __tmp32502))))
                        (declare (not safe))
                        (cons __tmp32501 _g2898128996_)))
                    '()
                    _L28239_
                    _L27812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _L28097_
                                                   _L27596_))))
                                     (declare (not safe))
                                     (cons __tmp32512 __tmp32489))))
                             (declare (not safe))
                             (_g2891028973_ __tmp32488))))
                       _g2888428895_)))
                   (__tmp32513
                    (let ((__tmp32537 (gx#datum->syntax '#f '@list))
                          (__tmp32514
                           (begin
                             (gx#syntax-check-splice-targets _L28026_ _L27596_)
                             (foldr (lambda (_g2900229009_
                                             _g2900329012_
                                             _g2900429014_)
                                      (let ((__tmp32515
                                             (let ((__tmp32525
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32516
                                                    (let ((__tmp32522
                                                           (let ((__tmp32524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32523
                          (let ()
                            (declare (not safe))
                            (cons _g2900329012_ '()))))
                     (declare (not safe))
                     (cons __tmp32524 __tmp32523)))
                  (__tmp32517
                   (let ((__tmp32518
                          (let ((__tmp32519
                                 (let ((__tmp32521
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp32520
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2900229009_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32521 __tmp32520))))
                            (declare (not safe))
                            (cons __tmp32519 '()))))
                     (declare (not safe))
                     (cons ':: __tmp32518))))
              (declare (not safe))
              (cons __tmp32522 __tmp32517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32525 __tmp32516))))
                                        (declare (not safe))
                                        (cons __tmp32515 _g2900429014_)))
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L28168_
                                       _L27812_)
                                      (foldr (lambda (_g2900529017_
                                                      _g2900629020_
                                                      _g2900729022_)
                                               (let ((__tmp32526
                                                      (let ((__tmp32536
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp32527
                                                             (let ((__tmp32533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32535 (gx#datum->syntax '#f 'quote))
                                  (__tmp32534
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2900629020_ '()))))
                              (declare (not safe))
                              (cons __tmp32535 __tmp32534)))
                           (__tmp32528
                            (let ((__tmp32529
                                   (let ((__tmp32530
                                          (let ((__tmp32532
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp32531
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2900529017_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32532 __tmp32531))))
                                     (declare (not safe))
                                     (cons __tmp32530 '()))))
                              (declare (not safe))
                              (cons ':: __tmp32529))))
                       (declare (not safe))
                       (cons __tmp32533 __tmp32528))))
                (declare (not safe))
                (cons __tmp32536 __tmp32527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32526
                                                       _g2900729022_)))
                                             '()
                                             _L28168_
                                             _L27812_))
                                    _L28026_
                                    _L27596_))))
                      (declare (not safe))
                      (cons __tmp32537 __tmp32514))))
              (declare (not safe))
              (_g2888228999_ __tmp32513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2885628867_)))
                                            (__tmp32538
                                             (let ((__tmp32562
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp32539
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L27738_
                                                       _L27596_)
                                                      (foldr (lambda (_g2902829035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2902929038_
                              _g2903029040_)
                       (let ((__tmp32540
                              (let ((__tmp32550 (gx#datum->syntax '#f '@list))
                                    (__tmp32541
                                     (let ((__tmp32547
                                            (let ((__tmp32549
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32548
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2902929038_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp32549 __tmp32548)))
                                           (__tmp32542
                                            (let ((__tmp32543
                                                   (let ((__tmp32544
                                                          (let ((__tmp32546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp32545
                         (let ()
                           (declare (not safe))
                           (cons _g2902829035_ '()))))
                    (declare (not safe))
                    (cons __tmp32546 __tmp32545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32544 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp32543))))
                                       (declare (not safe))
                                       (cons __tmp32547 __tmp32542))))
                                (declare (not safe))
                                (cons __tmp32550 __tmp32541))))
                         (declare (not safe))
                         (cons __tmp32540 _g2903029040_)))
                     (begin
                       (gx#syntax-check-splice-targets _L27955_ _L27812_)
                       (foldr (lambda (_g2903129043_
                                       _g2903229046_
                                       _g2903329048_)
                                (let ((__tmp32551
                                       (let ((__tmp32561
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp32552
                                              (let ((__tmp32558
                                                     (let ((__tmp32560
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp32559
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2903229046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp32560 __tmp32559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp32553
                                                     (let ((__tmp32554
                                                            (let ((__tmp32555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32557
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp32556
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2903129043_ '()))))
                             (declare (not safe))
                             (cons __tmp32557 __tmp32556))))
                      (declare (not safe))
                      (cons __tmp32555 '()))))
               (declare (not safe))
               (cons ':: __tmp32554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32558 __tmp32553))))
                                         (declare (not safe))
                                         (cons __tmp32561 __tmp32552))))
                                  (declare (not safe))
                                  (cons __tmp32551 _g2903329048_)))
                              '()
                              _L27955_
                              _L27812_))
                     _L27738_
                     _L27596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32562 __tmp32539))))
                                       (declare (not safe))
                                       (_g2885429025_ __tmp32538))))
                                 _g2882828839_)))
                             (__tmp32563
                              (let ((__tmp32587 (gx#datum->syntax '#f '@list))
                                    (__tmp32564
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L27667_
                                        _L27596_)
                                       (foldr (lambda (_g2905429061_
                                                       _g2905529064_
                                                       _g2905629066_)
                                                (let ((__tmp32565
                                                       (let ((__tmp32575
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp32566
                                                              (let ((__tmp32572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp32574 (gx#datum->syntax '#f 'quote))
                                   (__tmp32573
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2905529064_ '()))))
                               (declare (not safe))
                               (cons __tmp32574 __tmp32573)))
                            (__tmp32567
                             (let ((__tmp32568
                                    (let ((__tmp32569
                                           (let ((__tmp32571
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp32570
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2905429061_ '()))))
                                             (declare (not safe))
                                             (cons __tmp32571 __tmp32570))))
                                      (declare (not safe))
                                      (cons __tmp32569 '()))))
                               (declare (not safe))
                               (cons ':: __tmp32568))))
                        (declare (not safe))
                        (cons __tmp32572 __tmp32567))))
                 (declare (not safe))
                 (cons __tmp32575 __tmp32566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32565
                                                        _g2905629066_)))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L27884_
                                                 _L27812_)
                                                (foldr (lambda (_g2905729069_
                                                                _g2905829072_
                                                                _g2905929074_)
                                                         (let ((__tmp32576
                                                                (let ((__tmp32586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32577
                               (let ((__tmp32583
                                      (let ((__tmp32585
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp32584
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2905829072_ '()))))
                                        (declare (not safe))
                                        (cons __tmp32585 __tmp32584)))
                                     (__tmp32578
                                      (let ((__tmp32579
                                             (let ((__tmp32580
                                                    (let ((__tmp32582
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp32581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2905729069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp32582 __tmp32581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32580 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32579))))
                                 (declare (not safe))
                                 (cons __tmp32583 __tmp32578))))
                          (declare (not safe))
                          (cons __tmp32586 __tmp32577))))
                   (declare (not safe))
                   (cons __tmp32576 _g2905929074_)))
               '()
               _L27884_
               _L27812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _L27667_
                                              _L27596_))))
                                (declare (not safe))
                                (cons __tmp32587 __tmp32564))))
                        (declare (not safe))
                        (_g2882629051_ __tmp32563))))
                  _g2880028811_)))
              (__tmp32588
               (let ((__tmp32590 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp32589
                      (let () (declare (not safe)) (cons _L27501_ '()))))
                 (declare (not safe))
                 (cons __tmp32590 __tmp32589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2879829077_ __tmp32588))))
                                           _g2877228783_)))
                                       (__tmp32591
                                        (let ((__tmp32593
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp32592
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L27473_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32593 __tmp32592))))
                                  (declare (not safe))
                                  (_g2877029081_ __tmp32591))))
                            _g2874428755_)))
                        (__tmp32594
                         (let ((__tmp32596
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp32595
                                (let ()
                                  (declare (not safe))
                                  (cons _L27445_ '()))))
                           (declare (not safe))
                           (cons __tmp32596 __tmp32595))))
                   (declare (not safe))
                   (_g2874229085_ __tmp32594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2871628727_)))
                                                 (__tmp32597
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor28316_))
                                                      '#f
                                                      (let* ((_g2909329108_
                                                              (lambda (_g2909429104_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2909429104_)))
                     (_g2909229156_
                      (lambda (_g2909429112_)
                        (if (gx#stx-pair? _g2909429112_)
                            (let ((_e2909629115_ (gx#syntax-e _g2909429112_)))
                              (let ((_hd2909729119_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2909629115_)))
                                    (_tl2909829122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2909629115_))))
                                (if (gx#stx-datum? _hd2909729119_)
                                    (let ((_e2909929125_
                                           (gx#stx-e _hd2909729119_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2909929125_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl2909829122_)
                                              (let ((_e2910029129_
                                                     (gx#syntax-e
                                                      _tl2909829122_)))
                                                (let ((_hd2910129133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2910029129_)))
                                                      (_tl2910229136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2910029129_))))
                                                  (if (gx#stx-null?
                                                       _tl2910229136_)
                                                      ((lambda (_L29139_)
                                                         (let ()
                                                           (let ((__tmp32599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp32598
                          (let () (declare (not safe)) (cons _L29139_ '()))))
                     (declare (not safe))
                     (cons __tmp32599 __tmp32598))))
               _hd2910129133_)
              (let () (declare (not safe)) (_g2909329108_ _g2909429112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2909329108_ _g2909429112_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2909329108_ _g2909429112_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2909329108_ _g2909429112_)))))
                            (let ()
                              (declare (not safe))
                              (_g2909329108_ _g2909429112_))))))
                (declare (not safe))
                (_g2909229156_ _type-constructor28316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2871429089_ __tmp32597))))
                                      _g2868828699_)))
                                  (__tmp32600
                                   (if _metaclass28401_
                                       (let* ((_g2916429172_
                                               (lambda (_g2916529168_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2916529168_)))
                                              (_g2916329191_
                                               (lambda (_g2916529176_)
                                                 ((lambda (_L29179_)
                                                    (let ()
                                                      (let ((__tmp32602
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp32601
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29179_ '()))))
                (declare (not safe))
                (cons __tmp32602 __tmp32601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2916529176_))))
                                         (declare (not safe))
                                         (_g2916329191_ _metaclass28401_))
                                       '#f)))
                             (declare (not safe))
                             (_g2868629160_ __tmp32600))))
                       _g2866028671_))))
              (declare (not safe))
              (_g2865829195_ _final?28407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2863228643_))))
                                       (declare (not safe))
                                       (_g2863029199_ _struct?27396_))))
                                 _g2860428615_)))
                             (__tmp32603
                              (let ((__tmp32606 (gx#datum->syntax '#f 'quote))
                                    (__tmp32604
                                     (let ((__tmp32605
                                            (foldr (lambda (_g2920629209_
                                                            _g2920729212_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2920629209_
                                                             _g2920729212_)))
                                                   '()
                                                   _L27596_)))
                                       (declare (not safe))
                                       (cons __tmp32605 '()))))
                                (declare (not safe))
                                (cons __tmp32606 __tmp32604))))
                        (declare (not safe))
                        (_g2860229203_ __tmp32603))))
                  _g2857628587_)))
              (__tmp32607
               (let* ((_g2921929236_
                       (lambda (_g2922029232_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2922029232_)))
                      (_g2921829297_
                       (lambda (_g2922029240_)
                         (if (gx#stx-pair/null? _g2922029240_)
                             (let ((_g32608_
                                    (gx#syntax-split-splice _g2922029240_ '0)))
                               (begin
                                 (let ((_g32609_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g32608_)
                                              (##vector-length _g32608_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g32609_ 2)))
                                       (error "Context expects 2 values"
                                              _g32609_)))
                                 (let ((_target2922229243_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32608_ 0)))
                                       (_tl2922429246_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g32608_ 1))))
                                   (if (gx#stx-null? _tl2922429246_)
                                       (letrec ((_loop2922529249_
                                                 (lambda (_hd2922329253_
                                                          _super-id2922929256_)
                                                   (if (gx#stx-pair?
                                                        _hd2922329253_)
                                                       (let ((_e2922629259_
                                                              (gx#syntax-e
                                                               _hd2922329253_)))
                                                         (let ((_lp-hd2922729263_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2922629259_)))
                       (_lp-tl2922829266_
                        (let () (declare (not safe)) (##cdr _e2922629259_))))
                   (let ((__tmp32610
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2922729263_ _super-id2922929256_))))
                     (declare (not safe))
                     (_loop2922529249_ _lp-tl2922829266_ __tmp32610))))
               (let ((_super-id2923029269_ (reverse _super-id2922929256_)))
                 ((lambda (_L29273_)
                    (let ()
                      (let ((__tmp32615 (gx#datum->syntax '#f '@list))
                            (__tmp32611
                             (foldr (lambda (_g2928829291_ _g2928929294_)
                                      (let ((__tmp32612
                                             (let ((__tmp32614
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp32613
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2928829291_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp32614 __tmp32613))))
                                        (declare (not safe))
                                        (cons __tmp32612 _g2928929294_)))
                                    '()
                                    _L29273_)))
                        (declare (not safe))
                        (cons __tmp32615 __tmp32611))))
                  _super-id2923029269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2922529249_
                                            _target2922229243_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2921929236_ _g2922029240_))))))
                             (let ()
                               (declare (not safe))
                               (_g2921929236_ _g2922029240_))))))
                 (declare (not safe))
                 (_g2921829297_ _super-ref27380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2857429215_ __tmp32607))))
                                           _g2854828559_)))
                                       (__tmp32616
                                        (let* ((_g2930529313_
                                                (lambda (_g2930629309_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2930629309_)))
                                               (_g2930429332_
                                                (lambda (_g2930629317_)
                                                  ((lambda (_L29320_)
                                                     (let ()
                                                       (let ((__tmp32618
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32617
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29320_ '()))))
                 (declare (not safe))
                 (cons __tmp32618 __tmp32617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2930629317_)))
                                               (__tmp32619
                                                (cadr _type-name28294_)))
                                          (declare (not safe))
                                          (_g2930429332_ __tmp32619))))
                                  (declare (not safe))
                                  (_g2854629301_ __tmp32616))))
                            _g2852028531_)))
                        (__tmp32620
                         (let* ((_g2934029355_
                                 (lambda (_g2934129351_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2934129351_)))
                                (_g2933929403_
                                 (lambda (_g2934129359_)
                                   (if (gx#stx-pair? _g2934129359_)
                                       (let ((_e2934329362_
                                              (gx#syntax-e _g2934129359_)))
                                         (let ((_hd2934429366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2934329362_)))
                                               (_tl2934529369_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2934329362_))))
                                           (if (gx#stx-datum? _hd2934429366_)
                                               (let ((_e2934629372_
                                                      (gx#stx-e
                                                       _hd2934429366_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2934629372_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2934529369_)
                                                         (let ((_e2934729376_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2934529369_)))
                   (let ((_hd2934829380_
                          (let () (declare (not safe)) (##car _e2934729376_)))
                         (_tl2934929383_
                          (let () (declare (not safe)) (##cdr _e2934729376_))))
                     (if (gx#stx-null? _tl2934929383_)
                         ((lambda (_L29386_)
                            (let ()
                              (let ((__tmp32622 (gx#datum->syntax '#f 'quote))
                                    (__tmp32621
                                     (let ()
                                       (declare (not safe))
                                       (cons _L29386_ '()))))
                                (declare (not safe))
                                (cons __tmp32622 __tmp32621))))
                          _hd2934829380_)
                         (let ()
                           (declare (not safe))
                           (_g2934029355_ _g2934129359_)))))
                 (let () (declare (not safe)) (_g2934029355_ _g2934129359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2934029355_
                                                        _g2934129359_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2934029355_
                                                  _g2934129359_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2934029355_ _g2934129359_))))))
                           (declare (not safe))
                           (_g2933929403_ _type-id28301_))))
                   (declare (not safe))
                   (_g2851829336_ __tmp32620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2849228503_)))
                                                 (__tmp32623
                                                  (let ((__tmp32624
                                                         (let ((__tmp32630
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp32625
                        (let ((__tmp32626
                               (let ((__tmp32627
                                      (let ((__tmp32628
                                             (let ((__tmp32629
                                                    (foldr (lambda (_g2941029413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2941129416_)
                     (let ()
                       (declare (not safe))
                       (cons _g2941029413_ _g2941129416_)))
                   '()
                   _L28470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L27501_ __tmp32629))))
                                        (declare (not safe))
                                        (cons _L27473_ __tmp32628))))
                                 (declare (not safe))
                                 (cons _L27529_ __tmp32627))))
                          (declare (not safe))
                          (cons _L27445_ __tmp32626))))
                   (declare (not safe))
                   (cons __tmp32630 __tmp32625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap27384_ __tmp32624))))
                                            (declare (not safe))
                                            (_g2849029407_ __tmp32623))))
                                      _type-body2842728466_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2842228446_ _target2841928440_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2841628433_ _g2841728437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2841628433_
                                                    _g2841728437_)))))
                                          (__tmp32631
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _type-mixin-slots28287_
                                                           _type-slots28270_)
                                                    _type-properties28391_)
                                             _type-metaclass28404_)
                                      _type-final28413_)
                               _type-struct28410_)
                        _type-constructor28316_)
                 _type-name28294_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-id28301_)))
                                     (declare (not safe))
                                     (_g2841529419_ __tmp32631))))
                               _mixin-usetf2819628235_))))))
              (let ()
                (declare (not safe))
                (_loop2819128215_ _target2818828209_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2818528202_
                                                       _g2818628206_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2818528202_ _g2818628206_)))))
                                   (__tmp32632
                                    (gx#stx-map
                                     (lambda (_g2942629428_)
                                       (_make-id27386_ '"&" _g2942629428_))
                                     (foldr (lambda (_g2943129434_
                                                     _g2943229437_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2943129434_
                                                      _g2943229437_)))
                                            '()
                                            _L27955_))))
                              (declare (not safe))
                              (_g2818429423_ __tmp32632))))
                        _mixin-ugetf2812528164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2812028144_
                                                  _target2811728138_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2811428131_
                                                _g2811528135_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2811428131_ _g2811528135_)))))
                            (__tmp32633
                             (gx#stx-map
                              (lambda (_g2944329445_)
                                (_make-id27386_ '"&" _g2944329445_))
                              (foldr (lambda (_g2944829451_ _g2944929454_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2944829451_ _g2944929454_)))
                                     '()
                                     _L27884_))))
                       (declare (not safe))
                       (_g2811329440_ __tmp32633))))
                 _usetf2805428093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2804928073_
                                           _target2804628067_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2804328060_ _g2804428064_))))))
                            (let ()
                              (declare (not safe))
                              (_g2804328060_ _g2804428064_)))))
                     (__tmp32634
                      (gx#stx-map
                       (lambda (_g2946029462_)
                         (_make-id27386_ '"&" _g2946029462_))
                       (foldr (lambda (_g2946529468_ _g2946629471_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2946529468_ _g2946629471_)))
                              '()
                              _L27738_))))
                (declare (not safe))
                (_g2804229457_ __tmp32634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf2798328022_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2797828002_ _target2797527996_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2797227989_ _g2797327993_))))))
                     (let ()
                       (declare (not safe))
                       (_g2797227989_ _g2797327993_)))))
              (__tmp32635
               (gx#stx-map
                (lambda (_g2947729479_) (_make-id27386_ '"&" _g2947729479_))
                (foldr (lambda (_g2948229485_ _g2948329488_)
                         (let ()
                           (declare (not safe))
                           (cons _g2948229485_ _g2948329488_)))
                       '()
                       _L27667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2797129474_ __tmp32635))))
                                           _mixin-setf2791227951_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2790727931_ _target2790427925_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2790127918_ _g2790227922_))))))
              (let () (declare (not safe)) (_g2790127918_ _g2790227922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp32636
                                                (gx#stx-map
                                                 (lambda (_g2949429496_)
                                                   (_make-id27386_
                                                    _name27390_
                                                    '"-"
                                                    _g2949429496_
                                                    '"-set!"))
                                                 _mixin-slots27755_)))
                                          (declare (not safe))
                                          (_g2790029491_ __tmp32636))))
                                    _mixin-getf2784127880_))))))
                   (let ()
                     (declare (not safe))
                     (_loop2783627860_ _target2783327854_ '())))
                 (let ()
                   (declare (not safe))
                   (_g2783027847_ _g2783127851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2783027847_
                                                  _g2783127851_)))))
                                        (__tmp32637
                                         (gx#stx-map
                                          (lambda (_g2950329505_)
                                            (_make-id27386_
                                             _name27390_
                                             '"-"
                                             _g2950329505_))
                                          _mixin-slots27755_)))
                                   (declare (not safe))
                                   (_g2782929500_ __tmp32637))))
                             _mixin-slot2776927808_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop2776427788_
                                                       _target2776127782_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2775827775_
                                                     _g2775927779_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2775827775_ _g2775927779_))))))
                            (declare (not safe))
                            (_g2775729509_ _mixin-slots27755_))))
                      _setf2769527734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop2769027714_
                                                _target2768727708_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g2768427701_ _g2768527705_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2768427701_ _g2768527705_)))))
                          (__tmp32638
                           (gx#stx-map
                            (lambda (_g2951629518_)
                              (_make-id27386_
                               _name27390_
                               '"-"
                               _g2951629518_
                               '"-set!"))
                            _slots27381_)))
                     (declare (not safe))
                     (_g2768329513_ __tmp32638))))
               _getf2762427663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop2761927643_
                                         _target2761627637_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g2761327630_ _g2761427634_))))))
                          (let ()
                            (declare (not safe))
                            (_g2761327630_ _g2761427634_)))))
                   (__tmp32639
                    (gx#stx-map
                     (lambda (_g2952529527_)
                       (_make-id27386_ _name27390_ '"-" _g2952529527_))
                     _slots27381_)))
              (declare (not safe))
              (_g2761229522_ __tmp32639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot2755327592_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop2754827572_ _target2754527566_ '())))
                             (let ()
                               (declare (not safe))
                               (_g2754227559_ _g2754327563_))))))
                   (let ()
                     (declare (not safe))
                     (_g2754227559_ _g2754327563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g2754129531_ _slots27381_))))
                                         _g2751527526_)))
                                     (__tmp32640
                                      (map gerbil/core/mop$<MOP:2>#!class-type-descriptor
                                           _super27393_)))
                                (declare (not safe))
                                (_g2751329535_ __tmp32640))))
                          _g2748727498_)))
                      (__tmp32641 (_make-id27386_ _name27390_ '"?")))
                 (declare (not safe))
                 (_g2748529539_ __tmp32641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2745927470_)))
                                               (__tmp32642
                                                (_make-id27386_
                                                 '"make-"
                                                 _name27390_)))
                                          (declare (not safe))
                                          (_g2745729543_ __tmp32642))))
                                    _g2743127442_)))
                                (__tmp32643
                                 (_make-id27386_ _name27390_ '"::t")))
                           (declare (not safe))
                           (_g2742929547_ __tmp32643))))
                     _g2740027411_))))
            (declare (not safe))
            (_g2739829551_ _id27379_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx29615_)
        (let* ((_g2961929638_
                (lambda (_g2962029634_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2962029634_)))
               (_g2961829695_
                (lambda (_g2962029642_)
                  (if (gx#stx-pair? _g2962029642_)
                      (let ((_e2962429645_ (gx#syntax-e _g2962029642_)))
                        (let ((_hd2962529649_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2962429645_)))
                              (_tl2962629652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2962429645_))))
                          (if (gx#stx-pair? _tl2962629652_)
                              (let ((_e2962729655_
                                     (gx#syntax-e _tl2962629652_)))
                                (let ((_hd2962829659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2962729655_)))
                                      (_tl2962929662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2962729655_))))
                                  (if (gx#stx-pair? _tl2962929662_)
                                      (let ((_e2963029665_
                                             (gx#syntax-e _tl2962929662_)))
                                        (let ((_hd2963129669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2963029665_)))
                                              (_tl2963229672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2963029665_))))
                                          ((lambda (_L29675_ _L29677_ _L29678_)
                                             (let ((__tmp32648
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp32644
                                                    (let ((__tmp32645
                                                           (let ((__tmp32646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32647
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L29675_))))
                            (declare (not safe))
                            (cons 'struct: __tmp32647))))
                     (declare (not safe))
                     (cons _L29677_ __tmp32646))))
              (declare (not safe))
              (cons _L29678_ __tmp32645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32648 __tmp32644)))
                                           _tl2963229672_
                                           _hd2963129669_
                                           _hd2962829659_)))
                                      (_g2961929638_ _g2962029642_))))
                              (_g2961929638_ _g2962029642_))))
                      (_g2961929638_ _g2962029642_)))))
          (_g2961829695_ _$stx29615_))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defclass|
      (lambda (_stx29699_)
        (letrec ((_generate29702_
                  (lambda (_hd29786_ _slots29788_ _body29789_)
                    (let* ((___stx3154531546_ _hd29786_)
                           (_g2979229804_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3154531546_))))
                      (let ((___kont3154831549_
                             (lambda (_L29832_ _L29834_)
                               (let ((__tmp32649 (gx#syntax->list _L29832_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                  _stx29699_
                                  _L29834_
                                  __tmp32649
                                  _slots29788_
                                  _body29789_))))
                            (___kont3155031551_
                             (lambda ()
                               (if (gx#identifier? _hd29786_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop$<MOP:4>[1]#generate-defclass|
                                      _stx29699_
                                      _hd29786_
                                      '()
                                      _slots29788_
                                      _body29789_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx29699_
                                    _hd29786_)))))
                        (let ((___match3155831559_
                               (lambda (_e2979629822_
                                        _hd2979729826_
                                        _tl2979829829_)
                                 (let ((_L29832_ _tl2979829829_)
                                       (_L29834_ _hd2979729826_))
                                   (if (and (gx#stx-list? _L29832_)
                                            (gx#stx-andmap
                                             gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?
                                             _L29832_))
                                       (___kont3154831549_ _L29832_ _L29834_)
                                       (___kont3155031551_))))))
                          (if (gx#stx-pair? ___stx3154531546_)
                              (let ((_e2979629822_
                                     (gx#syntax-e ___stx3154531546_)))
                                (let ((_tl2979829829_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2979629822_)))
                                      (_hd2979729826_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2979629822_))))
                                  (___match3155831559_
                                   _e2979629822_
                                   _hd2979729826_
                                   _tl2979829829_)))
                              (___kont3155031551_))))))))
          (let* ((_g2970529724_
                  (lambda (_g2970629720_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2970629720_)))
                 (_g2970429782_
                  (lambda (_g2970629728_)
                    (if (gx#stx-pair? _g2970629728_)
                        (let ((_e2971029731_ (gx#syntax-e _g2970629728_)))
                          (let ((_hd2971129735_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2971029731_)))
                                (_tl2971229738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2971029731_))))
                            (if (gx#stx-pair? _tl2971229738_)
                                (let ((_e2971329741_
                                       (gx#syntax-e _tl2971229738_)))
                                  (let ((_hd2971429745_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2971329741_)))
                                        (_tl2971529748_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2971329741_))))
                                    (if (gx#stx-pair? _tl2971529748_)
                                        (let ((_e2971629751_
                                               (gx#syntax-e _tl2971529748_)))
                                          (let ((_hd2971729755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2971629751_)))
                                                (_tl2971829758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2971629751_))))
                                            ((lambda (_L29761_
                                                      _L29763_
                                                      _L29764_)
                                               (if (and (gx#identifier-list?
                                                         _L29763_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop$<MOP:4>[1]#typedef-body?|
                                                           _L29761_)))
                                                   (_generate29702_
                                                    _L29764_
                                                    _L29763_
                                                    _L29761_)
                                                   (_g2970529724_
                                                    _g2970629728_)))
                                             _tl2971829758_
                                             _hd2971729755_
                                             _hd2971429745_)))
                                        (_g2970529724_ _g2970629728_))))
                                (_g2970529724_ _g2970629728_))))
                        (_g2970529724_ _g2970629728_)))))
            (_g2970429782_ _stx29699_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#defmethod|
      (lambda (_stx29851_)
        (letrec ((_wrap29854_
                  (lambda (_e-stx30191_)
                    (gx#stx-wrap-source
                     _e-stx30191_
                     (gx#stx-source _stx29851_))))
                 (_method-opt?29856_
                  (lambda (_x30188_) (memq (gx#stx-e _x30188_) '(rebind:)))))
          (let* ((_g2985829887_
                  (lambda (_g2985929883_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2985929883_)))
                 (_g2985730184_
                  (lambda (_g2985929891_)
                    (if (gx#stx-pair? _g2985929891_)
                        (let ((_e2986429894_ (gx#syntax-e _g2985929891_)))
                          (let ((_hd2986529898_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2986429894_)))
                                (_tl2986629901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2986429894_))))
                            (if (gx#stx-pair? _tl2986629901_)
                                (let ((_e2986729904_
                                       (gx#syntax-e _tl2986629901_)))
                                  (let ((_hd2986829908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2986729904_)))
                                        (_tl2986929911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2986729904_))))
                                    (if (gx#stx-pair? _hd2986829908_)
                                        (let ((_e2987029914_
                                               (gx#syntax-e _hd2986829908_)))
                                          (let ((_hd2987129918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2987029914_)))
                                                (_tl2987229921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2987029914_))))
                                            (if (gx#identifier? _hd2987129918_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop$<MOP:4>[1]#_g32650_|
                                                     _hd2987129918_)
                                                    (if (gx#stx-pair?
                                                         _tl2987229921_)
                                                        (let ((_e2987329924_
                                                               (gx#syntax-e
                                                                _tl2987229921_)))
                                                          (let ((_hd2987429928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2987329924_)))
                        (_tl2987529931_
                         (let () (declare (not safe)) (##cdr _e2987329924_))))
                    (if (gx#stx-pair? _tl2987529931_)
                        (let ((_e2987629934_ (gx#syntax-e _tl2987529931_)))
                          (let ((_hd2987729938_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2987629934_)))
                                (_tl2987829941_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2987629934_))))
                            (if (gx#stx-null? _tl2987829941_)
                                (if (gx#stx-pair? _tl2986929911_)
                                    (let ((_e2987929944_
                                           (gx#syntax-e _tl2986929911_)))
                                      (let ((_hd2988029948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2987929944_)))
                                            (_tl2988129951_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2987929944_))))
                                        ((lambda (_L29954_
                                                  _L29956_
                                                  _L29957_
                                                  _L29958_)
                                           (if (and (gx#identifier? _L29958_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L29957_))
                                                    (gx#stx-plist?
                                                     _L29954_
                                                     _method-opt?29856_))
                                               (let* ((_klass29983_
                                                       (gx#syntax-local-value
                                                        _L29957_))
                                                      (_rebind?29986_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L29954_)))
                                                      (_g2998929997_
                                                       (lambda (_g2999029993_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2999029993_)))
                                                      (_g2998830180_
                                                       (lambda (_g2999030001_)
                                                         ((lambda (_L30004_)
                                                            (let ()
                                                              (let* ((_g3001830026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3001930022_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3001930022_)))
                             (_g3001730176_
                              (lambda (_g3001930030_)
                                ((lambda (_L30033_)
                                   (let ()
                                     (let* ((_g3004630054_
                                             (lambda (_g3004730050_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3004730050_)))
                                            (_g3004530172_
                                             (lambda (_g3004730058_)
                                               ((lambda (_L30061_)
                                                  (let ()
                                                    (let* ((_g3007430082_
                                                            (lambda (_g3007530078_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3007530078_)))
                                                           (_g3007330168_
                                                            (lambda (_g3007530086_)
                                                              ((lambda (_L30089_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3010230110_
                                   (lambda (_g3010330106_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3010330106_)))
                                  (_g3010130164_
                                   (lambda (_g3010330114_)
                                     ((lambda (_L30117_)
                                        (let ()
                                          (let* ((_g3013030138_
                                                  (lambda (_g3013130134_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3013130134_)))
                                                 (_g3012930160_
                                                  (lambda (_g3013130142_)
                                                    ((lambda (_L30145_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap29854_
                                                            (let ((__tmp32653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp32651
                           (let ((__tmp32652
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30145_ '()))))
                             (declare (not safe))
                             (cons _L30089_ __tmp32652))))
                      (declare (not safe))
                      (cons __tmp32653 __tmp32651))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3013130142_))))
                                            (_g3012930160_
                                             (_wrap29854_
                                              (let ((__tmp32661
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp32654
                                                     (let ((__tmp32655
                                                            (let ((__tmp32658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp32660 (gx#datum->syntax '#f 'quote))
                                 (__tmp32659
                                  (let ()
                                    (declare (not safe))
                                    (cons _L29958_ '()))))
                             (declare (not safe))
                             (cons __tmp32660 __tmp32659)))
                          (__tmp32656
                           (let ((__tmp32657
                                  (let ()
                                    (declare (not safe))
                                    (cons _L30117_ '()))))
                             (declare (not safe))
                             (cons _L30033_ __tmp32657))))
                      (declare (not safe))
                      (cons __tmp32658 __tmp32656))))
               (declare (not safe))
               (cons _L30004_ __tmp32655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32661
                                                      __tmp32654)))))))
                                      _g3010330114_))))
                             (_g3010130164_ _rebind?29986_))))
                       _g3007530086_))))
              (_g3007330168_
               (_wrap29854_
                (let ((__tmp32698 (gx#datum->syntax '#f 'def))
                      (__tmp32662
                       (let ((__tmp32663
                              (let ((__tmp32664
                                     (let ((__tmp32697
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp32665
                                            (let ((__tmp32667
                                                   (let ((__tmp32668
                                                          (let ((__tmp32669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp32670
                                (let ((__tmp32696
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp32671
                                       (let ((__tmp32672
                                              (let ((__tmp32673
                                                     (let ((__tmp32688
                                                            (let ((__tmp32695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp32689
                           (let ((__tmp32694 (gx#datum->syntax '#f 'obj))
                                 (__tmp32690
                                  (let ((__tmp32693
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp32691
                                         (let ((__tmp32692
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp32692 '()))))
                                    (declare (not safe))
                                    (cons __tmp32693 __tmp32691))))
                             (declare (not safe))
                             (cons __tmp32694 __tmp32690))))
                      (declare (not safe))
                      (cons __tmp32695 __tmp32689)))
                   (__tmp32674
                    (let ((__tmp32675
                           (let ((__tmp32687
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp32676
                                  (let ((__tmp32677
                                         (let ((__tmp32686
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp32678
                                                (let ((__tmp32683
                                                       (let ((__tmp32685
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp32684
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L29958_ '()))))
                 (declare (not safe))
                 (cons __tmp32685 __tmp32684)))
              (__tmp32679
               (let ((__tmp32682 (gx#datum->syntax '#f 'arg))
                     (__tmp32680
                      (let ((__tmp32681 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp32681 '()))))
                 (declare (not safe))
                 (cons __tmp32682 __tmp32680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp32683
                                                        __tmp32679))))
                                           (declare (not safe))
                                           (cons __tmp32686 __tmp32678))))
                                    (declare (not safe))
                                    (cons _L30004_ __tmp32677))))
                             (declare (not safe))
                             (cons __tmp32687 __tmp32676))))
                      (declare (not safe))
                      (cons __tmp32675 '()))))
               (declare (not safe))
               (cons __tmp32688 __tmp32674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp32673 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp32672))))
                                  (declare (not safe))
                                  (cons __tmp32696 __tmp32671))))
                           (declare (not safe))
                           (cons __tmp32670 '()))))
                    (declare (not safe))
                    (cons _L30061_ __tmp32669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32668 '())))
                                                  (__tmp32666
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L29956_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32667 __tmp32666))))
                                       (declare (not safe))
                                       (cons __tmp32697 __tmp32665))))
                                (declare (not safe))
                                (cons __tmp32664 '()))))
                         (declare (not safe))
                         (cons _L30033_ __tmp32663))))
                  (declare (not safe))
                  (cons __tmp32698 __tmp32662)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3004730058_))))
                                       (_g3004530172_
                                        (gx#stx-identifier
                                         _L29957_
                                         '@next-method)))))
                                 _g3001930030_))))
                        (_g3001730176_
                         (gx#stx-identifier
                          _L29957_
                          _L29957_
                          '"::"
                          _L29958_)))))
                  _g2999030001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2998830180_
                                                  (let ((__obj31822
                                                         _klass29983_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj31822
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj31822
                                                           '10
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         __obj31822
                                                         'type-descriptor)))))
                                               (if (let ((__tmp32699
                                                          (gx#identifier?
                                                           _L29958_)))
                                                     (declare (not safe))
                                                     (not __tmp32699))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx29851_
                                                    _L29958_)
                                                   (if (let ((__tmp32700
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                         _L29957_))))
                 (declare (not safe))
                 (not __tmp32700))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx29851_
                _L29957_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx29851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2988129951_
                                         _hd2988029948_
                                         _hd2987729938_
                                         _hd2987429928_)))
                                    (_g2985829887_ _g2985929891_))
                                (_g2985829887_ _g2985929891_))))
                        (_g2985829887_ _g2985929891_))))
                (_g2985829887_ _g2985929891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2985829887_
                                                     _g2985929891_))
                                                (_g2985829887_
                                                 _g2985929891_))))
                                        (_g2985829887_ _g2985929891_))))
                                (_g2985829887_ _g2985929891_))))
                        (_g2985829887_ _g2985929891_)))))
            (_g2985730184_ _stx29851_)))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@method|
      (lambda (_stx30194_)
        (letrec ((_dotted-identifier?30197_
                  (lambda (_id30830_)
                    (if (gx#identifier? _id30830_)
                        (let ((_id-str30833_
                               (symbol->string (gx#stx-e _id30830_))))
                          (if (string-index _id-str30833_ '#\.)
                              (let ((_split30836_
                                     (string-split _id-str30833_ '#\.)))
                                (fx= (length _split30836_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted30199_
                  (lambda (_id30819_)
                    (let* ((_id-str30822_
                            (symbol->string (gx#stx-e _id30819_)))
                           (_split30825_ (string-split _id-str30822_ '#\.)))
                      (let ((__tmp32703
                             (gx#stx-identifier _id30819_ (car _split30825_)))
                            (__tmp32701
                             (let ((__tmp32702
                                    (gx#stx-identifier
                                     _id30819_
                                     (cadr _split30825_))))
                               (declare (not safe))
                               (cons __tmp32702 '()))))
                        (declare (not safe))
                        (cons __tmp32703 __tmp32701))))))
          (let* ((___stx3156131562_ _stx30194_)
                 (_g3020430291_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3156131562_))))
            (let ((___kont3156431565_
                   (lambda (_L30712_ _L30714_ _L30715_)
                     (let* ((_g3074330758_
                             (lambda (_g3074430754_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3074430754_)))
                            (_g3074230811_
                             (lambda (_g3074430762_)
                               (if (gx#stx-pair? _g3074430762_)
                                   (let ((_e3074730765_
                                          (gx#syntax-e _g3074430762_)))
                                     (let ((_hd3074830769_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3074730765_)))
                                           (_tl3074930772_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3074730765_))))
                                       (if (gx#stx-pair? _tl3074930772_)
                                           (let ((_e3075030775_
                                                  (gx#syntax-e
                                                   _tl3074930772_)))
                                             (let ((_hd3075130779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3075030775_)))
                                                   (_tl3075230782_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3075030775_))))
                                               (if (gx#stx-null?
                                                    _tl3075230782_)
                                                   ((lambda (_L30785_ _L30787_)
                                                      (let ()
                                                        (let ((__tmp32715
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp32704
                                                               (let ((__tmp32714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp32705
                              (let ((__tmp32706
                                     (let ((__tmp32711
                                            (let ((__tmp32713
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32712
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L30785_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32713 __tmp32712)))
                                           (__tmp32707
                                            (let ((__tmp32708
                                                   (let ((__tmp32710
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp32709
                                                          (foldr (lambda (_g3080230805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3080330808_)
                           (let ()
                             (declare (not safe))
                             (cons _g3080230805_ _g3080330808_)))
                         '()
                         _L30714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp32710
                                                           __tmp32709))))
                                              (declare (not safe))
                                              (cons __tmp32708 '()))))
                                       (declare (not safe))
                                       (cons __tmp32711 __tmp32707))))
                                (declare (not safe))
                                (cons _L30787_ __tmp32706))))
                         (declare (not safe))
                         (cons __tmp32714 __tmp32705))))
                  (declare (not safe))
                  (cons __tmp32715 __tmp32704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3075130779_
                                                    _hd3074830769_)
                                                   (_g3074330758_
                                                    _g3074430762_))))
                                           (_g3074330758_ _g3074430762_))))
                                   (_g3074330758_ _g3074430762_)))))
                       (_g3074230811_ (_split-dotted30199_ _L30715_)))))
                  (___kont3156831569_
                   (lambda (_L30554_ _L30556_)
                     (let* ((_g3057330588_
                             (lambda (_g3057430584_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3057430584_)))
                            (_g3057230641_
                             (lambda (_g3057430592_)
                               (if (gx#stx-pair? _g3057430592_)
                                   (let ((_e3057730595_
                                          (gx#syntax-e _g3057430592_)))
                                     (let ((_hd3057830599_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3057730595_)))
                                           (_tl3057930602_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3057730595_))))
                                       (if (gx#stx-pair? _tl3057930602_)
                                           (let ((_e3058030605_
                                                  (gx#syntax-e
                                                   _tl3057930602_)))
                                             (let ((_hd3058130609_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3058030605_)))
                                                   (_tl3058230612_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3058030605_))))
                                               (if (gx#stx-null?
                                                    _tl3058230612_)
                                                   ((lambda (_L30615_ _L30617_)
                                                      (let ()
                                                        (let ((__tmp32722
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp32716
                                                               (let ((__tmp32717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp32719
                                     (let ((__tmp32721
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp32720
                                            (let ()
                                              (declare (not safe))
                                              (cons _L30615_ '()))))
                                       (declare (not safe))
                                       (cons __tmp32721 __tmp32720)))
                                    (__tmp32718
                                     (foldr (lambda (_g3063230635_
                                                     _g3063330638_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3063230635_
                                                      _g3063330638_)))
                                            '()
                                            _L30554_)))
                                (declare (not safe))
                                (cons __tmp32719 __tmp32718))))
                         (declare (not safe))
                         (cons _L30617_ __tmp32717))))
                  (declare (not safe))
                  (cons __tmp32722 __tmp32716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3058130609_
                                                    _hd3057830599_)
                                                   (_g3057330588_
                                                    _g3057430592_))))
                                           (_g3057330588_ _g3057430592_))))
                                   (_g3057330588_ _g3057430592_)))))
                       (_g3057230641_ (_split-dotted30199_ _L30556_)))))
                  (___kont3157231573_
                   (lambda (_L30458_ _L30460_ _L30461_)
                     (let ((__tmp32734 (gx#datum->syntax '#f 'apply))
                           (__tmp32723
                            (let ((__tmp32733
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp32724
                                   (let ((__tmp32725
                                          (let ((__tmp32730
                                                 (let ((__tmp32732
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32731
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L30461_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32732
                                                         __tmp32731)))
                                                (__tmp32726
                                                 (let ((__tmp32727
                                                        (let ((__tmp32729
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp32728
                                                               (foldr (lambda (_g3048830491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3048930494_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3048830491_ _g3048930494_)))
                              '()
                              _L30458_)))
                  (declare (not safe))
                  (cons __tmp32729 __tmp32728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32727 '()))))
                                            (declare (not safe))
                                            (cons __tmp32730 __tmp32726))))
                                     (declare (not safe))
                                     (cons _L30460_ __tmp32725))))
                              (declare (not safe))
                              (cons __tmp32733 __tmp32724))))
                       (declare (not safe))
                       (cons __tmp32734 __tmp32723))))
                  (___kont3157631577_
                   (lambda (_L30358_ _L30360_ _L30361_)
                     (let ((__tmp32741 (gx#datum->syntax '#f 'call-method))
                           (__tmp32735
                            (let ((__tmp32736
                                   (let ((__tmp32738
                                          (let ((__tmp32740
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp32739
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30361_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32740 __tmp32739)))
                                         (__tmp32737
                                          (foldr (lambda (_g3038230385_
                                                          _g3038330388_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3038230385_
                                                           _g3038330388_)))
                                                 '()
                                                 _L30358_)))
                                     (declare (not safe))
                                     (cons __tmp32738 __tmp32737))))
                              (declare (not safe))
                              (cons _L30360_ __tmp32736))))
                       (declare (not safe))
                       (cons __tmp32741 __tmp32735)))))
              (let* ((___match3168031681_
                      (lambda (_e3026830298_
                               _hd3026930302_
                               _tl3027030305_
                               _e3027130308_
                               _hd3027230312_
                               _tl3027330315_
                               _e3027430318_
                               _hd3027530322_
                               _tl3027630325_
                               ___splice3157831579_
                               _target3027730328_
                               _tl3027930331_)
                        (letrec ((_loop3028030334_
                                  (lambda (_hd3027830338_ _arg3028430341_)
                                    (if (gx#stx-pair? _hd3027830338_)
                                        (let ((_e3028130344_
                                               (gx#syntax-e _hd3027830338_)))
                                          (let ((_lp-tl3028330351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3028130344_)))
                                                (_lp-hd3028230348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3028130344_))))
                                            (_loop3028030334_
                                             _lp-tl3028330351_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3028230348_
                                                     _arg3028430341_)))))
                                        (let ((_arg3028530354_
                                               (reverse _arg3028430341_)))
                                          (let ((_L30358_ _arg3028530354_)
                                                (_L30360_ _hd3027530322_)
                                                (_L30361_ _hd3027230312_))
                                            (if (gx#identifier? _L30361_)
                                                (___kont3157631577_
                                                 _L30358_
                                                 _L30360_
                                                 _L30361_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020430291_)))))))))
                          (_loop3028030334_ _target3027730328_ '()))))
                     (___match3165431655_
                      (lambda (_e3024730398_
                               _hd3024830402_
                               _tl3024930405_
                               _e3025030408_
                               _hd3025130412_
                               _tl3025230415_
                               _e3025330418_
                               _hd3025430422_
                               _tl3025530425_
                               ___splice3157431575_
                               _target3025630428_
                               _tl3025830431_)
                        (letrec ((_loop3025930434_
                                  (lambda (_hd3025730438_ _arg3026330441_)
                                    (if (gx#stx-pair? _hd3025730438_)
                                        (let ((_e3026030444_
                                               (gx#syntax-e _hd3025730438_)))
                                          (let ((_lp-tl3026230451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3026030444_)))
                                                (_lp-hd3026130448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3026030444_))))
                                            (_loop3025930434_
                                             _lp-tl3026230451_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3026130448_
                                                     _arg3026330441_)))))
                                        (let ((_arg3026430454_
                                               (reverse _arg3026330441_)))
                                          (let ((_L30458_ _arg3026430454_)
                                                (_L30460_ _hd3025430422_)
                                                (_L30461_ _hd3025130412_))
                                            (if (and (gx#identifier? _L30461_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3048030483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3048130486_)
                       (let ()
                         (declare (not safe))
                         (cons _g3048030483_ _g3048130486_)))
                     '()
                     _L30458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3157231573_
                                                 _L30458_
                                                 _L30460_
                                                 _L30461_)
                                                (___match3168031681_
                                                 _e3024730398_
                                                 _hd3024830402_
                                                 _tl3024930405_
                                                 _e3025030408_
                                                 _hd3025130412_
                                                 _tl3025230415_
                                                 _e3025330418_
                                                 _hd3025430422_
                                                 _tl3025530425_
                                                 ___splice3157431575_
                                                 _target3025630428_
                                                 _tl3025830431_))))))))
                          (_loop3025930434_ _target3025630428_ '()))))
                     (___match3164031641_
                      (lambda (_e3024730398_
                               _hd3024830402_
                               _tl3024930405_
                               _e3025030408_
                               _hd3025130412_
                               _tl3025230415_)
                        (if (gx#stx-pair? _tl3025230415_)
                            (let ((_e3025330418_ (gx#syntax-e _tl3025230415_)))
                              (let ((_tl3025530425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025330418_)))
                                    (_hd3025430422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025330418_))))
                                (if (gx#stx-pair/null? _tl3025530425_)
                                    (let ((___splice3157431575_
                                           (gx#syntax-split-splice
                                            _tl3025530425_
                                            '0)))
                                      (let ((_tl3025830431_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157431575_
                                                '1)))
                                            (_target3025630428_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157431575_
                                                '0))))
                                        (if (gx#stx-null? _tl3025830431_)
                                            (___match3165431655_
                                             _e3024730398_
                                             _hd3024830402_
                                             _tl3024930405_
                                             _e3025030408_
                                             _hd3025130412_
                                             _tl3025230415_
                                             _e3025330418_
                                             _hd3025430422_
                                             _tl3025530425_
                                             ___splice3157431575_
                                             _target3025630428_
                                             _tl3025830431_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020430291_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020430291_)))))
                            (let () (declare (not safe)) (_g3020430291_)))))
                     (___match3162831629_
                      (lambda (_e3022930504_
                               _hd3023030508_
                               _tl3023130511_
                               _e3023230514_
                               _hd3023330518_
                               _tl3023430521_
                               ___splice3157031571_
                               _target3023530524_
                               _tl3023730527_)
                        (letrec ((_loop3023830530_
                                  (lambda (_hd3023630534_ _arg3024230537_)
                                    (if (gx#stx-pair? _hd3023630534_)
                                        (let ((_e3023930540_
                                               (gx#syntax-e _hd3023630534_)))
                                          (let ((_lp-tl3024130547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3023930540_)))
                                                (_lp-hd3024030544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3023930540_))))
                                            (_loop3023830530_
                                             _lp-tl3024130547_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3024030544_
                                                     _arg3024230537_)))))
                                        (let ((_arg3024330550_
                                               (reverse _arg3024230537_)))
                                          (let ((_L30554_ _arg3024330550_)
                                                (_L30556_ _hd3023330518_))
                                            (if (_dotted-identifier?30197_
                                                 _L30556_)
                                                (___kont3156831569_
                                                 _L30554_
                                                 _L30556_)
                                                (___match3164031641_
                                                 _e3022930504_
                                                 _hd3023030508_
                                                 _tl3023130511_
                                                 _e3023230514_
                                                 _hd3023330518_
                                                 _tl3023430521_))))))))
                          (_loop3023830530_ _target3023530524_ '()))))
                     (___match3162631627_
                      (lambda (_e3022930504_
                               _hd3023030508_
                               _tl3023130511_
                               _e3023230514_
                               _hd3023330518_
                               _tl3023430521_
                               ___splice3157031571_
                               _target3023530524_
                               _tl3023730527_)
                        (if (gx#stx-null? _tl3023730527_)
                            (___match3162831629_
                             _e3022930504_
                             _hd3023030508_
                             _tl3023130511_
                             _e3023230514_
                             _hd3023330518_
                             _tl3023430521_
                             ___splice3157031571_
                             _target3023530524_
                             _tl3023730527_)
                            (if (gx#stx-pair? _tl3023430521_)
                                (let ((_e3025330418_
                                       (gx#syntax-e _tl3023430521_)))
                                  (let ((_tl3025530425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3025330418_)))
                                        (_hd3025430422_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3025330418_))))
                                    (if (gx#stx-pair/null? _tl3025530425_)
                                        (let ((___splice3157431575_
                                               (gx#syntax-split-splice
                                                _tl3025530425_
                                                '0)))
                                          (let ((_tl3025830431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157431575_
                                                    '1)))
                                                (_target3025630428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157431575_
                                                    '0))))
                                            (if (gx#stx-null? _tl3025830431_)
                                                (___match3165431655_
                                                 _e3022930504_
                                                 _hd3023030508_
                                                 _tl3023130511_
                                                 _e3023230514_
                                                 _hd3023330518_
                                                 _tl3023430521_
                                                 _e3025330418_
                                                 _hd3025430422_
                                                 _tl3025530425_
                                                 ___splice3157431575_
                                                 _target3025630428_
                                                 _tl3025830431_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020430291_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020430291_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3020430291_))))))
                     (___match3160831609_
                      (lambda (_e3020930652_
                               _hd3021030656_
                               _tl3021130659_
                               _e3021230662_
                               _hd3021330666_
                               _tl3021430669_
                               ___splice3156631567_
                               _target3021530672_
                               _tl3021730675_
                               _e3022430678_
                               _hd3022530682_
                               _tl3022630685_)
                        (letrec ((_loop3021830688_
                                  (lambda (_hd3021630692_ _arg3022230695_)
                                    (if (gx#stx-pair? _hd3021630692_)
                                        (let ((_e3021930698_
                                               (gx#syntax-e _hd3021630692_)))
                                          (let ((_lp-tl3022130705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3021930698_)))
                                                (_lp-hd3022030702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3021930698_))))
                                            (_loop3021830688_
                                             _lp-tl3022130705_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3022030702_
                                                     _arg3022230695_)))))
                                        (let ((_arg3022330708_
                                               (reverse _arg3022230695_)))
                                          (let ((_L30712_ _hd3022530682_)
                                                (_L30714_ _arg3022330708_)
                                                (_L30715_ _hd3021330666_))
                                            (if (and (_dotted-identifier?30197_
                                                      _L30715_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g3073430737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3073530740_)
                       (let ()
                         (declare (not safe))
                         (cons _g3073430737_ _g3073530740_)))
                     '()
                     _L30714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3156431565_
                                                 _L30712_
                                                 _L30714_
                                                 _L30715_)
                                                (let ((___splice3157031571_
                                                       (gx#syntax-split-splice
                                                        _tl3021430669_
                                                        '0)))
                                                  (let ((_tl3023730527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157031571_
                                                            '1)))
                                                        (_target3023530524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157031571_
                                                            '0))))
                                                    (___match3162631627_
                                                     _e3020930652_
                                                     _hd3021030656_
                                                     _tl3021130659_
                                                     _e3021230662_
                                                     _hd3021330666_
                                                     _tl3021430669_
                                                     ___splice3157031571_
                                                     _target3023530524_
                                                     _tl3023730527_))))))))))
                          (_loop3021830688_ _target3021530672_ '())))))
                (if (gx#stx-pair? ___stx3156131562_)
                    (let ((_e3020930652_ (gx#syntax-e ___stx3156131562_)))
                      (let ((_tl3021130659_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3020930652_)))
                            (_hd3021030656_
                             (let ()
                               (declare (not safe))
                               (##car _e3020930652_))))
                        (if (gx#stx-pair? _tl3021130659_)
                            (let ((_e3021230662_ (gx#syntax-e _tl3021130659_)))
                              (let ((_tl3021430669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3021230662_)))
                                    (_hd3021330666_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3021230662_))))
                                (if (gx#stx-pair/null? _tl3021430669_)
                                    (if (fx>= (gx#stx-length _tl3021430669_)
                                              '1)
                                        (let ((___splice3156631567_
                                               (gx#syntax-split-splice
                                                _tl3021430669_
                                                '1)))
                                          (let ((_tl3021730675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3156631567_
                                                    '1)))
                                                (_target3021530672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3156631567_
                                                    '0))))
                                            (if (gx#stx-pair? _tl3021730675_)
                                                (let ((_e3022430678_
                                                       (gx#syntax-e
                                                        _tl3021730675_)))
                                                  (let ((_tl3022630685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3022430678_)))
                                                        (_hd3022530682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3022430678_))))
                                                    (if (gx#stx-null?
                                                         _tl3022630685_)
                                                        (___match3160831609_
                                                         _e3020930652_
                                                         _hd3021030656_
                                                         _tl3021130659_
                                                         _e3021230662_
                                                         _hd3021330666_
                                                         _tl3021430669_
                                                         ___splice3156631567_
                                                         _target3021530672_
                                                         _tl3021730675_
                                                         _e3022430678_
                                                         _hd3022530682_
                                                         _tl3022630685_)
                                                        (let ((___splice3157031571_
                                                               (gx#syntax-split-splice
                                                                _tl3021430669_
                                                                '0)))
                                                          (let ((_tl3023730527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157031571_ '1)))
                        (_target3023530524_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3157031571_ '0))))
                    (if (gx#stx-null? _tl3023730527_)
                        (___match3162831629_
                         _e3020930652_
                         _hd3021030656_
                         _tl3021130659_
                         _e3021230662_
                         _hd3021330666_
                         _tl3021430669_
                         ___splice3157031571_
                         _target3023530524_
                         _tl3023730527_)
                        (if (gx#stx-pair? _tl3021430669_)
                            (let ((_e3025330418_ (gx#syntax-e _tl3021430669_)))
                              (let ((_tl3025530425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025330418_)))
                                    (_hd3025430422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025330418_))))
                                (if (gx#stx-pair/null? _tl3025530425_)
                                    (let ((___splice3157431575_
                                           (gx#syntax-split-splice
                                            _tl3025530425_
                                            '0)))
                                      (let ((_tl3025830431_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157431575_
                                                '1)))
                                            (_target3025630428_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3157431575_
                                                '0))))
                                        (if (gx#stx-null? _tl3025830431_)
                                            (___match3165431655_
                                             _e3020930652_
                                             _hd3021030656_
                                             _tl3021130659_
                                             _e3021230662_
                                             _hd3021330666_
                                             _tl3021430669_
                                             _e3025330418_
                                             _hd3025430422_
                                             _tl3025530425_
                                             ___splice3157431575_
                                             _target3025630428_
                                             _tl3025830431_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3020430291_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3020430291_)))))
                            (let ()
                              (declare (not safe))
                              (_g3020430291_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3157031571_
                                                       (gx#syntax-split-splice
                                                        _tl3021430669_
                                                        '0)))
                                                  (let ((_tl3023730527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157031571_
                                                            '1)))
                                                        (_target3023530524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157031571_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3023730527_)
                                                        (___match3162831629_
                                                         _e3020930652_
                                                         _hd3021030656_
                                                         _tl3021130659_
                                                         _e3021230662_
                                                         _hd3021330666_
                                                         _tl3021430669_
                                                         ___splice3157031571_
                                                         _target3023530524_
                                                         _tl3023730527_)
                                                        (if (gx#stx-pair?
                                                             _tl3021430669_)
                                                            (let ((_e3025330418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3021430669_)))
                      (let ((_tl3025530425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3025330418_)))
                            (_hd3025430422_
                             (let ()
                               (declare (not safe))
                               (##car _e3025330418_))))
                        (if (gx#stx-pair/null? _tl3025530425_)
                            (let ((___splice3157431575_
                                   (gx#syntax-split-splice _tl3025530425_ '0)))
                              (let ((_tl3025830431_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3157431575_ '1)))
                                    (_target3025630428_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3157431575_
                                        '0))))
                                (if (gx#stx-null? _tl3025830431_)
                                    (___match3165431655_
                                     _e3020930652_
                                     _hd3021030656_
                                     _tl3021130659_
                                     _e3021230662_
                                     _hd3021330666_
                                     _tl3021430669_
                                     _e3025330418_
                                     _hd3025430422_
                                     _tl3025530425_
                                     ___splice3157431575_
                                     _target3025630428_
                                     _tl3025830431_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3020430291_)))))
                            (let () (declare (not safe)) (_g3020430291_)))))
                    (let () (declare (not safe)) (_g3020430291_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3157031571_
                                               (gx#syntax-split-splice
                                                _tl3021430669_
                                                '0)))
                                          (let ((_tl3023730527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157031571_
                                                    '1)))
                                                (_target3023530524_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3157031571_
                                                    '0))))
                                            (if (gx#stx-null? _tl3023730527_)
                                                (___match3162831629_
                                                 _e3020930652_
                                                 _hd3021030656_
                                                 _tl3021130659_
                                                 _e3021230662_
                                                 _hd3021330666_
                                                 _tl3021430669_
                                                 ___splice3157031571_
                                                 _target3023530524_
                                                 _tl3023730527_)
                                                (if (gx#stx-pair?
                                                     _tl3021430669_)
                                                    (let ((_e3025330418_
                                                           (gx#syntax-e
                                                            _tl3021430669_)))
                                                      (let ((_tl3025530425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3025330418_)))
                    (_hd3025430422_
                     (let () (declare (not safe)) (##car _e3025330418_))))
                (if (gx#stx-pair/null? _tl3025530425_)
                    (let ((___splice3157431575_
                           (gx#syntax-split-splice _tl3025530425_ '0)))
                      (let ((_tl3025830431_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3157431575_ '1)))
                            (_target3025630428_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3157431575_ '0))))
                        (if (gx#stx-null? _tl3025830431_)
                            (___match3165431655_
                             _e3020930652_
                             _hd3021030656_
                             _tl3021130659_
                             _e3021230662_
                             _hd3021330666_
                             _tl3021430669_
                             _e3025330418_
                             _hd3025430422_
                             _tl3025530425_
                             ___splice3157431575_
                             _target3025630428_
                             _tl3025830431_)
                            (let () (declare (not safe)) (_g3020430291_)))))
                    (let () (declare (not safe)) (_g3020430291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3020430291_)))))))
                                    (if (gx#stx-pair? _tl3021430669_)
                                        (let ((_e3025330418_
                                               (gx#syntax-e _tl3021430669_)))
                                          (let ((_tl3025530425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3025330418_)))
                                                (_hd3025430422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3025330418_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3025530425_)
                                                (let ((___splice3157431575_
                                                       (gx#syntax-split-splice
                                                        _tl3025530425_
                                                        '0)))
                                                  (let ((_tl3025830431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157431575_
                                                            '1)))
                                                        (_target3025630428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3157431575_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3025830431_)
                                                        (___match3165431655_
                                                         _e3020930652_
                                                         _hd3021030656_
                                                         _tl3021130659_
                                                         _e3021230662_
                                                         _hd3021330666_
                                                         _tl3021430669_
                                                         _e3025330418_
                                                         _hd3025430422_
                                                         _tl3025530425_
                                                         ___splice3157431575_
                                                         _target3025630428_
                                                         _tl3025830431_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3020430291_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3020430291_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3020430291_))))))
                            (let () (declare (not safe)) (_g3020430291_)))))
                    (let () (declare (not safe)) (_g3020430291_)))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@|
      (lambda (_$stx30843_)
        (let* ((___stx3168331684_ _$stx30843_)
               (_g3084830888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3168331684_))))
          (let ((___kont3168631687_
                 (lambda (_L31026_ _L31028_)
                   (let ((__tmp32747 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp32742
                          (let ((__tmp32743
                                 (let ((__tmp32744
                                        (let ((__tmp32746
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31026_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32746 __tmp32745))))
                                   (declare (not safe))
                                   (cons __tmp32744 '()))))
                            (declare (not safe))
                            (cons _L31028_ __tmp32743))))
                     (declare (not safe))
                     (cons __tmp32747 __tmp32742))))
                (___kont3168831689_
                 (lambda (_L30955_ _L30957_ _L30958_ _L30959_)
                   (let ((__tmp32748
                          (let ((__tmp32750
                                 (let ((__tmp32751
                                        (let ((__tmp32752
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30957_ '()))))
                                          (declare (not safe))
                                          (cons _L30958_ __tmp32752))))
                                   (declare (not safe))
                                   (cons _L30959_ __tmp32751)))
                                (__tmp32749
                                 (foldr (lambda (_g3098030983_ _g3098130986_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3098030983_
                                                  _g3098130986_)))
                                        '()
                                        _L30955_)))
                            (declare (not safe))
                            (cons __tmp32750 __tmp32749))))
                     (declare (not safe))
                     (cons _L30959_ __tmp32748)))))
            (let* ((___match3173831739_
                    (lambda (_e3086530895_
                             _hd3086630899_
                             _tl3086730902_
                             _e3086830905_
                             _hd3086930909_
                             _tl3087030912_
                             _e3087130915_
                             _hd3087230919_
                             _tl3087330922_
                             ___splice3169031691_
                             _target3087430925_
                             _tl3087630928_)
                      (letrec ((_loop3087730931_
                                (lambda (_hd3087530935_ _rest3088130938_)
                                  (if (gx#stx-pair? _hd3087530935_)
                                      (let ((_e3087830941_
                                             (gx#syntax-e _hd3087530935_)))
                                        (let ((_lp-tl3088030948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3087830941_)))
                                              (_lp-hd3087930945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3087830941_))))
                                          (_loop3087730931_
                                           _lp-tl3088030948_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3087930945_
                                                   _rest3088130938_)))))
                                      (let ((_rest3088230951_
                                             (reverse _rest3088130938_)))
                                        (___kont3168831689_
                                         _rest3088230951_
                                         _hd3087230919_
                                         _hd3086930909_
                                         _hd3086630899_))))))
                        (_loop3087730931_ _target3087430925_ '()))))
                   (___match3171231713_
                    (lambda (_e3085230996_
                             _hd3085331000_
                             _tl3085431003_
                             _e3085531006_
                             _hd3085631010_
                             _tl3085731013_
                             _e3085831016_
                             _hd3085931020_
                             _tl3086031023_)
                      (let ((_L31026_ _hd3085931020_)
                            (_L31028_ _hd3085631010_))
                        (if (gx#identifier? _L31026_)
                            (___kont3168631687_ _L31026_ _L31028_)
                            (if (gx#stx-pair/null? _tl3086031023_)
                                (let ((___splice3169031691_
                                       (gx#syntax-split-splice
                                        _tl3086031023_
                                        '0)))
                                  (let ((_tl3087630928_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169031691_
                                            '1)))
                                        (_target3087430925_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3169031691_
                                            '0))))
                                    (if (gx#stx-null? _tl3087630928_)
                                        (___match3173831739_
                                         _e3085230996_
                                         _hd3085331000_
                                         _tl3085431003_
                                         _e3085531006_
                                         _hd3085631010_
                                         _tl3085731013_
                                         _e3085831016_
                                         _hd3085931020_
                                         _tl3086031023_
                                         ___splice3169031691_
                                         _target3087430925_
                                         _tl3087630928_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3084830888_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3084830888_))))))))
              (if (gx#stx-pair? ___stx3168331684_)
                  (let ((_e3085230996_ (gx#syntax-e ___stx3168331684_)))
                    (let ((_tl3085431003_
                           (let () (declare (not safe)) (##cdr _e3085230996_)))
                          (_hd3085331000_
                           (let ()
                             (declare (not safe))
                             (##car _e3085230996_))))
                      (if (gx#stx-pair? _tl3085431003_)
                          (let ((_e3085531006_ (gx#syntax-e _tl3085431003_)))
                            (let ((_tl3085731013_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3085531006_)))
                                  (_hd3085631010_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3085531006_))))
                              (if (gx#stx-pair? _tl3085731013_)
                                  (let ((_e3085831016_
                                         (gx#syntax-e _tl3085731013_)))
                                    (let ((_tl3086031023_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3085831016_)))
                                          (_hd3085931020_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3085831016_))))
                                      (if (gx#stx-null? _tl3086031023_)
                                          (___match3171231713_
                                           _e3085230996_
                                           _hd3085331000_
                                           _tl3085431003_
                                           _e3085531006_
                                           _hd3085631010_
                                           _tl3085731013_
                                           _e3085831016_
                                           _hd3085931020_
                                           _tl3086031023_)
                                          (if (gx#stx-pair/null?
                                               _tl3086031023_)
                                              (let ((___splice3169031691_
                                                     (gx#syntax-split-splice
                                                      _tl3086031023_
                                                      '0)))
                                                (let ((_tl3087630928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169031691_
                                                          '1)))
                                                      (_target3087430925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3169031691_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3087630928_)
                                                      (___match3173831739_
                                                       _e3085230996_
                                                       _hd3085331000_
                                                       _tl3085431003_
                                                       _e3085531006_
                                                       _hd3085631010_
                                                       _tl3085731013_
                                                       _e3085831016_
                                                       _hd3085931020_
                                                       _tl3086031023_
                                                       ___splice3169031691_
                                                       _target3087430925_
                                                       _tl3087630928_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3084830888_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3084830888_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3084830888_)))))
                          (let () (declare (not safe)) (_g3084830888_)))))
                  (let () (declare (not safe)) (_g3084830888_))))))))
    (define |gerbil/core/mop$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx31048_)
        (let* ((___stx3174131742_ _$stx31048_)
               (_g3105331105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3174131742_))))
          (let ((___kont3174431745_
                 (lambda (_L31281_ _L31283_ _L31284_)
                   (let ((__tmp32759 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp32753
                          (let ((__tmp32754
                                 (let ((__tmp32756
                                        (let ((__tmp32758
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp32757
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31283_ '()))))
                                          (declare (not safe))
                                          (cons __tmp32758 __tmp32757)))
                                       (__tmp32755
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31281_ '()))))
                                   (declare (not safe))
                                   (cons __tmp32756 __tmp32755))))
                            (declare (not safe))
                            (cons _L31284_ __tmp32754))))
                     (declare (not safe))
                     (cons __tmp32759 __tmp32753))))
                (___kont3174631747_
                 (lambda (_L31192_
                          _L31194_
                          _L31195_
                          _L31196_
                          _L31197_
                          _L31198_)
                   (let ((__tmp32760
                          (let ((__tmp32763
                                 (let ((__tmp32767 (gx#datum->syntax '#f '@))
                                       (__tmp32764
                                        (let ((__tmp32765
                                               (let ((__tmp32766
                                                      (foldr (lambda (_g3122531228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3122631231_)
                       (let ()
                         (declare (not safe))
                         (cons _g3122531228_ _g3122631231_)))
                     '()
                     _L31195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31196_ __tmp32766))))
                                          (declare (not safe))
                                          (cons _L31197_ __tmp32765))))
                                   (declare (not safe))
                                   (cons __tmp32767 __tmp32764)))
                                (__tmp32761
                                 (let ((__tmp32762
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31192_ '()))))
                                   (declare (not safe))
                                   (cons _L31194_ __tmp32762))))
                            (declare (not safe))
                            (cons __tmp32763 __tmp32761))))
                     (declare (not safe))
                     (cons _L31198_ __tmp32760)))))
            (let* ((___match3181631817_
                    (lambda (_e3107631112_
                             _hd3107731116_
                             _tl3107831119_
                             _e3107931122_
                             _hd3108031126_
                             _tl3108131129_
                             _e3108231132_
                             _hd3108331136_
                             _tl3108431139_
                             ___splice3174831749_
                             _target3108531142_
                             _tl3108731145_
                             _e3109431148_
                             _hd3109531152_
                             _tl3109631155_
                             _e3109731158_
                             _hd3109831162_
                             _tl3109931165_)
                      (letrec ((_loop3108831168_
                                (lambda (_hd3108631172_ _path3109231175_)
                                  (if (gx#stx-pair? _hd3108631172_)
                                      (let ((_e3108931178_
                                             (gx#syntax-e _hd3108631172_)))
                                        (let ((_lp-tl3109131185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3108931178_)))
                                              (_lp-hd3109031182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3108931178_))))
                                          (_loop3108831168_
                                           _lp-tl3109131185_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3109031182_
                                                   _path3109231175_)))))
                                      (let ((_path3109331188_
                                             (reverse _path3109231175_)))
                                        (___kont3174631747_
                                         _hd3109831162_
                                         _hd3109531152_
                                         _path3109331188_
                                         _hd3108331136_
                                         _hd3108031126_
                                         _hd3107731116_))))))
                        (_loop3108831168_ _target3108531142_ '()))))
                   (___match3177631777_
                    (lambda (_e3105831241_
                             _hd3105931245_
                             _tl3106031248_
                             _e3106131251_
                             _hd3106231255_
                             _tl3106331258_
                             _e3106431261_
                             _hd3106531265_
                             _tl3106631268_
                             _e3106731271_
                             _hd3106831275_
                             _tl3106931278_)
                      (let ((_L31281_ _hd3106831275_)
                            (_L31283_ _hd3106531265_)
                            (_L31284_ _hd3106231255_))
                        (if (gx#identifier? _L31283_)
                            (___kont3174431745_ _L31281_ _L31283_ _L31284_)
                            (if (gx#stx-pair/null? _tl3106631268_)
                                (if (fx>= (gx#stx-length _tl3106631268_) '2)
                                    (let ((___splice3174831749_
                                           (gx#syntax-split-splice
                                            _tl3106631268_
                                            '2)))
                                      (let ((_tl3108731145_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3174831749_
                                                '1)))
                                            (_target3108531142_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3174831749_
                                                '0))))
                                        (if (gx#stx-pair? _tl3108731145_)
                                            (let ((_e3109431148_
                                                   (gx#syntax-e
                                                    _tl3108731145_)))
                                              (let ((_tl3109631155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3109431148_)))
                                                    (_hd3109531152_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3109431148_))))
                                                (if (gx#stx-pair?
                                                     _tl3109631155_)
                                                    (let ((_e3109731158_
                                                           (gx#syntax-e
                                                            _tl3109631155_)))
                                                      (let ((_tl3109931165_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3109731158_)))
                    (_hd3109831162_
                     (let () (declare (not safe)) (##car _e3109731158_))))
                (if (gx#stx-null? _tl3109931165_)
                    (___match3181631817_
                     _e3105831241_
                     _hd3105931245_
                     _tl3106031248_
                     _e3106131251_
                     _hd3106231255_
                     _tl3106331258_
                     _e3106431261_
                     _hd3106531265_
                     _tl3106631268_
                     ___splice3174831749_
                     _target3108531142_
                     _tl3108731145_
                     _e3109431148_
                     _hd3109531152_
                     _tl3109631155_
                     _e3109731158_
                     _hd3109831162_
                     _tl3109931165_)
                    (let () (declare (not safe)) (_g3105331105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3105331105_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3105331105_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3105331105_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3105331105_))))))))
              (if (gx#stx-pair? ___stx3174131742_)
                  (let ((_e3105831241_ (gx#syntax-e ___stx3174131742_)))
                    (let ((_tl3106031248_
                           (let () (declare (not safe)) (##cdr _e3105831241_)))
                          (_hd3105931245_
                           (let ()
                             (declare (not safe))
                             (##car _e3105831241_))))
                      (if (gx#stx-pair? _tl3106031248_)
                          (let ((_e3106131251_ (gx#syntax-e _tl3106031248_)))
                            (let ((_tl3106331258_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3106131251_)))
                                  (_hd3106231255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3106131251_))))
                              (if (gx#stx-pair? _tl3106331258_)
                                  (let ((_e3106431261_
                                         (gx#syntax-e _tl3106331258_)))
                                    (let ((_tl3106631268_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3106431261_)))
                                          (_hd3106531265_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3106431261_))))
                                      (if (gx#stx-pair? _tl3106631268_)
                                          (let ((_e3106731271_
                                                 (gx#syntax-e _tl3106631268_)))
                                            (let ((_tl3106931278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3106731271_)))
                                                  (_hd3106831275_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3106731271_))))
                                              (if (gx#stx-null? _tl3106931278_)
                                                  (___match3177631777_
                                                   _e3105831241_
                                                   _hd3105931245_
                                                   _tl3106031248_
                                                   _e3106131251_
                                                   _hd3106231255_
                                                   _tl3106331258_
                                                   _e3106431261_
                                                   _hd3106531265_
                                                   _tl3106631268_
                                                   _e3106731271_
                                                   _hd3106831275_
                                                   _tl3106931278_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3106631268_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3106631268_)
                        '2)
                  (let ((___splice3174831749_
                         (gx#syntax-split-splice _tl3106631268_ '2)))
                    (let ((_tl3108731145_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3174831749_ '1)))
                          (_target3108531142_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3174831749_ '0))))
                      (if (gx#stx-pair? _tl3108731145_)
                          (let ((_e3109431148_ (gx#syntax-e _tl3108731145_)))
                            (let ((_tl3109631155_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109431148_)))
                                  (_hd3109531152_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109431148_))))
                              (if (gx#stx-pair? _tl3109631155_)
                                  (let ((_e3109731158_
                                         (gx#syntax-e _tl3109631155_)))
                                    (let ((_tl3109931165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3109731158_)))
                                          (_hd3109831162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3109731158_))))
                                      (if (gx#stx-null? _tl3109931165_)
                                          (___match3181631817_
                                           _e3105831241_
                                           _hd3105931245_
                                           _tl3106031248_
                                           _e3106131251_
                                           _hd3106231255_
                                           _tl3106331258_
                                           _e3106431261_
                                           _hd3106531265_
                                           _tl3106631268_
                                           ___splice3174831749_
                                           _target3108531142_
                                           _tl3108731145_
                                           _e3109431148_
                                           _hd3109531152_
                                           _tl3109631155_
                                           _e3109731158_
                                           _hd3109831162_
                                           _tl3109931165_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3105331105_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105331105_)))))
                          (let () (declare (not safe)) (_g3105331105_)))))
                  (let () (declare (not safe)) (_g3105331105_)))
              (let () (declare (not safe)) (_g3105331105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3106631268_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3106631268_)
                                                        '2)
                                                  (let ((___splice3174831749_
                                                         (gx#syntax-split-splice
                                                          _tl3106631268_
                                                          '2)))
                                                    (let ((_tl3108731145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3174831749_
                                                              '1)))
                                                          (_target3108531142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3174831749_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl3108731145_)
                                                          (let ((_e3109431148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3108731145_)))
                    (let ((_tl3109631155_
                           (let () (declare (not safe)) (##cdr _e3109431148_)))
                          (_hd3109531152_
                           (let ()
                             (declare (not safe))
                             (##car _e3109431148_))))
                      (if (gx#stx-pair? _tl3109631155_)
                          (let ((_e3109731158_ (gx#syntax-e _tl3109631155_)))
                            (let ((_tl3109931165_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109731158_)))
                                  (_hd3109831162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109731158_))))
                              (if (gx#stx-null? _tl3109931165_)
                                  (___match3181631817_
                                   _e3105831241_
                                   _hd3105931245_
                                   _tl3106031248_
                                   _e3106131251_
                                   _hd3106231255_
                                   _tl3106331258_
                                   _e3106431261_
                                   _hd3106531265_
                                   _tl3106631268_
                                   ___splice3174831749_
                                   _target3108531142_
                                   _tl3108731145_
                                   _e3109431148_
                                   _hd3109531152_
                                   _tl3109631155_
                                   _e3109731158_
                                   _hd3109831162_
                                   _tl3109931165_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3105331105_)))))
                          (let () (declare (not safe)) (_g3105331105_)))))
                  (let () (declare (not safe)) (_g3105331105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3105331105_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3105331105_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3105331105_)))))
                          (let () (declare (not safe)) (_g3105331105_)))))
                  (let () (declare (not safe)) (_g3105331105_))))))))))
