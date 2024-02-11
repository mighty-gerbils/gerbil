(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293318_)
      (let* ((_g293322293340_
              (lambda (_g293323293336_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293323293336_))))
             (_g293321293395_
              (lambda (_g293323293344_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293323293344_))
                    (let ((_e293328293347_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293323293344_))))
                      (let ((_hd293327293351_
                             (let ()
                               (declare (not safe))
                               (##car _e293328293347_)))
                            (_tl293326293354_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293328293347_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293326293354_))
                            (let ((_e293331293357_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293326293354_))))
                              (let ((_hd293330293361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293331293357_)))
                                    (_tl293329293364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293331293357_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293329293364_))
                                    (let ((_e293334293367_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293329293364_))))
                                      (let ((_hd293333293371_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293334293367_)))
                                            (_tl293332293374_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293334293367_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293332293374_))
                                            ((lambda (_L293377_ _L293379_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293379_))
                                                   (let ((__tmp301309
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301304
                                                          (let ((__tmp301306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301308
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301307
                                (let ()
                                  (declare (not safe))
                                  (cons _L293379_ '()))))
                           (declare (not safe))
                           (cons __tmp301308 __tmp301307)))
                        (__tmp301305
                         (let () (declare (not safe)) (cons _L293377_ '()))))
                    (declare (not safe))
                    (cons __tmp301306 __tmp301305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301309
                                                           __tmp301304))
                                                   (_g293322293340_
                                                    _g293323293344_)))
                                             _hd293333293371_
                                             _hd293330293361_)
                                            (_g293322293340_
                                             _g293323293344_))))
                                    (_g293322293340_ _g293323293344_))))
                            (_g293322293340_ _g293323293344_))))
                    (_g293322293340_ _g293323293344_)))))
        (_g293321293395_ _$stx293318_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293399_)
      (let* ((_g293403293432_
              (lambda (_g293404293428_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293404293428_))))
             (_g293402293532_
              (lambda (_g293404293436_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293404293436_))
                    (let ((_e293409293439_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293404293436_))))
                      (let ((_hd293408293443_
                             (let ()
                               (declare (not safe))
                               (##car _e293409293439_)))
                            (_tl293407293446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293409293439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293407293446_))
                            (let ((_g301310_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293407293446_
                                      '0))))
                              (begin
                                (let ((_g301311_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301310_)
                                             (##vector-length _g301310_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301311_ 2)))
                                      (error "Context expects 2 values"
                                             _g301311_)))
                                (let ((_target293410293449_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301310_ 0)))
                                      (_tl293412293452_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301310_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293412293452_))
                                      (letrec ((_loop293413293455_
                                                (lambda (_hd293411293459_
                                                         _type293417293462_
                                                         _symbol293418293464_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293411293459_))
                                                      (let ((_e293414293467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293411293459_))))
                (let ((_lp-hd293415293471_
                       (let () (declare (not safe)) (##car _e293414293467_)))
                      (_lp-tl293416293474_
                       (let () (declare (not safe)) (##cdr _e293414293467_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293415293471_))
                      (let ((_e293423293477_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293415293471_))))
                        (let ((_hd293422293481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293423293477_)))
                              (_tl293421293484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293423293477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293421293484_))
                              (let ((_e293426293487_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293421293484_))))
                                (let ((_hd293425293491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293426293487_)))
                                      (_tl293424293494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293426293487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293424293494_))
                                      (_loop293413293455_
                                       _lp-tl293416293474_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293425293491_
                                               _type293417293462_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293422293481_
                                               _symbol293418293464_)))
                                      (_g293403293432_ _g293404293436_))))
                              (_g293403293432_ _g293404293436_))))
                      (_g293403293432_ _g293404293436_))))
              (let ((_type293419293497_ (reverse _type293417293462_))
                    (_symbol293420293500_ (reverse _symbol293418293464_)))
                ((lambda (_L293503_ _L293505_)
                   (let ((__tmp301318
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301312
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293503_
                               _L293505_))
                            (let ((__tmp301313
                                   (lambda (_g293520293524_
                                            _g293521293527_
                                            _g293522293529_)
                                     (let ((__tmp301314
                                            (let ((__tmp301317
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301315
                                                   (let ((__tmp301316
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293520293524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293521293527_
                                                           __tmp301316))))
                                              (declare (not safe))
                                              (cons __tmp301317 __tmp301315))))
                                       (declare (not safe))
                                       (cons __tmp301314 _g293522293529_)))))
                              (declare (not safe))
                              (foldr2 __tmp301313 '() _L293503_ _L293505_)))))
                     (declare (not safe))
                     (cons __tmp301318 __tmp301312)))
                 _type293419293497_
                 _symbol293420293500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293413293455_
                                         _target293410293449_
                                         '()
                                         '()))
                                      (_g293403293432_ _g293404293436_)))))
                            (_g293403293432_ _g293404293436_))))
                    (_g293403293432_ _g293404293436_)))))
        (_g293402293532_ _$stx293399_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293537_)
      (let* ((___stx300869300870_ _$stx293537_)
             (_g293542293584_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300869300870_)))))
        (let ((___kont300872300873_
               (lambda (_L293712_ _L293714_ _L293715_ _L293716_)
                 (let ((__tmp301332
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301319
                        (let ((__tmp301329
                               (let ((__tmp301331
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301330
                                      (let ()
                                        (declare (not safe))
                                        (cons _L293716_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301331 __tmp301330)))
                              (__tmp301320
                               (let ((__tmp301326
                                      (let ((__tmp301328
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301327
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293715_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301328 __tmp301327)))
                                     (__tmp301321
                                      (let ((__tmp301323
                                             (let ((__tmp301325
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301324
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L293714_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301325 __tmp301324)))
                                            (__tmp301322
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293712_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301323 __tmp301322))))
                                 (declare (not safe))
                                 (cons __tmp301326 __tmp301321))))
                          (declare (not safe))
                          (cons __tmp301329 __tmp301320))))
                   (declare (not safe))
                   (cons __tmp301332 __tmp301319))))
              (___kont300874300875_
               (lambda (_L293631_ _L293633_ _L293634_ _L293635_)
                 (let ((__tmp301333
                        (let ((__tmp301334
                               (let ((__tmp301335
                                      (let ((__tmp301336
                                             (let ((__tmp301337
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301337 '()))))
                                        (declare (not safe))
                                        (cons _L293631_ __tmp301336))))
                                 (declare (not safe))
                                 (cons _L293633_ __tmp301335))))
                          (declare (not safe))
                          (cons _L293634_ __tmp301334))))
                   (declare (not safe))
                   (cons _L293635_ __tmp301333)))))
          (let ((___match300908300909_
                 (lambda (_e293550293662_
                          _hd293549293666_
                          _tl293548293669_
                          _e293553293672_
                          _hd293552293676_
                          _tl293551293679_
                          _e293556293682_
                          _hd293555293686_
                          _tl293554293689_
                          _e293559293692_
                          _hd293558293696_
                          _tl293557293699_
                          _e293562293702_
                          _hd293561293706_
                          _tl293560293709_)
                   (let ((_L293712_ _hd293561293706_)
                         (_L293714_ _hd293558293696_)
                         (_L293715_ _hd293555293686_)
                         (_L293716_ _hd293552293676_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L293716_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293715_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293714_)))
                         (___kont300872300873_
                          _L293712_
                          _L293714_
                          _L293715_
                          _L293716_)
                         (let () (declare (not safe)) (_g293542293584_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300869300870_))
                (let ((_e293550293662_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300869300870_))))
                  (let ((_tl293548293669_
                         (let () (declare (not safe)) (##cdr _e293550293662_)))
                        (_hd293549293666_
                         (let ()
                           (declare (not safe))
                           (##car _e293550293662_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293548293669_))
                        (let ((_e293553293672_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293548293669_))))
                          (let ((_tl293551293679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293553293672_)))
                                (_hd293552293676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293553293672_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293551293679_))
                                (let ((_e293556293682_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293551293679_))))
                                  (let ((_tl293554293689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293556293682_)))
                                        (_hd293555293686_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293556293682_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293554293689_))
                                        (let ((_e293559293692_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293554293689_))))
                                          (let ((_tl293557293699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293559293692_)))
                                                (_hd293558293696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293559293692_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293557293699_))
                                                (let ((_e293562293702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293557293699_))))
                                                  (let ((_tl293560293709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293562293702_)))
                                                        (_hd293561293706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293562293702_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293560293709_))
                                                        (___match300908300909_
                                                         _e293550293662_
                                                         _hd293549293666_
                                                         _tl293548293669_
                                                         _e293553293672_
                                                         _hd293552293676_
                                                         _tl293551293679_
                                                         _e293556293682_
                                                         _hd293555293686_
                                                         _tl293554293689_
                                                         _e293559293692_
                                                         _hd293558293696_
                                                         _tl293557293699_
                                                         _e293562293702_
                                                         _hd293561293706_
                                                         _tl293560293709_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293542293584_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293557293699_))
                                                    (___kont300874300875_
                                                     _hd293558293696_
                                                     _hd293555293686_
                                                     _hd293552293676_
                                                     _hd293549293666_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293542293584_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293542293584_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293542293584_)))))
                        (let () (declare (not safe)) (_g293542293584_)))))
                (let () (declare (not safe)) (_g293542293584_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx293741_)
      (let* ((_g293745293780_
              (lambda (_g293746293776_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293746293776_))))
             (_g293744293899_
              (lambda (_g293746293784_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293746293784_))
                    (let ((_e293752293787_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293746293784_))))
                      (let ((_hd293751293791_
                             (let ()
                               (declare (not safe))
                               (##car _e293752293787_)))
                            (_tl293750293794_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293752293787_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293750293794_))
                            (let ((_g301338_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293750293794_
                                      '0))))
                              (begin
                                (let ((_g301339_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301338_)
                                             (##vector-length _g301338_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301339_ 2)))
                                      (error "Context expects 2 values"
                                             _g301339_)))
                                (let ((_target293753293797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301338_ 0)))
                                      (_tl293755293800_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301338_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293755293800_))
                                      (letrec ((_loop293756293803_
                                                (lambda (_hd293754293807_
                                                         _symbol293760293810_
                                                         _method293761293812_
                                                         _type-t293762293814_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293754293807_))
                                                      (let ((_e293757293817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293754293807_))))
                (let ((_lp-hd293758293821_
                       (let () (declare (not safe)) (##car _e293757293817_)))
                      (_lp-tl293759293824_
                       (let () (declare (not safe)) (##cdr _e293757293817_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293758293821_))
                      (let ((_e293768293827_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293758293821_))))
                        (let ((_hd293767293831_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293768293827_)))
                              (_tl293766293834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293768293827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293766293834_))
                              (let ((_e293771293837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293766293834_))))
                                (let ((_hd293770293841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293771293837_)))
                                      (_tl293769293844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293771293837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293769293844_))
                                      (let ((_e293774293847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293769293844_))))
                                        (let ((_hd293773293851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293774293847_)))
                                              (_tl293772293854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293774293847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293772293854_))
                                              (_loop293756293803_
                                               _lp-tl293759293824_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293773293851_
                                                       _symbol293760293810_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293770293841_
                                                       _method293761293812_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293767293831_
                                                       _type-t293762293814_)))
                                              (_g293745293780_
                                               _g293746293784_))))
                                      (_g293745293780_ _g293746293784_))))
                              (_g293745293780_ _g293746293784_))))
                      (_g293745293780_ _g293746293784_))))
              (let ((_symbol293763293857_ (reverse _symbol293760293810_))
                    (_method293764293860_ (reverse _method293761293812_))
                    (_type-t293765293862_ (reverse _type-t293762293814_)))
                ((lambda (_L293865_ _L293867_ _L293868_)
                   (let ((__tmp301347
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301340
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293865_
                               _L293867_
                               _L293868_))
                            (let ((__tmp301341
                                   (lambda (_g293884293889_
                                            _g293885293892_
                                            _g293886293894_
                                            _g293887293896_)
                                     (let ((__tmp301342
                                            (let ((__tmp301346
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301343
                                                   (let ((__tmp301344
                                                          (let ((__tmp301345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g293884293889_ '()))))
                    (declare (not safe))
                    (cons _g293885293892_ __tmp301345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293886293894_
                                                           __tmp301344))))
                                              (declare (not safe))
                                              (cons __tmp301346 __tmp301343))))
                                       (declare (not safe))
                                       (cons __tmp301342 _g293887293896_)))))
                              (declare (not safe))
                              (foldr* __tmp301341
                                      '()
                                      _L293865_
                                      _L293867_
                                      _L293868_)))))
                     (declare (not safe))
                     (cons __tmp301347 __tmp301340)))
                 _symbol293763293857_
                 _method293764293860_
                 _type-t293765293862_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293756293803_
                                         _target293753293797_
                                         '()
                                         '()
                                         '()))
                                      (_g293745293780_ _g293746293784_)))))
                            (_g293745293780_ _g293746293784_))))
                    (_g293745293780_ _g293746293784_)))))
        (_g293744293899_ _$stx293741_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx293904_)
      (let* ((_g293908293941_
              (lambda (_g293909293937_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293909293937_))))
             (_g293907294055_
              (lambda (_g293909293945_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293909293945_))
                    (let ((_e293915293948_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293909293945_))))
                      (let ((_hd293914293952_
                             (let ()
                               (declare (not safe))
                               (##car _e293915293948_)))
                            (_tl293913293955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293915293948_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293913293955_))
                            (let ((_e293918293958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293913293955_))))
                              (let ((_hd293917293962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293918293958_)))
                                    (_tl293916293965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293918293958_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl293916293965_))
                                    (let ((_g301348_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl293916293965_
                                              '0))))
                                      (begin
                                        (let ((_g301349_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301348_)
                                                     (##vector-length
                                                      _g301348_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301349_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301349_)))
                                        (let ((_target293919293968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301348_ 0)))
                                              (_tl293921293971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301348_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293921293971_))
                                              (letrec ((_loop293922293974_
                                                        (lambda (_hd293920293978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol293926293981_
                         _method293927293983_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd293920293978_))
                      (let ((_e293923293986_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd293920293978_))))
                        (let ((_lp-hd293924293990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293923293986_)))
                              (_lp-tl293925293993_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293923293986_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd293924293990_))
                              (let ((_e293932293996_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd293924293990_))))
                                (let ((_hd293931294000_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293932293996_)))
                                      (_tl293930294003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293932293996_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293930294003_))
                                      (let ((_e293935294006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293930294003_))))
                                        (let ((_hd293934294010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293935294006_)))
                                              (_tl293933294013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293935294006_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293933294013_))
                                              (_loop293922293974_
                                               _lp-tl293925293993_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293934294010_
                                                       _symbol293926293981_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293931294000_
                                                       _method293927293983_)))
                                              (_g293908293941_
                                               _g293909293945_))))
                                      (_g293908293941_ _g293909293945_))))
                              (_g293908293941_ _g293909293945_))))
                      (let ((_symbol293928294016_
                             (reverse _symbol293926293981_))
                            (_method293929294019_
                             (reverse _method293927293983_)))
                        ((lambda (_L294022_ _L294024_ _L294025_)
                           (let ((__tmp301357
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301350
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294022_
                                       _L294024_))
                                    (let ((__tmp301351
                                           (lambda (_g294043294047_
                                                    _g294044294050_
                                                    _g294045294052_)
                                             (let ((__tmp301352
                                                    (let ((__tmp301356
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301353
                                                           (let ((__tmp301354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301355
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294043294047_ '()))))
                            (declare (not safe))
                            (cons _g294044294050_ __tmp301355))))
                     (declare (not safe))
                     (cons _L294025_ __tmp301354))))
              (declare (not safe))
              (cons __tmp301356 __tmp301353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301352
                                                     _g294045294052_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301351
                                              '()
                                              _L294022_
                                              _L294024_)))))
                             (declare (not safe))
                             (cons __tmp301357 __tmp301350)))
                         _symbol293928294016_
                         _method293929294019_
                         _hd293917293962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop293922293974_
                                                 _target293919293968_
                                                 '()
                                                 '()))
                                              (_g293908293941_
                                               _g293909293945_)))))
                                    (_g293908293941_ _g293909293945_))))
                            (_g293908293941_ _g293909293945_))))
                    (_g293908293941_ _g293909293945_)))))
        (_g293907294055_ _$stx293904_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294060_)
      (let* ((_g294064294078_
              (lambda (_g294065294074_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294065294074_))))
             (_g294063294119_
              (lambda (_g294065294082_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294065294082_))
                    (let ((_e294069294085_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294065294082_))))
                      (let ((_hd294068294089_
                             (let ()
                               (declare (not safe))
                               (##car _e294069294085_)))
                            (_tl294067294092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294069294085_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294067294092_))
                            (let ((_e294072294095_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294067294092_))))
                              (let ((_hd294071294099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294072294095_)))
                                    (_tl294070294102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294072294095_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294070294102_))
                                    ((lambda (_L294105_)
                                       (let ((__tmp301362
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301358
                                              (let ((__tmp301359
                                                     (let ((__tmp301361
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301360
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301361 __tmp301360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301359 '()))))
                                         (declare (not safe))
                                         (cons __tmp301362 __tmp301358)))
                                     _hd294071294099_)
                                    (_g294064294078_ _g294065294082_))))
                            (_g294064294078_ _g294065294082_))))
                    (_g294064294078_ _g294065294082_)))))
        (_g294063294119_ _$stx294060_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294123_)
      (let* ((_g294127294173_
              (lambda (_g294128294169_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294128294169_))))
             (_g294126294326_
              (lambda (_g294128294177_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294128294177_))
                    (let ((_e294140294180_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294128294177_))))
                      (let ((_hd294139294184_
                             (let ()
                               (declare (not safe))
                               (##car _e294140294180_)))
                            (_tl294138294187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294140294180_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294138294187_))
                            (let ((_e294143294190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294138294187_))))
                              (let ((_hd294142294194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294143294190_)))
                                    (_tl294141294197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294143294190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294141294197_))
                                    (let ((_e294146294200_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294141294197_))))
                                      (let ((_hd294145294204_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294146294200_)))
                                            (_tl294144294207_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294146294200_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294144294207_))
                                            (let ((_e294149294210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294144294207_))))
                                              (let ((_hd294148294214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294149294210_)))
                                                    (_tl294147294217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294149294210_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294147294217_))
                                                    (let ((_e294152294220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294147294217_))))
                                                      (let ((_hd294151294224_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294152294220_)))
                    (_tl294150294227_
                     (let () (declare (not safe)) (##cdr _e294152294220_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294150294227_))
                    (let ((_e294155294230_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294150294227_))))
                      (let ((_hd294154294234_
                             (let ()
                               (declare (not safe))
                               (##car _e294155294230_)))
                            (_tl294153294237_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294155294230_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294153294237_))
                            (let ((_e294158294240_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294153294237_))))
                              (let ((_hd294157294244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294158294240_)))
                                    (_tl294156294247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294158294240_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294156294247_))
                                    (let ((_e294161294250_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294156294247_))))
                                      (let ((_hd294160294254_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294161294250_)))
                                            (_tl294159294257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294161294250_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294159294257_))
                                            (let ((_e294164294260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294159294257_))))
                                              (let ((_hd294163294264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294164294260_)))
                                                    (_tl294162294267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294164294260_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294162294267_))
                                                    (let ((_e294167294270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294162294267_))))
                                                      (let ((_hd294166294274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294167294270_)))
                    (_tl294165294277_
                     (let () (declare (not safe)) (##cdr _e294167294270_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294165294277_))
                    ((lambda (_L294280_
                              _L294282_
                              _L294283_
                              _L294284_
                              _L294285_
                              _L294286_
                              _L294287_
                              _L294288_
                              _L294289_)
                       (let ((__tmp301399
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301363
                              (let ((__tmp301396
                                     (let ((__tmp301398
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301397
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294289_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301398 __tmp301397)))
                                    (__tmp301364
                                     (let ((__tmp301393
                                            (let ((__tmp301395
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301394
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294288_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301395 __tmp301394)))
                                           (__tmp301365
                                            (let ((__tmp301390
                                                   (let ((__tmp301392
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301391
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301392
                                                           __tmp301391)))
                                                  (__tmp301366
                                                   (let ((__tmp301387
                                                          (let ((__tmp301389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301388
                         (let () (declare (not safe)) (cons _L294286_ '()))))
                    (declare (not safe))
                    (cons __tmp301389 __tmp301388)))
                 (__tmp301367
                  (let ((__tmp301384
                         (let ((__tmp301386
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301385
                                (let ()
                                  (declare (not safe))
                                  (cons _L294285_ '()))))
                           (declare (not safe))
                           (cons __tmp301386 __tmp301385)))
                        (__tmp301368
                         (let ((__tmp301381
                                (let ((__tmp301383
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301382
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294284_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301383 __tmp301382)))
                               (__tmp301369
                                (let ((__tmp301378
                                       (let ((__tmp301380
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301379
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294283_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301380 __tmp301379)))
                                      (__tmp301370
                                       (let ((__tmp301375
                                              (let ((__tmp301377
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301376
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294282_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301377
                                                      __tmp301376)))
                                             (__tmp301371
                                              (let ((__tmp301372
                                                     (let ((__tmp301374
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301373
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301374 __tmp301373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301372 '()))))
                                         (declare (not safe))
                                         (cons __tmp301375 __tmp301371))))
                                  (declare (not safe))
                                  (cons __tmp301378 __tmp301370))))
                           (declare (not safe))
                           (cons __tmp301381 __tmp301369))))
                    (declare (not safe))
                    (cons __tmp301384 __tmp301368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301387
                                                           __tmp301367))))
                                              (declare (not safe))
                                              (cons __tmp301390 __tmp301366))))
                                       (declare (not safe))
                                       (cons __tmp301393 __tmp301365))))
                                (declare (not safe))
                                (cons __tmp301396 __tmp301364))))
                         (declare (not safe))
                         (cons __tmp301399 __tmp301363)))
                     _hd294166294274_
                     _hd294163294264_
                     _hd294160294254_
                     _hd294157294244_
                     _hd294154294234_
                     _hd294151294224_
                     _hd294148294214_
                     _hd294145294204_
                     _hd294142294194_)
                    (_g294127294173_ _g294128294177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294127294173_
                                                     _g294128294177_))))
                                            (_g294127294173_
                                             _g294128294177_))))
                                    (_g294127294173_ _g294128294177_))))
                            (_g294127294173_ _g294128294177_))))
                    (_g294127294173_ _g294128294177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294127294173_
                                                     _g294128294177_))))
                                            (_g294127294173_
                                             _g294128294177_))))
                                    (_g294127294173_ _g294128294177_))))
                            (_g294127294173_ _g294128294177_))))
                    (_g294127294173_ _g294128294177_)))))
        (_g294126294326_ _$stx294123_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294330_)
      (let* ((_g294334294348_
              (lambda (_g294335294344_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294335294344_))))
             (_g294333294389_
              (lambda (_g294335294352_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294335294352_))
                    (let ((_e294339294355_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294335294352_))))
                      (let ((_hd294338294359_
                             (let ()
                               (declare (not safe))
                               (##car _e294339294355_)))
                            (_tl294337294362_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294339294355_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294337294362_))
                            (let ((_e294342294365_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294337294362_))))
                              (let ((_hd294341294369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294342294365_)))
                                    (_tl294340294372_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294342294365_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294340294372_))
                                    ((lambda (_L294375_)
                                       (let ((__tmp301404
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301400
                                              (let ((__tmp301401
                                                     (let ((__tmp301403
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301402
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301403 __tmp301402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301401 '()))))
                                         (declare (not safe))
                                         (cons __tmp301404 __tmp301400)))
                                     _hd294341294369_)
                                    (_g294334294348_ _g294335294352_))))
                            (_g294334294348_ _g294335294352_))))
                    (_g294334294348_ _g294335294352_)))))
        (_g294333294389_ _$stx294330_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294393_)
      (let* ((_g294397294411_
              (lambda (_g294398294407_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294398294407_))))
             (_g294396294452_
              (lambda (_g294398294415_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294398294415_))
                    (let ((_e294402294418_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294398294415_))))
                      (let ((_hd294401294422_
                             (let ()
                               (declare (not safe))
                               (##car _e294402294418_)))
                            (_tl294400294425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294402294418_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294400294425_))
                            (let ((_e294405294428_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294400294425_))))
                              (let ((_hd294404294432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294405294428_)))
                                    (_tl294403294435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294405294428_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294403294435_))
                                    ((lambda (_L294438_)
                                       (let ((__tmp301409
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301405
                                              (let ((__tmp301406
                                                     (let ((__tmp301408
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301407
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301408 __tmp301407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301406 '()))))
                                         (declare (not safe))
                                         (cons __tmp301409 __tmp301405)))
                                     _hd294404294432_)
                                    (_g294397294411_ _g294398294415_))))
                            (_g294397294411_ _g294398294415_))))
                    (_g294397294411_ _g294398294415_)))))
        (_g294396294452_ _$stx294393_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294456_)
      (let* ((_g294460294482_
              (lambda (_g294461294478_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294461294478_))))
             (_g294459294551_
              (lambda (_g294461294486_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294461294486_))
                    (let ((_e294467294489_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294461294486_))))
                      (let ((_hd294466294493_
                             (let ()
                               (declare (not safe))
                               (##car _e294467294489_)))
                            (_tl294465294496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294467294489_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294465294496_))
                            (let ((_e294470294499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294465294496_))))
                              (let ((_hd294469294503_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294470294499_)))
                                    (_tl294468294506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294470294499_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294468294506_))
                                    (let ((_e294473294509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294468294506_))))
                                      (let ((_hd294472294513_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294473294509_)))
                                            (_tl294471294516_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294473294509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294471294516_))
                                            (let ((_e294476294519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294471294516_))))
                                              (let ((_hd294475294523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294476294519_)))
                                                    (_tl294474294526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294476294519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294474294526_))
                                                    ((lambda (_L294529_
                                                              _L294531_
                                                              _L294532_)
                                                       (let ((__tmp301419
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301410
                      (let ((__tmp301416
                             (let ((__tmp301418
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301417
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294532_ '()))))
                               (declare (not safe))
                               (cons __tmp301418 __tmp301417)))
                            (__tmp301411
                             (let ((__tmp301413
                                    (let ((__tmp301415
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301414
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294531_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301415 __tmp301414)))
                                   (__tmp301412
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294529_ '()))))
                               (declare (not safe))
                               (cons __tmp301413 __tmp301412))))
                        (declare (not safe))
                        (cons __tmp301416 __tmp301411))))
                 (declare (not safe))
                 (cons __tmp301419 __tmp301410)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294475294523_
                                                     _hd294472294513_
                                                     _hd294469294503_)
                                                    (_g294460294482_
                                                     _g294461294486_))))
                                            (_g294460294482_
                                             _g294461294486_))))
                                    (_g294460294482_ _g294461294486_))))
                            (_g294460294482_ _g294461294486_))))
                    (_g294460294482_ _g294461294486_)))))
        (_g294459294551_ _$stx294456_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294555_)
      (let* ((_g294559294581_
              (lambda (_g294560294577_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294560294577_))))
             (_g294558294650_
              (lambda (_g294560294585_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294560294585_))
                    (let ((_e294566294588_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294560294585_))))
                      (let ((_hd294565294592_
                             (let ()
                               (declare (not safe))
                               (##car _e294566294588_)))
                            (_tl294564294595_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294566294588_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294564294595_))
                            (let ((_e294569294598_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294564294595_))))
                              (let ((_hd294568294602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294569294598_)))
                                    (_tl294567294605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294569294598_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294567294605_))
                                    (let ((_e294572294608_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294567294605_))))
                                      (let ((_hd294571294612_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294572294608_)))
                                            (_tl294570294615_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294572294608_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294570294615_))
                                            (let ((_e294575294618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294570294615_))))
                                              (let ((_hd294574294622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294575294618_)))
                                                    (_tl294573294625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294575294618_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294573294625_))
                                                    ((lambda (_L294628_
                                                              _L294630_
                                                              _L294631_)
                                                       (let ((__tmp301429
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301420
                      (let ((__tmp301426
                             (let ((__tmp301428
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301427
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294631_ '()))))
                               (declare (not safe))
                               (cons __tmp301428 __tmp301427)))
                            (__tmp301421
                             (let ((__tmp301423
                                    (let ((__tmp301425
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301424
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294630_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301425 __tmp301424)))
                                   (__tmp301422
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294628_ '()))))
                               (declare (not safe))
                               (cons __tmp301423 __tmp301422))))
                        (declare (not safe))
                        (cons __tmp301426 __tmp301421))))
                 (declare (not safe))
                 (cons __tmp301429 __tmp301420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294574294622_
                                                     _hd294571294612_
                                                     _hd294568294602_)
                                                    (_g294559294581_
                                                     _g294560294585_))))
                                            (_g294559294581_
                                             _g294560294585_))))
                                    (_g294559294581_ _g294560294585_))))
                            (_g294559294581_ _g294560294585_))))
                    (_g294559294581_ _g294560294585_)))))
        (_g294558294650_ _$stx294555_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx294654_)
      (let* ((___stx300937300938_ _$stx294654_)
             (_g294662294730_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300937300938_)))))
        (let ((___kont300940300941_
               (lambda (_L295008_ _L295010_)
                 (let ((__tmp301445
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301430
                        (let ((__tmp301441
                               (let ((__tmp301444
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301442
                                      (let ((__tmp301443
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301443 '()))))
                                 (declare (not safe))
                                 (cons __tmp301444 __tmp301442)))
                              (__tmp301431
                               (let ((__tmp301438
                                      (let ((__tmp301440
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301439
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295010_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301440 __tmp301439)))
                                     (__tmp301432
                                      (let ((__tmp301433
                                             (let ((__tmp301434
                                                    (let ((__tmp301435
                                                           (let ((__tmp301437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301436
                          (let () (declare (not safe)) (cons _L295008_ '()))))
                     (declare (not safe))
                     (cons __tmp301437 __tmp301436))))
              (declare (not safe))
              (cons __tmp301435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295008_ __tmp301434))))
                                        (declare (not safe))
                                        (cons '#f __tmp301433))))
                                 (declare (not safe))
                                 (cons __tmp301438 __tmp301432))))
                          (declare (not safe))
                          (cons __tmp301441 __tmp301431))))
                   (declare (not safe))
                   (cons __tmp301445 __tmp301430))))
              (___kont300942300943_
               (lambda (_L294939_ _L294941_)
                 (let ((__tmp301446
                        (let ((__tmp301447
                               (let ((__tmp301448
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L294939_ __tmp301448))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301447))))
                   (declare (not safe))
                   (cons _L294941_ __tmp301446))))
              (___kont300944300945_
               (lambda (_L294878_ _L294880_)
                 (let ((__tmp301462
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301449
                        (let ((__tmp301458
                               (let ((__tmp301461
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301459
                                      (let ((__tmp301460
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301460 '()))))
                                 (declare (not safe))
                                 (cons __tmp301461 __tmp301459)))
                              (__tmp301450
                               (let ((__tmp301455
                                      (let ((__tmp301457
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301456
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294880_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301457 __tmp301456)))
                                     (__tmp301451
                                      (let ((__tmp301452
                                             (let ((__tmp301454
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301453
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294878_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301454
                                                     __tmp301453))))
                                        (declare (not safe))
                                        (cons __tmp301452 '()))))
                                 (declare (not safe))
                                 (cons __tmp301455 __tmp301451))))
                          (declare (not safe))
                          (cons __tmp301458 __tmp301450))))
                   (declare (not safe))
                   (cons __tmp301462 __tmp301449))))
              (___kont300946300947_
               (lambda (_L294810_ _L294812_)
                 (let ((__tmp301476
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301463
                        (let ((__tmp301472
                               (let ((__tmp301475
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301473
                                      (let ((__tmp301474
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301474 '()))))
                                 (declare (not safe))
                                 (cons __tmp301475 __tmp301473)))
                              (__tmp301464
                               (let ((__tmp301469
                                      (let ((__tmp301471
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301470
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294812_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301471 __tmp301470)))
                                     (__tmp301465
                                      (let ((__tmp301466
                                             (let ((__tmp301468
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301467
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294810_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301468
                                                     __tmp301467))))
                                        (declare (not safe))
                                        (cons __tmp301466 '()))))
                                 (declare (not safe))
                                 (cons __tmp301469 __tmp301465))))
                          (declare (not safe))
                          (cons __tmp301472 __tmp301464))))
                   (declare (not safe))
                   (cons __tmp301476 __tmp301463))))
              (___kont300948300949_
               (lambda (_L294757_ _L294759_)
                 (let ((__tmp301477
                        (let ((__tmp301478
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L294757_ __tmp301478))))
                   (declare (not safe))
                   (cons _L294759_ __tmp301477)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx300937300938_))
              (let ((_e294668294964_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx300937300938_))))
                (let ((_tl294666294971_
                       (let () (declare (not safe)) (##cdr _e294668294964_)))
                      (_hd294667294968_
                       (let () (declare (not safe)) (##car _e294668294964_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl294666294971_))
                      (let ((_e294671294974_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294666294971_))))
                        (let ((_tl294669294981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294671294974_)))
                              (_hd294670294978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294671294974_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294669294981_))
                              (let ((_e294674294984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294669294981_))))
                                (let ((_tl294672294991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294674294984_)))
                                      (_hd294673294988_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294674294984_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd294673294988_))
                                      (let ((_e294675294994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd294673294988_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e294675294994_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl294672294991_))
                                                (let ((_e294678294998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl294672294991_))))
                                                  (let ((_tl294676295005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e294678294998_)))
                                                        (_hd294677295002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e294678294998_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294676295005_))
                                                        (___kont300940300941_
                                                         _hd294677295002_
                                                         _hd294670294978_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd294670294978_))
                                                            (let ((_e294687294925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd294670294978_))))
                      (declare (not safe))
                      (_g294662294730_))
                    (let () (declare (not safe)) (_g294662294730_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd294670294978_))
                                                    (let ((_e294687294925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd294670294978_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e294687294925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294672294991_))
                      (___kont300942300943_ _hd294673294988_ _hd294667294968_)
                      (let () (declare (not safe)) (_g294662294730_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294672294991_))
                      (___kont300946300947_ _hd294673294988_ _hd294670294978_)
                      (let () (declare (not safe)) (_g294662294730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294672294991_))
                                                        (___kont300946300947_
                                                         _hd294673294988_
                                                         _hd294670294978_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g294662294730_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd294670294978_))
                                                (let ((_e294687294925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd294670294978_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e294687294925_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl294672294991_))
                                                          (___kont300942300943_
                                                           _hd294673294988_
                                                           _hd294667294968_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl294672294991_))
                      (let ((_e294705294868_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294672294991_))))
                        (let ((_tl294703294875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294705294868_)))
                              (_hd294704294872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294705294868_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl294703294875_))
                              (___kont300944300945_
                               _hd294704294872_
                               _hd294673294988_)
                              (let ()
                                (declare (not safe))
                                (_g294662294730_)))))
                      (let () (declare (not safe)) (_g294662294730_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl294672294991_))
                  (___kont300946300947_ _hd294673294988_ _hd294670294978_)
                  (let () (declare (not safe)) (_g294662294730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294672294991_))
                                                    (___kont300946300947_
                                                     _hd294673294988_
                                                     _hd294670294978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294662294730_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd294670294978_))
                                          (let ((_e294687294925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd294670294978_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e294687294925_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294672294991_))
                                                    (___kont300942300943_
                                                     _hd294673294988_
                                                     _hd294667294968_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl294672294991_))
                                                        (let ((_e294705294868_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl294672294991_))))
                  (let ((_tl294703294875_
                         (let () (declare (not safe)) (##cdr _e294705294868_)))
                        (_hd294704294872_
                         (let ()
                           (declare (not safe))
                           (##car _e294705294868_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl294703294875_))
                        (___kont300944300945_
                         _hd294704294872_
                         _hd294673294988_)
                        (let () (declare (not safe)) (_g294662294730_)))))
                (let () (declare (not safe)) (_g294662294730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294672294991_))
                                                    (___kont300946300947_
                                                     _hd294673294988_
                                                     _hd294670294978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294662294730_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294672294991_))
                                              (___kont300946300947_
                                               _hd294673294988_
                                               _hd294670294978_)
                                              (let ()
                                                (declare (not safe))
                                                (_g294662294730_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd294670294978_))
                                  (let ((_e294687294925_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd294670294978_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl294669294981_))
                                        (___kont300948300949_
                                         _hd294670294978_
                                         _hd294667294968_)
                                        (let ()
                                          (declare (not safe))
                                          (_g294662294730_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294669294981_))
                                      (___kont300948300949_
                                       _hd294670294978_
                                       _hd294667294968_)
                                      (let ()
                                        (declare (not safe))
                                        (_g294662294730_)))))))
                      (let () (declare (not safe)) (_g294662294730_)))))
              (let () (declare (not safe)) (_g294662294730_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295032_)
      (let* ((___stx301077301078_ _$stx295032_)
             (_g295037295092_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301077301078_)))))
        (let ((___kont301080301081_
               (lambda (_L295277_ _L295279_)
                 (let ((__tmp301494
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301479
                        (let ((__tmp301490
                               (let ((__tmp301493
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301491
                                      (let ((__tmp301492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301492 '()))))
                                 (declare (not safe))
                                 (cons __tmp301493 __tmp301491)))
                              (__tmp301480
                               (let ((__tmp301481
                                      (let ((__tmp301489
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301482
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295277_
                                                  _L295279_))
                                               (let ((__tmp301483
                                                      (lambda (_g295296295300_
                                                               _g295297295303_
                                                               _g295298295305_)
                                                        (let ((__tmp301484
                                                               (let ((__tmp301488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301485
                              (let ((__tmp301486
                                     (let ((__tmp301487
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295296295300_ '()))))
                                       (declare (not safe))
                                       (cons _g295297295303_ __tmp301487))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301486))))
                         (declare (not safe))
                         (cons __tmp301488 __tmp301485))))
                  (declare (not safe))
                  (cons __tmp301484 _g295298295305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301483
                                                         '()
                                                         _L295277_
                                                         _L295279_)))))
                                        (declare (not safe))
                                        (cons __tmp301489 __tmp301482))))
                                 (declare (not safe))
                                 (cons __tmp301481 '()))))
                          (declare (not safe))
                          (cons __tmp301490 __tmp301480))))
                   (declare (not safe))
                   (cons __tmp301494 __tmp301479))))
              (___kont301084301085_
               (lambda (_L295163_ _L295165_)
                 (let ((__tmp301509
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301495
                        (let ((__tmp301505
                               (let ((__tmp301508
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301506
                                      (let ((__tmp301507
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301507 '()))))
                                 (declare (not safe))
                                 (cons __tmp301508 __tmp301506)))
                              (__tmp301496
                               (let ((__tmp301497
                                      (let ((__tmp301504
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301498
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295163_
                                                  _L295165_))
                                               (let ((__tmp301499
                                                      (lambda (_g295180295184_
                                                               _g295181295187_
                                                               _g295182295189_)
                                                        (let ((__tmp301500
                                                               (let ((__tmp301503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301501
                              (let ((__tmp301502
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295180295184_ '()))))
                                (declare (not safe))
                                (cons _g295181295187_ __tmp301502))))
                         (declare (not safe))
                         (cons __tmp301503 __tmp301501))))
                  (declare (not safe))
                  (cons __tmp301500 _g295182295189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301499
                                                         '()
                                                         _L295163_
                                                         _L295165_)))))
                                        (declare (not safe))
                                        (cons __tmp301504 __tmp301498))))
                                 (declare (not safe))
                                 (cons __tmp301497 '()))))
                          (declare (not safe))
                          (cons __tmp301505 __tmp301496))))
                   (declare (not safe))
                   (cons __tmp301509 __tmp301495)))))
          (let* ((___match301128301129_
                  (lambda (_e295069295099_
                           _hd295068295103_
                           _tl295067295106_
                           ___splice301086301087_
                           _target295070295109_
                           _tl295072295112_)
                    (letrec ((_loop295073295115_
                              (lambda (_hd295071295119_
                                       _dispatch295077295122_
                                       _arity295078295124_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295071295119_))
                                    (let ((_e295074295127_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295071295119_))))
                                      (let ((_lp-tl295076295134_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295074295127_)))
                                            (_lp-hd295075295131_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295074295127_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295075295131_))
                                            (let ((_e295083295137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295075295131_))))
                                              (let ((_tl295081295144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295083295137_)))
                                                    (_hd295082295141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295083295137_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295081295144_))
                                                    (let ((_e295086295147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295081295144_))))
                                                      (let ((_tl295084295154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295086295147_)))
                    (_hd295085295151_
                     (let () (declare (not safe)) (##car _e295086295147_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295084295154_))
                    (_loop295073295115_
                     _lp-tl295076295134_
                     (let ()
                       (declare (not safe))
                       (cons _hd295085295151_ _dispatch295077295122_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295082295141_ _arity295078295124_)))
                    (let () (declare (not safe)) (_g295037295092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295037295092_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295037295092_)))))
                                    (let ((_arity295080295160_
                                           (reverse _arity295078295124_))
                                          (_dispatch295079295157_
                                           (reverse _dispatch295077295122_)))
                                      (___kont301084301085_
                                       _dispatch295079295157_
                                       _arity295080295160_))))))
                      (_loop295073295115_ _target295070295109_ '() '()))))
                 (___match301120301121_
                  (lambda (_e295069295099_ _hd295068295103_ _tl295067295106_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295067295106_))
                        (let ((___splice301086301087_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295067295106_
                                  '0))))
                          (let ((_tl295072295112_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301086301087_ '1)))
                                (_target295070295109_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301086301087_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295072295112_))
                                (___match301128301129_
                                 _e295069295099_
                                 _hd295068295103_
                                 _tl295067295106_
                                 ___splice301086301087_
                                 _target295070295109_
                                 _tl295072295112_)
                                (let ()
                                  (declare (not safe))
                                  (_g295037295092_)))))
                        (let () (declare (not safe)) (_g295037295092_)))))
                 (___match301114301115_
                  (lambda (_e295043295199_
                           _hd295042295203_
                           _tl295041295206_
                           _e295046295209_
                           _hd295045295213_
                           _tl295044295216_
                           _e295047295219_
                           ___splice301082301083_
                           _target295048295223_
                           _tl295050295226_)
                    (letrec ((_loop295051295229_
                              (lambda (_hd295049295233_
                                       _dispatch295055295236_
                                       _arity295056295238_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295049295233_))
                                    (let ((_e295052295241_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295049295233_))))
                                      (let ((_lp-tl295054295248_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295052295241_)))
                                            (_lp-hd295053295245_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295052295241_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295053295245_))
                                            (let ((_e295061295251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295053295245_))))
                                              (let ((_tl295059295258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295061295251_)))
                                                    (_hd295060295255_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295061295251_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295059295258_))
                                                    (let ((_e295064295261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295059295258_))))
                                                      (let ((_tl295062295268_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295064295261_)))
                    (_hd295063295265_
                     (let () (declare (not safe)) (##car _e295064295261_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295062295268_))
                    (_loop295051295229_
                     _lp-tl295054295248_
                     (let ()
                       (declare (not safe))
                       (cons _hd295063295265_ _dispatch295055295236_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295060295255_ _arity295056295238_)))
                    (___match301120301121_
                     _e295043295199_
                     _hd295042295203_
                     _tl295041295206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301120301121_
                                                     _e295043295199_
                                                     _hd295042295203_
                                                     _tl295041295206_))))
                                            (___match301120301121_
                                             _e295043295199_
                                             _hd295042295203_
                                             _tl295041295206_))))
                                    (let ((_arity295058295274_
                                           (reverse _arity295056295238_))
                                          (_dispatch295057295271_
                                           (reverse _dispatch295055295236_)))
                                      (___kont301080301081_
                                       _dispatch295057295271_
                                       _arity295058295274_))))))
                      (_loop295051295229_ _target295048295223_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301077301078_))
                (let ((_e295043295199_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301077301078_))))
                  (let ((_tl295041295206_
                         (let () (declare (not safe)) (##cdr _e295043295199_)))
                        (_hd295042295203_
                         (let ()
                           (declare (not safe))
                           (##car _e295043295199_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295041295206_))
                        (let ((_e295046295209_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295041295206_))))
                          (let ((_tl295044295216_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295046295209_)))
                                (_hd295045295213_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295046295209_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295045295213_))
                                (let ((_e295047295219_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295045295213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295047295219_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295044295216_))
                                          (let ((___splice301082301083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295044295216_
                                                    '0))))
                                            (let ((_tl295050295226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301082301083_
                                                      '1)))
                                                  (_target295048295223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301082301083_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295050295226_))
                                                  (___match301114301115_
                                                   _e295043295199_
                                                   _hd295042295203_
                                                   _tl295041295206_
                                                   _e295046295209_
                                                   _hd295045295213_
                                                   _tl295044295216_
                                                   _e295047295219_
                                                   ___splice301082301083_
                                                   _target295048295223_
                                                   _tl295050295226_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295041295206_))
                                                      (let ((___splice301086301087_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295041295206_ '0))))
                (let ((_tl295072295112_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301086301087_ '1)))
                      (_target295070295109_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301086301087_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295072295112_))
                      (___match301128301129_
                       _e295043295199_
                       _hd295042295203_
                       _tl295041295206_
                       ___splice301086301087_
                       _target295070295109_
                       _tl295072295112_)
                      (let () (declare (not safe)) (_g295037295092_)))))
              (let () (declare (not safe)) (_g295037295092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295041295206_))
                                              (let ((___splice301086301087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295041295206_
                                                        '0))))
                                                (let ((_tl295072295112_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301086301087_
                                                          '1)))
                                                      (_target295070295109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301086301087_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295072295112_))
                                                      (___match301128301129_
                                                       _e295043295199_
                                                       _hd295042295203_
                                                       _tl295041295206_
                                                       ___splice301086301087_
                                                       _target295070295109_
                                                       _tl295072295112_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295037295092_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295037295092_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295041295206_))
                                          (let ((___splice301086301087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295041295206_
                                                    '0))))
                                            (let ((_tl295072295112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301086301087_
                                                      '1)))
                                                  (_target295070295109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301086301087_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295072295112_))
                                                  (___match301128301129_
                                                   _e295043295199_
                                                   _hd295042295203_
                                                   _tl295041295206_
                                                   ___splice301086301087_
                                                   _target295070295109_
                                                   _tl295072295112_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295037295092_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295037295092_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295041295206_))
                                    (let ((___splice301086301087_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295041295206_
                                              '0))))
                                      (let ((_tl295072295112_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301086301087_
                                                '1)))
                                            (_target295070295109_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301086301087_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295072295112_))
                                            (___match301128301129_
                                             _e295043295199_
                                             _hd295042295203_
                                             _tl295041295206_
                                             ___splice301086301087_
                                             _target295070295109_
                                             _tl295072295112_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295037295092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295037295092_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295041295206_))
                            (let ((___splice301086301087_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295041295206_
                                      '0))))
                              (let ((_tl295072295112_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301086301087_
                                        '1)))
                                    (_target295070295109_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301086301087_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295072295112_))
                                    (___match301128301129_
                                     _e295043295199_
                                     _hd295042295203_
                                     _tl295041295206_
                                     ___splice301086301087_
                                     _target295070295109_
                                     _tl295072295112_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295037295092_)))))
                            (let () (declare (not safe)) (_g295037295092_))))))
                (let () (declare (not safe)) (_g295037295092_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295314_)
      (let* ((_g295318295336_
              (lambda (_g295319295332_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295319295332_))))
             (_g295317295391_
              (lambda (_g295319295340_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295319295340_))
                    (let ((_e295324295343_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295319295340_))))
                      (let ((_hd295323295347_
                             (let ()
                               (declare (not safe))
                               (##car _e295324295343_)))
                            (_tl295322295350_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295324295343_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295322295350_))
                            (let ((_e295327295353_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295322295350_))))
                              (let ((_hd295326295357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295327295353_)))
                                    (_tl295325295360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295327295353_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295325295360_))
                                    (let ((_e295330295363_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295325295360_))))
                                      (let ((_hd295329295367_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295330295363_)))
                                            (_tl295328295370_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295330295363_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295328295370_))
                                            ((lambda (_L295373_ _L295375_)
                                               (let ((__tmp301523
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301510
                                                      (let ((__tmp301519
                                                             (let ((__tmp301522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301520
                            (let ((__tmp301521
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301521 '()))))
                       (declare (not safe))
                       (cons __tmp301522 __tmp301520)))
                    (__tmp301511
                     (let ((__tmp301516
                            (let ((__tmp301518
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301517
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295375_ '()))))
                              (declare (not safe))
                              (cons __tmp301518 __tmp301517)))
                           (__tmp301512
                            (let ((__tmp301513
                                   (let ((__tmp301515
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301514
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295373_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301515 __tmp301514))))
                              (declare (not safe))
                              (cons __tmp301513 '()))))
                       (declare (not safe))
                       (cons __tmp301516 __tmp301512))))
                (declare (not safe))
                (cons __tmp301519 __tmp301511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301523
                                                       __tmp301510)))
                                             _hd295329295367_
                                             _hd295326295357_)
                                            (_g295318295336_
                                             _g295319295340_))))
                                    (_g295318295336_ _g295319295340_))))
                            (_g295318295336_ _g295319295340_))))
                    (_g295318295336_ _g295319295340_)))))
        (_g295317295391_ _$stx295314_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295395_)
      (let* ((_g295399295417_
              (lambda (_g295400295413_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295400295413_))))
             (_g295398295472_
              (lambda (_g295400295421_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295400295421_))
                    (let ((_e295405295424_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295400295421_))))
                      (let ((_hd295404295428_
                             (let ()
                               (declare (not safe))
                               (##car _e295405295424_)))
                            (_tl295403295431_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295405295424_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295403295431_))
                            (let ((_e295408295434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295403295431_))))
                              (let ((_hd295407295438_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295408295434_)))
                                    (_tl295406295441_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295408295434_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295406295441_))
                                    (let ((_e295411295444_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295406295441_))))
                                      (let ((_hd295410295448_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295411295444_)))
                                            (_tl295409295451_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295411295444_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295409295451_))
                                            ((lambda (_L295454_ _L295456_)
                                               (let ((__tmp301537
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301524
                                                      (let ((__tmp301533
                                                             (let ((__tmp301536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301534
                            (let ((__tmp301535
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301535 '()))))
                       (declare (not safe))
                       (cons __tmp301536 __tmp301534)))
                    (__tmp301525
                     (let ((__tmp301530
                            (let ((__tmp301532
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301531
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295456_ '()))))
                              (declare (not safe))
                              (cons __tmp301532 __tmp301531)))
                           (__tmp301526
                            (let ((__tmp301527
                                   (let ((__tmp301529
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301528
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295454_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301529 __tmp301528))))
                              (declare (not safe))
                              (cons __tmp301527 '()))))
                       (declare (not safe))
                       (cons __tmp301530 __tmp301526))))
                (declare (not safe))
                (cons __tmp301533 __tmp301525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301537
                                                       __tmp301524)))
                                             _hd295410295448_
                                             _hd295407295438_)
                                            (_g295399295417_
                                             _g295400295421_))))
                                    (_g295399295417_ _g295400295421_))))
                            (_g295399295417_ _g295400295421_))))
                    (_g295399295417_ _g295400295421_)))))
        (_g295398295472_ _$stx295395_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295476_)
      (let* ((___stx301131301132_ _$stx295476_)
             (_g295483295554_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301131301132_)))))
        (let ((___kont301134301135_
               (lambda (_L295845_ _L295847_)
                 (let ((__tmp301543
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301538
                        (let ((__tmp301539
                               (let ((__tmp301540
                                      (let ((__tmp301542
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301541
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295845_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301542 __tmp301541))))
                                 (declare (not safe))
                                 (cons __tmp301540 '()))))
                          (declare (not safe))
                          (cons _L295847_ __tmp301539))))
                   (declare (not safe))
                   (cons __tmp301543 __tmp301538))))
              (___kont301136301137_
               (lambda (_L295764_ _L295766_)
                 (let ((__tmp301552
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301544
                        (let ((__tmp301545
                               (let ((__tmp301546
                                      (let ((__tmp301551
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301547
                                             (let ((__tmp301548
                                                    (lambda (_g295785295788_
                                                             _g295786295791_)
                                                      (let ((__tmp301549
                                                             (let ((__tmp301550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295785295788_ __tmp301550))))
                (declare (not safe))
                (cons __tmp301549 _g295786295791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301548
                                                       '()
                                                       _L295764_))))
                                        (declare (not safe))
                                        (cons __tmp301551 __tmp301547))))
                                 (declare (not safe))
                                 (cons __tmp301546 '()))))
                          (declare (not safe))
                          (cons _L295766_ __tmp301545))))
                   (declare (not safe))
                   (cons __tmp301552 __tmp301544))))
              (___kont301140301141_
               (lambda (_L295676_ _L295678_)
                 (let ((__tmp301559
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301553
                        (let ((__tmp301554
                               (let ((__tmp301555
                                      (let ((__tmp301558
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301556
                                             (let ((__tmp301557
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295676_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301557))))
                                        (declare (not safe))
                                        (cons __tmp301558 __tmp301556))))
                                 (declare (not safe))
                                 (cons __tmp301555 '()))))
                          (declare (not safe))
                          (cons _L295678_ __tmp301554))))
                   (declare (not safe))
                   (cons __tmp301559 __tmp301553))))
              (___kont301142301143_
               (lambda (_L295611_ _L295613_)
                 (let ((__tmp301569
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301560
                        (let ((__tmp301561
                               (let ((__tmp301562
                                      (let ((__tmp301568
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301563
                                             (let ((__tmp301564
                                                    (let ((__tmp301565
                                                           (lambda (_g295630295633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295631295636_)
                     (let ((__tmp301566
                            (let ((__tmp301567
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295630295633_ __tmp301567))))
                       (declare (not safe))
                       (cons __tmp301566 _g295631295636_)))))
              (declare (not safe))
              (foldr1 __tmp301565 '() _L295611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301564))))
                                        (declare (not safe))
                                        (cons __tmp301568 __tmp301563))))
                                 (declare (not safe))
                                 (cons __tmp301562 '()))))
                          (declare (not safe))
                          (cons _L295613_ __tmp301561))))
                   (declare (not safe))
                   (cons __tmp301569 __tmp301560)))))
          (let* ((___match301250301251_
                  (lambda (_e295536295561_
                           _hd295535295565_
                           _tl295534295568_
                           _e295539295571_
                           _hd295538295575_
                           _tl295537295578_
                           ___splice301144301145_
                           _target295540295581_
                           _tl295542295584_)
                    (letrec ((_loop295543295587_
                              (lambda (_hd295541295591_ _arity295547295594_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295541295591_))
                                    (let ((_e295544295597_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295541295591_))))
                                      (let ((_lp-tl295546295604_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295544295597_)))
                                            (_lp-hd295545295601_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295544295597_))))
                                        (_loop295543295587_
                                         _lp-tl295546295604_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295545295601_
                                                 _arity295547295594_)))))
                                    (let ((_arity295548295607_
                                           (reverse _arity295547295594_)))
                                      (___kont301142301143_
                                       _arity295548295607_
                                       _hd295538295575_))))))
                      (_loop295543295587_ _target295540295581_ '()))))
                 (___match301210301211_
                  (lambda (_e295504295700_
                           _hd295503295704_
                           _tl295502295707_
                           _e295507295710_
                           _hd295506295714_
                           _tl295505295717_
                           _e295510295720_
                           _hd295509295724_
                           _tl295508295727_
                           _e295511295730_
                           ___splice301138301139_
                           _target295512295734_
                           _tl295514295737_)
                    (letrec ((_loop295515295740_
                              (lambda (_hd295513295744_ _arity295519295747_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295513295744_))
                                    (let ((_e295516295750_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295513295744_))))
                                      (let ((_lp-tl295518295757_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295516295750_)))
                                            (_lp-hd295517295754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295516295750_))))
                                        (_loop295515295740_
                                         _lp-tl295518295757_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295517295754_
                                                 _arity295519295747_)))))
                                    (let ((_arity295520295760_
                                           (reverse _arity295519295747_)))
                                      (___kont301136301137_
                                       _arity295520295760_
                                       _hd295506295714_))))))
                      (_loop295515295740_ _target295512295734_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301131301132_))
                (let ((_e295489295801_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301131301132_))))
                  (let ((_tl295487295808_
                         (let () (declare (not safe)) (##cdr _e295489295801_)))
                        (_hd295488295805_
                         (let ()
                           (declare (not safe))
                           (##car _e295489295801_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295487295808_))
                        (let ((_e295492295811_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295487295808_))))
                          (let ((_tl295490295818_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295492295811_)))
                                (_hd295491295815_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295492295811_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295490295818_))
                                (let ((_e295495295821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295490295818_))))
                                  (let ((_tl295493295828_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295495295821_)))
                                        (_hd295494295825_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295495295821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295494295825_))
                                        (let ((_e295496295831_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295494295825_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295496295831_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295493295828_))
                                                  (let ((_e295499295835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295493295828_))))
                                                    (let ((_tl295497295842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295499295835_)))
                                                          (_hd295498295839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295499295835_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295497295842_))
                                                          (___kont301134301135_
                                                           _hd295498295839_
                                                           _hd295491295815_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295493295828_))
                      (let ((___splice301138301139_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295493295828_ '0))))
                        (let ((_tl295514295737_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301138301139_ '1)))
                              (_target295512295734_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301138301139_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295514295737_))
                              (___match301210301211_
                               _e295489295801_
                               _hd295488295805_
                               _tl295487295808_
                               _e295492295811_
                               _hd295491295815_
                               _tl295490295818_
                               _e295495295821_
                               _hd295494295825_
                               _tl295493295828_
                               _e295496295831_
                               ___splice301138301139_
                               _target295512295734_
                               _tl295514295737_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295490295818_))
                                  (let ((___splice301144301145_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295490295818_
                                            '0))))
                                    (let ((_tl295542295584_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301144301145_
                                              '1)))
                                          (_target295540295581_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301144301145_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295542295584_))
                                          (___match301250301251_
                                           _e295489295801_
                                           _hd295488295805_
                                           _tl295487295808_
                                           _e295492295811_
                                           _hd295491295815_
                                           _tl295490295818_
                                           ___splice301144301145_
                                           _target295540295581_
                                           _tl295542295584_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295483295554_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295483295554_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295490295818_))
                          (let ((___splice301144301145_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295490295818_
                                    '0))))
                            (let ((_tl295542295584_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301144301145_ '1)))
                                  (_target295540295581_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301144301145_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295542295584_))
                                  (___match301250301251_
                                   _e295489295801_
                                   _hd295488295805_
                                   _tl295487295808_
                                   _e295492295811_
                                   _hd295491295815_
                                   _tl295490295818_
                                   ___splice301144301145_
                                   _target295540295581_
                                   _tl295542295584_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295483295554_)))))
                          (let () (declare (not safe)) (_g295483295554_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295493295828_))
                                                      (let ((___splice301138301139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295493295828_ '0))))
                (let ((_tl295514295737_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301138301139_ '1)))
                      (_target295512295734_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301138301139_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295514295737_))
                      (___match301210301211_
                       _e295489295801_
                       _hd295488295805_
                       _tl295487295808_
                       _e295492295811_
                       _hd295491295815_
                       _tl295490295818_
                       _e295495295821_
                       _hd295494295825_
                       _tl295493295828_
                       _e295496295831_
                       ___splice301138301139_
                       _target295512295734_
                       _tl295514295737_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295493295828_))
                          (___kont301140301141_
                           _hd295494295825_
                           _hd295491295815_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295490295818_))
                              (let ((___splice301144301145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295490295818_
                                        '0))))
                                (let ((_tl295542295584_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301144301145_
                                          '1)))
                                      (_target295540295581_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301144301145_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295542295584_))
                                      (___match301250301251_
                                       _e295489295801_
                                       _hd295488295805_
                                       _tl295487295808_
                                       _e295492295811_
                                       _hd295491295815_
                                       _tl295490295818_
                                       ___splice301144301145_
                                       _target295540295581_
                                       _tl295542295584_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295483295554_)))))
                              (let ()
                                (declare (not safe))
                                (_g295483295554_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295493295828_))
                  (___kont301140301141_ _hd295494295825_ _hd295491295815_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295490295818_))
                      (let ((___splice301144301145_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295490295818_ '0))))
                        (let ((_tl295542295584_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301144301145_ '1)))
                              (_target295540295581_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301144301145_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295542295584_))
                              (___match301250301251_
                               _e295489295801_
                               _hd295488295805_
                               _tl295487295808_
                               _e295492295811_
                               _hd295491295815_
                               _tl295490295818_
                               ___splice301144301145_
                               _target295540295581_
                               _tl295542295584_)
                              (let ()
                                (declare (not safe))
                                (_g295483295554_)))))
                      (let () (declare (not safe)) (_g295483295554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295493295828_))
                                                  (___kont301140301141_
                                                   _hd295494295825_
                                                   _hd295491295815_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295490295818_))
                                                      (let ((___splice301144301145_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295490295818_ '0))))
                (let ((_tl295542295584_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301144301145_ '1)))
                      (_target295540295581_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301144301145_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295542295584_))
                      (___match301250301251_
                       _e295489295801_
                       _hd295488295805_
                       _tl295487295808_
                       _e295492295811_
                       _hd295491295815_
                       _tl295490295818_
                       ___splice301144301145_
                       _target295540295581_
                       _tl295542295584_)
                      (let () (declare (not safe)) (_g295483295554_)))))
              (let () (declare (not safe)) (_g295483295554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295493295828_))
                                            (___kont301140301141_
                                             _hd295494295825_
                                             _hd295491295815_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295490295818_))
                                                (let ((___splice301144301145_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295490295818_
                                                          '0))))
                                                  (let ((_tl295542295584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301144301145_
                                                            '1)))
                                                        (_target295540295581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301144301145_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295542295584_))
                                                        (___match301250301251_
                                                         _e295489295801_
                                                         _hd295488295805_
                                                         _tl295487295808_
                                                         _e295492295811_
                                                         _hd295491295815_
                                                         _tl295490295818_
                                                         ___splice301144301145_
                                                         _target295540295581_
                                                         _tl295542295584_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295483295554_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295483295554_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295490295818_))
                                    (let ((___splice301144301145_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295490295818_
                                              '0))))
                                      (let ((_tl295542295584_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301144301145_
                                                '1)))
                                            (_target295540295581_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301144301145_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295542295584_))
                                            (___match301250301251_
                                             _e295489295801_
                                             _hd295488295805_
                                             _tl295487295808_
                                             _e295492295811_
                                             _hd295491295815_
                                             _tl295490295818_
                                             ___splice301144301145_
                                             _target295540295581_
                                             _tl295542295584_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295483295554_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295483295554_))))))
                        (let () (declare (not safe)) (_g295483295554_)))))
                (let () (declare (not safe)) (_g295483295554_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx295871_)
      (let* ((___stx301253301254_ _$stx295871_)
             (_g295876295911_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301253301254_)))))
        (let ((___kont301256301257_
               (lambda (_L296033_ _L296035_)
                 (let ((__tmp301575
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301570
                        (let ((__tmp301571
                               (let ((__tmp301572
                                      (let ((__tmp301574
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301573
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296033_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301574 __tmp301573))))
                                 (declare (not safe))
                                 (cons __tmp301572 '()))))
                          (declare (not safe))
                          (cons _L296035_ __tmp301571))))
                   (declare (not safe))
                   (cons __tmp301575 __tmp301570))))
              (___kont301258301259_
               (lambda (_L295968_ _L295970_)
                 (let ((__tmp301584
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301576
                        (let ((__tmp301577
                               (let ((__tmp301578
                                      (let ((__tmp301583
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301579
                                             (let ((__tmp301580
                                                    (lambda (_g295987295990_
                                                             _g295988295993_)
                                                      (let ((__tmp301581
                                                             (let ((__tmp301582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295987295990_ __tmp301582))))
                (declare (not safe))
                (cons __tmp301581 _g295988295993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301580
                                                       '()
                                                       _L295968_))))
                                        (declare (not safe))
                                        (cons __tmp301583 __tmp301579))))
                                 (declare (not safe))
                                 (cons __tmp301578 '()))))
                          (declare (not safe))
                          (cons _L295970_ __tmp301577))))
                   (declare (not safe))
                   (cons __tmp301584 __tmp301576)))))
          (let ((___match301302301303_
                 (lambda (_e295893295918_
                          _hd295892295922_
                          _tl295891295925_
                          _e295896295928_
                          _hd295895295932_
                          _tl295894295935_
                          ___splice301260301261_
                          _target295897295938_
                          _tl295899295941_)
                   (letrec ((_loop295900295944_
                             (lambda (_hd295898295948_ _arity295904295951_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd295898295948_))
                                   (let ((_e295901295954_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd295898295948_))))
                                     (let ((_lp-tl295903295961_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e295901295954_)))
                                           (_lp-hd295902295958_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e295901295954_))))
                                       (_loop295900295944_
                                        _lp-tl295903295961_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd295902295958_
                                                _arity295904295951_)))))
                                   (let ((_arity295905295964_
                                          (reverse _arity295904295951_)))
                                     (___kont301258301259_
                                      _arity295905295964_
                                      _hd295895295932_))))))
                     (_loop295900295944_ _target295897295938_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301253301254_))
                (let ((_e295882296003_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301253301254_))))
                  (let ((_tl295880296010_
                         (let () (declare (not safe)) (##cdr _e295882296003_)))
                        (_hd295881296007_
                         (let ()
                           (declare (not safe))
                           (##car _e295882296003_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295880296010_))
                        (let ((_e295885296013_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295880296010_))))
                          (let ((_tl295883296020_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295885296013_)))
                                (_hd295884296017_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295885296013_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295883296020_))
                                (let ((_e295888296023_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295883296020_))))
                                  (let ((_tl295886296030_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295888296023_)))
                                        (_hd295887296027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295888296023_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295886296030_))
                                        (___kont301256301257_
                                         _hd295887296027_
                                         _hd295884296017_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl295883296020_))
                                            (let ((___splice301260301261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl295883296020_
                                                      '0))))
                                              (let ((_tl295899295941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301260301261_
                                                        '1)))
                                                    (_target295897295938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301260301261_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295899295941_))
                                                    (___match301302301303_
                                                     _e295882296003_
                                                     _hd295881296007_
                                                     _tl295880296010_
                                                     _e295885296013_
                                                     _hd295884296017_
                                                     _tl295883296020_
                                                     ___splice301260301261_
                                                     _target295897295938_
                                                     _tl295899295941_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295876295911_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295876295911_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295883296020_))
                                    (let ((___splice301260301261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295883296020_
                                              '0))))
                                      (let ((_tl295899295941_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301260301261_
                                                '1)))
                                            (_target295897295938_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301260301261_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295899295941_))
                                            (___match301302301303_
                                             _e295882296003_
                                             _hd295881296007_
                                             _tl295880296010_
                                             _e295885296013_
                                             _hd295884296017_
                                             _tl295883296020_
                                             ___splice301260301261_
                                             _target295897295938_
                                             _tl295899295941_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295876295911_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295876295911_))))))
                        (let () (declare (not safe)) (_g295876295911_)))))
                (let () (declare (not safe)) (_g295876295911_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296055_)
      (let* ((_g296059296094_
              (lambda (_g296060296090_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296060296090_))))
             (_g296058296222_
              (lambda (_g296060296098_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296060296098_))
                    (let ((_e296065296101_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296060296098_))))
                      (let ((_hd296064296105_
                             (let ()
                               (declare (not safe))
                               (##car _e296065296101_)))
                            (_tl296063296108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296065296101_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296063296108_))
                            (let ((_g301585_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296063296108_
                                      '0))))
                              (begin
                                (let ((_g301586_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301585_)
                                             (##vector-length _g301585_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301586_ 2)))
                                      (error "Context expects 2 values"
                                             _g301586_)))
                                (let ((_target296066296111_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301585_ 0)))
                                      (_tl296068296114_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301585_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296068296114_))
                                      (letrec ((_loop296069296117_
                                                (lambda (_hd296067296121_
                                                         _arity296073296124_
                                                         _prim296074296126_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296067296121_))
                                                      (let ((_e296070296129_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296067296121_))))
                (let ((_lp-hd296071296133_
                       (let () (declare (not safe)) (##car _e296070296129_)))
                      (_lp-tl296072296136_
                       (let () (declare (not safe)) (##cdr _e296070296129_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296071296133_))
                      (let ((_e296079296139_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296071296133_))))
                        (let ((_hd296078296143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296079296139_)))
                              (_tl296077296146_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296079296139_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296077296146_))
                              (let ((_g301595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296077296146_
                                        '0))))
                                (begin
                                  (let ((_g301596_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301595_)
                                               (##vector-length _g301595_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301596_ 2)))
                                        (error "Context expects 2 values"
                                               _g301596_)))
                                  (let ((_target296080296149_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301595_ 0)))
                                        (_tl296082296152_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301595_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296082296152_))
                                        (letrec ((_loop296083296155_
                                                  (lambda (_hd296081296159_
                                                           _arity296087296162_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296081296159_))
                                                        (let ((_e296084296165_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296081296159_))))
                  (let ((_lp-hd296085296169_
                         (let () (declare (not safe)) (##car _e296084296165_)))
                        (_lp-tl296086296172_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296084296165_))))
                    (_loop296083296155_
                     _lp-tl296086296172_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296085296169_ _arity296087296162_)))))
                (let ((_arity296088296175_ (reverse _arity296087296162_)))
                  (_loop296069296117_
                   _lp-tl296072296136_
                   (let ()
                     (declare (not safe))
                     (cons _arity296088296175_ _arity296073296124_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296078296143_ _prim296074296126_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296083296155_
                                           _target296080296149_
                                           '()))
                                        (_g296059296094_ _g296060296098_)))))
                              (_g296059296094_ _g296060296098_))))
                      (_g296059296094_ _g296060296098_))))
              (let ((_arity296075296179_ (reverse _arity296073296124_))
                    (_prim296076296182_ (reverse _prim296074296126_)))
                ((lambda (_L296185_ _L296187_)
                   (let ((__tmp301594
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301587
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296185_
                               _L296187_))
                            (let ((__tmp301588
                                   (lambda (_g296202296208_
                                            _g296203296211_
                                            _g296204296213_)
                                     (let ((__tmp301589
                                            (let ((__tmp301593
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301590
                                                   (let ((__tmp301591
                                                          (let ((__tmp301592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296205296216_ _g296206296219_)
                           (let ()
                             (declare (not safe))
                             (cons _g296205296216_ _g296206296219_)))))
                    (declare (not safe))
                    (foldr1 __tmp301592 '() _g296202296208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296203296211_
                                                           __tmp301591))))
                                              (declare (not safe))
                                              (cons __tmp301593 __tmp301590))))
                                       (declare (not safe))
                                       (cons __tmp301589 _g296204296213_)))))
                              (declare (not safe))
                              (foldr2 __tmp301588 '() _L296185_ _L296187_)))))
                     (declare (not safe))
                     (cons __tmp301594 __tmp301587)))
                 _arity296075296179_
                 _prim296076296182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296069296117_
                                         _target296066296111_
                                         '()
                                         '()))
                                      (_g296059296094_ _g296060296098_)))))
                            (_g296059296094_ _g296060296098_))))
                    (_g296059296094_ _g296060296098_)))))
        (_g296058296222_ _$stx296055_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296228_)
      (let* ((_g296232296267_
              (lambda (_g296233296263_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296233296263_))))
             (_g296231296395_
              (lambda (_g296233296271_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296233296271_))
                    (let ((_e296238296274_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296233296271_))))
                      (let ((_hd296237296278_
                             (let ()
                               (declare (not safe))
                               (##car _e296238296274_)))
                            (_tl296236296281_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296238296274_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296236296281_))
                            (let ((_g301597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296236296281_
                                      '0))))
                              (begin
                                (let ((_g301598_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301597_)
                                             (##vector-length _g301597_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301598_ 2)))
                                      (error "Context expects 2 values"
                                             _g301598_)))
                                (let ((_target296239296284_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301597_ 0)))
                                      (_tl296241296287_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301597_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296241296287_))
                                      (letrec ((_loop296242296290_
                                                (lambda (_hd296240296294_
                                                         _arity296246296297_
                                                         _prim296247296299_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296240296294_))
                                                      (let ((_e296243296302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296240296294_))))
                (let ((_lp-hd296244296306_
                       (let () (declare (not safe)) (##car _e296243296302_)))
                      (_lp-tl296245296309_
                       (let () (declare (not safe)) (##cdr _e296243296302_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296244296306_))
                      (let ((_e296252296312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296244296306_))))
                        (let ((_hd296251296316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296252296312_)))
                              (_tl296250296319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296252296312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296250296319_))
                              (let ((_g301607_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296250296319_
                                        '0))))
                                (begin
                                  (let ((_g301608_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301607_)
                                               (##vector-length _g301607_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301608_ 2)))
                                        (error "Context expects 2 values"
                                               _g301608_)))
                                  (let ((_target296253296322_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301607_ 0)))
                                        (_tl296255296325_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301607_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296255296325_))
                                        (letrec ((_loop296256296328_
                                                  (lambda (_hd296254296332_
                                                           _arity296260296335_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296254296332_))
                                                        (let ((_e296257296338_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296254296332_))))
                  (let ((_lp-hd296258296342_
                         (let () (declare (not safe)) (##car _e296257296338_)))
                        (_lp-tl296259296345_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296257296338_))))
                    (_loop296256296328_
                     _lp-tl296259296345_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296258296342_ _arity296260296335_)))))
                (let ((_arity296261296348_ (reverse _arity296260296335_)))
                  (_loop296242296290_
                   _lp-tl296245296309_
                   (let ()
                     (declare (not safe))
                     (cons _arity296261296348_ _arity296246296297_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296251296316_ _prim296247296299_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296256296328_
                                           _target296253296322_
                                           '()))
                                        (_g296232296267_ _g296233296271_)))))
                              (_g296232296267_ _g296233296271_))))
                      (_g296232296267_ _g296233296271_))))
              (let ((_arity296248296352_ (reverse _arity296246296297_))
                    (_prim296249296355_ (reverse _prim296247296299_)))
                ((lambda (_L296358_ _L296360_)
                   (let ((__tmp301606
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301599
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296358_
                               _L296360_))
                            (let ((__tmp301600
                                   (lambda (_g296375296381_
                                            _g296376296384_
                                            _g296377296386_)
                                     (let ((__tmp301601
                                            (let ((__tmp301605
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301602
                                                   (let ((__tmp301603
                                                          (let ((__tmp301604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296378296389_ _g296379296392_)
                           (let ()
                             (declare (not safe))
                             (cons _g296378296389_ _g296379296392_)))))
                    (declare (not safe))
                    (foldr1 __tmp301604 '() _g296375296381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296376296384_
                                                           __tmp301603))))
                                              (declare (not safe))
                                              (cons __tmp301605 __tmp301602))))
                                       (declare (not safe))
                                       (cons __tmp301601 _g296377296386_)))))
                              (declare (not safe))
                              (foldr2 __tmp301600 '() _L296358_ _L296360_)))))
                     (declare (not safe))
                     (cons __tmp301606 __tmp301599)))
                 _arity296248296352_
                 _prim296249296355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296242296290_
                                         _target296239296284_
                                         '()
                                         '()))
                                      (_g296232296267_ _g296233296271_)))))
                            (_g296232296267_ _g296233296271_))))
                    (_g296232296267_ _g296233296271_)))))
        (_g296231296395_ _$stx296228_)))))
