(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g29681_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_stx27142_)
        (letrec ((_body-opt?27145_
                  (lambda (_key27148_)
                    (let ((__tmp29576 (gx#stx-e _key27148_)))
                      (declare (not safe))
                      (##memq __tmp29576
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _stx27142_ _body-opt?27145_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_stx24925_ _id24927_ _super-ref24928_ _slots24929_ _body24930_)
        (letrec* ((_wrap24932_
                   (lambda (_e-stx27139_)
                     (gx#stx-wrap-source
                      _e-stx27139_
                      (gx#stx-source _stx24925_))))
                  (_make-id24934_
                   (if (uninterned-symbol? (gx#stx-e _id24927_))
                       (lambda __27133_ (gx#genident _id24927_))
                       (lambda _args27136_
                         (apply gx#stx-identifier _id24927_ _args27136_))))
                  (_get-mixin-slots24935_
                   (lambda (_super27109_ _slots27111_)
                     (letrec* ((_tab27113_
                                (let ()
                                  (declare (not safe))
                                  (make-hash-table-eq)))
                               (_dedup27115_
                                (lambda (_mixins27120_)
                                  (let _lp27123_ ((_rest27126_ _mixins27120_)
                                                  (_r27128_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest27126_))
                                        (let ((_slot27130_ (car _rest27126_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (hash-get
                                                 _tab27113_
                                                 _slot27130_))
                                              (let ((__tmp29577
                                                     (cdr _rest27126_)))
                                                (declare (not safe))
                                                (_lp27123_
                                                 __tmp29577
                                                 _r27128_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (hash-put!
                                                   _tab27113_
                                                   _slot27130_
                                                   '#t))
                                                (let ((__tmp29579
                                                       (cdr _rest27126_))
                                                      (__tmp29578
                                                       (cons _slot27130_
                                                             _r27128_)))
                                                  (declare (not safe))
                                                  (_lp27123_
                                                   __tmp29579
                                                   __tmp29578)))))
                                        (reverse _r27128_))))))
                       (gx#stx-for-each
                        (lambda (_slot27117_)
                          (let ((__tmp29580 (gx#stx-e _slot27117_)))
                            (declare (not safe))
                            (hash-put! _tab27113_ __tmp29580 '#t)))
                        _slots27111_)
                       (if (let () (declare (not safe)) (not _super27109_))
                           '()
                           (if (gx#identifier? _super27109_)
                               (let ((__tmp29581
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r24936_
                                         _super27109_))))
                                 (declare (not safe))
                                 (_dedup27115_ __tmp29581))
                               (let ((__tmp29582
                                      (concatenate
                                       (map _get-mixin-slots-r24936_
                                            _super27109_))))
                                 (declare (not safe))
                                 (_dedup27115_ __tmp29582)))))))
                  (_get-mixin-slots-r24936_
                   (lambda (_type-id27103_)
                     (let ((_info27106_
                            (gx#syntax-local-value _type-id27103_)))
                       (append (let ((__obj29368 _info27106_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj29368
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj29368
                                        '4
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop~MOP-2#class-type-info::t
                                      __obj29368
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r24936_
                                     (let ((__obj29369 _info27106_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj29369
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj29369
                                              '3
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj29369
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots24929_ _stx24925_)
          (let* ((_name24938_ (symbol->string (gx#stx-e _id24927_)))
                 (_super24941_ (map gx#syntax-local-value _super-ref24928_))
                 (_struct?24944_ (gx#stx-getq 'struct: _body24930_))
                 (_g2494724955_
                  (lambda (_g2494824951_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2494824951_)))
                 (_g2494627099_
                  (lambda (_g2494824959_)
                    ((lambda (_L24962_)
                       (let ()
                         (let* ((_g2497824986_
                                 (lambda (_g2497924982_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2497924982_)))
                                (_g2497727095_
                                 (lambda (_g2497924990_)
                                   ((lambda (_L24993_)
                                      (let ()
                                        (let* ((_g2500625014_
                                                (lambda (_g2500725010_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2500725010_)))
                                               (_g2500527091_
                                                (lambda (_g2500725018_)
                                                  ((lambda (_L25021_)
                                                     (let ()
                                                       (let* ((_g2503425042_
                                                               (lambda (_g2503525038_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2503525038_)))
                      (_g2503327087_
                       (lambda (_g2503525046_)
                         ((lambda (_L25049_)
                            (let ()
                              (let* ((_g2506225070_
                                      (lambda (_g2506325066_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2506325066_)))
                                     (_g2506127083_
                                      (lambda (_g2506325074_)
                                        ((lambda (_L25077_)
                                           (let ()
                                             (let* ((_g2509025107_
                                                     (lambda (_g2509125103_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g2509125103_)))
                                                    (_g2508927079_
                                                     (lambda (_g2509125111_)
                                                       (if (gx#stx-pair/null?
                                                            _g2509125111_)
                                                           (let ((_g29583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2509125111_ '0)))
                     (begin
                       (let ((_g29584_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g29583_)
                                    (##vector-length _g29583_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g29584_ 2)))
                             (error "Context expects 2 values" _g29584_)))
                       (let ((_target2509325114_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g29583_ 0)))
                             (_tl2509525117_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g29583_ 1))))
                         (if (gx#stx-null? _tl2509525117_)
                             (letrec ((_loop2509625120_
                                       (lambda (_hd2509425124_
                                                _slot2510025127_)
                                         (if (gx#stx-pair? _hd2509425124_)
                                             (let ((_e2509725130_
                                                    (gx#syntax-e
                                                     _hd2509425124_)))
                                               (let ((_lp-hd2509825134_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2509725130_)))
                                                     (_lp-tl2509925137_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2509725130_))))
                                                 (let ((__tmp29585
                                                        (cons _lp-hd2509825134_
                                                              _slot2510025127_)))
                                                   (declare (not safe))
                                                   (_loop2509625120_
                                                    _lp-tl2509925137_
                                                    __tmp29585))))
                                             (let ((_slot2510125140_
                                                    (reverse _slot2510025127_)))
                                               ((lambda (_L25144_)
                                                  (let ()
                                                    (let* ((_g2516125178_
                                                            (lambda (_g2516225174_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2516225174_)))
                                                           (_g2516027070_
                                                            (lambda (_g2516225182_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2516225182_)
                          (let ((_g29586_
                                 (gx#syntax-split-splice _g2516225182_ '0)))
                            (begin
                              (let ((_g29587_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g29586_)
                                           (##vector-length _g29586_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g29587_ 2)))
                                    (error "Context expects 2 values"
                                           _g29587_)))
                              (let ((_target2516425185_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g29586_ 0)))
                                    (_tl2516625188_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g29586_ 1))))
                                (if (gx#stx-null? _tl2516625188_)
                                    (letrec ((_loop2516725191_
                                              (lambda (_hd2516525195_
                                                       _getf2517125198_)
                                                (if (gx#stx-pair?
                                                     _hd2516525195_)
                                                    (let ((_e2516825201_
                                                           (gx#syntax-e
                                                            _hd2516525195_)))
                                                      (let ((_lp-hd2516925205_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2516825201_)))
                    (_lp-tl2517025208_
                     (let () (declare (not safe)) (##cdr _e2516825201_))))
                (let ((__tmp29588 (cons _lp-hd2516925205_ _getf2517125198_)))
                  (declare (not safe))
                  (_loop2516725191_ _lp-tl2517025208_ __tmp29588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf2517225211_
                                                           (reverse _getf2517125198_)))
                                                      ((lambda (_L25215_)
                                                         (let ()
                                                           (let* ((_g2523225249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2523325245_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2523325245_)))
                          (_g2523127061_
                           (lambda (_g2523325253_)
                             (if (gx#stx-pair/null? _g2523325253_)
                                 (let ((_g29589_
                                        (gx#syntax-split-splice
                                         _g2523325253_
                                         '0)))
                                   (begin
                                     (let ((_g29590_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g29589_)
                                                  (##vector-length _g29589_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g29590_ 2)))
                                           (error "Context expects 2 values"
                                                  _g29590_)))
                                     (let ((_target2523525256_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g29589_ 0)))
                                           (_tl2523725259_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g29589_ 1))))
                                       (if (gx#stx-null? _tl2523725259_)
                                           (letrec ((_loop2523825262_
                                                     (lambda (_hd2523625266_
                                                              _setf2524225269_)
                                                       (if (gx#stx-pair?
                                                            _hd2523625266_)
                                                           (let ((_e2523925272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2523625266_)))
                     (let ((_lp-hd2524025276_
                            (let ()
                              (declare (not safe))
                              (##car _e2523925272_)))
                           (_lp-tl2524125279_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2523925272_))))
                       (let ((__tmp29591
                              (cons _lp-hd2524025276_ _setf2524225269_)))
                         (declare (not safe))
                         (_loop2523825262_ _lp-tl2524125279_ __tmp29591))))
                   (let ((_setf2524325282_ (reverse _setf2524225269_)))
                     ((lambda (_L25286_)
                        (let ()
                          (let* ((_mixin-slots25303_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots24935_
                                     _super-ref24928_
                                     _slots24929_)))
                                 (_g2530625323_
                                  (lambda (_g2530725319_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2530725319_)))
                                 (_g2530527057_
                                  (lambda (_g2530725327_)
                                    (if (gx#stx-pair/null? _g2530725327_)
                                        (let ((_g29592_
                                               (gx#syntax-split-splice
                                                _g2530725327_
                                                '0)))
                                          (begin
                                            (let ((_g29593_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g29592_)
                                                         (##vector-length
                                                          _g29592_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g29593_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g29593_)))
                                            (let ((_target2530925330_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g29592_
                                                      0)))
                                                  (_tl2531125333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g29592_
                                                      1))))
                                              (if (gx#stx-null? _tl2531125333_)
                                                  (letrec ((_loop2531225336_
                                                            (lambda (_hd2531025340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot2531625343_)
                      (if (gx#stx-pair? _hd2531025340_)
                          (let ((_e2531325346_ (gx#syntax-e _hd2531025340_)))
                            (let ((_lp-hd2531425350_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2531325346_)))
                                  (_lp-tl2531525353_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2531325346_))))
                              (let ((__tmp29594
                                     (cons _lp-hd2531425350_
                                           _mixin-slot2531625343_)))
                                (declare (not safe))
                                (_loop2531225336_
                                 _lp-tl2531525353_
                                 __tmp29594))))
                          (let ((_mixin-slot2531725356_
                                 (reverse _mixin-slot2531625343_)))
                            ((lambda (_L25360_)
                               (let ()
                                 (let* ((_g2537825395_
                                         (lambda (_g2537925391_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2537925391_)))
                                        (_g2537727048_
                                         (lambda (_g2537925399_)
                                           (if (gx#stx-pair/null?
                                                _g2537925399_)
                                               (let ((_g29595_
                                                      (gx#syntax-split-splice
                                                       _g2537925399_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29596_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29595_)
                        (##vector-length _g29595_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g29596_ 2)))
                 (error "Context expects 2 values" _g29596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target2538125402_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g29595_
                                                             0)))
                                                         (_tl2538325405_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g29595_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl2538325405_)
                                                         (letrec ((_loop2538425408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2538225412_ _mixin-getf2538825415_)
                             (if (gx#stx-pair? _hd2538225412_)
                                 (let ((_e2538525418_
                                        (gx#syntax-e _hd2538225412_)))
                                   (let ((_lp-hd2538625422_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2538525418_)))
                                         (_lp-tl2538725425_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2538525418_))))
                                     (let ((__tmp29597
                                            (cons _lp-hd2538625422_
                                                  _mixin-getf2538825415_)))
                                       (declare (not safe))
                                       (_loop2538425408_
                                        _lp-tl2538725425_
                                        __tmp29597))))
                                 (let ((_mixin-getf2538925428_
                                        (reverse _mixin-getf2538825415_)))
                                   ((lambda (_L25432_)
                                      (let ()
                                        (let* ((_g2544925466_
                                                (lambda (_g2545025462_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2545025462_)))
                                               (_g2544827039_
                                                (lambda (_g2545025470_)
                                                  (if (gx#stx-pair/null?
                                                       _g2545025470_)
                                                      (let ((_g29598_
                                                             (gx#syntax-split-splice
                                                              _g2545025470_
                                                              '0)))
                                                        (begin
                                                          (let ((_g29599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g29598_)
                               (##vector-length _g29598_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g29599_ 2)))
                        (error "Context expects 2 values" _g29599_)))
                  (let ((_target2545225473_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g29598_ 0)))
                        (_tl2545425476_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g29598_ 1))))
                    (if (gx#stx-null? _tl2545425476_)
                        (letrec ((_loop2545525479_
                                  (lambda (_hd2545325483_
                                           _mixin-setf2545925486_)
                                    (if (gx#stx-pair? _hd2545325483_)
                                        (let ((_e2545625489_
                                               (gx#syntax-e _hd2545325483_)))
                                          (let ((_lp-hd2545725493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2545625489_)))
                                                (_lp-tl2545825496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2545625489_))))
                                            (let ((__tmp29600
                                                   (cons _lp-hd2545725493_
                                                         _mixin-setf2545925486_)))
                                              (declare (not safe))
                                              (_loop2545525479_
                                               _lp-tl2545825496_
                                               __tmp29600))))
                                        (let ((_mixin-setf2546025499_
                                               (reverse _mixin-setf2545925486_)))
                                          ((lambda (_L25503_)
                                             (let ()
                                               (let* ((_g2552025537_
                                                       (lambda (_g2552125533_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2552125533_)))
                                                      (_g2551927022_
                                                       (lambda (_g2552125541_)
                                                         (if (gx#stx-pair/null?
                                                              _g2552125541_)
                                                             (let ((_g29601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2552125541_ '0)))
                       (begin
                         (let ((_g29602_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g29601_)
                                      (##vector-length _g29601_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g29602_ 2)))
                               (error "Context expects 2 values" _g29602_)))
                         (let ((_target2552325544_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g29601_ 0)))
                               (_tl2552525547_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g29601_ 1))))
                           (if (gx#stx-null? _tl2552525547_)
                               (letrec ((_loop2552625550_
                                         (lambda (_hd2552425554_
                                                  _ugetf2553025557_)
                                           (if (gx#stx-pair? _hd2552425554_)
                                               (let ((_e2552725560_
                                                      (gx#syntax-e
                                                       _hd2552425554_)))
                                                 (let ((_lp-hd2552825564_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2552725560_)))
                                                       (_lp-tl2552925567_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2552725560_))))
                                                   (let ((__tmp29603
                                                          (cons _lp-hd2552825564_
                                                                _ugetf2553025557_)))
                                                     (declare (not safe))
                                                     (_loop2552625550_
                                                      _lp-tl2552925567_
                                                      __tmp29603))))
                                               (let ((_ugetf2553125570_
                                                      (reverse _ugetf2553025557_)))
                                                 ((lambda (_L25574_)
                                                    (let ()
                                                      (let* ((_g2559125608_
                                                              (lambda (_g2559225604_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2559225604_)))
                     (_g2559027005_
                      (lambda (_g2559225612_)
                        (if (gx#stx-pair/null? _g2559225612_)
                            (let ((_g29604_
                                   (gx#syntax-split-splice _g2559225612_ '0)))
                              (begin
                                (let ((_g29605_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g29604_)
                                             (##vector-length _g29604_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g29605_ 2)))
                                      (error "Context expects 2 values"
                                             _g29605_)))
                                (let ((_target2559425615_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g29604_ 0)))
                                      (_tl2559625618_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g29604_ 1))))
                                  (if (gx#stx-null? _tl2559625618_)
                                      (letrec ((_loop2559725621_
                                                (lambda (_hd2559525625_
                                                         _usetf2560125628_)
                                                  (if (gx#stx-pair?
                                                       _hd2559525625_)
                                                      (let ((_e2559825631_
                                                             (gx#syntax-e
                                                              _hd2559525625_)))
                                                        (let ((_lp-hd2559925635_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2559825631_)))
                      (_lp-tl2560025638_
                       (let () (declare (not safe)) (##cdr _e2559825631_))))
                  (let ((__tmp29606
                         (cons _lp-hd2559925635_ _usetf2560125628_)))
                    (declare (not safe))
                    (_loop2559725621_ _lp-tl2560025638_ __tmp29606))))
              (let ((_usetf2560225641_ (reverse _usetf2560125628_)))
                ((lambda (_L25645_)
                   (let ()
                     (let* ((_g2566225679_
                             (lambda (_g2566325675_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2566325675_)))
                            (_g2566126988_
                             (lambda (_g2566325683_)
                               (if (gx#stx-pair/null? _g2566325683_)
                                   (let ((_g29607_
                                          (gx#syntax-split-splice
                                           _g2566325683_
                                           '0)))
                                     (begin
                                       (let ((_g29608_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g29607_)
                                                    (##vector-length _g29607_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g29608_ 2)))
                                             (error "Context expects 2 values"
                                                    _g29608_)))
                                       (let ((_target2566525686_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g29607_ 0)))
                                             (_tl2566725689_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g29607_ 1))))
                                         (if (gx#stx-null? _tl2566725689_)
                                             (letrec ((_loop2566825692_
                                                       (lambda (_hd2566625696_
                                                                _mixin-ugetf2567225699_)
                                                         (if (gx#stx-pair?
                                                              _hd2566625696_)
                                                             (let ((_e2566925702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2566625696_)))
                       (let ((_lp-hd2567025706_
                              (let ()
                                (declare (not safe))
                                (##car _e2566925702_)))
                             (_lp-tl2567125709_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2566925702_))))
                         (let ((__tmp29609
                                (cons _lp-hd2567025706_
                                      _mixin-ugetf2567225699_)))
                           (declare (not safe))
                           (_loop2566825692_ _lp-tl2567125709_ __tmp29609))))
                     (let ((_mixin-ugetf2567325712_
                            (reverse _mixin-ugetf2567225699_)))
                       ((lambda (_L25716_)
                          (let ()
                            (let* ((_g2573325750_
                                    (lambda (_g2573425746_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2573425746_)))
                                   (_g2573226971_
                                    (lambda (_g2573425754_)
                                      (if (gx#stx-pair/null? _g2573425754_)
                                          (let ((_g29610_
                                                 (gx#syntax-split-splice
                                                  _g2573425754_
                                                  '0)))
                                            (begin
                                              (let ((_g29611_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g29610_)
                                                           (##vector-length
                                                            _g29610_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g29611_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g29611_)))
                                              (let ((_target2573625757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g29610_
                                                        0)))
                                                    (_tl2573825760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g29610_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2573825760_)
                                                    (letrec ((_loop2573925763_
                                                              (lambda (_hd2573725767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2574325770_)
                        (if (gx#stx-pair? _hd2573725767_)
                            (let ((_e2574025773_ (gx#syntax-e _hd2573725767_)))
                              (let ((_lp-hd2574125777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2574025773_)))
                                    (_lp-tl2574225780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2574025773_))))
                                (let ((__tmp29612
                                       (cons _lp-hd2574125777_
                                             _mixin-usetf2574325770_)))
                                  (declare (not safe))
                                  (_loop2573925763_
                                   _lp-tl2574225780_
                                   __tmp29612))))
                            (let ((_mixin-usetf2574425783_
                                   (reverse _mixin-usetf2574325770_)))
                              ((lambda (_L25787_)
                                 (let ()
                                   (let* ((_type-slots25818_
                                           (if (gx#stx-null? _slots24929_)
                                               '()
                                               (cons 'slots:
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L25286_
                                                              _L25215_
                                                              _L25144_)
                                                             (let ((__tmp29613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2580325808_
                                     _g2580425811_
                                     _g2580525813_
                                     _g2580625815_)
                              (cons (cons _g2580525813_
                                          (cons _g2580425811_
                                                (cons _g2580325808_ '())))
                                    _g2580625815_))))
                       (declare (not safe))
                       (__foldr* __tmp29613 '() _L25286_ _L25215_ _L25144_)))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_type-mixin-slots25835_
                                           (if (gx#stx-null?
                                                _mixin-slots25303_)
                                               '()
                                               (cons 'mixin:
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L25503_
                                                              _L25432_
                                                              _L25360_)
                                                             (let ((__tmp29614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2582025825_
                                     _g2582125828_
                                     _g2582225830_
                                     _g2582325832_)
                              (cons (cons _g2582225830_
                                          (cons _g2582125828_
                                                (cons _g2582025825_ '())))
                                    _g2582325832_))))
                       (declare (not safe))
                       (__foldr* __tmp29614 '() _L25503_ _L25432_ _L25360_)))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_type-name25842_
                                           (cons 'name:
                                                 (cons (let ((_$e25838_
                                                              (gx#stx-getq
                                                               'name:
                                                               _body24930_)))
                                                         (if _$e25838_
                                                             _$e25838_
                                                             _id24927_))
                                                       '())))
                                          (_type-id25849_
                                           (cons 'id:
                                                 (cons (let ((_$e25845_
                                                              (gx#stx-getq
                                                               'id:
                                                               _body24930_)))
                                                         (if _$e25845_
                                                             _$e25845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                        _L24962_))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_type-constructor25864_
                                           (let ((_$e25860_
                                                  (let ((_e2585125853_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body24930_)))
                                                    (if _e2585125853_
                                                        (let ((_e25857_
                                                               _e2585125853_))
                                                          (cons 'constructor:
                                                                (cons _e25857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e25860_ _$e25860_ '())))
                                          (_properties25898_
                                           (let* ((_properties25867_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body24930_))
                                                       (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#t)
                     '())
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties25880_
                                                   (let ((_$e25870_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body24930_))))
                                                     (if _$e25870_
                                                         ((lambda (_print25874_)
                                                            (let ((_print25877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _print25874_ '#t)
                               _slots24929_
                               _print25874_)))
                      (cons (cons 'print: _print25877_) _properties25867_)))
                  _$e25870_)
                 _properties25867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties25893_
                                                   (let ((_$e25883_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body24930_))))
                                                     (if _$e25883_
                                                         ((lambda (_equal25887_)
                                                            (let ((_equal25890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (eq? _equal25887_ '#t)
                               _slots24929_
                               _equal25887_)))
                      (cons (cons 'equal: _equal25890_) _properties25880_)))
                  _$e25883_)
                 _properties25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties25893_))
                                          (_type-properties25939_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties25898_))
                                               '()
                                               (let* ((_g2590125909_
                                                       (lambda (_g2590225905_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2590225905_)))
                                                      (_g2590025935_
                                                       (lambda (_g2590225913_)
                                                         ((lambda (_L25916_)
                                                            (let ()
                                                              (cons 'properties:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L25916_ '()))
                                  '()))))
                  _g2590225913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2590025935_
                                                  _properties25898_))))
                                          (_metaclass25949_
                                           (let ((_$e25942_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body24930_)))
                                             (if _$e25942_
                                                 ((lambda (_metaclass25946_)
                                                    (if (gx#identifier?
                                                         _metaclass25946_)
                                                        _metaclass25946_
                                                        '#f))
                                                  _$e25942_)
                                                 '#f)))
                                          (_type-metaclass25952_
                                           (if _metaclass25949_
                                               (cons 'metaclass:
                                                     (cons _metaclass25949_
                                                           '()))
                                               '()))
                                          (_final?25955_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body24930_)))
                                          (_type-struct25958_
                                           (cons 'struct:
                                                 (cons _struct?24944_ '())))
                                          (_type-final25961_
                                           (cons 'final:
                                                 (cons _final?25955_ '())))
                                          (_g2596425981_
                                           (lambda (_g2596525977_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2596525977_)))
                                          (_g2596326967_
                                           (lambda (_g2596525985_)
                                             (if (gx#stx-pair/null?
                                                  _g2596525985_)
                                                 (let ((_g29615_
                                                        (gx#syntax-split-splice
                                                         _g2596525985_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29616_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g29615_)
                          (##vector-length _g29615_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g29616_ 2)))
                   (error "Context expects 2 values" _g29616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2596725988_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g29615_
                                                               0)))
                                                           (_tl2596925991_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g29615_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2596925991_)
                                                           (letrec ((_loop2597025994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2596825998_ _type-body2597426001_)
                               (if (gx#stx-pair? _hd2596825998_)
                                   (let ((_e2597126004_
                                          (gx#syntax-e _hd2596825998_)))
                                     (let ((_lp-hd2597226008_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2597126004_)))
                                           (_lp-tl2597326011_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2597126004_))))
                                       (let ((__tmp29617
                                              (cons _lp-hd2597226008_
                                                    _type-body2597426001_)))
                                         (declare (not safe))
                                         (_loop2597025994_
                                          _lp-tl2597326011_
                                          __tmp29617))))
                                   (let ((_type-body2597526014_
                                          (reverse _type-body2597426001_)))
                                     ((lambda (_L26018_)
                                        (let ()
                                          (let* ((_g2603926047_
                                                  (lambda (_g2604026043_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2604026043_)))
                                                 (_g2603826955_
                                                  (lambda (_g2604026051_)
                                                    ((lambda (_L26054_)
                                                       (let ()
                                                         (let* ((_g2606726075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2606826071_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2606826071_)))
                        (_g2606626884_
                         (lambda (_g2606826079_)
                           ((lambda (_L26082_)
                              (let ()
                                (let* ((_g2609526103_
                                        (lambda (_g2609626099_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2609626099_)))
                                       (_g2609426849_
                                        (lambda (_g2609626107_)
                                          ((lambda (_L26110_)
                                             (let ()
                                               (let* ((_g2612326131_
                                                       (lambda (_g2612426127_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2612426127_)))
                                                      (_g2612226763_
                                                       (lambda (_g2612426135_)
                                                         ((lambda (_L26138_)
                                                            (let ()
                                                              (let* ((_g2615126159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2615226155_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2615226155_)))
                             (_g2615026751_
                              (lambda (_g2615226163_)
                                ((lambda (_L26166_)
                                   (let ()
                                     (let* ((_g2617926187_
                                             (lambda (_g2618026183_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2618026183_)))
                                            (_g2617826747_
                                             (lambda (_g2618026191_)
                                               ((lambda (_L26194_)
                                                  (let ()
                                                    (let* ((_g2620726215_
                                                            (lambda (_g2620826211_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2620826211_)))
                                                           (_g2620626743_
                                                            (lambda (_g2620826219_)
                                                              ((lambda (_L26222_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2623526243_
                                   (lambda (_g2623626239_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2623626239_)))
                                  (_g2623426708_
                                   (lambda (_g2623626247_)
                                     ((lambda (_L26250_)
                                        (let ()
                                          (let* ((_g2626326271_
                                                  (lambda (_g2626426267_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2626426267_)))
                                                 (_g2626226637_
                                                  (lambda (_g2626426275_)
                                                    ((lambda (_L26278_)
                                                       (let ()
                                                         (let* ((_g2629126299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2629226295_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2629226295_)))
                        (_g2629026633_
                         (lambda (_g2629226303_)
                           ((lambda (_L26306_)
                              (let ()
                                (let* ((_g2631926327_
                                        (lambda (_g2632026323_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2632026323_)))
                                       (_g2631826629_
                                        (lambda (_g2632026331_)
                                          ((lambda (_L26334_)
                                             (let ()
                                               (let* ((_g2634726355_
                                                       (lambda (_g2634826351_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2634826351_)))
                                                      (_g2634626625_
                                                       (lambda (_g2634826359_)
                                                         ((lambda (_L26362_)
                                                            (let ()
                                                              (let* ((_g2637526383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2637626379_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2637626379_)))
                             (_g2637426599_
                              (lambda (_g2637626387_)
                                ((lambda (_L26390_)
                                   (let ()
                                     (let* ((_g2640326411_
                                             (lambda (_g2640426407_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2640426407_)))
                                            (_g2640226573_
                                             (lambda (_g2640426415_)
                                               ((lambda (_L26418_)
                                                  (let ()
                                                    (let* ((_g2643126439_
                                                            (lambda (_g2643226435_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2643226435_)))
                                                           (_g2643026547_
                                                            (lambda (_g2643226443_)
                                                              ((lambda (_L26446_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2645926467_
                                   (lambda (_g2646026463_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2646026463_)))
                                  (_g2645826521_
                                   (lambda (_g2646026471_)
                                     ((lambda (_L26474_)
                                        (let ()
                                          (let* ((_g2648726495_
                                                  (lambda (_g2648826491_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2648826491_)))
                                                 (_g2648626517_
                                                  (lambda (_g2648826499_)
                                                    ((lambda (_L26502_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp29618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin)
                                (cons _L26054_ (cons _L26502_ '())))))
                     (declare (not safe))
                     (_wrap24932_ __tmp29618)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2648826499_)))
                                                 (__tmp29619
                                                  (let ((__tmp29620
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defsyntax)
                                                               (cons _L24962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type-info)
                                         (cons 'id:
                                               (cons _L26082_
                                                     (cons 'name:
                                                           (cons _L26110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'slots:
                               (cons _L26166_
                                     (cons 'super:
                                           (cons _L26138_
                                                 (cons 'struct?:
                                                       (cons _L26194_
                                                             (cons 'final?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L26222_
                                 (cons 'metaclass:
                                       (cons _L26250_
                                             (cons 'constructor-method:
                                                   (cons _L26278_
                                                         (cons 'type-descriptor:
                                                               (cons _L26306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'constructor:
                                   (cons _L26334_
                                         (cons 'predicate:
                                               (cons _L26362_
                                                     (cons 'accessors:
                                                           (cons _L26390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'mutators:
                               (cons _L26418_
                                     (cons 'unchecked-accessors:
                                           (cons _L26446_
                                                 (cons 'unchecked-mutators:
                                                       (cons _L26474_
                                                             '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap24932_ __tmp29620))))
                                            (declare (not safe))
                                            (_g2648626517_ __tmp29619))))
                                      _g2646026471_)))
                                  (__tmp29621
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L25645_
                                            _L25144_)
                                           (let ((__tmp29624
                                                  (lambda (_g2652426531_
                                                           _g2652526534_
                                                           _g2652626536_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _g2652526534_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _g2652426531_ '()))
                                          '()))))
                  _g2652626536_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp29622
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L25787_
                                                     _L25360_)
                                                    (let ((__tmp29623
                                                           (lambda (_g2652726539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2652826542_
                            _g2652926544_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _g2652826542_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _g2652726539_
                                                               '()))
                                                   '()))))
                           _g2652926544_))))
              (declare (not safe))
              (__foldr2 __tmp29623 '() _L25787_ _L25360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (__foldr2
                                              __tmp29624
                                              __tmp29622
                                              _L25645_
                                              _L25144_))))))
                             (declare (not safe))
                             (_g2645826521_ __tmp29621))))
                       _g2643226443_)))
                   (__tmp29625
                    (cons (gx#datum->syntax '#f '@list)
                          (begin
                            (gx#syntax-check-splice-targets _L25574_ _L25144_)
                            (let ((__tmp29628
                                   (lambda (_g2655026557_
                                            _g2655126560_
                                            _g2655226562_)
                                     (cons (cons (gx#datum->syntax '#f '@list)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _g2655126560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons '::
                     (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _g2655026557_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2655226562_)))
                                  (__tmp29626
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L25716_
                                      _L25360_)
                                     (let ((__tmp29627
                                            (lambda (_g2655326565_
                                                     _g2655426568_
                                                     _g2655526570_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _g2655426568_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _g2655326565_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2655526570_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp29627
                                        '()
                                        _L25716_
                                        _L25360_)))))
                              (declare (not safe))
                              (__foldr2
                               __tmp29628
                               __tmp29626
                               _L25574_
                               _L25144_))))))
              (declare (not safe))
              (_g2643026547_ __tmp29625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2640426415_)))
                                            (__tmp29629
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L25286_
                                                      _L25144_)
                                                     (let ((__tmp29632
                                                            (lambda (_g2657626583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2657726586_
                             _g2657826588_)
                      (cons (cons (gx#datum->syntax '#f '@list)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _g2657726586_ '()))
                                        (cons '::
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g2657626583_
                                                                '()))
                                                    '()))))
                            _g2657826588_)))
                   (__tmp29630
                    (begin
                      (gx#syntax-check-splice-targets _L25503_ _L25360_)
                      (let ((__tmp29631
                             (lambda (_g2657926591_
                                      _g2658026594_
                                      _g2658126596_)
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _g2658026594_
                                                             '()))
                                                 (cons '::
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _g2657926591_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2658126596_))))
                        (declare (not safe))
                        (__foldr2 __tmp29631 '() _L25503_ _L25360_)))))
               (declare (not safe))
               (__foldr2 __tmp29632 __tmp29630 _L25286_ _L25144_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (_g2640226573_ __tmp29629))))
                                 _g2637626387_)))
                             (__tmp29633
                              (cons (gx#datum->syntax '#f '@list)
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L25215_
                                       _L25144_)
                                      (let ((__tmp29636
                                             (lambda (_g2660226609_
                                                      _g2660326612_
                                                      _g2660426614_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _g2660326612_ '()))
                         (cons '::
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g2660226609_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2660426614_)))
                                            (__tmp29634
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _L25432_
                                                _L25360_)
                                               (let ((__tmp29635
                                                      (lambda (_g2660526617_
                                                               _g2660626620_
                                                               _g2660726622_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@list)
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _g2660626620_ '()))
                                  (cons '::
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _g2660526617_ '()))
                                              '()))))
                      _g2660726622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr2
                                                  __tmp29635
                                                  '()
                                                  _L25432_
                                                  _L25360_)))))
                                        (declare (not safe))
                                        (__foldr2
                                         __tmp29636
                                         __tmp29634
                                         _L25215_
                                         _L25144_))))))
                        (declare (not safe))
                        (_g2637426599_ __tmp29633))))
                  _g2634826359_)))
              (__tmp29637
               (cons (gx#datum->syntax '#f 'quote-syntax)
                     (cons _L25049_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2634626625_ __tmp29637))))
                                           _g2632026331_)))
                                       (__tmp29638
                                        (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L25021_ '()))))
                                  (declare (not safe))
                                  (_g2631826629_ __tmp29638))))
                            _g2629226303_)))
                        (__tmp29639
                         (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L24993_ '()))))
                   (declare (not safe))
                   (_g2629026633_ __tmp29639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2626426275_)))
                                                 (__tmp29640
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor25864_))
                                                      '#f
                                                      (let* ((_g2664126656_
                                                              (lambda (_g2664226652_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2664226652_)))
                     (_g2664026704_
                      (lambda (_g2664226660_)
                        (if (gx#stx-pair? _g2664226660_)
                            (let ((_e2664626663_ (gx#syntax-e _g2664226660_)))
                              (let ((_hd2664526667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2664626663_)))
                                    (_tl2664426670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2664626663_))))
                                (if (gx#stx-datum? _hd2664526667_)
                                    (let ((_e2664726673_
                                           (gx#stx-e _hd2664526667_)))
                                      (if (equal? _e2664726673_ 'constructor:)
                                          (if (gx#stx-pair? _tl2664426670_)
                                              (let ((_e2665026677_
                                                     (gx#syntax-e
                                                      _tl2664426670_)))
                                                (let ((_hd2664926681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2665026677_)))
                                                      (_tl2664826684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2665026677_))))
                                                  (if (gx#stx-null?
                                                       _tl2664826684_)
                                                      ((lambda (_L26687_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L26687_ '()))))
               _hd2664926681_)
              (let () (declare (not safe)) (_g2664126656_ _g2664226660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2664126656_ _g2664226660_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2664126656_ _g2664226660_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2664126656_ _g2664226660_)))))
                            (let ()
                              (declare (not safe))
                              (_g2664126656_ _g2664226660_))))))
                (declare (not safe))
                (_g2664026704_ _type-constructor25864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g2626226637_ __tmp29640))))
                                      _g2623626247_)))
                                  (__tmp29641
                                   (if _metaclass25949_
                                       (let* ((_g2671226720_
                                               (lambda (_g2671326716_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2671326716_)))
                                              (_g2671126739_
                                               (lambda (_g2671326724_)
                                                 ((lambda (_L26727_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _L26727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2671326724_))))
                                         (declare (not safe))
                                         (_g2671126739_ _metaclass25949_))
                                       '#f)))
                             (declare (not safe))
                             (_g2623426708_ __tmp29641))))
                       _g2620826219_))))
              (declare (not safe))
              (_g2620626743_ _final?25955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2618026191_))))
                                       (declare (not safe))
                                       (_g2617826747_ _struct?24944_))))
                                 _g2615226163_)))
                             (__tmp29642
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons (let ((__tmp29643
                                                 (lambda (_g2675426757_
                                                          _g2675526760_)
                                                   (cons _g2675426757_
                                                         _g2675526760_))))
                                            (declare (not safe))
                                            (__foldr1 __tmp29643 '() _L25144_))
                                          '()))))
                        (declare (not safe))
                        (_g2615026751_ __tmp29642))))
                  _g2612426135_)))
              (__tmp29644
               (let* ((_g2676726784_
                       (lambda (_g2676826780_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2676826780_)))
                      (_g2676626845_
                       (lambda (_g2676826788_)
                         (if (gx#stx-pair/null? _g2676826788_)
                             (let ((_g29645_
                                    (gx#syntax-split-splice _g2676826788_ '0)))
                               (begin
                                 (let ((_g29646_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g29645_)
                                              (##vector-length _g29645_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g29646_ 2)))
                                       (error "Context expects 2 values"
                                              _g29646_)))
                                 (let ((_target2677026791_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g29645_ 0)))
                                       (_tl2677226794_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g29645_ 1))))
                                   (if (gx#stx-null? _tl2677226794_)
                                       (letrec ((_loop2677326797_
                                                 (lambda (_hd2677126801_
                                                          _super-id2677726804_)
                                                   (if (gx#stx-pair?
                                                        _hd2677126801_)
                                                       (let ((_e2677426807_
                                                              (gx#syntax-e
                                                               _hd2677126801_)))
                                                         (let ((_lp-hd2677526811_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2677426807_)))
                       (_lp-tl2677626814_
                        (let () (declare (not safe)) (##cdr _e2677426807_))))
                   (let ((__tmp29647
                          (cons _lp-hd2677526811_ _super-id2677726804_)))
                     (declare (not safe))
                     (_loop2677326797_ _lp-tl2677626814_ __tmp29647))))
               (let ((_super-id2677826817_ (reverse _super-id2677726804_)))
                 ((lambda (_L26821_)
                    (let ()
                      (cons (gx#datum->syntax '#f '@list)
                            (let ((__tmp29648
                                   (lambda (_g2683626839_ _g2683726842_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _g2683626839_ '()))
                                           _g2683726842_))))
                              (declare (not safe))
                              (__foldr1 __tmp29648 '() _L26821_)))))
                  _super-id2677826817_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2677326797_
                                            _target2677026791_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2676726784_ _g2676826788_))))))
                             (let ()
                               (declare (not safe))
                               (_g2676726784_ _g2676826788_))))))
                 (declare (not safe))
                 (_g2676626845_ _super-ref24928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2612226763_ __tmp29644))))
                                           _g2609626107_)))
                                       (__tmp29649
                                        (let* ((_g2685326861_
                                                (lambda (_g2685426857_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2685426857_)))
                                               (_g2685226880_
                                                (lambda (_g2685426865_)
                                                  ((lambda (_L26868_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L26868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2685426865_)))
                                               (__tmp29650
                                                (cadr _type-name25842_)))
                                          (declare (not safe))
                                          (_g2685226880_ __tmp29650))))
                                  (declare (not safe))
                                  (_g2609426849_ __tmp29649))))
                            _g2606826079_)))
                        (__tmp29651
                         (let* ((_g2688826903_
                                 (lambda (_g2688926899_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2688926899_)))
                                (_g2688726951_
                                 (lambda (_g2688926907_)
                                   (if (gx#stx-pair? _g2688926907_)
                                       (let ((_e2689326910_
                                              (gx#syntax-e _g2688926907_)))
                                         (let ((_hd2689226914_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2689326910_)))
                                               (_tl2689126917_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2689326910_))))
                                           (if (gx#stx-datum? _hd2689226914_)
                                               (let ((_e2689426920_
                                                      (gx#stx-e
                                                       _hd2689226914_)))
                                                 (if (equal? _e2689426920_
                                                             'id:)
                                                     (if (gx#stx-pair?
                                                          _tl2689126917_)
                                                         (let ((_e2689726924_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2689126917_)))
                   (let ((_hd2689626928_
                          (let () (declare (not safe)) (##car _e2689726924_)))
                         (_tl2689526931_
                          (let () (declare (not safe)) (##cdr _e2689726924_))))
                     (if (gx#stx-null? _tl2689526931_)
                         ((lambda (_L26934_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L26934_ '()))))
                          _hd2689626928_)
                         (let ()
                           (declare (not safe))
                           (_g2688826903_ _g2688926907_)))))
                 (let () (declare (not safe)) (_g2688826903_ _g2688926907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2688826903_
                                                        _g2688926907_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2688826903_
                                                  _g2688926907_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2688826903_ _g2688926907_))))))
                           (declare (not safe))
                           (_g2688726951_ _type-id25849_))))
                   (declare (not safe))
                   (_g2606626884_ __tmp29651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2604026051_)))
                                                 (__tmp29652
                                                  (let ((__tmp29653
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'defclass-type)
                                                               (cons _L24993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25077_
                                   (cons _L25021_
                                         (cons _L25049_
                                               (let ((__tmp29654
                                                      (lambda (_g2695826961_
                                                               _g2695926964_)
                                                        (cons _g2695826961_
                                                              _g2695926964_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp29654
                                                  '()
                                                  _L26018_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap24932_ __tmp29653))))
                                            (declare (not safe))
                                            (_g2603826955_ __tmp29652))))
                                      _type-body2597526014_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2597025994_ _target2596725988_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2596425981_ _g2596525985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2596425981_
                                                    _g2596525985_)))))
                                          (__tmp29655
                                           (let ((__tmp29656
                                                  (let ((__tmp29657
                                                         (let ((__tmp29658
                                                                (let ((__tmp29659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp29660
                                      (let ((__tmp29661
                                             (let ((__tmp29662
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _type-mixin-slots25835_
                                                       _type-slots25818_))))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp29662
                                                _type-properties25939_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp29661
                                         _type-metaclass25952_))))
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  __tmp29660
                                  _type-final25961_))))
                          (declare (not safe))
                          (__foldr1 cons __tmp29659 _type-struct25958_))))
                   (declare (not safe))
                   (__foldr1 cons __tmp29658 _type-constructor25864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     __tmp29657
                                                     _type-name25842_))))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp29656
                                              _type-id25849_))))
                                     (declare (not safe))
                                     (_g2596326967_ __tmp29655))))
                               _mixin-usetf2574425783_))))))
              (let ()
                (declare (not safe))
                (_loop2573925763_ _target2573625757_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2573325750_
                                                       _g2573425754_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2573325750_ _g2573425754_)))))
                                   (__tmp29663
                                    (gx#stx-map
                                     (lambda (_g2697426976_)
                                       (let ()
                                         (declare (not safe))
                                         (_make-id24934_ '"&" _g2697426976_)))
                                     (let ((__tmp29664
                                            (lambda (_g2697926982_
                                                     _g2698026985_)
                                              (cons _g2697926982_
                                                    _g2698026985_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp29664 '() _L25503_)))))
                              (declare (not safe))
                              (_g2573226971_ __tmp29663))))
                        _mixin-ugetf2567325712_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2566825692_
                                                  _target2566525686_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g2566225679_
                                                _g2566325683_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2566225679_ _g2566325683_)))))
                            (__tmp29665
                             (gx#stx-map
                              (lambda (_g2699126993_)
                                (let ()
                                  (declare (not safe))
                                  (_make-id24934_ '"&" _g2699126993_)))
                              (let ((__tmp29666
                                     (lambda (_g2699626999_ _g2699727002_)
                                       (cons _g2699626999_ _g2699727002_))))
                                (declare (not safe))
                                (__foldr1 __tmp29666 '() _L25432_)))))
                       (declare (not safe))
                       (_g2566126988_ __tmp29665))))
                 _usetf2560225641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2559725621_
                                           _target2559425615_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2559125608_ _g2559225612_))))))
                            (let ()
                              (declare (not safe))
                              (_g2559125608_ _g2559225612_)))))
                     (__tmp29667
                      (gx#stx-map
                       (lambda (_g2700827010_)
                         (let ()
                           (declare (not safe))
                           (_make-id24934_ '"&" _g2700827010_)))
                       (let ((__tmp29668
                              (lambda (_g2701327016_ _g2701427019_)
                                (cons _g2701327016_ _g2701427019_))))
                         (declare (not safe))
                         (__foldr1 __tmp29668 '() _L25286_)))))
                (declare (not safe))
                (_g2559027005_ __tmp29667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf2553125570_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2552625550_ _target2552325544_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2552025537_ _g2552125541_))))))
                     (let ()
                       (declare (not safe))
                       (_g2552025537_ _g2552125541_)))))
              (__tmp29669
               (gx#stx-map
                (lambda (_g2702527027_)
                  (let ()
                    (declare (not safe))
                    (_make-id24934_ '"&" _g2702527027_)))
                (let ((__tmp29670
                       (lambda (_g2703027033_ _g2703127036_)
                         (cons _g2703027033_ _g2703127036_))))
                  (declare (not safe))
                  (__foldr1 __tmp29670 '() _L25215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2551927022_ __tmp29669))))
                                           _mixin-setf2546025499_))))))
                          (let ()
                            (declare (not safe))
                            (_loop2545525479_ _target2545225473_ '())))
                        (let ()
                          (declare (not safe))
                          (_g2544925466_ _g2545025470_))))))
              (let () (declare (not safe)) (_g2544925466_ _g2545025470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp29671
                                                (gx#stx-map
                                                 (lambda (_g2704227044_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_make-id24934_
                                                      _name24938_
                                                      '"-"
                                                      _g2704227044_
                                                      '"-set!")))
                                                 _mixin-slots25303_)))
                                          (declare (not safe))
                                          (_g2544827039_ __tmp29671))))
                                    _mixin-getf2538925428_))))))
                   (let ()
                     (declare (not safe))
                     (_loop2538425408_ _target2538125402_ '())))
                 (let ()
                   (declare (not safe))
                   (_g2537825395_ _g2537925399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2537825395_
                                                  _g2537925399_)))))
                                        (__tmp29672
                                         (gx#stx-map
                                          (lambda (_g2705127053_)
                                            (let ()
                                              (declare (not safe))
                                              (_make-id24934_
                                               _name24938_
                                               '"-"
                                               _g2705127053_)))
                                          _mixin-slots25303_)))
                                   (declare (not safe))
                                   (_g2537727048_ __tmp29672))))
                             _mixin-slot2531725356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop2531225336_
                                                       _target2530925330_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2530625323_
                                                     _g2530725327_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2530625323_ _g2530725327_))))))
                            (declare (not safe))
                            (_g2530527057_ _mixin-slots25303_))))
                      _setf2524325282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop2523825262_
                                                _target2523525256_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g2523225249_ _g2523325253_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2523225249_ _g2523325253_)))))
                          (__tmp29673
                           (gx#stx-map
                            (lambda (_g2706427066_)
                              (let ()
                                (declare (not safe))
                                (_make-id24934_
                                 _name24938_
                                 '"-"
                                 _g2706427066_
                                 '"-set!")))
                            _slots24929_)))
                     (declare (not safe))
                     (_g2523127061_ __tmp29673))))
               _getf2517225211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop2516725191_
                                         _target2516425185_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g2516125178_ _g2516225182_))))))
                          (let ()
                            (declare (not safe))
                            (_g2516125178_ _g2516225182_)))))
                   (__tmp29674
                    (gx#stx-map
                     (lambda (_g2707327075_)
                       (let ()
                         (declare (not safe))
                         (_make-id24934_ _name24938_ '"-" _g2707327075_)))
                     _slots24929_)))
              (declare (not safe))
              (_g2516027070_ __tmp29674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot2510125140_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop2509625120_ _target2509325114_ '())))
                             (let ()
                               (declare (not safe))
                               (_g2509025107_ _g2509125111_))))))
                   (let ()
                     (declare (not safe))
                     (_g2509025107_ _g2509125111_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g2508927079_ _slots24929_))))
                                         _g2506325074_)))
                                     (__tmp29675
                                      (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                           _super24941_)))
                                (declare (not safe))
                                (_g2506127083_ __tmp29675))))
                          _g2503525046_)))
                      (__tmp29676
                       (let ()
                         (declare (not safe))
                         (_make-id24934_ _name24938_ '"?"))))
                 (declare (not safe))
                 (_g2503327087_ __tmp29676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2500725018_)))
                                               (__tmp29677
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-id24934_
                                                   '"make-"
                                                   _name24938_))))
                                          (declare (not safe))
                                          (_g2500527091_ __tmp29677))))
                                    _g2497924990_)))
                                (__tmp29678
                                 (let ()
                                   (declare (not safe))
                                   (_make-id24934_ _name24938_ '"::t"))))
                           (declare (not safe))
                           (_g2497727095_ __tmp29678))))
                     _g2494824959_))))
            (declare (not safe))
            (_g2494627099_ _id24927_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_$stx27163_)
        (let* ((_g2716727186_
                (lambda (_g2716827182_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2716827182_)))
               (_g2716627243_
                (lambda (_g2716827190_)
                  (if (gx#stx-pair? _g2716827190_)
                      (let ((_e2717427193_ (gx#syntax-e _g2716827190_)))
                        (let ((_hd2717327197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2717427193_)))
                              (_tl2717227200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2717427193_))))
                          (if (gx#stx-pair? _tl2717227200_)
                              (let ((_e2717727203_
                                     (gx#syntax-e _tl2717227200_)))
                                (let ((_hd2717627207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2717727203_)))
                                      (_tl2717527210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2717727203_))))
                                  (if (gx#stx-pair? _tl2717527210_)
                                      (let ((_e2718027213_
                                             (gx#syntax-e _tl2717527210_)))
                                        (let ((_hd2717927217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2718027213_)))
                                              (_tl2717827220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2718027213_))))
                                          ((lambda (_L27223_ _L27225_ _L27226_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _L27226_
                                                         (cons _L27225_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _L27223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl2717827220_
                                           _hd2717927217_
                                           _hd2717627207_)))
                                      (_g2716727186_ _g2716827190_))))
                              (_g2716727186_ _g2716827190_))))
                      (_g2716727186_ _g2716827190_)))))
          (_g2716627243_ _$stx27163_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_stx27247_)
        (letrec ((_generate27250_
                  (lambda (_hd27334_ _slots27336_ _body27337_)
                    (let* ((___stx2909329094_ _hd27334_)
                           (_g2734027352_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2909329094_))))
                      (let ((___kont2909629097_
                             (lambda (_L27380_ _L27382_)
                               (let ((__tmp29679 (gx#syntax->list _L27380_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                  _stx27247_
                                  _L27382_
                                  __tmp29679
                                  _slots27336_
                                  _body27337_))))
                            (___kont2909829099_
                             (lambda ()
                               (if (gx#identifier? _hd27334_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                      _stx27247_
                                      _hd27334_
                                      '()
                                      _slots27336_
                                      _body27337_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx27247_
                                    _hd27334_)))))
                        (let ((___match2910629107_
                               (lambda (_e2734627370_
                                        _hd2734527374_
                                        _tl2734427377_)
                                 (let ((_L27380_ _tl2734427377_)
                                       (_L27382_ _hd2734527374_))
                                   (if (and (gx#stx-list? _L27380_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _L27380_))
                                       (___kont2909629097_ _L27380_ _L27382_)
                                       (___kont2909829099_))))))
                          (if (gx#stx-pair? ___stx2909329094_)
                              (let ((_e2734627370_
                                     (gx#syntax-e ___stx2909329094_)))
                                (let ((_tl2734427377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2734627370_)))
                                      (_hd2734527374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2734627370_))))
                                  (___match2910629107_
                                   _e2734627370_
                                   _hd2734527374_
                                   _tl2734427377_)))
                              (___kont2909829099_))))))))
          (let* ((_g2725327272_
                  (lambda (_g2725427268_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2725427268_)))
                 (_g2725227330_
                  (lambda (_g2725427276_)
                    (if (gx#stx-pair? _g2725427276_)
                        (let ((_e2726027279_ (gx#syntax-e _g2725427276_)))
                          (let ((_hd2725927283_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2726027279_)))
                                (_tl2725827286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2726027279_))))
                            (if (gx#stx-pair? _tl2725827286_)
                                (let ((_e2726327289_
                                       (gx#syntax-e _tl2725827286_)))
                                  (let ((_hd2726227293_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2726327289_)))
                                        (_tl2726127296_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2726327289_))))
                                    (if (gx#stx-pair? _tl2726127296_)
                                        (let ((_e2726627299_
                                               (gx#syntax-e _tl2726127296_)))
                                          (let ((_hd2726527303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2726627299_)))
                                                (_tl2726427306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2726627299_))))
                                            ((lambda (_L27309_
                                                      _L27311_
                                                      _L27312_)
                                               (if (and (gx#identifier-list?
                                                         _L27311_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                           _L27309_)))
                                                   (_generate27250_
                                                    _L27312_
                                                    _L27311_
                                                    _L27309_)
                                                   (_g2725327272_
                                                    _g2725427276_)))
                                             _tl2726427306_
                                             _hd2726527303_
                                             _hd2726227293_)))
                                        (_g2725327272_ _g2725427276_))))
                                (_g2725327272_ _g2725427276_))))
                        (_g2725327272_ _g2725427276_)))))
            (_g2725227330_ _stx27247_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_stx27399_)
        (letrec ((_wrap27402_
                  (lambda (_e-stx27739_)
                    (gx#stx-wrap-source
                     _e-stx27739_
                     (gx#stx-source _stx27399_))))
                 (_method-opt?27404_
                  (lambda (_x27736_)
                    (let ((__tmp29680 (gx#stx-e _x27736_)))
                      (declare (not safe))
                      (##memq __tmp29680 '(rebind:))))))
          (let* ((_g2740627435_
                  (lambda (_g2740727431_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2740727431_)))
                 (_g2740527732_
                  (lambda (_g2740727439_)
                    (if (gx#stx-pair? _g2740727439_)
                        (let ((_e2741427442_ (gx#syntax-e _g2740727439_)))
                          (let ((_hd2741327446_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2741427442_)))
                                (_tl2741227449_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2741427442_))))
                            (if (gx#stx-pair? _tl2741227449_)
                                (let ((_e2741727452_
                                       (gx#syntax-e _tl2741227449_)))
                                  (let ((_hd2741627456_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2741727452_)))
                                        (_tl2741527459_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2741727452_))))
                                    (if (gx#stx-pair? _hd2741627456_)
                                        (let ((_e2742027462_
                                               (gx#syntax-e _hd2741627456_)))
                                          (let ((_hd2741927466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2742027462_)))
                                                (_tl2741827469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2742027462_))))
                                            (if (gx#identifier? _hd2741927466_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g29681_|
                                                     _hd2741927466_)
                                                    (if (gx#stx-pair?
                                                         _tl2741827469_)
                                                        (let ((_e2742327472_
                                                               (gx#syntax-e
                                                                _tl2741827469_)))
                                                          (let ((_hd2742227476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2742327472_)))
                        (_tl2742127479_
                         (let () (declare (not safe)) (##cdr _e2742327472_))))
                    (if (gx#stx-pair? _tl2742127479_)
                        (let ((_e2742627482_ (gx#syntax-e _tl2742127479_)))
                          (let ((_hd2742527486_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2742627482_)))
                                (_tl2742427489_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2742627482_))))
                            (if (gx#stx-null? _tl2742427489_)
                                (if (gx#stx-pair? _tl2741527459_)
                                    (let ((_e2742927492_
                                           (gx#syntax-e _tl2741527459_)))
                                      (let ((_hd2742827496_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2742927492_)))
                                            (_tl2742727499_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2742927492_))))
                                        ((lambda (_L27502_
                                                  _L27504_
                                                  _L27505_
                                                  _L27506_)
                                           (if (and (gx#identifier? _L27506_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _L27505_))
                                                    (gx#stx-plist?
                                                     _L27502_
                                                     _method-opt?27404_))
                                               (let* ((_klass27531_
                                                       (gx#syntax-local-value
                                                        _L27505_))
                                                      (_rebind?27534_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L27502_)))
                                                      (_g2753727545_
                                                       (lambda (_g2753827541_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2753827541_)))
                                                      (_g2753627728_
                                                       (lambda (_g2753827549_)
                                                         ((lambda (_L27552_)
                                                            (let ()
                                                              (let* ((_g2756627574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2756727570_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2756727570_)))
                             (_g2756527724_
                              (lambda (_g2756727578_)
                                ((lambda (_L27581_)
                                   (let ()
                                     (let* ((_g2759427602_
                                             (lambda (_g2759527598_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2759527598_)))
                                            (_g2759327720_
                                             (lambda (_g2759527606_)
                                               ((lambda (_L27609_)
                                                  (let ()
                                                    (let* ((_g2762227630_
                                                            (lambda (_g2762327626_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2762327626_)))
                                                           (_g2762127716_
                                                            (lambda (_g2762327634_)
                                                              ((lambda (_L27637_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2765027658_
                                   (lambda (_g2765127654_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2765127654_)))
                                  (_g2764927712_
                                   (lambda (_g2765127662_)
                                     ((lambda (_L27665_)
                                        (let ()
                                          (let* ((_g2767827686_
                                                  (lambda (_g2767927682_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2767927682_)))
                                                 (_g2767727708_
                                                  (lambda (_g2767927690_)
                                                    ((lambda (_L27693_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap27402_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L27637_ (cons _L27693_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2767927690_))))
                                            (_g2767727708_
                                             (_wrap27402_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L27552_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L27506_ '()))
                        (cons _L27581_ (cons _L27665_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2765127662_))))
                             (_g2764927712_ _rebind?27534_))))
                       _g2762327634_))))
              (_g2762127716_
               (_wrap27402_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L27581_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L27609_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L27552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L27506_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L27504_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2759527606_))))
                                       (_g2759327720_
                                        (gx#stx-identifier
                                         _L27505_
                                         '@next-method)))))
                                 _g2756727578_))))
                        (_g2756527724_
                         (gx#stx-identifier
                          _L27505_
                          _L27505_
                          '"::"
                          _L27506_)))))
                  _g2753827549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2753627728_
                                                  (let ((__obj29370
                                                         _klass27531_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj29370
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj29370
                                                           '10
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj29370
                                                         'type-descriptor)))))
                                               (if (let ((__tmp29682
                                                          (gx#identifier?
                                                           _L27506_)))
                                                     (declare (not safe))
                                                     (not __tmp29682))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx27399_
                                                    _L27506_)
                                                   (if (let ((__tmp29683
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                         _L27505_))))
                 (declare (not safe))
                 (not __tmp29683))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx27399_
                _L27505_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx27399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2742727499_
                                         _hd2742827496_
                                         _hd2742527486_
                                         _hd2742227476_)))
                                    (_g2740627435_ _g2740727439_))
                                (_g2740627435_ _g2740727439_))))
                        (_g2740627435_ _g2740727439_))))
                (_g2740627435_ _g2740727439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2740627435_
                                                     _g2740727439_))
                                                (_g2740627435_
                                                 _g2740727439_))))
                                        (_g2740627435_ _g2740727439_))))
                                (_g2740627435_ _g2740727439_))))
                        (_g2740627435_ _g2740727439_)))))
            (_g2740527732_ _stx27399_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_stx27742_)
        (letrec ((_dotted-identifier?27745_
                  (lambda (_id28378_)
                    (if (gx#identifier? _id28378_)
                        (let ((_id-str28381_
                               (symbol->string (gx#stx-e _id28378_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index__0 _id-str28381_ '#\.))
                              (let* ((_split28384_
                                      (let ()
                                        (declare (not safe))
                                        (string-split _id-str28381_ '#\.)))
                                     (__tmp29684 (length _split28384_)))
                                (declare (not safe))
                                (##fx= __tmp29684 '2))
                              '#f))
                        '#f)))
                 (_split-dotted27747_
                  (lambda (_id28367_)
                    (let* ((_id-str28370_
                            (symbol->string (gx#stx-e _id28367_)))
                           (_split28373_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str28370_ '#\.))))
                      (cons (gx#stx-identifier _id28367_ (car _split28373_))
                            (cons (gx#stx-identifier
                                   _id28367_
                                   (cadr _split28373_))
                                  '()))))))
          (let* ((___stx2910929110_ _stx27742_)
                 (_g2775227839_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2910929110_))))
            (let ((___kont2911229113_
                   (lambda (_L28260_ _L28262_ _L28263_)
                     (let* ((_g2829128306_
                             (lambda (_g2829228302_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2829228302_)))
                            (_g2829028359_
                             (lambda (_g2829228310_)
                               (if (gx#stx-pair? _g2829228310_)
                                   (let ((_e2829728313_
                                          (gx#syntax-e _g2829228310_)))
                                     (let ((_hd2829628317_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2829728313_)))
                                           (_tl2829528320_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2829728313_))))
                                       (if (gx#stx-pair? _tl2829528320_)
                                           (let ((_e2830028323_
                                                  (gx#syntax-e
                                                   _tl2829528320_)))
                                             (let ((_hd2829928327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2830028323_)))
                                                   (_tl2829828330_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2830028323_))))
                                               (if (gx#stx-null?
                                                    _tl2829828330_)
                                                   ((lambda (_L28333_ _L28335_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _L28335_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L28333_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (let ((__tmp29685
                                                           (lambda (_g2835028353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2835128356_)
                     (cons _g2835028353_ _g2835128356_))))
              (declare (not safe))
              (__foldr1 __tmp29685 '() _L28262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2829928327_
                                                    _hd2829628317_)
                                                   (_g2829128306_
                                                    _g2829228310_))))
                                           (_g2829128306_ _g2829228310_))))
                                   (_g2829128306_ _g2829228310_)))))
                       (_g2829028359_ (_split-dotted27747_ _L28263_)))))
                  (___kont2911629117_
                   (lambda (_L28102_ _L28104_)
                     (let* ((_g2812128136_
                             (lambda (_g2812228132_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2812228132_)))
                            (_g2812028189_
                             (lambda (_g2812228140_)
                               (if (gx#stx-pair? _g2812228140_)
                                   (let ((_e2812728143_
                                          (gx#syntax-e _g2812228140_)))
                                     (let ((_hd2812628147_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2812728143_)))
                                           (_tl2812528150_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2812728143_))))
                                       (if (gx#stx-pair? _tl2812528150_)
                                           (let ((_e2813028153_
                                                  (gx#syntax-e
                                                   _tl2812528150_)))
                                             (let ((_hd2812928157_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2813028153_)))
                                                   (_tl2812828160_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2813028153_))))
                                               (if (gx#stx-null?
                                                    _tl2812828160_)
                                                   ((lambda (_L28163_ _L28165_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _L28165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L28163_ '()))
                                  (let ((__tmp29686
                                         (lambda (_g2818028183_ _g2818128186_)
                                           (cons _g2818028183_
                                                 _g2818128186_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp29686 '() _L28102_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2812928157_
                                                    _hd2812628147_)
                                                   (_g2812128136_
                                                    _g2812228140_))))
                                           (_g2812128136_ _g2812228140_))))
                                   (_g2812128136_ _g2812228140_)))))
                       (_g2812028189_ (_split-dotted27747_ _L28104_)))))
                  (___kont2912029121_
                   (lambda (_L28006_ _L28008_ _L28009_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _L28008_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L28009_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (let ((__tmp29687
                                                                (lambda (_g2803628039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2803728042_)
                          (cons _g2803628039_ _g2803728042_))))
                   (declare (not safe))
                   (__foldr1 __tmp29687 '() _L28006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (___kont2912429125_
                   (lambda (_L27906_ _L27908_ _L27909_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _L27908_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L27909_ '()))
                                       (let ((__tmp29688
                                              (lambda (_g2793027933_
                                                       _g2793127936_)
                                                (cons _g2793027933_
                                                      _g2793127936_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp29688
                                          '()
                                          _L27906_))))))))
              (let* ((___match2922829229_
                      (lambda (_e2781827846_
                               _hd2781727850_
                               _tl2781627853_
                               _e2782127856_
                               _hd2782027860_
                               _tl2781927863_
                               _e2782427866_
                               _hd2782327870_
                               _tl2782227873_
                               ___splice2912629127_
                               _target2782527876_
                               _tl2782727879_)
                        (letrec ((_loop2782827882_
                                  (lambda (_hd2782627886_ _arg2783227889_)
                                    (if (gx#stx-pair? _hd2782627886_)
                                        (let ((_e2782927892_
                                               (gx#syntax-e _hd2782627886_)))
                                          (let ((_lp-tl2783127899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2782927892_)))
                                                (_lp-hd2783027896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2782927892_))))
                                            (_loop2782827882_
                                             _lp-tl2783127899_
                                             (cons _lp-hd2783027896_
                                                   _arg2783227889_))))
                                        (let ((_arg2783327902_
                                               (reverse _arg2783227889_)))
                                          (let ((_L27906_ _arg2783327902_)
                                                (_L27908_ _hd2782327870_)
                                                (_L27909_ _hd2782027860_))
                                            (if (gx#identifier? _L27909_)
                                                (___kont2912429125_
                                                 _L27906_
                                                 _L27908_
                                                 _L27909_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2775227839_)))))))))
                          (_loop2782827882_ _target2782527876_ '()))))
                     (___match2920229203_
                      (lambda (_e2779727946_
                               _hd2779627950_
                               _tl2779527953_
                               _e2780027956_
                               _hd2779927960_
                               _tl2779827963_
                               _e2780327966_
                               _hd2780227970_
                               _tl2780127973_
                               ___splice2912229123_
                               _target2780427976_
                               _tl2780627979_)
                        (letrec ((_loop2780727982_
                                  (lambda (_hd2780527986_ _arg2781127989_)
                                    (if (gx#stx-pair? _hd2780527986_)
                                        (let ((_e2780827992_
                                               (gx#syntax-e _hd2780527986_)))
                                          (let ((_lp-tl2781027999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2780827992_)))
                                                (_lp-hd2780927996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2780827992_))))
                                            (_loop2780727982_
                                             _lp-tl2781027999_
                                             (cons _lp-hd2780927996_
                                                   _arg2781127989_))))
                                        (let ((_arg2781228002_
                                               (reverse _arg2781127989_)))
                                          (let ((_L28006_ _arg2781228002_)
                                                (_L28008_ _hd2780227970_)
                                                (_L28009_ _hd2779927960_))
                                            (if (and (gx#identifier? _L28009_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp29689
                                                             (lambda (_g2802828031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2802928034_)
                       (cons _g2802828031_ _g2802928034_))))
                (declare (not safe))
                (__foldr1 __tmp29689 '() _L28006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2912029121_
                                                 _L28006_
                                                 _L28008_
                                                 _L28009_)
                                                (___match2922829229_
                                                 _e2779727946_
                                                 _hd2779627950_
                                                 _tl2779527953_
                                                 _e2780027956_
                                                 _hd2779927960_
                                                 _tl2779827963_
                                                 _e2780327966_
                                                 _hd2780227970_
                                                 _tl2780127973_
                                                 ___splice2912229123_
                                                 _target2780427976_
                                                 _tl2780627979_))))))))
                          (_loop2780727982_ _target2780427976_ '()))))
                     (___match2918829189_
                      (lambda (_e2779727946_
                               _hd2779627950_
                               _tl2779527953_
                               _e2780027956_
                               _hd2779927960_
                               _tl2779827963_)
                        (if (gx#stx-pair? _tl2779827963_)
                            (let ((_e2780327966_ (gx#syntax-e _tl2779827963_)))
                              (let ((_tl2780127973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2780327966_)))
                                    (_hd2780227970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2780327966_))))
                                (if (gx#stx-pair/null? _tl2780127973_)
                                    (let ((___splice2912229123_
                                           (gx#syntax-split-splice
                                            _tl2780127973_
                                            '0)))
                                      (let ((_tl2780627979_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2912229123_
                                                '1)))
                                            (_target2780427976_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2912229123_
                                                '0))))
                                        (if (gx#stx-null? _tl2780627979_)
                                            (___match2920229203_
                                             _e2779727946_
                                             _hd2779627950_
                                             _tl2779527953_
                                             _e2780027956_
                                             _hd2779927960_
                                             _tl2779827963_
                                             _e2780327966_
                                             _hd2780227970_
                                             _tl2780127973_
                                             ___splice2912229123_
                                             _target2780427976_
                                             _tl2780627979_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2775227839_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2775227839_)))))
                            (let () (declare (not safe)) (_g2775227839_)))))
                     (___match2917629177_
                      (lambda (_e2777928052_
                               _hd2777828056_
                               _tl2777728059_
                               _e2778228062_
                               _hd2778128066_
                               _tl2778028069_
                               ___splice2911829119_
                               _target2778328072_
                               _tl2778528075_)
                        (letrec ((_loop2778628078_
                                  (lambda (_hd2778428082_ _arg2779028085_)
                                    (if (gx#stx-pair? _hd2778428082_)
                                        (let ((_e2778728088_
                                               (gx#syntax-e _hd2778428082_)))
                                          (let ((_lp-tl2778928095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2778728088_)))
                                                (_lp-hd2778828092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2778728088_))))
                                            (_loop2778628078_
                                             _lp-tl2778928095_
                                             (cons _lp-hd2778828092_
                                                   _arg2779028085_))))
                                        (let ((_arg2779128098_
                                               (reverse _arg2779028085_)))
                                          (let ((_L28102_ _arg2779128098_)
                                                (_L28104_ _hd2778128066_))
                                            (if (_dotted-identifier?27745_
                                                 _L28104_)
                                                (___kont2911629117_
                                                 _L28102_
                                                 _L28104_)
                                                (___match2918829189_
                                                 _e2777928052_
                                                 _hd2777828056_
                                                 _tl2777728059_
                                                 _e2778228062_
                                                 _hd2778128066_
                                                 _tl2778028069_))))))))
                          (_loop2778628078_ _target2778328072_ '()))))
                     (___match2917429175_
                      (lambda (_e2777928052_
                               _hd2777828056_
                               _tl2777728059_
                               _e2778228062_
                               _hd2778128066_
                               _tl2778028069_
                               ___splice2911829119_
                               _target2778328072_
                               _tl2778528075_)
                        (if (gx#stx-null? _tl2778528075_)
                            (___match2917629177_
                             _e2777928052_
                             _hd2777828056_
                             _tl2777728059_
                             _e2778228062_
                             _hd2778128066_
                             _tl2778028069_
                             ___splice2911829119_
                             _target2778328072_
                             _tl2778528075_)
                            (if (gx#stx-pair? _tl2778028069_)
                                (let ((_e2780327966_
                                       (gx#syntax-e _tl2778028069_)))
                                  (let ((_tl2780127973_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2780327966_)))
                                        (_hd2780227970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2780327966_))))
                                    (if (gx#stx-pair/null? _tl2780127973_)
                                        (let ((___splice2912229123_
                                               (gx#syntax-split-splice
                                                _tl2780127973_
                                                '0)))
                                          (let ((_tl2780627979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2912229123_
                                                    '1)))
                                                (_target2780427976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2912229123_
                                                    '0))))
                                            (if (gx#stx-null? _tl2780627979_)
                                                (___match2920229203_
                                                 _e2777928052_
                                                 _hd2777828056_
                                                 _tl2777728059_
                                                 _e2778228062_
                                                 _hd2778128066_
                                                 _tl2778028069_
                                                 _e2780327966_
                                                 _hd2780227970_
                                                 _tl2780127973_
                                                 ___splice2912229123_
                                                 _target2780427976_
                                                 _tl2780627979_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2775227839_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2775227839_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2775227839_))))))
                     (___match2915629157_
                      (lambda (_e2775928200_
                               _hd2775828204_
                               _tl2775728207_
                               _e2776228210_
                               _hd2776128214_
                               _tl2776028217_
                               ___splice2911429115_
                               _target2776328220_
                               _tl2776528223_
                               _e2777428226_
                               _hd2777328230_
                               _tl2777228233_)
                        (letrec ((_loop2776628236_
                                  (lambda (_hd2776428240_ _arg2777028243_)
                                    (if (gx#stx-pair? _hd2776428240_)
                                        (let ((_e2776728246_
                                               (gx#syntax-e _hd2776428240_)))
                                          (let ((_lp-tl2776928253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2776728246_)))
                                                (_lp-hd2776828250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2776728246_))))
                                            (_loop2776628236_
                                             _lp-tl2776928253_
                                             (cons _lp-hd2776828250_
                                                   _arg2777028243_))))
                                        (let ((_arg2777128256_
                                               (reverse _arg2777028243_)))
                                          (let ((_L28260_ _hd2777328230_)
                                                (_L28262_ _arg2777128256_)
                                                (_L28263_ _hd2776128214_))
                                            (if (and (_dotted-identifier?27745_
                                                      _L28263_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp29690
                                                             (lambda (_g2828228285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2828328288_)
                       (cons _g2828228285_ _g2828328288_))))
                (declare (not safe))
                (__foldr1 __tmp29690 '() _L28262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2911229113_
                                                 _L28260_
                                                 _L28262_
                                                 _L28263_)
                                                (let ((___splice2911829119_
                                                       (gx#syntax-split-splice
                                                        _tl2776028217_
                                                        '0)))
                                                  (let ((_tl2778528075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2911829119_
                                                            '1)))
                                                        (_target2778328072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2911829119_
                                                            '0))))
                                                    (___match2917429175_
                                                     _e2775928200_
                                                     _hd2775828204_
                                                     _tl2775728207_
                                                     _e2776228210_
                                                     _hd2776128214_
                                                     _tl2776028217_
                                                     ___splice2911829119_
                                                     _target2778328072_
                                                     _tl2778528075_))))))))))
                          (_loop2776628236_ _target2776328220_ '())))))
                (if (gx#stx-pair? ___stx2910929110_)
                    (let ((_e2775928200_ (gx#syntax-e ___stx2910929110_)))
                      (let ((_tl2775728207_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2775928200_)))
                            (_hd2775828204_
                             (let ()
                               (declare (not safe))
                               (##car _e2775928200_))))
                        (if (gx#stx-pair? _tl2775728207_)
                            (let ((_e2776228210_ (gx#syntax-e _tl2775728207_)))
                              (let ((_tl2776028217_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2776228210_)))
                                    (_hd2776128214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2776228210_))))
                                (if (gx#stx-pair/null? _tl2776028217_)
                                    (if (let ((__tmp29691
                                               (gx#stx-length _tl2776028217_)))
                                          (declare (not safe))
                                          (##fx>= __tmp29691 '1))
                                        (let ((___splice2911429115_
                                               (gx#syntax-split-splice
                                                _tl2776028217_
                                                '1)))
                                          (let ((_tl2776528223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2911429115_
                                                    '1)))
                                                (_target2776328220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2911429115_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2776528223_)
                                                (let ((_e2777428226_
                                                       (gx#syntax-e
                                                        _tl2776528223_)))
                                                  (let ((_tl2777228233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2777428226_)))
                                                        (_hd2777328230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2777428226_))))
                                                    (if (gx#stx-null?
                                                         _tl2777228233_)
                                                        (___match2915629157_
                                                         _e2775928200_
                                                         _hd2775828204_
                                                         _tl2775728207_
                                                         _e2776228210_
                                                         _hd2776128214_
                                                         _tl2776028217_
                                                         ___splice2911429115_
                                                         _target2776328220_
                                                         _tl2776528223_
                                                         _e2777428226_
                                                         _hd2777328230_
                                                         _tl2777228233_)
                                                        (let ((___splice2911829119_
                                                               (gx#syntax-split-splice
                                                                _tl2776028217_
                                                                '0)))
                                                          (let ((_tl2778528075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2911829119_ '1)))
                        (_target2778328072_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2911829119_ '0))))
                    (if (gx#stx-null? _tl2778528075_)
                        (___match2917629177_
                         _e2775928200_
                         _hd2775828204_
                         _tl2775728207_
                         _e2776228210_
                         _hd2776128214_
                         _tl2776028217_
                         ___splice2911829119_
                         _target2778328072_
                         _tl2778528075_)
                        (if (gx#stx-pair? _tl2776028217_)
                            (let ((_e2780327966_ (gx#syntax-e _tl2776028217_)))
                              (let ((_tl2780127973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2780327966_)))
                                    (_hd2780227970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2780327966_))))
                                (if (gx#stx-pair/null? _tl2780127973_)
                                    (let ((___splice2912229123_
                                           (gx#syntax-split-splice
                                            _tl2780127973_
                                            '0)))
                                      (let ((_tl2780627979_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2912229123_
                                                '1)))
                                            (_target2780427976_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2912229123_
                                                '0))))
                                        (if (gx#stx-null? _tl2780627979_)
                                            (___match2920229203_
                                             _e2775928200_
                                             _hd2775828204_
                                             _tl2775728207_
                                             _e2776228210_
                                             _hd2776128214_
                                             _tl2776028217_
                                             _e2780327966_
                                             _hd2780227970_
                                             _tl2780127973_
                                             ___splice2912229123_
                                             _target2780427976_
                                             _tl2780627979_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2775227839_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2775227839_)))))
                            (let ()
                              (declare (not safe))
                              (_g2775227839_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice2911829119_
                                                       (gx#syntax-split-splice
                                                        _tl2776028217_
                                                        '0)))
                                                  (let ((_tl2778528075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2911829119_
                                                            '1)))
                                                        (_target2778328072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2911829119_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2778528075_)
                                                        (___match2917629177_
                                                         _e2775928200_
                                                         _hd2775828204_
                                                         _tl2775728207_
                                                         _e2776228210_
                                                         _hd2776128214_
                                                         _tl2776028217_
                                                         ___splice2911829119_
                                                         _target2778328072_
                                                         _tl2778528075_)
                                                        (if (gx#stx-pair?
                                                             _tl2776028217_)
                                                            (let ((_e2780327966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2776028217_)))
                      (let ((_tl2780127973_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2780327966_)))
                            (_hd2780227970_
                             (let ()
                               (declare (not safe))
                               (##car _e2780327966_))))
                        (if (gx#stx-pair/null? _tl2780127973_)
                            (let ((___splice2912229123_
                                   (gx#syntax-split-splice _tl2780127973_ '0)))
                              (let ((_tl2780627979_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2912229123_ '1)))
                                    (_target2780427976_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2912229123_
                                        '0))))
                                (if (gx#stx-null? _tl2780627979_)
                                    (___match2920229203_
                                     _e2775928200_
                                     _hd2775828204_
                                     _tl2775728207_
                                     _e2776228210_
                                     _hd2776128214_
                                     _tl2776028217_
                                     _e2780327966_
                                     _hd2780227970_
                                     _tl2780127973_
                                     ___splice2912229123_
                                     _target2780427976_
                                     _tl2780627979_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2775227839_)))))
                            (let () (declare (not safe)) (_g2775227839_)))))
                    (let () (declare (not safe)) (_g2775227839_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice2911829119_
                                               (gx#syntax-split-splice
                                                _tl2776028217_
                                                '0)))
                                          (let ((_tl2778528075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2911829119_
                                                    '1)))
                                                (_target2778328072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2911829119_
                                                    '0))))
                                            (if (gx#stx-null? _tl2778528075_)
                                                (___match2917629177_
                                                 _e2775928200_
                                                 _hd2775828204_
                                                 _tl2775728207_
                                                 _e2776228210_
                                                 _hd2776128214_
                                                 _tl2776028217_
                                                 ___splice2911829119_
                                                 _target2778328072_
                                                 _tl2778528075_)
                                                (if (gx#stx-pair?
                                                     _tl2776028217_)
                                                    (let ((_e2780327966_
                                                           (gx#syntax-e
                                                            _tl2776028217_)))
                                                      (let ((_tl2780127973_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2780327966_)))
                    (_hd2780227970_
                     (let () (declare (not safe)) (##car _e2780327966_))))
                (if (gx#stx-pair/null? _tl2780127973_)
                    (let ((___splice2912229123_
                           (gx#syntax-split-splice _tl2780127973_ '0)))
                      (let ((_tl2780627979_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2912229123_ '1)))
                            (_target2780427976_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2912229123_ '0))))
                        (if (gx#stx-null? _tl2780627979_)
                            (___match2920229203_
                             _e2775928200_
                             _hd2775828204_
                             _tl2775728207_
                             _e2776228210_
                             _hd2776128214_
                             _tl2776028217_
                             _e2780327966_
                             _hd2780227970_
                             _tl2780127973_
                             ___splice2912229123_
                             _target2780427976_
                             _tl2780627979_)
                            (let () (declare (not safe)) (_g2775227839_)))))
                    (let () (declare (not safe)) (_g2775227839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2775227839_)))))))
                                    (if (gx#stx-pair? _tl2776028217_)
                                        (let ((_e2780327966_
                                               (gx#syntax-e _tl2776028217_)))
                                          (let ((_tl2780127973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2780327966_)))
                                                (_hd2780227970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2780327966_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2780127973_)
                                                (let ((___splice2912229123_
                                                       (gx#syntax-split-splice
                                                        _tl2780127973_
                                                        '0)))
                                                  (let ((_tl2780627979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2912229123_
                                                            '1)))
                                                        (_target2780427976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2912229123_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2780627979_)
                                                        (___match2920229203_
                                                         _e2775928200_
                                                         _hd2775828204_
                                                         _tl2775728207_
                                                         _e2776228210_
                                                         _hd2776128214_
                                                         _tl2776028217_
                                                         _e2780327966_
                                                         _hd2780227970_
                                                         _tl2780127973_
                                                         ___splice2912229123_
                                                         _target2780427976_
                                                         _tl2780627979_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2775227839_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2775227839_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2775227839_))))))
                            (let () (declare (not safe)) (_g2775227839_)))))
                    (let () (declare (not safe)) (_g2775227839_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_$stx28391_)
        (let* ((___stx2923129232_ _$stx28391_)
               (_g2839628436_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2923129232_))))
          (let ((___kont2923429235_
                 (lambda (_L28574_ _L28576_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L28576_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L28574_ '()))
                                     '())))))
                (___kont2923629237_
                 (lambda (_L28503_ _L28505_ _L28506_ _L28507_)
                   (cons _L28507_
                         (cons (cons _L28507_
                                     (cons _L28506_ (cons _L28505_ '())))
                               (let ((__tmp29692
                                      (lambda (_g2852828531_ _g2852928534_)
                                        (cons _g2852828531_ _g2852928534_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp29692 '() _L28503_)))))))
            (let* ((___match2928629287_
                    (lambda (_e2841528443_
                             _hd2841428447_
                             _tl2841328450_
                             _e2841828453_
                             _hd2841728457_
                             _tl2841628460_
                             _e2842128463_
                             _hd2842028467_
                             _tl2841928470_
                             ___splice2923829239_
                             _target2842228473_
                             _tl2842428476_)
                      (letrec ((_loop2842528479_
                                (lambda (_hd2842328483_ _rest2842928486_)
                                  (if (gx#stx-pair? _hd2842328483_)
                                      (let ((_e2842628489_
                                             (gx#syntax-e _hd2842328483_)))
                                        (let ((_lp-tl2842828496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2842628489_)))
                                              (_lp-hd2842728493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2842628489_))))
                                          (_loop2842528479_
                                           _lp-tl2842828496_
                                           (cons _lp-hd2842728493_
                                                 _rest2842928486_))))
                                      (let ((_rest2843028499_
                                             (reverse _rest2842928486_)))
                                        (___kont2923629237_
                                         _rest2843028499_
                                         _hd2842028467_
                                         _hd2841728457_
                                         _hd2841428447_))))))
                        (_loop2842528479_ _target2842228473_ '()))))
                   (___match2926029261_
                    (lambda (_e2840228544_
                             _hd2840128548_
                             _tl2840028551_
                             _e2840528554_
                             _hd2840428558_
                             _tl2840328561_
                             _e2840828564_
                             _hd2840728568_
                             _tl2840628571_)
                      (let ((_L28574_ _hd2840728568_)
                            (_L28576_ _hd2840428558_))
                        (if (gx#identifier? _L28574_)
                            (___kont2923429235_ _L28574_ _L28576_)
                            (if (gx#stx-pair/null? _tl2840628571_)
                                (let ((___splice2923829239_
                                       (gx#syntax-split-splice
                                        _tl2840628571_
                                        '0)))
                                  (let ((_tl2842428476_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2923829239_
                                            '1)))
                                        (_target2842228473_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2923829239_
                                            '0))))
                                    (if (gx#stx-null? _tl2842428476_)
                                        (___match2928629287_
                                         _e2840228544_
                                         _hd2840128548_
                                         _tl2840028551_
                                         _e2840528554_
                                         _hd2840428558_
                                         _tl2840328561_
                                         _e2840828564_
                                         _hd2840728568_
                                         _tl2840628571_
                                         ___splice2923829239_
                                         _target2842228473_
                                         _tl2842428476_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2839628436_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2839628436_))))))))
              (if (gx#stx-pair? ___stx2923129232_)
                  (let ((_e2840228544_ (gx#syntax-e ___stx2923129232_)))
                    (let ((_tl2840028551_
                           (let () (declare (not safe)) (##cdr _e2840228544_)))
                          (_hd2840128548_
                           (let ()
                             (declare (not safe))
                             (##car _e2840228544_))))
                      (if (gx#stx-pair? _tl2840028551_)
                          (let ((_e2840528554_ (gx#syntax-e _tl2840028551_)))
                            (let ((_tl2840328561_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2840528554_)))
                                  (_hd2840428558_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2840528554_))))
                              (if (gx#stx-pair? _tl2840328561_)
                                  (let ((_e2840828564_
                                         (gx#syntax-e _tl2840328561_)))
                                    (let ((_tl2840628571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2840828564_)))
                                          (_hd2840728568_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2840828564_))))
                                      (if (gx#stx-null? _tl2840628571_)
                                          (___match2926029261_
                                           _e2840228544_
                                           _hd2840128548_
                                           _tl2840028551_
                                           _e2840528554_
                                           _hd2840428558_
                                           _tl2840328561_
                                           _e2840828564_
                                           _hd2840728568_
                                           _tl2840628571_)
                                          (if (gx#stx-pair/null?
                                               _tl2840628571_)
                                              (let ((___splice2923829239_
                                                     (gx#syntax-split-splice
                                                      _tl2840628571_
                                                      '0)))
                                                (let ((_tl2842428476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2923829239_
                                                          '1)))
                                                      (_target2842228473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2923829239_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2842428476_)
                                                      (___match2928629287_
                                                       _e2840228544_
                                                       _hd2840128548_
                                                       _tl2840028551_
                                                       _e2840528554_
                                                       _hd2840428558_
                                                       _tl2840328561_
                                                       _e2840828564_
                                                       _hd2840728568_
                                                       _tl2840628571_
                                                       ___splice2923829239_
                                                       _target2842228473_
                                                       _tl2842428476_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2839628436_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2839628436_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2839628436_)))))
                          (let () (declare (not safe)) (_g2839628436_)))))
                  (let () (declare (not safe)) (_g2839628436_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_$stx28596_)
        (let* ((___stx2928929290_ _$stx28596_)
               (_g2860128653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2928929290_))))
          (let ((___kont2929229293_
                 (lambda (_L28829_ _L28831_ _L28832_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L28832_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L28831_ '()))
                                     (cons _L28829_ '()))))))
                (___kont2929429295_
                 (lambda (_L28740_
                          _L28742_
                          _L28743_
                          _L28744_
                          _L28745_
                          _L28746_)
                   (cons _L28746_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L28745_
                                           (cons _L28744_
                                                 (let ((__tmp29693
                                                        (lambda (_g2877328776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2877428779_)
                  (cons _g2877328776_ _g2877428779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp29693
                                                    '()
                                                    _L28743_)))))
                               (cons _L28742_ (cons _L28740_ '())))))))
            (let* ((___match2936429365_
                    (lambda (_e2862628660_
                             _hd2862528664_
                             _tl2862428667_
                             _e2862928670_
                             _hd2862828674_
                             _tl2862728677_
                             _e2863228680_
                             _hd2863128684_
                             _tl2863028687_
                             ___splice2929629297_
                             _target2863328690_
                             _tl2863528693_
                             _e2864428696_
                             _hd2864328700_
                             _tl2864228703_
                             _e2864728706_
                             _hd2864628710_
                             _tl2864528713_)
                      (letrec ((_loop2863628716_
                                (lambda (_hd2863428720_ _path2864028723_)
                                  (if (gx#stx-pair? _hd2863428720_)
                                      (let ((_e2863728726_
                                             (gx#syntax-e _hd2863428720_)))
                                        (let ((_lp-tl2863928733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2863728726_)))
                                              (_lp-hd2863828730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2863728726_))))
                                          (_loop2863628716_
                                           _lp-tl2863928733_
                                           (cons _lp-hd2863828730_
                                                 _path2864028723_))))
                                      (let ((_path2864128736_
                                             (reverse _path2864028723_)))
                                        (___kont2929429295_
                                         _hd2864628710_
                                         _hd2864328700_
                                         _path2864128736_
                                         _hd2863128684_
                                         _hd2862828674_
                                         _hd2862528664_))))))
                        (_loop2863628716_ _target2863328690_ '()))))
                   (___match2932429325_
                    (lambda (_e2860828789_
                             _hd2860728793_
                             _tl2860628796_
                             _e2861128799_
                             _hd2861028803_
                             _tl2860928806_
                             _e2861428809_
                             _hd2861328813_
                             _tl2861228816_
                             _e2861728819_
                             _hd2861628823_
                             _tl2861528826_)
                      (let ((_L28829_ _hd2861628823_)
                            (_L28831_ _hd2861328813_)
                            (_L28832_ _hd2861028803_))
                        (if (gx#identifier? _L28831_)
                            (___kont2929229293_ _L28829_ _L28831_ _L28832_)
                            (if (gx#stx-pair/null? _tl2861228816_)
                                (if (let ((__tmp29694
                                           (gx#stx-length _tl2861228816_)))
                                      (declare (not safe))
                                      (##fx>= __tmp29694 '2))
                                    (let ((___splice2929629297_
                                           (gx#syntax-split-splice
                                            _tl2861228816_
                                            '2)))
                                      (let ((_tl2863528693_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2929629297_
                                                '1)))
                                            (_target2863328690_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2929629297_
                                                '0))))
                                        (if (gx#stx-pair? _tl2863528693_)
                                            (let ((_e2864428696_
                                                   (gx#syntax-e
                                                    _tl2863528693_)))
                                              (let ((_tl2864228703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2864428696_)))
                                                    (_hd2864328700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2864428696_))))
                                                (if (gx#stx-pair?
                                                     _tl2864228703_)
                                                    (let ((_e2864728706_
                                                           (gx#syntax-e
                                                            _tl2864228703_)))
                                                      (let ((_tl2864528713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2864728706_)))
                    (_hd2864628710_
                     (let () (declare (not safe)) (##car _e2864728706_))))
                (if (gx#stx-null? _tl2864528713_)
                    (___match2936429365_
                     _e2860828789_
                     _hd2860728793_
                     _tl2860628796_
                     _e2861128799_
                     _hd2861028803_
                     _tl2860928806_
                     _e2861428809_
                     _hd2861328813_
                     _tl2861228816_
                     ___splice2929629297_
                     _target2863328690_
                     _tl2863528693_
                     _e2864428696_
                     _hd2864328700_
                     _tl2864228703_
                     _e2864728706_
                     _hd2864628710_
                     _tl2864528713_)
                    (let () (declare (not safe)) (_g2860128653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2860128653_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2860128653_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2860128653_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2860128653_))))))))
              (if (gx#stx-pair? ___stx2928929290_)
                  (let ((_e2860828789_ (gx#syntax-e ___stx2928929290_)))
                    (let ((_tl2860628796_
                           (let () (declare (not safe)) (##cdr _e2860828789_)))
                          (_hd2860728793_
                           (let ()
                             (declare (not safe))
                             (##car _e2860828789_))))
                      (if (gx#stx-pair? _tl2860628796_)
                          (let ((_e2861128799_ (gx#syntax-e _tl2860628796_)))
                            (let ((_tl2860928806_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2861128799_)))
                                  (_hd2861028803_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2861128799_))))
                              (if (gx#stx-pair? _tl2860928806_)
                                  (let ((_e2861428809_
                                         (gx#syntax-e _tl2860928806_)))
                                    (let ((_tl2861228816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2861428809_)))
                                          (_hd2861328813_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2861428809_))))
                                      (if (gx#stx-pair? _tl2861228816_)
                                          (let ((_e2861728819_
                                                 (gx#syntax-e _tl2861228816_)))
                                            (let ((_tl2861528826_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2861728819_)))
                                                  (_hd2861628823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2861728819_))))
                                              (if (gx#stx-null? _tl2861528826_)
                                                  (___match2932429325_
                                                   _e2860828789_
                                                   _hd2860728793_
                                                   _tl2860628796_
                                                   _e2861128799_
                                                   _hd2861028803_
                                                   _tl2860928806_
                                                   _e2861428809_
                                                   _hd2861328813_
                                                   _tl2861228816_
                                                   _e2861728819_
                                                   _hd2861628823_
                                                   _tl2861528826_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2861228816_)
                                                      (if (let ((__tmp29695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _tl2861228816_)))
                    (declare (not safe))
                    (##fx>= __tmp29695 '2))
                  (let ((___splice2929629297_
                         (gx#syntax-split-splice _tl2861228816_ '2)))
                    (let ((_tl2863528693_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2929629297_ '1)))
                          (_target2863328690_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2929629297_ '0))))
                      (if (gx#stx-pair? _tl2863528693_)
                          (let ((_e2864428696_ (gx#syntax-e _tl2863528693_)))
                            (let ((_tl2864228703_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2864428696_)))
                                  (_hd2864328700_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2864428696_))))
                              (if (gx#stx-pair? _tl2864228703_)
                                  (let ((_e2864728706_
                                         (gx#syntax-e _tl2864228703_)))
                                    (let ((_tl2864528713_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2864728706_)))
                                          (_hd2864628710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2864728706_))))
                                      (if (gx#stx-null? _tl2864528713_)
                                          (___match2936429365_
                                           _e2860828789_
                                           _hd2860728793_
                                           _tl2860628796_
                                           _e2861128799_
                                           _hd2861028803_
                                           _tl2860928806_
                                           _e2861428809_
                                           _hd2861328813_
                                           _tl2861228816_
                                           ___splice2929629297_
                                           _target2863328690_
                                           _tl2863528693_
                                           _e2864428696_
                                           _hd2864328700_
                                           _tl2864228703_
                                           _e2864728706_
                                           _hd2864628710_
                                           _tl2864528713_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2860128653_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2860128653_)))))
                          (let () (declare (not safe)) (_g2860128653_)))))
                  (let () (declare (not safe)) (_g2860128653_)))
              (let () (declare (not safe)) (_g2860128653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2861228816_)
                                              (if (let ((__tmp29696
                                                         (gx#stx-length
                                                          _tl2861228816_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp29696 '2))
                                                  (let ((___splice2929629297_
                                                         (gx#syntax-split-splice
                                                          _tl2861228816_
                                                          '2)))
                                                    (let ((_tl2863528693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2929629297_
                                                              '1)))
                                                          (_target2863328690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2929629297_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2863528693_)
                                                          (let ((_e2864428696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2863528693_)))
                    (let ((_tl2864228703_
                           (let () (declare (not safe)) (##cdr _e2864428696_)))
                          (_hd2864328700_
                           (let ()
                             (declare (not safe))
                             (##car _e2864428696_))))
                      (if (gx#stx-pair? _tl2864228703_)
                          (let ((_e2864728706_ (gx#syntax-e _tl2864228703_)))
                            (let ((_tl2864528713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2864728706_)))
                                  (_hd2864628710_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2864728706_))))
                              (if (gx#stx-null? _tl2864528713_)
                                  (___match2936429365_
                                   _e2860828789_
                                   _hd2860728793_
                                   _tl2860628796_
                                   _e2861128799_
                                   _hd2861028803_
                                   _tl2860928806_
                                   _e2861428809_
                                   _hd2861328813_
                                   _tl2861228816_
                                   ___splice2929629297_
                                   _target2863328690_
                                   _tl2863528693_
                                   _e2864428696_
                                   _hd2864328700_
                                   _tl2864228703_
                                   _e2864728706_
                                   _hd2864628710_
                                   _tl2864528713_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2860128653_)))))
                          (let () (declare (not safe)) (_g2860128653_)))))
                  (let () (declare (not safe)) (_g2860128653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2860128653_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2860128653_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2860128653_)))))
                          (let () (declare (not safe)) (_g2860128653_)))))
                  (let () (declare (not safe)) (_g2860128653_))))))))))
