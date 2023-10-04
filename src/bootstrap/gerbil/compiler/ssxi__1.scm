(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx74519_)
      (let* ((_g7452374541_
              (lambda (_g7452474537_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7452474537_))))
             (_g7452274596_
              (lambda (_g7452474545_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7452474545_))
                    (let ((_e7452974548_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7452474545_))))
                      (let ((_hd7452874552_
                             (let ()
                               (declare (not safe))
                               (##car _e7452974548_)))
                            (_tl7452774555_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7452974548_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7452774555_))
                            (let ((_e7453274558_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7452774555_))))
                              (let ((_hd7453174562_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7453274558_)))
                                    (_tl7453074565_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7453274558_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7453074565_))
                                    (let ((_e7453574568_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7453074565_))))
                                      (let ((_hd7453474572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7453574568_)))
                                            (_tl7453374575_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7453574568_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7453374575_))
                                            ((lambda (_L74578_ _L74580_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L74580_))
                                                   (let ((__tmp79603
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp79598
                                                          (let ((__tmp79600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79602
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp79601
                                (let ()
                                  (declare (not safe))
                                  (cons _L74580_ '()))))
                           (declare (not safe))
                           (cons __tmp79602 __tmp79601)))
                        (__tmp79599
                         (let () (declare (not safe)) (cons _L74578_ '()))))
                    (declare (not safe))
                    (cons __tmp79600 __tmp79599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79603
                                                           __tmp79598))
                                                   (_g7452374541_
                                                    _g7452474545_)))
                                             _hd7453474572_
                                             _hd7453174562_)
                                            (_g7452374541_ _g7452474545_))))
                                    (_g7452374541_ _g7452474545_))))
                            (_g7452374541_ _g7452474545_))))
                    (_g7452374541_ _g7452474545_)))))
        (_g7452274596_ _$stx74519_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx74600_)
      (let* ((_g7460474633_
              (lambda (_g7460574629_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7460574629_))))
             (_g7460374733_
              (lambda (_g7460574637_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7460574637_))
                    (let ((_e7461074640_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7460574637_))))
                      (let ((_hd7460974644_
                             (let ()
                               (declare (not safe))
                               (##car _e7461074640_)))
                            (_tl7460874647_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7461074640_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7460874647_))
                            (let ((_g79604_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7460874647_
                                      '0))))
                              (begin
                                (let ((_g79605_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79604_)
                                             (##vector-length _g79604_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79605_ 2)))
                                      (error "Context expects 2 values"
                                             _g79605_)))
                                (let ((_target7461174650_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79604_ 0)))
                                      (_tl7461374653_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79604_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7461374653_))
                                      (letrec ((_loop7461474656_
                                                (lambda (_hd7461274660_
                                                         _type7461874663_
                                                         _symbol7461974665_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7461274660_))
                                                      (let ((_e7461574668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7461274660_))))
                (let ((_lp-hd7461674672_
                       (let () (declare (not safe)) (##car _e7461574668_)))
                      (_lp-tl7461774675_
                       (let () (declare (not safe)) (##cdr _e7461574668_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7461674672_))
                      (let ((_e7462474678_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7461674672_))))
                        (let ((_hd7462374682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7462474678_)))
                              (_tl7462274685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7462474678_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7462274685_))
                              (let ((_e7462774688_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7462274685_))))
                                (let ((_hd7462674692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7462774688_)))
                                      (_tl7462574695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7462774688_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7462574695_))
                                      (_loop7461474656_
                                       _lp-tl7461774675_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7462674692_
                                               _type7461874663_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7462374682_
                                               _symbol7461974665_)))
                                      (_g7460474633_ _g7460574637_))))
                              (_g7460474633_ _g7460574637_))))
                      (_g7460474633_ _g7460574637_))))
              (let ((_type7462074698_ (reverse _type7461874663_))
                    (_symbol7462174701_ (reverse _symbol7461974665_)))
                ((lambda (_L74704_ _L74706_)
                   (let ((__tmp79612
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79606
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74704_
                               _L74706_))
                            (let ((__tmp79607
                                   (lambda (_g7472174725_
                                            _g7472274728_
                                            _g7472374730_)
                                     (let ((__tmp79608
                                            (let ((__tmp79611
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp79609
                                                   (let ((__tmp79610
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7472174725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7472274728_
                                                           __tmp79610))))
                                              (declare (not safe))
                                              (cons __tmp79611 __tmp79609))))
                                       (declare (not safe))
                                       (cons __tmp79608 _g7472374730_)))))
                              (declare (not safe))
                              (foldr2 __tmp79607 '() _L74704_ _L74706_)))))
                     (declare (not safe))
                     (cons __tmp79612 __tmp79606)))
                 _type7462074698_
                 _symbol7462174701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7461474656_
                                         _target7461174650_
                                         '()
                                         '()))
                                      (_g7460474633_ _g7460574637_)))))
                            (_g7460474633_ _g7460574637_))))
                    (_g7460474633_ _g7460574637_)))))
        (_g7460374733_ _$stx74600_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx74738_)
      (let* ((___stx7873978740_ _$stx74738_)
             (_g7474374785_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7873978740_)))))
        (let ((___kont7874278743_
               (lambda (_L74913_ _L74915_ _L74916_ _L74917_)
                 (let ((__tmp79626
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp79613
                        (let ((__tmp79623
                               (let ((__tmp79625
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79624
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74917_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79625 __tmp79624)))
                              (__tmp79614
                               (let ((__tmp79620
                                      (let ((__tmp79622
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79621
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74916_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79622 __tmp79621)))
                                     (__tmp79615
                                      (let ((__tmp79617
                                             (let ((__tmp79619
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79618
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L74915_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79619 __tmp79618)))
                                            (__tmp79616
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74913_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79617 __tmp79616))))
                                 (declare (not safe))
                                 (cons __tmp79620 __tmp79615))))
                          (declare (not safe))
                          (cons __tmp79623 __tmp79614))))
                   (declare (not safe))
                   (cons __tmp79626 __tmp79613))))
              (___kont7874478745_
               (lambda (_L74832_ _L74834_ _L74835_ _L74836_)
                 (let ((__tmp79627
                        (let ((__tmp79628
                               (let ((__tmp79629
                                      (let ((__tmp79630
                                             (let ((__tmp79631
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp79631 '()))))
                                        (declare (not safe))
                                        (cons _L74832_ __tmp79630))))
                                 (declare (not safe))
                                 (cons _L74834_ __tmp79629))))
                          (declare (not safe))
                          (cons _L74835_ __tmp79628))))
                   (declare (not safe))
                   (cons _L74836_ __tmp79627)))))
          (let ((___match7877878779_
                 (lambda (_e7475174863_
                          _hd7475074867_
                          _tl7474974870_
                          _e7475474873_
                          _hd7475374877_
                          _tl7475274880_
                          _e7475774883_
                          _hd7475674887_
                          _tl7475574890_
                          _e7476074893_
                          _hd7475974897_
                          _tl7475874900_
                          _e7476374903_
                          _hd7476274907_
                          _tl7476174910_)
                   (let ((_L74913_ _hd7476274907_)
                         (_L74915_ _hd7475974897_)
                         (_L74916_ _hd7475674887_)
                         (_L74917_ _hd7475374877_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L74917_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74916_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74915_)))
                         (___kont7874278743_
                          _L74913_
                          _L74915_
                          _L74916_
                          _L74917_)
                         (let () (declare (not safe)) (_g7474374785_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7873978740_))
                (let ((_e7475174863_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7873978740_))))
                  (let ((_tl7474974870_
                         (let () (declare (not safe)) (##cdr _e7475174863_)))
                        (_hd7475074867_
                         (let () (declare (not safe)) (##car _e7475174863_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7474974870_))
                        (let ((_e7475474873_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7474974870_))))
                          (let ((_tl7475274880_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7475474873_)))
                                (_hd7475374877_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7475474873_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7475274880_))
                                (let ((_e7475774883_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7475274880_))))
                                  (let ((_tl7475574890_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7475774883_)))
                                        (_hd7475674887_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7475774883_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7475574890_))
                                        (let ((_e7476074893_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7475574890_))))
                                          (let ((_tl7475874900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7476074893_)))
                                                (_hd7475974897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7476074893_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7475874900_))
                                                (let ((_e7476374903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7475874900_))))
                                                  (let ((_tl7476174910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7476374903_)))
                                                        (_hd7476274907_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7476374903_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7476174910_))
                                                        (___match7877878779_
                                                         _e7475174863_
                                                         _hd7475074867_
                                                         _tl7474974870_
                                                         _e7475474873_
                                                         _hd7475374877_
                                                         _tl7475274880_
                                                         _e7475774883_
                                                         _hd7475674887_
                                                         _tl7475574890_
                                                         _e7476074893_
                                                         _hd7475974897_
                                                         _tl7475874900_
                                                         _e7476374903_
                                                         _hd7476274907_
                                                         _tl7476174910_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7474374785_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7475874900_))
                                                    (___kont7874478745_
                                                     _hd7475974897_
                                                     _hd7475674887_
                                                     _hd7475374877_
                                                     _hd7475074867_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7474374785_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7474374785_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7474374785_)))))
                        (let () (declare (not safe)) (_g7474374785_)))))
                (let () (declare (not safe)) (_g7474374785_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx74942_)
      (let* ((_g7494674981_
              (lambda (_g7494774977_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7494774977_))))
             (_g7494575100_
              (lambda (_g7494774985_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7494774985_))
                    (let ((_e7495374988_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7494774985_))))
                      (let ((_hd7495274992_
                             (let ()
                               (declare (not safe))
                               (##car _e7495374988_)))
                            (_tl7495174995_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7495374988_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7495174995_))
                            (let ((_g79632_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7495174995_
                                      '0))))
                              (begin
                                (let ((_g79633_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79632_)
                                             (##vector-length _g79632_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79633_ 2)))
                                      (error "Context expects 2 values"
                                             _g79633_)))
                                (let ((_target7495474998_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79632_ 0)))
                                      (_tl7495675001_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79632_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7495675001_))
                                      (letrec ((_loop7495775004_
                                                (lambda (_hd7495575008_
                                                         _symbol7496175011_
                                                         _method7496275013_
                                                         _type-t7496375015_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7495575008_))
                                                      (let ((_e7495875018_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7495575008_))))
                (let ((_lp-hd7495975022_
                       (let () (declare (not safe)) (##car _e7495875018_)))
                      (_lp-tl7496075025_
                       (let () (declare (not safe)) (##cdr _e7495875018_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7495975022_))
                      (let ((_e7496975028_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7495975022_))))
                        (let ((_hd7496875032_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7496975028_)))
                              (_tl7496775035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7496975028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7496775035_))
                              (let ((_e7497275038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7496775035_))))
                                (let ((_hd7497175042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7497275038_)))
                                      (_tl7497075045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7497275038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7497075045_))
                                      (let ((_e7497575048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7497075045_))))
                                        (let ((_hd7497475052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7497575048_)))
                                              (_tl7497375055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7497575048_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7497375055_))
                                              (_loop7495775004_
                                               _lp-tl7496075025_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7497475052_
                                                       _symbol7496175011_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7497175042_
                                                       _method7496275013_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7496875032_
                                                       _type-t7496375015_)))
                                              (_g7494674981_ _g7494774985_))))
                                      (_g7494674981_ _g7494774985_))))
                              (_g7494674981_ _g7494774985_))))
                      (_g7494674981_ _g7494774985_))))
              (let ((_symbol7496475058_ (reverse _symbol7496175011_))
                    (_method7496575061_ (reverse _method7496275013_))
                    (_type-t7496675063_ (reverse _type-t7496375015_)))
                ((lambda (_L75066_ _L75068_ _L75069_)
                   (let ((__tmp79641
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79634
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L75066_
                               _L75068_
                               _L75069_))
                            (let ((__tmp79635
                                   (lambda (_g7508575090_
                                            _g7508675093_
                                            _g7508775095_
                                            _g7508875097_)
                                     (let ((__tmp79636
                                            (let ((__tmp79640
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp79637
                                                   (let ((__tmp79638
                                                          (let ((__tmp79639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7508575090_ '()))))
                    (declare (not safe))
                    (cons _g7508675093_ __tmp79639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7508775095_
                                                           __tmp79638))))
                                              (declare (not safe))
                                              (cons __tmp79640 __tmp79637))))
                                       (declare (not safe))
                                       (cons __tmp79636 _g7508875097_)))))
                              (declare (not safe))
                              (foldr* __tmp79635
                                      '()
                                      _L75066_
                                      _L75068_
                                      _L75069_)))))
                     (declare (not safe))
                     (cons __tmp79641 __tmp79634)))
                 _symbol7496475058_
                 _method7496575061_
                 _type-t7496675063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7495775004_
                                         _target7495474998_
                                         '()
                                         '()
                                         '()))
                                      (_g7494674981_ _g7494774985_)))))
                            (_g7494674981_ _g7494774985_))))
                    (_g7494674981_ _g7494774985_)))))
        (_g7494575100_ _$stx74942_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx75105_)
      (let* ((_g7510975142_
              (lambda (_g7511075138_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7511075138_))))
             (_g7510875256_
              (lambda (_g7511075146_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7511075146_))
                    (let ((_e7511675149_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7511075146_))))
                      (let ((_hd7511575153_
                             (let ()
                               (declare (not safe))
                               (##car _e7511675149_)))
                            (_tl7511475156_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7511675149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7511475156_))
                            (let ((_e7511975159_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7511475156_))))
                              (let ((_hd7511875163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7511975159_)))
                                    (_tl7511775166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7511975159_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7511775166_))
                                    (let ((_g79642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7511775166_
                                              '0))))
                                      (begin
                                        (let ((_g79643_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79642_)
                                                     (##vector-length _g79642_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79643_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79643_)))
                                        (let ((_target7512075169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79642_ 0)))
                                              (_tl7512275172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79642_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7512275172_))
                                              (letrec ((_loop7512375175_
                                                        (lambda (_hd7512175179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7512775182_
                         _method7512875184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7512175179_))
                      (let ((_e7512475187_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7512175179_))))
                        (let ((_lp-hd7512575191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7512475187_)))
                              (_lp-tl7512675194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7512475187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7512575191_))
                              (let ((_e7513375197_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7512575191_))))
                                (let ((_hd7513275201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7513375197_)))
                                      (_tl7513175204_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7513375197_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7513175204_))
                                      (let ((_e7513675207_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7513175204_))))
                                        (let ((_hd7513575211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7513675207_)))
                                              (_tl7513475214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7513675207_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7513475214_))
                                              (_loop7512375175_
                                               _lp-tl7512675194_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7513575211_
                                                       _symbol7512775182_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7513275201_
                                                       _method7512875184_)))
                                              (_g7510975142_ _g7511075146_))))
                                      (_g7510975142_ _g7511075146_))))
                              (_g7510975142_ _g7511075146_))))
                      (let ((_symbol7512975217_ (reverse _symbol7512775182_))
                            (_method7513075220_ (reverse _method7512875184_)))
                        ((lambda (_L75223_ _L75225_ _L75226_)
                           (let ((__tmp79651
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp79644
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L75223_
                                       _L75225_))
                                    (let ((__tmp79645
                                           (lambda (_g7524475248_
                                                    _g7524575251_
                                                    _g7524675253_)
                                             (let ((__tmp79646
                                                    (let ((__tmp79650
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp79647
                                                           (let ((__tmp79648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79649
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7524475248_ '()))))
                            (declare (not safe))
                            (cons _g7524575251_ __tmp79649))))
                     (declare (not safe))
                     (cons _L75226_ __tmp79648))))
              (declare (not safe))
              (cons __tmp79650 __tmp79647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79646
                                                     _g7524675253_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp79645
                                              '()
                                              _L75223_
                                              _L75225_)))))
                             (declare (not safe))
                             (cons __tmp79651 __tmp79644)))
                         _symbol7512975217_
                         _method7513075220_
                         _hd7511875163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7512375175_
                                                 _target7512075169_
                                                 '()
                                                 '()))
                                              (_g7510975142_ _g7511075146_)))))
                                    (_g7510975142_ _g7511075146_))))
                            (_g7510975142_ _g7511075146_))))
                    (_g7510975142_ _g7511075146_)))))
        (_g7510875256_ _$stx75105_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx75261_)
      (let* ((_g7526575279_
              (lambda (_g7526675275_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7526675275_))))
             (_g7526475320_
              (lambda (_g7526675283_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7526675283_))
                    (let ((_e7527075286_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7526675283_))))
                      (let ((_hd7526975290_
                             (let ()
                               (declare (not safe))
                               (##car _e7527075286_)))
                            (_tl7526875293_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7527075286_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7526875293_))
                            (let ((_e7527375296_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7526875293_))))
                              (let ((_hd7527275300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7527375296_)))
                                    (_tl7527175303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7527375296_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7527175303_))
                                    ((lambda (_L75306_)
                                       (let ((__tmp79656
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp79652
                                              (let ((__tmp79653
                                                     (let ((__tmp79655
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79654
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79655 __tmp79654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79653 '()))))
                                         (declare (not safe))
                                         (cons __tmp79656 __tmp79652)))
                                     _hd7527275300_)
                                    (_g7526575279_ _g7526675283_))))
                            (_g7526575279_ _g7526675283_))))
                    (_g7526575279_ _g7526675283_)))))
        (_g7526475320_ _$stx75261_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx75324_)
      (let* ((___stx7880778808_ _$stx75324_)
             (_g7533075396_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7880778808_)))))
        (let ((___kont7881078811_
               (lambda (_L75618_ _L75620_ _L75621_ _L75622_ _L75623_)
                 (let ((__tmp79662
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp79657
                        (let ((__tmp79658
                               (let ((__tmp79659
                                      (let ((__tmp79660
                                             (let ((__tmp79661
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L75618_ '()))))
                                               (declare (not safe))
                                               (cons _L75620_ __tmp79661))))
                                        (declare (not safe))
                                        (cons _L75621_ __tmp79660))))
                                 (declare (not safe))
                                 (cons _L75622_ __tmp79659))))
                          (declare (not safe))
                          (cons _L75623_ __tmp79658))))
                   (declare (not safe))
                   (cons __tmp79662 __tmp79657))))
              (___kont7881278813_
               (lambda (_L75528_ _L75530_ _L75531_ _L75532_)
                 (let ((__tmp79663
                        (let ((__tmp79664
                               (let ((__tmp79665
                                      (let ((__tmp79666
                                             (let ((__tmp79667
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp79667))))
                                        (declare (not safe))
                                        (cons _L75528_ __tmp79666))))
                                 (declare (not safe))
                                 (cons _L75530_ __tmp79665))))
                          (declare (not safe))
                          (cons _L75531_ __tmp79664))))
                   (declare (not safe))
                   (cons _L75532_ __tmp79663))))
              (___kont7881478815_
               (lambda (_L75453_ _L75455_ _L75456_ _L75457_ _L75458_)
                 (let ((__tmp79668
                        (let ((__tmp79673
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp79669
                               (let ((__tmp79670
                                      (let ((__tmp79671
                                             (let ((__tmp79672
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L75453_ __tmp79672))))
                                        (declare (not safe))
                                        (cons _L75455_ __tmp79671))))
                                 (declare (not safe))
                                 (cons _L75456_ __tmp79670))))
                          (declare (not safe))
                          (cons __tmp79673 __tmp79669))))
                   (declare (not safe))
                   (cons _L75458_ __tmp79668)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7880778808_))
              (let ((_e7533975558_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7880778808_))))
                (let ((_tl7533775565_
                       (let () (declare (not safe)) (##cdr _e7533975558_)))
                      (_hd7533875562_
                       (let () (declare (not safe)) (##car _e7533975558_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7533775565_))
                      (let ((_e7534275568_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7533775565_))))
                        (let ((_tl7534075575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7534275568_)))
                              (_hd7534175572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7534275568_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7534075575_))
                              (let ((_e7534575578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7534075575_))))
                                (let ((_tl7534375585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7534575578_)))
                                      (_hd7534475582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7534575578_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7534375585_))
                                      (let ((_e7534875588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7534375585_))))
                                        (let ((_tl7534675595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7534875588_)))
                                              (_hd7534775592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7534875588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7534675595_))
                                              (let ((_e7535175598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7534675595_))))
                                                (let ((_tl7534975605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7535175598_)))
                                                      (_hd7535075602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7535175598_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7534975605_))
                                                      (let ((_e7535475608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7534975605_))))
                (let ((_tl7535275615_
                       (let () (declare (not safe)) (##cdr _e7535475608_)))
                      (_hd7535375612_
                       (let () (declare (not safe)) (##car _e7535475608_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7535275615_))
                      (___kont7881078811_
                       _hd7535375612_
                       _hd7535075602_
                       _hd7534775592_
                       _hd7534475582_
                       _hd7534175572_)
                      (let () (declare (not safe)) (_g7533075396_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7534975605_))
                  (___kont7881478815_
                   _hd7535075602_
                   _hd7534775592_
                   _hd7534475582_
                   _hd7534175572_
                   _hd7533875562_)
                  (let () (declare (not safe)) (_g7533075396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7534675595_))
                                                  (___kont7881278813_
                                                   _hd7534775592_
                                                   _hd7534475582_
                                                   _hd7534175572_
                                                   _hd7533875562_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7533075396_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7533075396_)))))
                              (let () (declare (not safe)) (_g7533075396_)))))
                      (let () (declare (not safe)) (_g7533075396_)))))
              (let () (declare (not safe)) (_g7533075396_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx75651_)
      (let* ((___stx7891578916_ _$stx75651_)
             (_g7565675709_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7891578916_)))))
        (let ((___kont7891878919_
               (lambda (_L75877_ _L75879_ _L75880_ _L75881_)
                 (let ((__tmp79689
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp79674
                        (let ((__tmp79686
                               (let ((__tmp79688
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79687
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75881_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79688 __tmp79687)))
                              (__tmp79675
                               (let ((__tmp79676
                                      (let ((__tmp79677
                                             (let ((__tmp79678
                                                    (let ((__tmp79683
                                                           (let ((__tmp79685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79684
                          (let () (declare (not safe)) (cons _L75879_ '()))))
                     (declare (not safe))
                     (cons __tmp79685 __tmp79684)))
                  (__tmp79679
                   (let ((__tmp79680
                          (let ((__tmp79682
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79681
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75877_ '()))))
                            (declare (not safe))
                            (cons __tmp79682 __tmp79681))))
                     (declare (not safe))
                     (cons __tmp79680 '()))))
              (declare (not safe))
              (cons __tmp79683 __tmp79679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp79678))))
                                        (declare (not safe))
                                        (cons _L75880_ __tmp79677))))
                                 (declare (not safe))
                                 (cons '#f __tmp79676))))
                          (declare (not safe))
                          (cons __tmp79686 __tmp79675))))
                   (declare (not safe))
                   (cons __tmp79689 __tmp79674))))
              (___kont7892078921_
               (lambda (_L75776_ _L75778_ _L75779_ _L75780_ _L75781_)
                 (let ((__tmp79771
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp79690
                        (let ((__tmp79711
                               (let ((__tmp79762
                                      (let ((__tmp79770
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp79763
                                             (let ((__tmp79764
                                                    (let ((__tmp79769
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp79765
                                                           (let ((__tmp79766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79768
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79767
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75780_ '()))))
                            (declare (not safe))
                            (cons __tmp79768 __tmp79767))))
                     (declare (not safe))
                     (cons __tmp79766 '()))))
              (declare (not safe))
              (cons __tmp79769 __tmp79765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79764 '()))))
                                        (declare (not safe))
                                        (cons __tmp79770 __tmp79763)))
                                     (__tmp79712
                                      (let ((__tmp79734
                                             (let ((__tmp79761
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp79735
                                                    (let ((__tmp79736
                                                           (let ((__tmp79760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp79737
                          (let ((__tmp79759
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp79738
                                 (let ((__tmp79739
                                        (let ((__tmp79758
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp79740
                                               (let ((__tmp79751
                                                      (let ((__tmp79757
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp79752
                     (let ((__tmp79753
                            (let ((__tmp79756
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp79754
                                   (let ((__tmp79755
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79755 '()))))
                              (declare (not safe))
                              (cons __tmp79756 __tmp79754))))
                       (declare (not safe))
                       (cons __tmp79753 '()))))
                (declare (not safe))
                (cons __tmp79757 __tmp79752)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79741
                                                      (let ((__tmp79742
                                                             (let ((__tmp79750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp79743
                            (let ((__tmp79749
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp79744
                                   (let ((__tmp79745
                                          (let ((__tmp79748
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp79746
                                                 (let ((__tmp79747
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp79747 '()))))
                                            (declare (not safe))
                                            (cons __tmp79748 __tmp79746))))
                                     (declare (not safe))
                                     (cons __tmp79745 '()))))
                              (declare (not safe))
                              (cons __tmp79749 __tmp79744))))
                       (declare (not safe))
                       (cons __tmp79750 __tmp79743))))
                (declare (not safe))
                (cons __tmp79742 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79751
                                                       __tmp79741))))
                                          (declare (not safe))
                                          (cons __tmp79758 __tmp79740))))
                                   (declare (not safe))
                                   (cons __tmp79739 '()))))
                            (declare (not safe))
                            (cons __tmp79759 __tmp79738))))
                     (declare (not safe))
                     (cons __tmp79760 __tmp79737))))
              (declare (not safe))
              (cons __tmp79736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79761 __tmp79735)))
                                            (__tmp79713
                                             (let ((__tmp79714
                                                    (let ((__tmp79733
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp79715
                                                           (let ((__tmp79716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79732
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp79717
                                 (let ((__tmp79729
                                        (let ((__tmp79731
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp79730
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L75778_ '()))))
                                          (declare (not safe))
                                          (cons __tmp79731 __tmp79730)))
                                       (__tmp79718
                                        (let ((__tmp79719
                                               (let ((__tmp79728
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp79720
                                                      (let ((__tmp79727
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp79721
                     (let ((__tmp79723
                            (let ((__tmp79726
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp79724
                                   (let ((__tmp79725
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79725 '()))))
                              (declare (not safe))
                              (cons __tmp79726 __tmp79724)))
                           (__tmp79722
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp79723 __tmp79722))))
                (declare (not safe))
                (cons __tmp79727 __tmp79721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79728
                                                       __tmp79720))))
                                          (declare (not safe))
                                          (cons __tmp79719 '()))))
                                   (declare (not safe))
                                   (cons __tmp79729 __tmp79718))))
                            (declare (not safe))
                            (cons __tmp79732 __tmp79717))))
                     (declare (not safe))
                     (cons __tmp79716 '()))))
              (declare (not safe))
              (cons __tmp79733 __tmp79715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79714 '()))))
                                        (declare (not safe))
                                        (cons __tmp79734 __tmp79713))))
                                 (declare (not safe))
                                 (cons __tmp79762 __tmp79712)))
                              (__tmp79691
                               (let ((__tmp79692
                                      (let ((__tmp79710
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp79693
                                             (let ((__tmp79707
                                                    (let ((__tmp79709
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp79708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L75781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79709 __tmp79708)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79694
                                                    (let ((__tmp79704
                                                           (let ((__tmp79706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79705
                          (let () (declare (not safe)) (cons _L75780_ '()))))
                     (declare (not safe))
                     (cons __tmp79706 __tmp79705)))
                  (__tmp79695
                   (let ((__tmp79696
                          (let ((__tmp79703
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp79697
                                 (let ((__tmp79702
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp79698
                                        (let ((__tmp79699
                                               (let ((__tmp79701
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp79700
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L75776_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79701
                                                       __tmp79700))))
                                          (declare (not safe))
                                          (cons __tmp79699 '()))))
                                   (declare (not safe))
                                   (cons __tmp79702 __tmp79698))))
                            (declare (not safe))
                            (cons __tmp79703 __tmp79697))))
                     (declare (not safe))
                     (cons _L75779_ __tmp79696))))
              (declare (not safe))
              (cons __tmp79704 __tmp79695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79707 __tmp79694))))
                                        (declare (not safe))
                                        (cons __tmp79710 __tmp79693))))
                                 (declare (not safe))
                                 (cons __tmp79692 '()))))
                          (declare (not safe))
                          (cons __tmp79711 __tmp79691))))
                   (declare (not safe))
                   (cons __tmp79771 __tmp79690)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7891578916_))
              (let ((_e7566475813_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7891578916_))))
                (let ((_tl7566275820_
                       (let () (declare (not safe)) (##cdr _e7566475813_)))
                      (_hd7566375817_
                       (let () (declare (not safe)) (##car _e7566475813_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7566275820_))
                      (let ((_e7566775823_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7566275820_))))
                        (let ((_tl7566575830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7566775823_)))
                              (_hd7566675827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7566775823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7566575830_))
                              (let ((_e7567075833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7566575830_))))
                                (let ((_tl7566875840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7567075833_)))
                                      (_hd7566975837_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7567075833_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7566975837_))
                                      (let ((_e7567175843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7566975837_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7567175843_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7566875840_))
                                                (let ((_e7567475847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7566875840_))))
                                                  (let ((_tl7567275854_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7567475847_)))
                                                        (_hd7567375851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7567475847_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7567275854_))
                                                        (let ((_e7567775857_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7567275854_))))
                  (let ((_tl7567575864_
                         (let () (declare (not safe)) (##cdr _e7567775857_)))
                        (_hd7567675861_
                         (let () (declare (not safe)) (##car _e7567775857_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7567575864_))
                        (let ((_e7568075867_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7567575864_))))
                          (let ((_tl7567875874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7568075867_)))
                                (_hd7567975871_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7568075867_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7567875874_))
                                (___kont7891878919_
                                 _hd7567975871_
                                 _hd7567675861_
                                 _hd7567375851_
                                 _hd7566675827_)
                                (let ()
                                  (declare (not safe))
                                  (_g7565675709_)))))
                        (let () (declare (not safe)) (_g7565675709_)))))
                (let () (declare (not safe)) (_g7565675709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7565675709_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7566875840_))
                                                (let ((_e7569775746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7566875840_))))
                                                  (let ((_tl7569575753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7569775746_)))
                                                        (_hd7569675750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7569775746_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7569575753_))
                                                        (let ((_e7570075756_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7569575753_))))
                  (let ((_tl7569875763_
                         (let () (declare (not safe)) (##cdr _e7570075756_)))
                        (_hd7569975760_
                         (let () (declare (not safe)) (##car _e7570075756_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7569875763_))
                        (let ((_e7570375766_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7569875763_))))
                          (let ((_tl7570175773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7570375766_)))
                                (_hd7570275770_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7570375766_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7570175773_))
                                (___kont7892078921_
                                 _hd7570275770_
                                 _hd7569975760_
                                 _hd7569675750_
                                 _hd7566975837_
                                 _hd7566675827_)
                                (let ()
                                  (declare (not safe))
                                  (_g7565675709_)))))
                        (let () (declare (not safe)) (_g7565675709_)))))
                (let () (declare (not safe)) (_g7565675709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7565675709_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7566875840_))
                                          (let ((_e7569775746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7566875840_))))
                                            (let ((_tl7569575753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7569775746_)))
                                                  (_hd7569675750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7569775746_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7569575753_))
                                                  (let ((_e7570075756_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7569575753_))))
                                                    (let ((_tl7569875763_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7570075756_)))
                                                          (_hd7569975760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7570075756_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7569875763_))
                                                          (let ((_e7570375766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7569875763_))))
                    (let ((_tl7570175773_
                           (let () (declare (not safe)) (##cdr _e7570375766_)))
                          (_hd7570275770_
                           (let ()
                             (declare (not safe))
                             (##car _e7570375766_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7570175773_))
                          (___kont7892078921_
                           _hd7570275770_
                           _hd7569975760_
                           _hd7569675750_
                           _hd7566975837_
                           _hd7566675827_)
                          (let () (declare (not safe)) (_g7565675709_)))))
                  (let () (declare (not safe)) (_g7565675709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7565675709_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7565675709_))))))
                              (let () (declare (not safe)) (_g7565675709_)))))
                      (let () (declare (not safe)) (_g7565675709_)))))
              (let () (declare (not safe)) (_g7565675709_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx75909_)
      (let* ((_g7591375927_
              (lambda (_g7591475923_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7591475923_))))
             (_g7591275968_
              (lambda (_g7591475931_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7591475931_))
                    (let ((_e7591875934_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7591475931_))))
                      (let ((_hd7591775938_
                             (let ()
                               (declare (not safe))
                               (##car _e7591875934_)))
                            (_tl7591675941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7591875934_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7591675941_))
                            (let ((_e7592175944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7591675941_))))
                              (let ((_hd7592075948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7592175944_)))
                                    (_tl7591975951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7592175944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7591975951_))
                                    ((lambda (_L75954_)
                                       (let ((__tmp79776
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp79772
                                              (let ((__tmp79773
                                                     (let ((__tmp79775
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79774
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79775 __tmp79774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79773 '()))))
                                         (declare (not safe))
                                         (cons __tmp79776 __tmp79772)))
                                     _hd7592075948_)
                                    (_g7591375927_ _g7591475931_))))
                            (_g7591375927_ _g7591475931_))))
                    (_g7591375927_ _g7591475931_)))))
        (_g7591275968_ _$stx75909_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx75972_)
      (let* ((_g7597675990_
              (lambda (_g7597775986_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7597775986_))))
             (_g7597576031_
              (lambda (_g7597775994_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7597775994_))
                    (let ((_e7598175997_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7597775994_))))
                      (let ((_hd7598076001_
                             (let ()
                               (declare (not safe))
                               (##car _e7598175997_)))
                            (_tl7597976004_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7598175997_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7597976004_))
                            (let ((_e7598476007_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7597976004_))))
                              (let ((_hd7598376011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7598476007_)))
                                    (_tl7598276014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7598476007_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7598276014_))
                                    ((lambda (_L76017_)
                                       (let ((__tmp79781
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp79777
                                              (let ((__tmp79778
                                                     (let ((__tmp79780
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79780 __tmp79779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79778 '()))))
                                         (declare (not safe))
                                         (cons __tmp79781 __tmp79777)))
                                     _hd7598376011_)
                                    (_g7597675990_ _g7597775994_))))
                            (_g7597675990_ _g7597775994_))))
                    (_g7597675990_ _g7597775994_)))))
        (_g7597576031_ _$stx75972_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx76035_)
      (let* ((___stx7900779008_ _$stx76035_)
             (_g7604076073_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7900779008_)))))
        (let ((___kont7901079011_
               (lambda (_L76175_ _L76177_ _L76178_)
                 (let ((__tmp79788
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79782
                        (let ((__tmp79785
                               (let ((__tmp79787
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79786
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76178_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79787 __tmp79786)))
                              (__tmp79783
                               (let ((__tmp79784
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76175_ '()))))
                                 (declare (not safe))
                                 (cons _L76177_ __tmp79784))))
                          (declare (not safe))
                          (cons __tmp79785 __tmp79783))))
                   (declare (not safe))
                   (cons __tmp79788 __tmp79782))))
              (___kont7901279013_
               (lambda (_L76110_ _L76112_)
                 (let ((__tmp79795
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79789
                        (let ((__tmp79792
                               (let ((__tmp79794
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79793
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76112_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79794 __tmp79793)))
                              (__tmp79790
                               (let ((__tmp79791
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76110_ __tmp79791))))
                          (declare (not safe))
                          (cons __tmp79792 __tmp79790))))
                   (declare (not safe))
                   (cons __tmp79795 __tmp79789)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7900779008_))
              (let ((_e7604776135_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7900779008_))))
                (let ((_tl7604576142_
                       (let () (declare (not safe)) (##cdr _e7604776135_)))
                      (_hd7604676139_
                       (let () (declare (not safe)) (##car _e7604776135_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7604576142_))
                      (let ((_e7605076145_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7604576142_))))
                        (let ((_tl7604876152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7605076145_)))
                              (_hd7604976149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7605076145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7604876152_))
                              (let ((_e7605376155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7604876152_))))
                                (let ((_tl7605176162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7605376155_)))
                                      (_hd7605276159_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7605376155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7605176162_))
                                      (let ((_e7605676165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7605176162_))))
                                        (let ((_tl7605476172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7605676165_)))
                                              (_hd7605576169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7605676165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7605476172_))
                                              (___kont7901079011_
                                               _hd7605576169_
                                               _hd7605276159_
                                               _hd7604976149_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7604076073_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7605176162_))
                                          (___kont7901279013_
                                           _hd7605276159_
                                           _hd7604976149_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7604076073_))))))
                              (let () (declare (not safe)) (_g7604076073_)))))
                      (let () (declare (not safe)) (_g7604076073_)))))
              (let () (declare (not safe)) (_g7604076073_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx76200_)
      (let* ((___stx7906379064_ _$stx76200_)
             (_g7620576238_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7906379064_)))))
        (let ((___kont7906679067_
               (lambda (_L76340_ _L76342_ _L76343_)
                 (let ((__tmp79802
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79796
                        (let ((__tmp79799
                               (let ((__tmp79801
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79800
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76343_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79801 __tmp79800)))
                              (__tmp79797
                               (let ((__tmp79798
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76340_ '()))))
                                 (declare (not safe))
                                 (cons _L76342_ __tmp79798))))
                          (declare (not safe))
                          (cons __tmp79799 __tmp79797))))
                   (declare (not safe))
                   (cons __tmp79802 __tmp79796))))
              (___kont7906879069_
               (lambda (_L76275_ _L76277_)
                 (let ((__tmp79809
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79803
                        (let ((__tmp79806
                               (let ((__tmp79808
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79807
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76277_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79808 __tmp79807)))
                              (__tmp79804
                               (let ((__tmp79805
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76275_ __tmp79805))))
                          (declare (not safe))
                          (cons __tmp79806 __tmp79804))))
                   (declare (not safe))
                   (cons __tmp79809 __tmp79803)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7906379064_))
              (let ((_e7621276300_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7906379064_))))
                (let ((_tl7621076307_
                       (let () (declare (not safe)) (##cdr _e7621276300_)))
                      (_hd7621176304_
                       (let () (declare (not safe)) (##car _e7621276300_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7621076307_))
                      (let ((_e7621576310_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7621076307_))))
                        (let ((_tl7621376317_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7621576310_)))
                              (_hd7621476314_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7621576310_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7621376317_))
                              (let ((_e7621876320_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7621376317_))))
                                (let ((_tl7621676327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7621876320_)))
                                      (_hd7621776324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7621876320_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7621676327_))
                                      (let ((_e7622176330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7621676327_))))
                                        (let ((_tl7621976337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7622176330_)))
                                              (_hd7622076334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7622176330_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7621976337_))
                                              (___kont7906679067_
                                               _hd7622076334_
                                               _hd7621776324_
                                               _hd7621476314_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7620576238_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7621676327_))
                                          (___kont7906879069_
                                           _hd7621776324_
                                           _hd7621476314_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7620576238_))))))
                              (let () (declare (not safe)) (_g7620576238_)))))
                      (let () (declare (not safe)) (_g7620576238_)))))
              (let () (declare (not safe)) (_g7620576238_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx76365_)
      (let* ((_g7636976407_
              (lambda (_g7637076403_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7637076403_))))
             (_g7636876532_
              (lambda (_g7637076411_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7637076411_))
                    (let ((_e7638076414_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7637076411_))))
                      (let ((_hd7637976418_
                             (let ()
                               (declare (not safe))
                               (##car _e7638076414_)))
                            (_tl7637876421_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7638076414_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7637876421_))
                            (let ((_e7638376424_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7637876421_))))
                              (let ((_hd7638276428_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7638376424_)))
                                    (_tl7638176431_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7638376424_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7638176431_))
                                    (let ((_e7638676434_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7638176431_))))
                                      (let ((_hd7638576438_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7638676434_)))
                                            (_tl7638476441_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7638676434_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7638476441_))
                                            (let ((_e7638976444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7638476441_))))
                                              (let ((_hd7638876448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7638976444_)))
                                                    (_tl7638776451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7638976444_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7638776451_))
                                                    (let ((_e7639276454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7638776451_))))
                                                      (let ((_hd7639176458_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7639276454_)))
                    (_tl7639076461_
                     (let () (declare (not safe)) (##cdr _e7639276454_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7639076461_))
                    (let ((_e7639576464_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7639076461_))))
                      (let ((_hd7639476468_
                             (let ()
                               (declare (not safe))
                               (##car _e7639576464_)))
                            (_tl7639376471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7639576464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7639376471_))
                            (let ((_e7639876474_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7639376471_))))
                              (let ((_hd7639776478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7639876474_)))
                                    (_tl7639676481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7639876474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7639676481_))
                                    (let ((_e7640176484_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7639676481_))))
                                      (let ((_hd7640076488_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7640176484_)))
                                            (_tl7639976491_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7640176484_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7639976491_))
                                            ((lambda (_L76494_
                                                      _L76496_
                                                      _L76497_
                                                      _L76498_
                                                      _L76499_
                                                      _L76500_
                                                      _L76501_)
                                               (let ((__tmp79838
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp79810
                                                      (let ((__tmp79835
                                                             (let ((__tmp79837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79836
                            (let () (declare (not safe)) (cons _L76501_ '()))))
                       (declare (not safe))
                       (cons __tmp79837 __tmp79836)))
                    (__tmp79811
                     (let ((__tmp79832
                            (let ((__tmp79834
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79833
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76500_ '()))))
                              (declare (not safe))
                              (cons __tmp79834 __tmp79833)))
                           (__tmp79812
                            (let ((__tmp79829
                                   (let ((__tmp79831
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79830
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76499_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79831 __tmp79830)))
                                  (__tmp79813
                                   (let ((__tmp79826
                                          (let ((__tmp79828
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp79827
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L76498_ '()))))
                                            (declare (not safe))
                                            (cons __tmp79828 __tmp79827)))
                                         (__tmp79814
                                          (let ((__tmp79823
                                                 (let ((__tmp79825
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp79824
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L76497_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp79825
                                                         __tmp79824)))
                                                (__tmp79815
                                                 (let ((__tmp79820
                                                        (let ((__tmp79822
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp79821
                       (let () (declare (not safe)) (cons _L76496_ '()))))
                  (declare (not safe))
                  (cons __tmp79822 __tmp79821)))
               (__tmp79816
                (let ((__tmp79817
                       (let ((__tmp79819
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp79818
                              (let ()
                                (declare (not safe))
                                (cons _L76494_ '()))))
                         (declare (not safe))
                         (cons __tmp79819 __tmp79818))))
                  (declare (not safe))
                  (cons __tmp79817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79820
                                                         __tmp79816))))
                                            (declare (not safe))
                                            (cons __tmp79823 __tmp79815))))
                                     (declare (not safe))
                                     (cons __tmp79826 __tmp79814))))
                              (declare (not safe))
                              (cons __tmp79829 __tmp79813))))
                       (declare (not safe))
                       (cons __tmp79832 __tmp79812))))
                (declare (not safe))
                (cons __tmp79835 __tmp79811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79838 __tmp79810)))
                                             _hd7640076488_
                                             _hd7639776478_
                                             _hd7639476468_
                                             _hd7639176458_
                                             _hd7638876448_
                                             _hd7638576438_
                                             _hd7638276428_)
                                            (_g7636976407_ _g7637076411_))))
                                    (_g7636976407_ _g7637076411_))))
                            (_g7636976407_ _g7637076411_))))
                    (_g7636976407_ _g7637076411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7636976407_
                                                     _g7637076411_))))
                                            (_g7636976407_ _g7637076411_))))
                                    (_g7636976407_ _g7637076411_))))
                            (_g7636976407_ _g7637076411_))))
                    (_g7636976407_ _g7637076411_)))))
        (_g7636876532_ _$stx76365_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx76536_)
      (let* ((_g7654076554_
              (lambda (_g7654176550_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7654176550_))))
             (_g7653976595_
              (lambda (_g7654176558_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7654176558_))
                    (let ((_e7654576561_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7654176558_))))
                      (let ((_hd7654476565_
                             (let ()
                               (declare (not safe))
                               (##car _e7654576561_)))
                            (_tl7654376568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7654576561_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7654376568_))
                            (let ((_e7654876571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7654376568_))))
                              (let ((_hd7654776575_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7654876571_)))
                                    (_tl7654676578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7654876571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7654676578_))
                                    ((lambda (_L76581_)
                                       (let ((__tmp79843
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp79839
                                              (let ((__tmp79840
                                                     (let ((__tmp79842
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79841
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79842 __tmp79841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79840 '()))))
                                         (declare (not safe))
                                         (cons __tmp79843 __tmp79839)))
                                     _hd7654776575_)
                                    (_g7654076554_ _g7654176558_))))
                            (_g7654076554_ _g7654176558_))))
                    (_g7654076554_ _g7654176558_)))))
        (_g7653976595_ _$stx76536_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx76599_)
      (let* ((_g7660376617_
              (lambda (_g7660476613_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7660476613_))))
             (_g7660276658_
              (lambda (_g7660476621_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7660476621_))
                    (let ((_e7660876624_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7660476621_))))
                      (let ((_hd7660776628_
                             (let ()
                               (declare (not safe))
                               (##car _e7660876624_)))
                            (_tl7660676631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7660876624_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7660676631_))
                            (let ((_e7661176634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7660676631_))))
                              (let ((_hd7661076638_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7661176634_)))
                                    (_tl7660976641_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7661176634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7660976641_))
                                    ((lambda (_L76644_)
                                       (let ((__tmp79848
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp79844
                                              (let ((__tmp79845
                                                     (let ((__tmp79847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79847 __tmp79846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79845 '()))))
                                         (declare (not safe))
                                         (cons __tmp79848 __tmp79844)))
                                     _hd7661076638_)
                                    (_g7660376617_ _g7660476621_))))
                            (_g7660376617_ _g7660476621_))))
                    (_g7660376617_ _g7660476621_)))))
        (_g7660276658_ _$stx76599_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx76662_)
      (let* ((___stx7911979120_ _$stx76662_)
             (_g7666776700_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7911979120_)))))
        (let ((___kont7912279123_
               (lambda (_L76802_ _L76804_ _L76805_)
                 (let ((__tmp79858
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79849
                        (let ((__tmp79855
                               (let ((__tmp79857
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79856
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76805_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79857 __tmp79856)))
                              (__tmp79850
                               (let ((__tmp79852
                                      (let ((__tmp79854
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79853
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76804_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79854 __tmp79853)))
                                     (__tmp79851
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76802_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79852 __tmp79851))))
                          (declare (not safe))
                          (cons __tmp79855 __tmp79850))))
                   (declare (not safe))
                   (cons __tmp79858 __tmp79849))))
              (___kont7912479125_
               (lambda (_L76737_ _L76739_)
                 (let ((__tmp79868
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79859
                        (let ((__tmp79865
                               (let ((__tmp79867
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79866
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76739_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79867 __tmp79866)))
                              (__tmp79860
                               (let ((__tmp79862
                                      (let ((__tmp79864
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79863
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76737_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79864 __tmp79863)))
                                     (__tmp79861
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79862 __tmp79861))))
                          (declare (not safe))
                          (cons __tmp79865 __tmp79860))))
                   (declare (not safe))
                   (cons __tmp79868 __tmp79859)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7911979120_))
              (let ((_e7667476762_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7911979120_))))
                (let ((_tl7667276769_
                       (let () (declare (not safe)) (##cdr _e7667476762_)))
                      (_hd7667376766_
                       (let () (declare (not safe)) (##car _e7667476762_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7667276769_))
                      (let ((_e7667776772_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7667276769_))))
                        (let ((_tl7667576779_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7667776772_)))
                              (_hd7667676776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7667776772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7667576779_))
                              (let ((_e7668076782_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7667576779_))))
                                (let ((_tl7667876789_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7668076782_)))
                                      (_hd7667976786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7668076782_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7667876789_))
                                      (let ((_e7668376792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7667876789_))))
                                        (let ((_tl7668176799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7668376792_)))
                                              (_hd7668276796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7668376792_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7668176799_))
                                              (___kont7912279123_
                                               _hd7668276796_
                                               _hd7667976786_
                                               _hd7667676776_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7666776700_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7667876789_))
                                          (___kont7912479125_
                                           _hd7667976786_
                                           _hd7667676776_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7666776700_))))))
                              (let () (declare (not safe)) (_g7666776700_)))))
                      (let () (declare (not safe)) (_g7666776700_)))))
              (let () (declare (not safe)) (_g7666776700_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx76827_)
      (let* ((___stx7917579176_ _$stx76827_)
             (_g7683276865_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7917579176_)))))
        (let ((___kont7917879179_
               (lambda (_L76967_ _L76969_ _L76970_)
                 (let ((__tmp79878
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79869
                        (let ((__tmp79875
                               (let ((__tmp79877
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79876
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76970_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79877 __tmp79876)))
                              (__tmp79870
                               (let ((__tmp79872
                                      (let ((__tmp79874
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79873
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76969_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79874 __tmp79873)))
                                     (__tmp79871
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76967_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79872 __tmp79871))))
                          (declare (not safe))
                          (cons __tmp79875 __tmp79870))))
                   (declare (not safe))
                   (cons __tmp79878 __tmp79869))))
              (___kont7918079181_
               (lambda (_L76902_ _L76904_)
                 (let ((__tmp79888
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79879
                        (let ((__tmp79885
                               (let ((__tmp79887
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79886
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76904_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79887 __tmp79886)))
                              (__tmp79880
                               (let ((__tmp79882
                                      (let ((__tmp79884
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79883
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76902_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79884 __tmp79883)))
                                     (__tmp79881
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79882 __tmp79881))))
                          (declare (not safe))
                          (cons __tmp79885 __tmp79880))))
                   (declare (not safe))
                   (cons __tmp79888 __tmp79879)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7917579176_))
              (let ((_e7683976927_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7917579176_))))
                (let ((_tl7683776934_
                       (let () (declare (not safe)) (##cdr _e7683976927_)))
                      (_hd7683876931_
                       (let () (declare (not safe)) (##car _e7683976927_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7683776934_))
                      (let ((_e7684276937_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7683776934_))))
                        (let ((_tl7684076944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7684276937_)))
                              (_hd7684176941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7684276937_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7684076944_))
                              (let ((_e7684576947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7684076944_))))
                                (let ((_tl7684376954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7684576947_)))
                                      (_hd7684476951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7684576947_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7684376954_))
                                      (let ((_e7684876957_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7684376954_))))
                                        (let ((_tl7684676964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7684876957_)))
                                              (_hd7684776961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7684876957_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7684676964_))
                                              (___kont7917879179_
                                               _hd7684776961_
                                               _hd7684476951_
                                               _hd7684176941_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7683276865_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7684376954_))
                                          (___kont7918079181_
                                           _hd7684476951_
                                           _hd7684176941_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7683276865_))))))
                              (let () (declare (not safe)) (_g7683276865_)))))
                      (let () (declare (not safe)) (_g7683276865_)))))
              (let () (declare (not safe)) (_g7683276865_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx76992_)
      (let* ((___stx7923179232_ _$stx76992_)
             (_g7700077068_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7923179232_)))))
        (let ((___kont7923479235_
               (lambda (_L77346_ _L77348_)
                 (let ((__tmp79904
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79889
                        (let ((__tmp79900
                               (let ((__tmp79903
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79901
                                      (let ((__tmp79902
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79902 '()))))
                                 (declare (not safe))
                                 (cons __tmp79903 __tmp79901)))
                              (__tmp79890
                               (let ((__tmp79897
                                      (let ((__tmp79899
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79898
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77348_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79899 __tmp79898)))
                                     (__tmp79891
                                      (let ((__tmp79892
                                             (let ((__tmp79893
                                                    (let ((__tmp79894
                                                           (let ((__tmp79896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79895
                          (let () (declare (not safe)) (cons _L77346_ '()))))
                     (declare (not safe))
                     (cons __tmp79896 __tmp79895))))
              (declare (not safe))
              (cons __tmp79894 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L77346_ __tmp79893))))
                                        (declare (not safe))
                                        (cons '#f __tmp79892))))
                                 (declare (not safe))
                                 (cons __tmp79897 __tmp79891))))
                          (declare (not safe))
                          (cons __tmp79900 __tmp79890))))
                   (declare (not safe))
                   (cons __tmp79904 __tmp79889))))
              (___kont7923679237_
               (lambda (_L77277_ _L77279_)
                 (let ((__tmp79905
                        (let ((__tmp79906
                               (let ((__tmp79907
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L77277_ __tmp79907))))
                          (declare (not safe))
                          (cons 'primitive: __tmp79906))))
                   (declare (not safe))
                   (cons _L77279_ __tmp79905))))
              (___kont7923879239_
               (lambda (_L77216_ _L77218_)
                 (let ((__tmp79921
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp79908
                        (let ((__tmp79917
                               (let ((__tmp79920
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79918
                                      (let ((__tmp79919
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79919 '()))))
                                 (declare (not safe))
                                 (cons __tmp79920 __tmp79918)))
                              (__tmp79909
                               (let ((__tmp79914
                                      (let ((__tmp79916
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79915
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77218_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79916 __tmp79915)))
                                     (__tmp79910
                                      (let ((__tmp79911
                                             (let ((__tmp79913
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79912
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77216_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79913 __tmp79912))))
                                        (declare (not safe))
                                        (cons __tmp79911 '()))))
                                 (declare (not safe))
                                 (cons __tmp79914 __tmp79910))))
                          (declare (not safe))
                          (cons __tmp79917 __tmp79909))))
                   (declare (not safe))
                   (cons __tmp79921 __tmp79908))))
              (___kont7924079241_
               (lambda (_L77148_ _L77150_)
                 (let ((__tmp79935
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79922
                        (let ((__tmp79931
                               (let ((__tmp79934
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79932
                                      (let ((__tmp79933
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79933 '()))))
                                 (declare (not safe))
                                 (cons __tmp79934 __tmp79932)))
                              (__tmp79923
                               (let ((__tmp79928
                                      (let ((__tmp79930
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79929
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77150_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79930 __tmp79929)))
                                     (__tmp79924
                                      (let ((__tmp79925
                                             (let ((__tmp79927
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79926
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77148_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79927 __tmp79926))))
                                        (declare (not safe))
                                        (cons __tmp79925 '()))))
                                 (declare (not safe))
                                 (cons __tmp79928 __tmp79924))))
                          (declare (not safe))
                          (cons __tmp79931 __tmp79923))))
                   (declare (not safe))
                   (cons __tmp79935 __tmp79922))))
              (___kont7924279243_
               (lambda (_L77095_ _L77097_)
                 (let ((__tmp79936
                        (let ((__tmp79937
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L77095_ __tmp79937))))
                   (declare (not safe))
                   (cons _L77097_ __tmp79936)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7923179232_))
              (let ((_e7700677302_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7923179232_))))
                (let ((_tl7700477309_
                       (let () (declare (not safe)) (##cdr _e7700677302_)))
                      (_hd7700577306_
                       (let () (declare (not safe)) (##car _e7700677302_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7700477309_))
                      (let ((_e7700977312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7700477309_))))
                        (let ((_tl7700777319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7700977312_)))
                              (_hd7700877316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7700977312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7700777319_))
                              (let ((_e7701277322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7700777319_))))
                                (let ((_tl7701077329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7701277322_)))
                                      (_hd7701177326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7701277322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7701177326_))
                                      (let ((_e7701377332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7701177326_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7701377332_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7701077329_))
                                                (let ((_e7701677336_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7701077329_))))
                                                  (let ((_tl7701477343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7701677336_)))
                                                        (_hd7701577340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7701677336_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7701477343_))
                                                        (___kont7923479235_
                                                         _hd7701577340_
                                                         _hd7700877316_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7700877316_))
                                                            (let ((_e7702577263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7700877316_))))
                      (declare (not safe))
                      (_g7700077068_))
                    (let () (declare (not safe)) (_g7700077068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7700877316_))
                                                    (let ((_e7702577263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7700877316_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7702577263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7701077329_))
                      (___kont7923679237_ _hd7701177326_ _hd7700577306_)
                      (let () (declare (not safe)) (_g7700077068_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7701077329_))
                      (___kont7924079241_ _hd7701177326_ _hd7700877316_)
                      (let () (declare (not safe)) (_g7700077068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7701077329_))
                                                        (___kont7924079241_
                                                         _hd7701177326_
                                                         _hd7700877316_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7700077068_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7700877316_))
                                                (let ((_e7702577263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7700877316_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7702577263_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7701077329_))
                                                          (___kont7923679237_
                                                           _hd7701177326_
                                                           _hd7700577306_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7701077329_))
                      (let ((_e7704377206_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7701077329_))))
                        (let ((_tl7704177213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7704377206_)))
                              (_hd7704277210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7704377206_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7704177213_))
                              (___kont7923879239_
                               _hd7704277210_
                               _hd7701177326_)
                              (let () (declare (not safe)) (_g7700077068_)))))
                      (let () (declare (not safe)) (_g7700077068_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7701077329_))
                  (___kont7924079241_ _hd7701177326_ _hd7700877316_)
                  (let () (declare (not safe)) (_g7700077068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701077329_))
                                                    (___kont7924079241_
                                                     _hd7701177326_
                                                     _hd7700877316_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7700077068_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7700877316_))
                                          (let ((_e7702577263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7700877316_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7702577263_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701077329_))
                                                    (___kont7923679237_
                                                     _hd7701177326_
                                                     _hd7700577306_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7701077329_))
                                                        (let ((_e7704377206_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7701077329_))))
                  (let ((_tl7704177213_
                         (let () (declare (not safe)) (##cdr _e7704377206_)))
                        (_hd7704277210_
                         (let () (declare (not safe)) (##car _e7704377206_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7704177213_))
                        (___kont7923879239_ _hd7704277210_ _hd7701177326_)
                        (let () (declare (not safe)) (_g7700077068_)))))
                (let () (declare (not safe)) (_g7700077068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701077329_))
                                                    (___kont7924079241_
                                                     _hd7701177326_
                                                     _hd7700877316_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7700077068_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7701077329_))
                                              (___kont7924079241_
                                               _hd7701177326_
                                               _hd7700877316_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7700077068_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7700877316_))
                                  (let ((_e7702577263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7700877316_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7700777319_))
                                        (___kont7924279243_
                                         _hd7700877316_
                                         _hd7700577306_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7700077068_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7700777319_))
                                      (___kont7924279243_
                                       _hd7700877316_
                                       _hd7700577306_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7700077068_)))))))
                      (let () (declare (not safe)) (_g7700077068_)))))
              (let () (declare (not safe)) (_g7700077068_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx77370_)
      (let* ((___stx7937179372_ _$stx77370_)
             (_g7737577430_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7937179372_)))))
        (let ((___kont7937479375_
               (lambda (_L77615_ _L77617_)
                 (let ((__tmp79953
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp79938
                        (let ((__tmp79949
                               (let ((__tmp79952
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79950
                                      (let ((__tmp79951
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79951 '()))))
                                 (declare (not safe))
                                 (cons __tmp79952 __tmp79950)))
                              (__tmp79939
                               (let ((__tmp79940
                                      (let ((__tmp79948
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79941
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77615_
                                                  _L77617_))
                                               (let ((__tmp79942
                                                      (lambda (_g7763477638_
                                                               _g7763577641_
                                                               _g7763677643_)
                                                        (let ((__tmp79943
                                                               (let ((__tmp79947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79944
                              (let ((__tmp79945
                                     (let ((__tmp79946
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7763477638_ '()))))
                                       (declare (not safe))
                                       (cons _g7763577641_ __tmp79946))))
                                (declare (not safe))
                                (cons 'primitive: __tmp79945))))
                         (declare (not safe))
                         (cons __tmp79947 __tmp79944))))
                  (declare (not safe))
                  (cons __tmp79943 _g7763677643_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79942
                                                         '()
                                                         _L77615_
                                                         _L77617_)))))
                                        (declare (not safe))
                                        (cons __tmp79948 __tmp79941))))
                                 (declare (not safe))
                                 (cons __tmp79940 '()))))
                          (declare (not safe))
                          (cons __tmp79949 __tmp79939))))
                   (declare (not safe))
                   (cons __tmp79953 __tmp79938))))
              (___kont7937879379_
               (lambda (_L77501_ _L77503_)
                 (let ((__tmp79968
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp79954
                        (let ((__tmp79964
                               (let ((__tmp79967
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79965
                                      (let ((__tmp79966
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79966 '()))))
                                 (declare (not safe))
                                 (cons __tmp79967 __tmp79965)))
                              (__tmp79955
                               (let ((__tmp79956
                                      (let ((__tmp79963
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79957
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77501_
                                                  _L77503_))
                                               (let ((__tmp79958
                                                      (lambda (_g7751877522_
                                                               _g7751977525_
                                                               _g7752077527_)
                                                        (let ((__tmp79959
                                                               (let ((__tmp79962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79960
                              (let ((__tmp79961
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7751877522_ '()))))
                                (declare (not safe))
                                (cons _g7751977525_ __tmp79961))))
                         (declare (not safe))
                         (cons __tmp79962 __tmp79960))))
                  (declare (not safe))
                  (cons __tmp79959 _g7752077527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79958
                                                         '()
                                                         _L77501_
                                                         _L77503_)))))
                                        (declare (not safe))
                                        (cons __tmp79963 __tmp79957))))
                                 (declare (not safe))
                                 (cons __tmp79956 '()))))
                          (declare (not safe))
                          (cons __tmp79964 __tmp79955))))
                   (declare (not safe))
                   (cons __tmp79968 __tmp79954)))))
          (let* ((___match7942279423_
                  (lambda (_e7740777437_
                           _hd7740677441_
                           _tl7740577444_
                           ___splice7938079381_
                           _target7740877447_
                           _tl7741077450_)
                    (letrec ((_loop7741177453_
                              (lambda (_hd7740977457_
                                       _dispatch7741577460_
                                       _arity7741677462_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7740977457_))
                                    (let ((_e7741277465_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7740977457_))))
                                      (let ((_lp-tl7741477472_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7741277465_)))
                                            (_lp-hd7741377469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7741277465_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7741377469_))
                                            (let ((_e7742177475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7741377469_))))
                                              (let ((_tl7741977482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7742177475_)))
                                                    (_hd7742077479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7742177475_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7741977482_))
                                                    (let ((_e7742477485_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7741977482_))))
                                                      (let ((_tl7742277492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7742477485_)))
                    (_hd7742377489_
                     (let () (declare (not safe)) (##car _e7742477485_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7742277492_))
                    (_loop7741177453_
                     _lp-tl7741477472_
                     (let ()
                       (declare (not safe))
                       (cons _hd7742377489_ _dispatch7741577460_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7742077479_ _arity7741677462_)))
                    (let () (declare (not safe)) (_g7737577430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7737577430_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7737577430_)))))
                                    (let ((_arity7741877498_
                                           (reverse _arity7741677462_))
                                          (_dispatch7741777495_
                                           (reverse _dispatch7741577460_)))
                                      (___kont7937879379_
                                       _dispatch7741777495_
                                       _arity7741877498_))))))
                      (_loop7741177453_ _target7740877447_ '() '()))))
                 (___match7941479415_
                  (lambda (_e7740777437_ _hd7740677441_ _tl7740577444_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7740577444_))
                        (let ((___splice7938079381_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7740577444_ '0))))
                          (let ((_tl7741077450_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7938079381_ '1)))
                                (_target7740877447_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7938079381_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7741077450_))
                                (___match7942279423_
                                 _e7740777437_
                                 _hd7740677441_
                                 _tl7740577444_
                                 ___splice7938079381_
                                 _target7740877447_
                                 _tl7741077450_)
                                (let ()
                                  (declare (not safe))
                                  (_g7737577430_)))))
                        (let () (declare (not safe)) (_g7737577430_)))))
                 (___match7940879409_
                  (lambda (_e7738177537_
                           _hd7738077541_
                           _tl7737977544_
                           _e7738477547_
                           _hd7738377551_
                           _tl7738277554_
                           _e7738577557_
                           ___splice7937679377_
                           _target7738677561_
                           _tl7738877564_)
                    (letrec ((_loop7738977567_
                              (lambda (_hd7738777571_
                                       _dispatch7739377574_
                                       _arity7739477576_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7738777571_))
                                    (let ((_e7739077579_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7738777571_))))
                                      (let ((_lp-tl7739277586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7739077579_)))
                                            (_lp-hd7739177583_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7739077579_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7739177583_))
                                            (let ((_e7739977589_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7739177583_))))
                                              (let ((_tl7739777596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7739977589_)))
                                                    (_hd7739877593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7739977589_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7739777596_))
                                                    (let ((_e7740277599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7739777596_))))
                                                      (let ((_tl7740077606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7740277599_)))
                    (_hd7740177603_
                     (let () (declare (not safe)) (##car _e7740277599_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7740077606_))
                    (_loop7738977567_
                     _lp-tl7739277586_
                     (let ()
                       (declare (not safe))
                       (cons _hd7740177603_ _dispatch7739377574_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7739877593_ _arity7739477576_)))
                    (___match7941479415_
                     _e7738177537_
                     _hd7738077541_
                     _tl7737977544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7941479415_
                                                     _e7738177537_
                                                     _hd7738077541_
                                                     _tl7737977544_))))
                                            (___match7941479415_
                                             _e7738177537_
                                             _hd7738077541_
                                             _tl7737977544_))))
                                    (let ((_arity7739677612_
                                           (reverse _arity7739477576_))
                                          (_dispatch7739577609_
                                           (reverse _dispatch7739377574_)))
                                      (___kont7937479375_
                                       _dispatch7739577609_
                                       _arity7739677612_))))))
                      (_loop7738977567_ _target7738677561_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7937179372_))
                (let ((_e7738177537_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7937179372_))))
                  (let ((_tl7737977544_
                         (let () (declare (not safe)) (##cdr _e7738177537_)))
                        (_hd7738077541_
                         (let () (declare (not safe)) (##car _e7738177537_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7737977544_))
                        (let ((_e7738477547_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7737977544_))))
                          (let ((_tl7738277554_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7738477547_)))
                                (_hd7738377551_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7738477547_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7738377551_))
                                (let ((_e7738577557_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7738377551_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7738577557_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7738277554_))
                                          (let ((___splice7937679377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7738277554_
                                                    '0))))
                                            (let ((_tl7738877564_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7937679377_
                                                      '1)))
                                                  (_target7738677561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7937679377_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7738877564_))
                                                  (___match7940879409_
                                                   _e7738177537_
                                                   _hd7738077541_
                                                   _tl7737977544_
                                                   _e7738477547_
                                                   _hd7738377551_
                                                   _tl7738277554_
                                                   _e7738577557_
                                                   ___splice7937679377_
                                                   _target7738677561_
                                                   _tl7738877564_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7737977544_))
                                                      (let ((___splice7938079381_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7737977544_ '0))))
                (let ((_tl7741077450_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7938079381_ '1)))
                      (_target7740877447_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7938079381_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7741077450_))
                      (___match7942279423_
                       _e7738177537_
                       _hd7738077541_
                       _tl7737977544_
                       ___splice7938079381_
                       _target7740877447_
                       _tl7741077450_)
                      (let () (declare (not safe)) (_g7737577430_)))))
              (let () (declare (not safe)) (_g7737577430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7737977544_))
                                              (let ((___splice7938079381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7737977544_
                                                        '0))))
                                                (let ((_tl7741077450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7938079381_
                                                          '1)))
                                                      (_target7740877447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7938079381_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7741077450_))
                                                      (___match7942279423_
                                                       _e7738177537_
                                                       _hd7738077541_
                                                       _tl7737977544_
                                                       ___splice7938079381_
                                                       _target7740877447_
                                                       _tl7741077450_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7737577430_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7737577430_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7737977544_))
                                          (let ((___splice7938079381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7737977544_
                                                    '0))))
                                            (let ((_tl7741077450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938079381_
                                                      '1)))
                                                  (_target7740877447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938079381_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7741077450_))
                                                  (___match7942279423_
                                                   _e7738177537_
                                                   _hd7738077541_
                                                   _tl7737977544_
                                                   ___splice7938079381_
                                                   _target7740877447_
                                                   _tl7741077450_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7737577430_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7737577430_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7737977544_))
                                    (let ((___splice7938079381_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7737977544_
                                              '0))))
                                      (let ((_tl7741077450_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7938079381_
                                                '1)))
                                            (_target7740877447_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7938079381_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7741077450_))
                                            (___match7942279423_
                                             _e7738177537_
                                             _hd7738077541_
                                             _tl7737977544_
                                             ___splice7938079381_
                                             _target7740877447_
                                             _tl7741077450_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7737577430_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7737577430_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7737977544_))
                            (let ((___splice7938079381_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7737977544_
                                      '0))))
                              (let ((_tl7741077450_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7938079381_ '1)))
                                    (_target7740877447_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7938079381_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7741077450_))
                                    (___match7942279423_
                                     _e7738177537_
                                     _hd7738077541_
                                     _tl7737977544_
                                     ___splice7938079381_
                                     _target7740877447_
                                     _tl7741077450_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7737577430_)))))
                            (let () (declare (not safe)) (_g7737577430_))))))
                (let () (declare (not safe)) (_g7737577430_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx77652_)
      (let* ((_g7765677674_
              (lambda (_g7765777670_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7765777670_))))
             (_g7765577729_
              (lambda (_g7765777678_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7765777678_))
                    (let ((_e7766277681_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7765777678_))))
                      (let ((_hd7766177685_
                             (let ()
                               (declare (not safe))
                               (##car _e7766277681_)))
                            (_tl7766077688_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7766277681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7766077688_))
                            (let ((_e7766577691_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7766077688_))))
                              (let ((_hd7766477695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7766577691_)))
                                    (_tl7766377698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7766577691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7766377698_))
                                    (let ((_e7766877701_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7766377698_))))
                                      (let ((_hd7766777705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7766877701_)))
                                            (_tl7766677708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7766877701_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7766677708_))
                                            ((lambda (_L77711_ _L77713_)
                                               (let ((__tmp79982
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp79969
                                                      (let ((__tmp79978
                                                             (let ((__tmp79981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79979
                            (let ((__tmp79980
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp79980 '()))))
                       (declare (not safe))
                       (cons __tmp79981 __tmp79979)))
                    (__tmp79970
                     (let ((__tmp79975
                            (let ((__tmp79977
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79976
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77713_ '()))))
                              (declare (not safe))
                              (cons __tmp79977 __tmp79976)))
                           (__tmp79971
                            (let ((__tmp79972
                                   (let ((__tmp79974
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79973
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77711_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79974 __tmp79973))))
                              (declare (not safe))
                              (cons __tmp79972 '()))))
                       (declare (not safe))
                       (cons __tmp79975 __tmp79971))))
                (declare (not safe))
                (cons __tmp79978 __tmp79970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79982 __tmp79969)))
                                             _hd7766777705_
                                             _hd7766477695_)
                                            (_g7765677674_ _g7765777678_))))
                                    (_g7765677674_ _g7765777678_))))
                            (_g7765677674_ _g7765777678_))))
                    (_g7765677674_ _g7765777678_)))))
        (_g7765577729_ _$stx77652_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx77733_)
      (let* ((_g7773777755_
              (lambda (_g7773877751_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7773877751_))))
             (_g7773677810_
              (lambda (_g7773877759_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7773877759_))
                    (let ((_e7774377762_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7773877759_))))
                      (let ((_hd7774277766_
                             (let ()
                               (declare (not safe))
                               (##car _e7774377762_)))
                            (_tl7774177769_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7774377762_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7774177769_))
                            (let ((_e7774677772_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7774177769_))))
                              (let ((_hd7774577776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7774677772_)))
                                    (_tl7774477779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7774677772_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7774477779_))
                                    (let ((_e7774977782_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7774477779_))))
                                      (let ((_hd7774877786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7774977782_)))
                                            (_tl7774777789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7774977782_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7774777789_))
                                            ((lambda (_L77792_ _L77794_)
                                               (let ((__tmp79996
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp79983
                                                      (let ((__tmp79992
                                                             (let ((__tmp79995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79993
                            (let ((__tmp79994
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp79994 '()))))
                       (declare (not safe))
                       (cons __tmp79995 __tmp79993)))
                    (__tmp79984
                     (let ((__tmp79989
                            (let ((__tmp79991
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79990
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77794_ '()))))
                              (declare (not safe))
                              (cons __tmp79991 __tmp79990)))
                           (__tmp79985
                            (let ((__tmp79986
                                   (let ((__tmp79988
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79987
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77792_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79988 __tmp79987))))
                              (declare (not safe))
                              (cons __tmp79986 '()))))
                       (declare (not safe))
                       (cons __tmp79989 __tmp79985))))
                (declare (not safe))
                (cons __tmp79992 __tmp79984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79996 __tmp79983)))
                                             _hd7774877786_
                                             _hd7774577776_)
                                            (_g7773777755_ _g7773877759_))))
                                    (_g7773777755_ _g7773877759_))))
                            (_g7773777755_ _g7773877759_))))
                    (_g7773777755_ _g7773877759_)))))
        (_g7773677810_ _$stx77733_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx77814_)
      (let* ((___stx7942579426_ _$stx77814_)
             (_g7782177892_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7942579426_)))))
        (let ((___kont7942879429_
               (lambda (_L78183_ _L78185_)
                 (let ((__tmp80002
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79997
                        (let ((__tmp79998
                               (let ((__tmp79999
                                      (let ((__tmp80001
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80000
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78183_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80001 __tmp80000))))
                                 (declare (not safe))
                                 (cons __tmp79999 '()))))
                          (declare (not safe))
                          (cons _L78185_ __tmp79998))))
                   (declare (not safe))
                   (cons __tmp80002 __tmp79997))))
              (___kont7943079431_
               (lambda (_L78102_ _L78104_)
                 (let ((__tmp80011
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80003
                        (let ((__tmp80004
                               (let ((__tmp80005
                                      (let ((__tmp80010
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80006
                                             (let ((__tmp80007
                                                    (lambda (_g7812378126_
                                                             _g7812478129_)
                                                      (let ((__tmp80008
                                                             (let ((__tmp80009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7812378126_ __tmp80009))))
                (declare (not safe))
                (cons __tmp80008 _g7812478129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp80007
                                                       '()
                                                       _L78102_))))
                                        (declare (not safe))
                                        (cons __tmp80010 __tmp80006))))
                                 (declare (not safe))
                                 (cons __tmp80005 '()))))
                          (declare (not safe))
                          (cons _L78104_ __tmp80004))))
                   (declare (not safe))
                   (cons __tmp80011 __tmp80003))))
              (___kont7943479435_
               (lambda (_L78014_ _L78016_)
                 (let ((__tmp80018
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80012
                        (let ((__tmp80013
                               (let ((__tmp80014
                                      (let ((__tmp80017
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80015
                                             (let ((__tmp80016
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L78014_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp80016))))
                                        (declare (not safe))
                                        (cons __tmp80017 __tmp80015))))
                                 (declare (not safe))
                                 (cons __tmp80014 '()))))
                          (declare (not safe))
                          (cons _L78016_ __tmp80013))))
                   (declare (not safe))
                   (cons __tmp80018 __tmp80012))))
              (___kont7943679437_
               (lambda (_L77949_ _L77951_)
                 (let ((__tmp80028
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80019
                        (let ((__tmp80020
                               (let ((__tmp80021
                                      (let ((__tmp80027
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80022
                                             (let ((__tmp80023
                                                    (let ((__tmp80024
                                                           (lambda (_g7796877971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7796977974_)
                     (let ((__tmp80025
                            (let ((__tmp80026
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7796877971_ __tmp80026))))
                       (declare (not safe))
                       (cons __tmp80025 _g7796977974_)))))
              (declare (not safe))
              (foldr1 __tmp80024 '() _L77949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp80023))))
                                        (declare (not safe))
                                        (cons __tmp80027 __tmp80022))))
                                 (declare (not safe))
                                 (cons __tmp80021 '()))))
                          (declare (not safe))
                          (cons _L77951_ __tmp80020))))
                   (declare (not safe))
                   (cons __tmp80028 __tmp80019)))))
          (let* ((___match7954479545_
                  (lambda (_e7787477899_
                           _hd7787377903_
                           _tl7787277906_
                           _e7787777909_
                           _hd7787677913_
                           _tl7787577916_
                           ___splice7943879439_
                           _target7787877919_
                           _tl7788077922_)
                    (letrec ((_loop7788177925_
                              (lambda (_hd7787977929_ _arity7788577932_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7787977929_))
                                    (let ((_e7788277935_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7787977929_))))
                                      (let ((_lp-tl7788477942_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7788277935_)))
                                            (_lp-hd7788377939_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7788277935_))))
                                        (_loop7788177925_
                                         _lp-tl7788477942_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7788377939_
                                                 _arity7788577932_)))))
                                    (let ((_arity7788677945_
                                           (reverse _arity7788577932_)))
                                      (___kont7943679437_
                                       _arity7788677945_
                                       _hd7787677913_))))))
                      (_loop7788177925_ _target7787877919_ '()))))
                 (___match7950479505_
                  (lambda (_e7784278038_
                           _hd7784178042_
                           _tl7784078045_
                           _e7784578048_
                           _hd7784478052_
                           _tl7784378055_
                           _e7784878058_
                           _hd7784778062_
                           _tl7784678065_
                           _e7784978068_
                           ___splice7943279433_
                           _target7785078072_
                           _tl7785278075_)
                    (letrec ((_loop7785378078_
                              (lambda (_hd7785178082_ _arity7785778085_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7785178082_))
                                    (let ((_e7785478088_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7785178082_))))
                                      (let ((_lp-tl7785678095_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7785478088_)))
                                            (_lp-hd7785578092_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7785478088_))))
                                        (_loop7785378078_
                                         _lp-tl7785678095_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7785578092_
                                                 _arity7785778085_)))))
                                    (let ((_arity7785878098_
                                           (reverse _arity7785778085_)))
                                      (___kont7943079431_
                                       _arity7785878098_
                                       _hd7784478052_))))))
                      (_loop7785378078_ _target7785078072_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7942579426_))
                (let ((_e7782778139_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7942579426_))))
                  (let ((_tl7782578146_
                         (let () (declare (not safe)) (##cdr _e7782778139_)))
                        (_hd7782678143_
                         (let () (declare (not safe)) (##car _e7782778139_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7782578146_))
                        (let ((_e7783078149_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7782578146_))))
                          (let ((_tl7782878156_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7783078149_)))
                                (_hd7782978153_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7783078149_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7782878156_))
                                (let ((_e7783378159_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7782878156_))))
                                  (let ((_tl7783178166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7783378159_)))
                                        (_hd7783278163_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7783378159_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7783278163_))
                                        (let ((_e7783478169_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7783278163_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7783478169_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7783178166_))
                                                  (let ((_e7783778173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7783178166_))))
                                                    (let ((_tl7783578180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7783778173_)))
                                                          (_hd7783678177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7783778173_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7783578180_))
                                                          (___kont7942879429_
                                                           _hd7783678177_
                                                           _hd7782978153_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7783178166_))
                      (let ((___splice7943279433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7783178166_ '0))))
                        (let ((_tl7785278075_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943279433_ '1)))
                              (_target7785078072_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943279433_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7785278075_))
                              (___match7950479505_
                               _e7782778139_
                               _hd7782678143_
                               _tl7782578146_
                               _e7783078149_
                               _hd7782978153_
                               _tl7782878156_
                               _e7783378159_
                               _hd7783278163_
                               _tl7783178166_
                               _e7783478169_
                               ___splice7943279433_
                               _target7785078072_
                               _tl7785278075_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7782878156_))
                                  (let ((___splice7943879439_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7782878156_
                                            '0))))
                                    (let ((_tl7788077922_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7943879439_
                                              '1)))
                                          (_target7787877919_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7943879439_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7788077922_))
                                          (___match7954479545_
                                           _e7782778139_
                                           _hd7782678143_
                                           _tl7782578146_
                                           _e7783078149_
                                           _hd7782978153_
                                           _tl7782878156_
                                           ___splice7943879439_
                                           _target7787877919_
                                           _tl7788077922_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7782177892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7782177892_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7782878156_))
                          (let ((___splice7943879439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7782878156_
                                    '0))))
                            (let ((_tl7788077922_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7943879439_ '1)))
                                  (_target7787877919_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7943879439_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7788077922_))
                                  (___match7954479545_
                                   _e7782778139_
                                   _hd7782678143_
                                   _tl7782578146_
                                   _e7783078149_
                                   _hd7782978153_
                                   _tl7782878156_
                                   ___splice7943879439_
                                   _target7787877919_
                                   _tl7788077922_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7782177892_)))))
                          (let () (declare (not safe)) (_g7782177892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7783178166_))
                                                      (let ((___splice7943279433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7783178166_ '0))))
                (let ((_tl7785278075_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943279433_ '1)))
                      (_target7785078072_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943279433_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7785278075_))
                      (___match7950479505_
                       _e7782778139_
                       _hd7782678143_
                       _tl7782578146_
                       _e7783078149_
                       _hd7782978153_
                       _tl7782878156_
                       _e7783378159_
                       _hd7783278163_
                       _tl7783178166_
                       _e7783478169_
                       ___splice7943279433_
                       _target7785078072_
                       _tl7785278075_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7783178166_))
                          (___kont7943479435_ _hd7783278163_ _hd7782978153_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7782878156_))
                              (let ((___splice7943879439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7782878156_
                                        '0))))
                                (let ((_tl7788077922_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7943879439_
                                          '1)))
                                      (_target7787877919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7943879439_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7788077922_))
                                      (___match7954479545_
                                       _e7782778139_
                                       _hd7782678143_
                                       _tl7782578146_
                                       _e7783078149_
                                       _hd7782978153_
                                       _tl7782878156_
                                       ___splice7943879439_
                                       _target7787877919_
                                       _tl7788077922_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7782177892_)))))
                              (let ()
                                (declare (not safe))
                                (_g7782177892_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7783178166_))
                  (___kont7943479435_ _hd7783278163_ _hd7782978153_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7782878156_))
                      (let ((___splice7943879439_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7782878156_ '0))))
                        (let ((_tl7788077922_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943879439_ '1)))
                              (_target7787877919_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943879439_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7788077922_))
                              (___match7954479545_
                               _e7782778139_
                               _hd7782678143_
                               _tl7782578146_
                               _e7783078149_
                               _hd7782978153_
                               _tl7782878156_
                               ___splice7943879439_
                               _target7787877919_
                               _tl7788077922_)
                              (let () (declare (not safe)) (_g7782177892_)))))
                      (let () (declare (not safe)) (_g7782177892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7783178166_))
                                                  (___kont7943479435_
                                                   _hd7783278163_
                                                   _hd7782978153_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7782878156_))
                                                      (let ((___splice7943879439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7782878156_ '0))))
                (let ((_tl7788077922_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943879439_ '1)))
                      (_target7787877919_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943879439_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7788077922_))
                      (___match7954479545_
                       _e7782778139_
                       _hd7782678143_
                       _tl7782578146_
                       _e7783078149_
                       _hd7782978153_
                       _tl7782878156_
                       ___splice7943879439_
                       _target7787877919_
                       _tl7788077922_)
                      (let () (declare (not safe)) (_g7782177892_)))))
              (let () (declare (not safe)) (_g7782177892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7783178166_))
                                            (___kont7943479435_
                                             _hd7783278163_
                                             _hd7782978153_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7782878156_))
                                                (let ((___splice7943879439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7782878156_
                                                          '0))))
                                                  (let ((_tl7788077922_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7943879439_
                                                            '1)))
                                                        (_target7787877919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7943879439_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7788077922_))
                                                        (___match7954479545_
                                                         _e7782778139_
                                                         _hd7782678143_
                                                         _tl7782578146_
                                                         _e7783078149_
                                                         _hd7782978153_
                                                         _tl7782878156_
                                                         ___splice7943879439_
                                                         _target7787877919_
                                                         _tl7788077922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7782177892_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7782177892_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7782878156_))
                                    (let ((___splice7943879439_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7782878156_
                                              '0))))
                                      (let ((_tl7788077922_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7943879439_
                                                '1)))
                                            (_target7787877919_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7943879439_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7788077922_))
                                            (___match7954479545_
                                             _e7782778139_
                                             _hd7782678143_
                                             _tl7782578146_
                                             _e7783078149_
                                             _hd7782978153_
                                             _tl7782878156_
                                             ___splice7943879439_
                                             _target7787877919_
                                             _tl7788077922_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7782177892_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7782177892_))))))
                        (let () (declare (not safe)) (_g7782177892_)))))
                (let () (declare (not safe)) (_g7782177892_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx78209_)
      (let* ((___stx7954779548_ _$stx78209_)
             (_g7821478249_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7954779548_)))))
        (let ((___kont7955079551_
               (lambda (_L78371_ _L78373_)
                 (let ((__tmp80034
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80029
                        (let ((__tmp80030
                               (let ((__tmp80031
                                      (let ((__tmp80033
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80032
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78371_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80033 __tmp80032))))
                                 (declare (not safe))
                                 (cons __tmp80031 '()))))
                          (declare (not safe))
                          (cons _L78373_ __tmp80030))))
                   (declare (not safe))
                   (cons __tmp80034 __tmp80029))))
              (___kont7955279553_
               (lambda (_L78306_ _L78308_)
                 (let ((__tmp80043
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80035
                        (let ((__tmp80036
                               (let ((__tmp80037
                                      (let ((__tmp80042
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80038
                                             (let ((__tmp80039
                                                    (lambda (_g7832578328_
                                                             _g7832678331_)
                                                      (let ((__tmp80040
                                                             (let ((__tmp80041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7832578328_ __tmp80041))))
                (declare (not safe))
                (cons __tmp80040 _g7832678331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp80039
                                                       '()
                                                       _L78306_))))
                                        (declare (not safe))
                                        (cons __tmp80042 __tmp80038))))
                                 (declare (not safe))
                                 (cons __tmp80037 '()))))
                          (declare (not safe))
                          (cons _L78308_ __tmp80036))))
                   (declare (not safe))
                   (cons __tmp80043 __tmp80035)))))
          (let ((___match7959679597_
                 (lambda (_e7823178256_
                          _hd7823078260_
                          _tl7822978263_
                          _e7823478266_
                          _hd7823378270_
                          _tl7823278273_
                          ___splice7955479555_
                          _target7823578276_
                          _tl7823778279_)
                   (letrec ((_loop7823878282_
                             (lambda (_hd7823678286_ _arity7824278289_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7823678286_))
                                   (let ((_e7823978292_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7823678286_))))
                                     (let ((_lp-tl7824178299_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7823978292_)))
                                           (_lp-hd7824078296_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7823978292_))))
                                       (_loop7823878282_
                                        _lp-tl7824178299_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7824078296_
                                                _arity7824278289_)))))
                                   (let ((_arity7824378302_
                                          (reverse _arity7824278289_)))
                                     (___kont7955279553_
                                      _arity7824378302_
                                      _hd7823378270_))))))
                     (_loop7823878282_ _target7823578276_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7954779548_))
                (let ((_e7822078341_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7954779548_))))
                  (let ((_tl7821878348_
                         (let () (declare (not safe)) (##cdr _e7822078341_)))
                        (_hd7821978345_
                         (let () (declare (not safe)) (##car _e7822078341_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7821878348_))
                        (let ((_e7822378351_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7821878348_))))
                          (let ((_tl7822178358_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7822378351_)))
                                (_hd7822278355_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7822378351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7822178358_))
                                (let ((_e7822678361_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7822178358_))))
                                  (let ((_tl7822478368_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7822678361_)))
                                        (_hd7822578365_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7822678361_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7822478368_))
                                        (___kont7955079551_
                                         _hd7822578365_
                                         _hd7822278355_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7822178358_))
                                            (let ((___splice7955479555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7822178358_
                                                      '0))))
                                              (let ((_tl7823778279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7955479555_
                                                        '1)))
                                                    (_target7823578276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7955479555_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7823778279_))
                                                    (___match7959679597_
                                                     _e7822078341_
                                                     _hd7821978345_
                                                     _tl7821878348_
                                                     _e7822378351_
                                                     _hd7822278355_
                                                     _tl7822178358_
                                                     ___splice7955479555_
                                                     _target7823578276_
                                                     _tl7823778279_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7821478249_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7821478249_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7822178358_))
                                    (let ((___splice7955479555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7822178358_
                                              '0))))
                                      (let ((_tl7823778279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7955479555_
                                                '1)))
                                            (_target7823578276_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7955479555_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7823778279_))
                                            (___match7959679597_
                                             _e7822078341_
                                             _hd7821978345_
                                             _tl7821878348_
                                             _e7822378351_
                                             _hd7822278355_
                                             _tl7822178358_
                                             ___splice7955479555_
                                             _target7823578276_
                                             _tl7823778279_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7821478249_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7821478249_))))))
                        (let () (declare (not safe)) (_g7821478249_)))))
                (let () (declare (not safe)) (_g7821478249_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx78393_)
      (let* ((_g7839778432_
              (lambda (_g7839878428_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7839878428_))))
             (_g7839678560_
              (lambda (_g7839878436_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7839878436_))
                    (let ((_e7840378439_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7839878436_))))
                      (let ((_hd7840278443_
                             (let ()
                               (declare (not safe))
                               (##car _e7840378439_)))
                            (_tl7840178446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7840378439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7840178446_))
                            (let ((_g80044_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7840178446_
                                      '0))))
                              (begin
                                (let ((_g80045_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80044_)
                                             (##vector-length _g80044_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80045_ 2)))
                                      (error "Context expects 2 values"
                                             _g80045_)))
                                (let ((_target7840478449_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80044_ 0)))
                                      (_tl7840678452_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80044_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7840678452_))
                                      (letrec ((_loop7840778455_
                                                (lambda (_hd7840578459_
                                                         _arity7841178462_
                                                         _prim7841278464_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7840578459_))
                                                      (let ((_e7840878467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7840578459_))))
                (let ((_lp-hd7840978471_
                       (let () (declare (not safe)) (##car _e7840878467_)))
                      (_lp-tl7841078474_
                       (let () (declare (not safe)) (##cdr _e7840878467_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7840978471_))
                      (let ((_e7841778477_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7840978471_))))
                        (let ((_hd7841678481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7841778477_)))
                              (_tl7841578484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7841778477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7841578484_))
                              (let ((_g80054_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7841578484_
                                        '0))))
                                (begin
                                  (let ((_g80055_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80054_)
                                               (##vector-length _g80054_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80055_ 2)))
                                        (error "Context expects 2 values"
                                               _g80055_)))
                                  (let ((_target7841878487_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80054_ 0)))
                                        (_tl7842078490_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80054_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7842078490_))
                                        (letrec ((_loop7842178493_
                                                  (lambda (_hd7841978497_
                                                           _arity7842578500_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7841978497_))
                                                        (let ((_e7842278503_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7841978497_))))
                  (let ((_lp-hd7842378507_
                         (let () (declare (not safe)) (##car _e7842278503_)))
                        (_lp-tl7842478510_
                         (let () (declare (not safe)) (##cdr _e7842278503_))))
                    (_loop7842178493_
                     _lp-tl7842478510_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7842378507_ _arity7842578500_)))))
                (let ((_arity7842678513_ (reverse _arity7842578500_)))
                  (_loop7840778455_
                   _lp-tl7841078474_
                   (let ()
                     (declare (not safe))
                     (cons _arity7842678513_ _arity7841178462_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7841678481_ _prim7841278464_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7842178493_
                                           _target7841878487_
                                           '()))
                                        (_g7839778432_ _g7839878436_)))))
                              (_g7839778432_ _g7839878436_))))
                      (_g7839778432_ _g7839878436_))))
              (let ((_arity7841378517_ (reverse _arity7841178462_))
                    (_prim7841478520_ (reverse _prim7841278464_)))
                ((lambda (_L78523_ _L78525_)
                   (let ((__tmp80053
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80046
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78523_
                               _L78525_))
                            (let ((__tmp80047
                                   (lambda (_g7854078546_
                                            _g7854178549_
                                            _g7854278551_)
                                     (let ((__tmp80048
                                            (let ((__tmp80052
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp80049
                                                   (let ((__tmp80050
                                                          (let ((__tmp80051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7854378554_ _g7854478557_)
                           (let ()
                             (declare (not safe))
                             (cons _g7854378554_ _g7854478557_)))))
                    (declare (not safe))
                    (foldr1 __tmp80051 '() _g7854078546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7854178549_
                                                           __tmp80050))))
                                              (declare (not safe))
                                              (cons __tmp80052 __tmp80049))))
                                       (declare (not safe))
                                       (cons __tmp80048 _g7854278551_)))))
                              (declare (not safe))
                              (foldr2 __tmp80047 '() _L78523_ _L78525_)))))
                     (declare (not safe))
                     (cons __tmp80053 __tmp80046)))
                 _arity7841378517_
                 _prim7841478520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7840778455_
                                         _target7840478449_
                                         '()
                                         '()))
                                      (_g7839778432_ _g7839878436_)))))
                            (_g7839778432_ _g7839878436_))))
                    (_g7839778432_ _g7839878436_)))))
        (_g7839678560_ _$stx78393_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx78566_)
      (let* ((_g7857078605_
              (lambda (_g7857178601_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7857178601_))))
             (_g7856978733_
              (lambda (_g7857178609_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7857178609_))
                    (let ((_e7857678612_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7857178609_))))
                      (let ((_hd7857578616_
                             (let ()
                               (declare (not safe))
                               (##car _e7857678612_)))
                            (_tl7857478619_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7857678612_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7857478619_))
                            (let ((_g80056_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7857478619_
                                      '0))))
                              (begin
                                (let ((_g80057_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80056_)
                                             (##vector-length _g80056_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80057_ 2)))
                                      (error "Context expects 2 values"
                                             _g80057_)))
                                (let ((_target7857778622_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80056_ 0)))
                                      (_tl7857978625_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80056_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7857978625_))
                                      (letrec ((_loop7858078628_
                                                (lambda (_hd7857878632_
                                                         _arity7858478635_
                                                         _prim7858578637_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7857878632_))
                                                      (let ((_e7858178640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7857878632_))))
                (let ((_lp-hd7858278644_
                       (let () (declare (not safe)) (##car _e7858178640_)))
                      (_lp-tl7858378647_
                       (let () (declare (not safe)) (##cdr _e7858178640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7858278644_))
                      (let ((_e7859078650_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7858278644_))))
                        (let ((_hd7858978654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7859078650_)))
                              (_tl7858878657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7859078650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7858878657_))
                              (let ((_g80066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7858878657_
                                        '0))))
                                (begin
                                  (let ((_g80067_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80066_)
                                               (##vector-length _g80066_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80067_ 2)))
                                        (error "Context expects 2 values"
                                               _g80067_)))
                                  (let ((_target7859178660_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80066_ 0)))
                                        (_tl7859378663_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80066_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7859378663_))
                                        (letrec ((_loop7859478666_
                                                  (lambda (_hd7859278670_
                                                           _arity7859878673_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7859278670_))
                                                        (let ((_e7859578676_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7859278670_))))
                  (let ((_lp-hd7859678680_
                         (let () (declare (not safe)) (##car _e7859578676_)))
                        (_lp-tl7859778683_
                         (let () (declare (not safe)) (##cdr _e7859578676_))))
                    (_loop7859478666_
                     _lp-tl7859778683_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7859678680_ _arity7859878673_)))))
                (let ((_arity7859978686_ (reverse _arity7859878673_)))
                  (_loop7858078628_
                   _lp-tl7858378647_
                   (let ()
                     (declare (not safe))
                     (cons _arity7859978686_ _arity7858478635_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7858978654_ _prim7858578637_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7859478666_
                                           _target7859178660_
                                           '()))
                                        (_g7857078605_ _g7857178609_)))))
                              (_g7857078605_ _g7857178609_))))
                      (_g7857078605_ _g7857178609_))))
              (let ((_arity7858678690_ (reverse _arity7858478635_))
                    (_prim7858778693_ (reverse _prim7858578637_)))
                ((lambda (_L78696_ _L78698_)
                   (let ((__tmp80065
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80058
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78696_
                               _L78698_))
                            (let ((__tmp80059
                                   (lambda (_g7871378719_
                                            _g7871478722_
                                            _g7871578724_)
                                     (let ((__tmp80060
                                            (let ((__tmp80064
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp80061
                                                   (let ((__tmp80062
                                                          (let ((__tmp80063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7871678727_ _g7871778730_)
                           (let ()
                             (declare (not safe))
                             (cons _g7871678727_ _g7871778730_)))))
                    (declare (not safe))
                    (foldr1 __tmp80063 '() _g7871378719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7871478722_
                                                           __tmp80062))))
                                              (declare (not safe))
                                              (cons __tmp80064 __tmp80061))))
                                       (declare (not safe))
                                       (cons __tmp80060 _g7871578724_)))))
                              (declare (not safe))
                              (foldr2 __tmp80059 '() _L78696_ _L78698_)))))
                     (declare (not safe))
                     (cons __tmp80065 __tmp80058)))
                 _arity7858678690_
                 _prim7858778693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7858078628_
                                         _target7857778622_
                                         '()
                                         '()))
                                      (_g7857078605_ _g7857178609_)))))
                            (_g7857078605_ _g7857178609_))))
                    (_g7857078605_ _g7857178609_)))))
        (_g7856978733_ _$stx78566_)))))
