(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx301803_)
      (let* ((_g301807301825_
              (lambda (_g301808301821_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301808301821_))))
             (_g301806301880_
              (lambda (_g301808301829_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301808301829_))
                    (let ((_e301813301832_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301808301829_))))
                      (let ((_hd301812301836_
                             (let ()
                               (declare (not safe))
                               (##car _e301813301832_)))
                            (_tl301811301839_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301813301832_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301811301839_))
                            (let ((_e301816301842_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301811301839_))))
                              (let ((_hd301815301846_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301816301842_)))
                                    (_tl301814301849_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301816301842_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301814301849_))
                                    (let ((_e301819301852_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301814301849_))))
                                      (let ((_hd301818301856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301819301852_)))
                                            (_tl301817301859_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301819301852_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl301817301859_))
                                            ((lambda (_L301862_ _L301864_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L301864_))
                                                   (let ((__tmp309411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp309406
                                                          (let ((__tmp309408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp309410
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp309409
                                (let ()
                                  (declare (not safe))
                                  (cons _L301864_ '()))))
                           (declare (not safe))
                           (cons __tmp309410 __tmp309409)))
                        (__tmp309407
                         (let () (declare (not safe)) (cons _L301862_ '()))))
                    (declare (not safe))
                    (cons __tmp309408 __tmp309407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp309411
                                                           __tmp309406))
                                                   (_g301807301825_
                                                    _g301808301829_)))
                                             _hd301818301856_
                                             _hd301815301846_)
                                            (_g301807301825_
                                             _g301808301829_))))
                                    (_g301807301825_ _g301808301829_))))
                            (_g301807301825_ _g301808301829_))))
                    (_g301807301825_ _g301808301829_)))))
        (_g301806301880_ _$stx301803_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx301884_)
      (let* ((_g301888301917_
              (lambda (_g301889301913_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301889301913_))))
             (_g301887302017_
              (lambda (_g301889301921_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301889301921_))
                    (let ((_e301894301924_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301889301921_))))
                      (let ((_hd301893301928_
                             (let ()
                               (declare (not safe))
                               (##car _e301894301924_)))
                            (_tl301892301931_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301894301924_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301892301931_))
                            (let ((_g309412_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301892301931_
                                      '0))))
                              (begin
                                (let ((_g309413_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309412_)
                                             (##vector-length _g309412_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309413_ 2)))
                                      (error "Context expects 2 values"
                                             _g309413_)))
                                (let ((_target301895301934_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309412_ 0)))
                                      (_tl301897301937_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309412_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301897301937_))
                                      (letrec ((_loop301898301940_
                                                (lambda (_hd301896301944_
                                                         _type301902301947_
                                                         _symbol301903301949_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301896301944_))
                                                      (let ((_e301899301952_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301896301944_))))
                (let ((_lp-hd301900301956_
                       (let () (declare (not safe)) (##car _e301899301952_)))
                      (_lp-tl301901301959_
                       (let () (declare (not safe)) (##cdr _e301899301952_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301900301956_))
                      (let ((_e301908301962_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301900301956_))))
                        (let ((_hd301907301966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301908301962_)))
                              (_tl301906301969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301908301962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl301906301969_))
                              (let ((_e301911301972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl301906301969_))))
                                (let ((_hd301910301976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e301911301972_)))
                                      (_tl301909301979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e301911301972_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301909301979_))
                                      (_loop301898301940_
                                       _lp-tl301901301959_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd301910301976_
                                               _type301902301947_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd301907301966_
                                               _symbol301903301949_)))
                                      (_g301888301917_ _g301889301921_))))
                              (_g301888301917_ _g301889301921_))))
                      (_g301888301917_ _g301889301921_))))
              (let ((_type301904301982_ (reverse _type301902301947_))
                    (_symbol301905301985_ (reverse _symbol301903301949_)))
                ((lambda (_L301988_ _L301990_)
                   (let ((__tmp309420
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309414
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301988_
                               _L301990_))
                            (let ((__tmp309415
                                   (lambda (_g302005302009_
                                            _g302006302012_
                                            _g302007302014_)
                                     (let ((__tmp309416
                                            (let ((__tmp309419
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp309417
                                                   (let ((__tmp309418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g302005302009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g302006302012_
                                                           __tmp309418))))
                                              (declare (not safe))
                                              (cons __tmp309419 __tmp309417))))
                                       (declare (not safe))
                                       (cons __tmp309416 _g302007302014_)))))
                              (declare (not safe))
                              (foldr2 __tmp309415 '() _L301988_ _L301990_)))))
                     (declare (not safe))
                     (cons __tmp309420 __tmp309414)))
                 _type301904301982_
                 _symbol301905301985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301898301940_
                                         _target301895301934_
                                         '()
                                         '()))
                                      (_g301888301917_ _g301889301921_)))))
                            (_g301888301917_ _g301889301921_))))
                    (_g301888301917_ _g301889301921_)))))
        (_g301887302017_ _$stx301884_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx302022_)
      (let* ((___stx308971308972_ _$stx302022_)
             (_g302027302069_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308971308972_)))))
        (let ((___kont308974308975_
               (lambda (_L302197_ _L302199_ _L302200_ _L302201_)
                 (let ((__tmp309434
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp309421
                        (let ((__tmp309431
                               (let ((__tmp309433
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309432
                                      (let ()
                                        (declare (not safe))
                                        (cons _L302201_ '()))))
                                 (declare (not safe))
                                 (cons __tmp309433 __tmp309432)))
                              (__tmp309422
                               (let ((__tmp309428
                                      (let ((__tmp309430
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309429
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302200_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309430 __tmp309429)))
                                     (__tmp309423
                                      (let ((__tmp309425
                                             (let ((__tmp309427
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309426
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302199_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309427 __tmp309426)))
                                            (__tmp309424
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302197_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309425 __tmp309424))))
                                 (declare (not safe))
                                 (cons __tmp309428 __tmp309423))))
                          (declare (not safe))
                          (cons __tmp309431 __tmp309422))))
                   (declare (not safe))
                   (cons __tmp309434 __tmp309421))))
              (___kont308976308977_
               (lambda (_L302116_ _L302118_ _L302119_ _L302120_)
                 (let ((__tmp309435
                        (let ((__tmp309436
                               (let ((__tmp309437
                                      (let ((__tmp309438
                                             (let ((__tmp309439
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp309439 '()))))
                                        (declare (not safe))
                                        (cons _L302116_ __tmp309438))))
                                 (declare (not safe))
                                 (cons _L302118_ __tmp309437))))
                          (declare (not safe))
                          (cons _L302119_ __tmp309436))))
                   (declare (not safe))
                   (cons _L302120_ __tmp309435)))))
          (let ((___match309010309011_
                 (lambda (_e302035302147_
                          _hd302034302151_
                          _tl302033302154_
                          _e302038302157_
                          _hd302037302161_
                          _tl302036302164_
                          _e302041302167_
                          _hd302040302171_
                          _tl302039302174_
                          _e302044302177_
                          _hd302043302181_
                          _tl302042302184_
                          _e302047302187_
                          _hd302046302191_
                          _tl302045302194_)
                   (let ((_L302197_ _hd302046302191_)
                         (_L302199_ _hd302043302181_)
                         (_L302200_ _hd302040302171_)
                         (_L302201_ _hd302037302161_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L302201_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L302200_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L302199_)))
                         (___kont308974308975_
                          _L302197_
                          _L302199_
                          _L302200_
                          _L302201_)
                         (let () (declare (not safe)) (_g302027302069_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx308971308972_))
                (let ((_e302035302147_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx308971308972_))))
                  (let ((_tl302033302154_
                         (let () (declare (not safe)) (##cdr _e302035302147_)))
                        (_hd302034302151_
                         (let ()
                           (declare (not safe))
                           (##car _e302035302147_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl302033302154_))
                        (let ((_e302038302157_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl302033302154_))))
                          (let ((_tl302036302164_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e302038302157_)))
                                (_hd302037302161_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e302038302157_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl302036302164_))
                                (let ((_e302041302167_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl302036302164_))))
                                  (let ((_tl302039302174_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e302041302167_)))
                                        (_hd302040302171_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e302041302167_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl302039302174_))
                                        (let ((_e302044302177_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl302039302174_))))
                                          (let ((_tl302042302184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e302044302177_)))
                                                (_hd302043302181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e302044302177_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl302042302184_))
                                                (let ((_e302047302187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl302042302184_))))
                                                  (let ((_tl302045302194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e302047302187_)))
                                                        (_hd302046302191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e302047302187_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl302045302194_))
                                                        (___match309010309011_
                                                         _e302035302147_
                                                         _hd302034302151_
                                                         _tl302033302154_
                                                         _e302038302157_
                                                         _hd302037302161_
                                                         _tl302036302164_
                                                         _e302041302167_
                                                         _hd302040302171_
                                                         _tl302039302174_
                                                         _e302044302177_
                                                         _hd302043302181_
                                                         _tl302042302184_
                                                         _e302047302187_
                                                         _hd302046302191_
                                                         _tl302045302194_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g302027302069_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302042302184_))
                                                    (___kont308976308977_
                                                     _hd302043302181_
                                                     _hd302040302171_
                                                     _hd302037302161_
                                                     _hd302034302151_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g302027302069_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g302027302069_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g302027302069_)))))
                        (let () (declare (not safe)) (_g302027302069_)))))
                (let () (declare (not safe)) (_g302027302069_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx302226_)
      (let* ((_g302230302265_
              (lambda (_g302231302261_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302231302261_))))
             (_g302229302384_
              (lambda (_g302231302269_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302231302269_))
                    (let ((_e302237302272_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302231302269_))))
                      (let ((_hd302236302276_
                             (let ()
                               (declare (not safe))
                               (##car _e302237302272_)))
                            (_tl302235302279_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302237302272_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl302235302279_))
                            (let ((_g309440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl302235302279_
                                      '0))))
                              (begin
                                (let ((_g309441_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309440_)
                                             (##vector-length _g309440_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309441_ 2)))
                                      (error "Context expects 2 values"
                                             _g309441_)))
                                (let ((_target302238302282_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309440_ 0)))
                                      (_tl302240302285_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309440_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302240302285_))
                                      (letrec ((_loop302241302288_
                                                (lambda (_hd302239302292_
                                                         _symbol302245302295_
                                                         _method302246302297_
                                                         _type-t302247302299_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd302239302292_))
                                                      (let ((_e302242302302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd302239302292_))))
                (let ((_lp-hd302243302306_
                       (let () (declare (not safe)) (##car _e302242302302_)))
                      (_lp-tl302244302309_
                       (let () (declare (not safe)) (##cdr _e302242302302_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd302243302306_))
                      (let ((_e302253302312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd302243302306_))))
                        (let ((_hd302252302316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302253302312_)))
                              (_tl302251302319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302253302312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl302251302319_))
                              (let ((_e302256302322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl302251302319_))))
                                (let ((_hd302255302326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e302256302322_)))
                                      (_tl302254302329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e302256302322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl302254302329_))
                                      (let ((_e302259302332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl302254302329_))))
                                        (let ((_hd302258302336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e302259302332_)))
                                              (_tl302257302339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e302259302332_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302257302339_))
                                              (_loop302241302288_
                                               _lp-tl302244302309_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302258302336_
                                                       _symbol302245302295_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302255302326_
                                                       _method302246302297_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302252302316_
                                                       _type-t302247302299_)))
                                              (_g302230302265_
                                               _g302231302269_))))
                                      (_g302230302265_ _g302231302269_))))
                              (_g302230302265_ _g302231302269_))))
                      (_g302230302265_ _g302231302269_))))
              (let ((_symbol302248302342_ (reverse _symbol302245302295_))
                    (_method302249302345_ (reverse _method302246302297_))
                    (_type-t302250302347_ (reverse _type-t302247302299_)))
                ((lambda (_L302350_ _L302352_ _L302353_)
                   (let ((__tmp309449
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309442
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L302350_
                               _L302352_
                               _L302353_))
                            (let ((__tmp309443
                                   (lambda (_g302369302374_
                                            _g302370302377_
                                            _g302371302379_
                                            _g302372302381_)
                                     (let ((__tmp309444
                                            (let ((__tmp309448
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp309445
                                                   (let ((__tmp309446
                                                          (let ((__tmp309447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g302369302374_ '()))))
                    (declare (not safe))
                    (cons _g302370302377_ __tmp309447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g302371302379_
                                                           __tmp309446))))
                                              (declare (not safe))
                                              (cons __tmp309448 __tmp309445))))
                                       (declare (not safe))
                                       (cons __tmp309444 _g302372302381_)))))
                              (declare (not safe))
                              (foldr* __tmp309443
                                      '()
                                      _L302350_
                                      _L302352_
                                      _L302353_)))))
                     (declare (not safe))
                     (cons __tmp309449 __tmp309442)))
                 _symbol302248302342_
                 _method302249302345_
                 _type-t302250302347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop302241302288_
                                         _target302238302282_
                                         '()
                                         '()
                                         '()))
                                      (_g302230302265_ _g302231302269_)))))
                            (_g302230302265_ _g302231302269_))))
                    (_g302230302265_ _g302231302269_)))))
        (_g302229302384_ _$stx302226_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx302389_)
      (let* ((_g302393302426_
              (lambda (_g302394302422_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302394302422_))))
             (_g302392302540_
              (lambda (_g302394302430_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302394302430_))
                    (let ((_e302400302433_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302394302430_))))
                      (let ((_hd302399302437_
                             (let ()
                               (declare (not safe))
                               (##car _e302400302433_)))
                            (_tl302398302440_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302400302433_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302398302440_))
                            (let ((_e302403302443_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302398302440_))))
                              (let ((_hd302402302447_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302403302443_)))
                                    (_tl302401302450_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302403302443_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302401302450_))
                                    (let ((_g309450_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302401302450_
                                              '0))))
                                      (begin
                                        (let ((_g309451_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g309450_)
                                                     (##vector-length
                                                      _g309450_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g309451_ 2)))
                                              (error "Context expects 2 values"
                                                     _g309451_)))
                                        (let ((_target302404302453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g309450_ 0)))
                                              (_tl302406302456_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g309450_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302406302456_))
                                              (letrec ((_loop302407302459_
                                                        (lambda (_hd302405302463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol302411302466_
                         _method302412302468_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd302405302463_))
                      (let ((_e302408302471_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd302405302463_))))
                        (let ((_lp-hd302409302475_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302408302471_)))
                              (_lp-tl302410302478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302408302471_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd302409302475_))
                              (let ((_e302417302481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd302409302475_))))
                                (let ((_hd302416302485_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e302417302481_)))
                                      (_tl302415302488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e302417302481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl302415302488_))
                                      (let ((_e302420302491_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl302415302488_))))
                                        (let ((_hd302419302495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e302420302491_)))
                                              (_tl302418302498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e302420302491_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302418302498_))
                                              (_loop302407302459_
                                               _lp-tl302410302478_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302419302495_
                                                       _symbol302411302466_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302416302485_
                                                       _method302412302468_)))
                                              (_g302393302426_
                                               _g302394302430_))))
                                      (_g302393302426_ _g302394302430_))))
                              (_g302393302426_ _g302394302430_))))
                      (let ((_symbol302413302501_
                             (reverse _symbol302411302466_))
                            (_method302414302504_
                             (reverse _method302412302468_)))
                        ((lambda (_L302507_ _L302509_ _L302510_)
                           (let ((__tmp309459
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp309452
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L302507_
                                       _L302509_))
                                    (let ((__tmp309453
                                           (lambda (_g302528302532_
                                                    _g302529302535_
                                                    _g302530302537_)
                                             (let ((__tmp309454
                                                    (let ((__tmp309458
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp309455
                                                           (let ((__tmp309456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp309457
                                 (let ()
                                   (declare (not safe))
                                   (cons _g302528302532_ '()))))
                            (declare (not safe))
                            (cons _g302529302535_ __tmp309457))))
                     (declare (not safe))
                     (cons _L302510_ __tmp309456))))
              (declare (not safe))
              (cons __tmp309458 __tmp309455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp309454
                                                     _g302530302537_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp309453
                                              '()
                                              _L302507_
                                              _L302509_)))))
                             (declare (not safe))
                             (cons __tmp309459 __tmp309452)))
                         _symbol302413302501_
                         _method302414302504_
                         _hd302402302447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop302407302459_
                                                 _target302404302453_
                                                 '()
                                                 '()))
                                              (_g302393302426_
                                               _g302394302430_)))))
                                    (_g302393302426_ _g302394302430_))))
                            (_g302393302426_ _g302394302430_))))
                    (_g302393302426_ _g302394302430_)))))
        (_g302392302540_ _$stx302389_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx302545_)
      (let* ((_g302549302563_
              (lambda (_g302550302559_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302550302559_))))
             (_g302548302604_
              (lambda (_g302550302567_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302550302567_))
                    (let ((_e302554302570_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302550302567_))))
                      (let ((_hd302553302574_
                             (let ()
                               (declare (not safe))
                               (##car _e302554302570_)))
                            (_tl302552302577_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302554302570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302552302577_))
                            (let ((_e302557302580_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302552302577_))))
                              (let ((_hd302556302584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302557302580_)))
                                    (_tl302555302587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302557302580_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302555302587_))
                                    ((lambda (_L302590_)
                                       (let ((__tmp309464
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp309460
                                              (let ((__tmp309461
                                                     (let ((__tmp309463
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309462
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309463 __tmp309462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309461 '()))))
                                         (declare (not safe))
                                         (cons __tmp309464 __tmp309460)))
                                     _hd302556302584_)
                                    (_g302549302563_ _g302550302567_))))
                            (_g302549302563_ _g302550302567_))))
                    (_g302549302563_ _g302550302567_)))))
        (_g302548302604_ _$stx302545_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx302608_)
      (let* ((_g302612302662_
              (lambda (_g302613302658_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302613302658_))))
             (_g302611302829_
              (lambda (_g302613302666_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302613302666_))
                    (let ((_e302626302669_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302613302666_))))
                      (let ((_hd302625302673_
                             (let ()
                               (declare (not safe))
                               (##car _e302626302669_)))
                            (_tl302624302676_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302626302669_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302624302676_))
                            (let ((_e302629302679_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302624302676_))))
                              (let ((_hd302628302683_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302629302679_)))
                                    (_tl302627302686_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302629302679_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302627302686_))
                                    (let ((_e302632302689_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302627302686_))))
                                      (let ((_hd302631302693_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302632302689_)))
                                            (_tl302630302696_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302632302689_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302630302696_))
                                            (let ((_e302635302699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302630302696_))))
                                              (let ((_hd302634302703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302635302699_)))
                                                    (_tl302633302706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302635302699_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302633302706_))
                                                    (let ((_e302638302709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302633302706_))))
                                                      (let ((_hd302637302713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e302638302709_)))
                    (_tl302636302716_
                     (let () (declare (not safe)) (##cdr _e302638302709_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl302636302716_))
                    (let ((_e302641302719_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl302636302716_))))
                      (let ((_hd302640302723_
                             (let ()
                               (declare (not safe))
                               (##car _e302641302719_)))
                            (_tl302639302726_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302641302719_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302639302726_))
                            (let ((_e302644302729_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302639302726_))))
                              (let ((_hd302643302733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302644302729_)))
                                    (_tl302642302736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302644302729_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302642302736_))
                                    (let ((_e302647302739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302642302736_))))
                                      (let ((_hd302646302743_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302647302739_)))
                                            (_tl302645302746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302647302739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302645302746_))
                                            (let ((_e302650302749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302645302746_))))
                                              (let ((_hd302649302753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302650302749_)))
                                                    (_tl302648302756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302650302749_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302648302756_))
                                                    (let ((_e302653302759_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302648302756_))))
                                                      (let ((_hd302652302763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e302653302759_)))
                    (_tl302651302766_
                     (let () (declare (not safe)) (##cdr _e302653302759_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl302651302766_))
                    (let ((_e302656302769_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl302651302766_))))
                      (let ((_hd302655302773_
                             (let ()
                               (declare (not safe))
                               (##car _e302656302769_)))
                            (_tl302654302776_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302656302769_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl302654302776_))
                            ((lambda (_L302779_
                                      _L302781_
                                      _L302782_
                                      _L302783_
                                      _L302784_
                                      _L302785_
                                      _L302786_
                                      _L302787_
                                      _L302788_
                                      _L302789_)
                               (let ((__tmp309499
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp309465
                                      (let ((__tmp309496
                                             (let ((__tmp309498
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309497
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302789_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309498 __tmp309497)))
                                            (__tmp309466
                                             (let ((__tmp309493
                                                    (let ((__tmp309495
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp309494
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L302788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp309495 __tmp309494)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp309467
                                                    (let ((__tmp309490
                                                           (let ((__tmp309492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp309491
                          (let () (declare (not safe)) (cons _L302787_ '()))))
                     (declare (not safe))
                     (cons __tmp309492 __tmp309491)))
                  (__tmp309468
                   (let ((__tmp309487
                          (let ((__tmp309489
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp309488
                                 (let ()
                                   (declare (not safe))
                                   (cons _L302786_ '()))))
                            (declare (not safe))
                            (cons __tmp309489 __tmp309488)))
                         (__tmp309469
                          (let ((__tmp309484
                                 (let ((__tmp309486
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp309485
                                        (let ()
                                          (declare (not safe))
                                          (cons _L302785_ '()))))
                                   (declare (not safe))
                                   (cons __tmp309486 __tmp309485)))
                                (__tmp309470
                                 (let ((__tmp309481
                                        (let ((__tmp309483
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp309482
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L302784_ '()))))
                                          (declare (not safe))
                                          (cons __tmp309483 __tmp309482)))
                                       (__tmp309471
                                        (let ((__tmp309472
                                               (let ((__tmp309473
                                                      (let ((__tmp309478
                                                             (let ((__tmp309480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309479
                            (let ()
                              (declare (not safe))
                              (cons _L302781_ '()))))
                       (declare (not safe))
                       (cons __tmp309480 __tmp309479)))
                    (__tmp309474
                     (let ((__tmp309475
                            (let ((__tmp309477
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309476
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302779_ '()))))
                              (declare (not safe))
                              (cons __tmp309477 __tmp309476))))
                       (declare (not safe))
                       (cons __tmp309475 '()))))
                (declare (not safe))
                (cons __tmp309478 __tmp309474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L302782_
                                                       __tmp309473))))
                                          (declare (not safe))
                                          (cons _L302783_ __tmp309472))))
                                   (declare (not safe))
                                   (cons __tmp309481 __tmp309471))))
                            (declare (not safe))
                            (cons __tmp309484 __tmp309470))))
                     (declare (not safe))
                     (cons __tmp309487 __tmp309469))))
              (declare (not safe))
              (cons __tmp309490 __tmp309468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp309493
                                                     __tmp309467))))
                                        (declare (not safe))
                                        (cons __tmp309496 __tmp309466))))
                                 (declare (not safe))
                                 (cons __tmp309499 __tmp309465)))
                             _hd302655302773_
                             _hd302652302763_
                             _hd302649302753_
                             _hd302646302743_
                             _hd302643302733_
                             _hd302640302723_
                             _hd302637302713_
                             _hd302634302703_
                             _hd302631302693_
                             _hd302628302683_)
                            (_g302612302662_ _g302613302666_))))
                    (_g302612302662_ _g302613302666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g302612302662_
                                                     _g302613302666_))))
                                            (_g302612302662_
                                             _g302613302666_))))
                                    (_g302612302662_ _g302613302666_))))
                            (_g302612302662_ _g302613302666_))))
                    (_g302612302662_ _g302613302666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g302612302662_
                                                     _g302613302666_))))
                                            (_g302612302662_
                                             _g302613302666_))))
                                    (_g302612302662_ _g302613302666_))))
                            (_g302612302662_ _g302613302666_))))
                    (_g302612302662_ _g302613302666_)))))
        (_g302611302829_ _$stx302608_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx302833_)
      (let* ((_g302837302851_
              (lambda (_g302838302847_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302838302847_))))
             (_g302836302892_
              (lambda (_g302838302855_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302838302855_))
                    (let ((_e302842302858_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302838302855_))))
                      (let ((_hd302841302862_
                             (let ()
                               (declare (not safe))
                               (##car _e302842302858_)))
                            (_tl302840302865_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302842302858_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302840302865_))
                            (let ((_e302845302868_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302840302865_))))
                              (let ((_hd302844302872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302845302868_)))
                                    (_tl302843302875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302845302868_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302843302875_))
                                    ((lambda (_L302878_)
                                       (let ((__tmp309504
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp309500
                                              (let ((__tmp309501
                                                     (let ((__tmp309503
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309503 __tmp309502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309501 '()))))
                                         (declare (not safe))
                                         (cons __tmp309504 __tmp309500)))
                                     _hd302844302872_)
                                    (_g302837302851_ _g302838302855_))))
                            (_g302837302851_ _g302838302855_))))
                    (_g302837302851_ _g302838302855_)))))
        (_g302836302892_ _$stx302833_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx302896_)
      (let* ((_g302900302914_
              (lambda (_g302901302910_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302901302910_))))
             (_g302899302955_
              (lambda (_g302901302918_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302901302918_))
                    (let ((_e302905302921_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302901302918_))))
                      (let ((_hd302904302925_
                             (let ()
                               (declare (not safe))
                               (##car _e302905302921_)))
                            (_tl302903302928_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302905302921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302903302928_))
                            (let ((_e302908302931_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302903302928_))))
                              (let ((_hd302907302935_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302908302931_)))
                                    (_tl302906302938_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302908302931_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302906302938_))
                                    ((lambda (_L302941_)
                                       (let ((__tmp309509
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp309505
                                              (let ((__tmp309506
                                                     (let ((__tmp309508
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309507
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309508 __tmp309507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309506 '()))))
                                         (declare (not safe))
                                         (cons __tmp309509 __tmp309505)))
                                     _hd302907302935_)
                                    (_g302900302914_ _g302901302918_))))
                            (_g302900302914_ _g302901302918_))))
                    (_g302900302914_ _g302901302918_)))))
        (_g302899302955_ _$stx302896_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx302959_)
      (let* ((_g302963302985_
              (lambda (_g302964302981_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302964302981_))))
             (_g302962303054_
              (lambda (_g302964302989_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302964302989_))
                    (let ((_e302970302992_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302964302989_))))
                      (let ((_hd302969302996_
                             (let ()
                               (declare (not safe))
                               (##car _e302970302992_)))
                            (_tl302968302999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302970302992_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302968302999_))
                            (let ((_e302973303002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302968302999_))))
                              (let ((_hd302972303006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302973303002_)))
                                    (_tl302971303009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302973303002_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302971303009_))
                                    (let ((_e302976303012_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302971303009_))))
                                      (let ((_hd302975303016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302976303012_)))
                                            (_tl302974303019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302976303012_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302974303019_))
                                            (let ((_e302979303022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302974303019_))))
                                              (let ((_hd302978303026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302979303022_)))
                                                    (_tl302977303029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302979303022_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302977303029_))
                                                    ((lambda (_L303032_
                                                              _L303034_
                                                              _L303035_)
                                                       (let ((__tmp309519
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp309510
                      (let ((__tmp309516
                             (let ((__tmp309518
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp309517
                                    (let ()
                                      (declare (not safe))
                                      (cons _L303035_ '()))))
                               (declare (not safe))
                               (cons __tmp309518 __tmp309517)))
                            (__tmp309511
                             (let ((__tmp309513
                                    (let ((__tmp309515
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp309514
                                           (let ()
                                             (declare (not safe))
                                             (cons _L303034_ '()))))
                                      (declare (not safe))
                                      (cons __tmp309515 __tmp309514)))
                                   (__tmp309512
                                    (let ()
                                      (declare (not safe))
                                      (cons _L303032_ '()))))
                               (declare (not safe))
                               (cons __tmp309513 __tmp309512))))
                        (declare (not safe))
                        (cons __tmp309516 __tmp309511))))
                 (declare (not safe))
                 (cons __tmp309519 __tmp309510)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd302978303026_
                                                     _hd302975303016_
                                                     _hd302972303006_)
                                                    (_g302963302985_
                                                     _g302964302989_))))
                                            (_g302963302985_
                                             _g302964302989_))))
                                    (_g302963302985_ _g302964302989_))))
                            (_g302963302985_ _g302964302989_))))
                    (_g302963302985_ _g302964302989_)))))
        (_g302962303054_ _$stx302959_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx303058_)
      (let* ((_g303062303084_
              (lambda (_g303063303080_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303063303080_))))
             (_g303061303153_
              (lambda (_g303063303088_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303063303088_))
                    (let ((_e303069303091_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303063303088_))))
                      (let ((_hd303068303095_
                             (let ()
                               (declare (not safe))
                               (##car _e303069303091_)))
                            (_tl303067303098_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303069303091_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl303067303098_))
                            (let ((_e303072303101_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl303067303098_))))
                              (let ((_hd303071303105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e303072303101_)))
                                    (_tl303070303108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e303072303101_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl303070303108_))
                                    (let ((_e303075303111_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl303070303108_))))
                                      (let ((_hd303074303115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303075303111_)))
                                            (_tl303073303118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303075303111_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl303073303118_))
                                            (let ((_e303078303121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl303073303118_))))
                                              (let ((_hd303077303125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e303078303121_)))
                                                    (_tl303076303128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e303078303121_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303076303128_))
                                                    ((lambda (_L303131_
                                                              _L303133_
                                                              _L303134_)
                                                       (let ((__tmp309529
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp309520
                      (let ((__tmp309526
                             (let ((__tmp309528
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp309527
                                    (let ()
                                      (declare (not safe))
                                      (cons _L303134_ '()))))
                               (declare (not safe))
                               (cons __tmp309528 __tmp309527)))
                            (__tmp309521
                             (let ((__tmp309523
                                    (let ((__tmp309525
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp309524
                                           (let ()
                                             (declare (not safe))
                                             (cons _L303133_ '()))))
                                      (declare (not safe))
                                      (cons __tmp309525 __tmp309524)))
                                   (__tmp309522
                                    (let ()
                                      (declare (not safe))
                                      (cons _L303131_ '()))))
                               (declare (not safe))
                               (cons __tmp309523 __tmp309522))))
                        (declare (not safe))
                        (cons __tmp309526 __tmp309521))))
                 (declare (not safe))
                 (cons __tmp309529 __tmp309520)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd303077303125_
                                                     _hd303074303115_
                                                     _hd303071303105_)
                                                    (_g303062303084_
                                                     _g303063303088_))))
                                            (_g303062303084_
                                             _g303063303088_))))
                                    (_g303062303084_ _g303063303088_))))
                            (_g303062303084_ _g303063303088_))))
                    (_g303062303084_ _g303063303088_)))))
        (_g303061303153_ _$stx303058_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx303157_)
      (let* ((___stx309039309040_ _$stx303157_)
             (_g303165303233_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309039309040_)))))
        (let ((___kont309042309043_
               (lambda (_L303511_ _L303513_)
                 (let ((__tmp309545
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp309530
                        (let ((__tmp309541
                               (let ((__tmp309544
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309542
                                      (let ((__tmp309543
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309543 '()))))
                                 (declare (not safe))
                                 (cons __tmp309544 __tmp309542)))
                              (__tmp309531
                               (let ((__tmp309538
                                      (let ((__tmp309540
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309539
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303513_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309540 __tmp309539)))
                                     (__tmp309532
                                      (let ((__tmp309533
                                             (let ((__tmp309534
                                                    (let ((__tmp309535
                                                           (let ((__tmp309537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp309536
                          (let () (declare (not safe)) (cons _L303511_ '()))))
                     (declare (not safe))
                     (cons __tmp309537 __tmp309536))))
              (declare (not safe))
              (cons __tmp309535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L303511_ __tmp309534))))
                                        (declare (not safe))
                                        (cons '#f __tmp309533))))
                                 (declare (not safe))
                                 (cons __tmp309538 __tmp309532))))
                          (declare (not safe))
                          (cons __tmp309541 __tmp309531))))
                   (declare (not safe))
                   (cons __tmp309545 __tmp309530))))
              (___kont309044309045_
               (lambda (_L303442_ _L303444_)
                 (let ((__tmp309546
                        (let ((__tmp309547
                               (let ((__tmp309548
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L303442_ __tmp309548))))
                          (declare (not safe))
                          (cons 'primitive: __tmp309547))))
                   (declare (not safe))
                   (cons _L303444_ __tmp309546))))
              (___kont309046309047_
               (lambda (_L303381_ _L303383_)
                 (let ((__tmp309562
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp309549
                        (let ((__tmp309558
                               (let ((__tmp309561
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309559
                                      (let ((__tmp309560
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309560 '()))))
                                 (declare (not safe))
                                 (cons __tmp309561 __tmp309559)))
                              (__tmp309550
                               (let ((__tmp309555
                                      (let ((__tmp309557
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309556
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303383_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309557 __tmp309556)))
                                     (__tmp309551
                                      (let ((__tmp309552
                                             (let ((__tmp309554
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309553
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L303381_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309554
                                                     __tmp309553))))
                                        (declare (not safe))
                                        (cons __tmp309552 '()))))
                                 (declare (not safe))
                                 (cons __tmp309555 __tmp309551))))
                          (declare (not safe))
                          (cons __tmp309558 __tmp309550))))
                   (declare (not safe))
                   (cons __tmp309562 __tmp309549))))
              (___kont309048309049_
               (lambda (_L303313_ _L303315_)
                 (let ((__tmp309576
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp309563
                        (let ((__tmp309572
                               (let ((__tmp309575
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309573
                                      (let ((__tmp309574
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309574 '()))))
                                 (declare (not safe))
                                 (cons __tmp309575 __tmp309573)))
                              (__tmp309564
                               (let ((__tmp309569
                                      (let ((__tmp309571
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309570
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303315_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309571 __tmp309570)))
                                     (__tmp309565
                                      (let ((__tmp309566
                                             (let ((__tmp309568
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309567
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L303313_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309568
                                                     __tmp309567))))
                                        (declare (not safe))
                                        (cons __tmp309566 '()))))
                                 (declare (not safe))
                                 (cons __tmp309569 __tmp309565))))
                          (declare (not safe))
                          (cons __tmp309572 __tmp309564))))
                   (declare (not safe))
                   (cons __tmp309576 __tmp309563))))
              (___kont309050309051_
               (lambda (_L303260_ _L303262_)
                 (let ((__tmp309577
                        (let ((__tmp309578
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L303260_ __tmp309578))))
                   (declare (not safe))
                   (cons _L303262_ __tmp309577)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx309039309040_))
              (let ((_e303171303467_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx309039309040_))))
                (let ((_tl303169303474_
                       (let () (declare (not safe)) (##cdr _e303171303467_)))
                      (_hd303170303471_
                       (let () (declare (not safe)) (##car _e303171303467_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl303169303474_))
                      (let ((_e303174303477_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl303169303474_))))
                        (let ((_tl303172303484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303174303477_)))
                              (_hd303173303481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303174303477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl303172303484_))
                              (let ((_e303177303487_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl303172303484_))))
                                (let ((_tl303175303494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e303177303487_)))
                                      (_hd303176303491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e303177303487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd303176303491_))
                                      (let ((_e303178303497_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd303176303491_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e303178303497_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl303175303494_))
                                                (let ((_e303181303501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl303175303494_))))
                                                  (let ((_tl303179303508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e303181303501_)))
                                                        (_hd303180303505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e303181303501_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl303179303508_))
                                                        (___kont309042309043_
                                                         _hd303180303505_
                                                         _hd303173303481_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd303173303481_))
                                                            (let ((_e303190303428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd303173303481_))))
                      (declare (not safe))
                      (_g303165303233_))
                    (let () (declare (not safe)) (_g303165303233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd303173303481_))
                                                    (let ((_e303190303428_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd303173303481_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e303190303428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303175303494_))
                      (___kont309044309045_ _hd303176303491_ _hd303170303471_)
                      (let () (declare (not safe)) (_g303165303233_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303175303494_))
                      (___kont309048309049_ _hd303176303491_ _hd303173303481_)
                      (let () (declare (not safe)) (_g303165303233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl303175303494_))
                                                        (___kont309048309049_
                                                         _hd303176303491_
                                                         _hd303173303481_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g303165303233_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd303173303481_))
                                                (let ((_e303190303428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd303173303481_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e303190303428_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl303175303494_))
                                                          (___kont309044309045_
                                                           _hd303176303491_
                                                           _hd303170303471_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl303175303494_))
                      (let ((_e303208303371_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl303175303494_))))
                        (let ((_tl303206303378_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303208303371_)))
                              (_hd303207303375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303208303371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl303206303378_))
                              (___kont309046309047_
                               _hd303207303375_
                               _hd303176303491_)
                              (let ()
                                (declare (not safe))
                                (_g303165303233_)))))
                      (let () (declare (not safe)) (_g303165303233_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl303175303494_))
                  (___kont309048309049_ _hd303176303491_ _hd303173303481_)
                  (let () (declare (not safe)) (_g303165303233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303175303494_))
                                                    (___kont309048309049_
                                                     _hd303176303491_
                                                     _hd303173303481_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303165303233_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd303173303481_))
                                          (let ((_e303190303428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd303173303481_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e303190303428_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303175303494_))
                                                    (___kont309044309045_
                                                     _hd303176303491_
                                                     _hd303170303471_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl303175303494_))
                                                        (let ((_e303208303371_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl303175303494_))))
                  (let ((_tl303206303378_
                         (let () (declare (not safe)) (##cdr _e303208303371_)))
                        (_hd303207303375_
                         (let ()
                           (declare (not safe))
                           (##car _e303208303371_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl303206303378_))
                        (___kont309046309047_
                         _hd303207303375_
                         _hd303176303491_)
                        (let () (declare (not safe)) (_g303165303233_)))))
                (let () (declare (not safe)) (_g303165303233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303175303494_))
                                                    (___kont309048309049_
                                                     _hd303176303491_
                                                     _hd303173303481_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303165303233_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl303175303494_))
                                              (___kont309048309049_
                                               _hd303176303491_
                                               _hd303173303481_)
                                              (let ()
                                                (declare (not safe))
                                                (_g303165303233_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd303173303481_))
                                  (let ((_e303190303428_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd303173303481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303172303484_))
                                        (___kont309050309051_
                                         _hd303173303481_
                                         _hd303170303471_)
                                        (let ()
                                          (declare (not safe))
                                          (_g303165303233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303172303484_))
                                      (___kont309050309051_
                                       _hd303173303481_
                                       _hd303170303471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g303165303233_)))))))
                      (let () (declare (not safe)) (_g303165303233_)))))
              (let () (declare (not safe)) (_g303165303233_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx303535_)
      (let* ((___stx309179309180_ _$stx303535_)
             (_g303540303595_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309179309180_)))))
        (let ((___kont309182309183_
               (lambda (_L303780_ _L303782_)
                 (let ((__tmp309594
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp309579
                        (let ((__tmp309590
                               (let ((__tmp309593
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309591
                                      (let ((__tmp309592
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp309592 '()))))
                                 (declare (not safe))
                                 (cons __tmp309593 __tmp309591)))
                              (__tmp309580
                               (let ((__tmp309581
                                      (let ((__tmp309589
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp309582
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L303780_
                                                  _L303782_))
                                               (let ((__tmp309583
                                                      (lambda (_g303799303803_
                                                               _g303800303806_
                                                               _g303801303808_)
                                                        (let ((__tmp309584
                                                               (let ((__tmp309588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp309585
                              (let ((__tmp309586
                                     (let ((__tmp309587
                                            (let ()
                                              (declare (not safe))
                                              (cons _g303799303803_ '()))))
                                       (declare (not safe))
                                       (cons _g303800303806_ __tmp309587))))
                                (declare (not safe))
                                (cons 'primitive: __tmp309586))))
                         (declare (not safe))
                         (cons __tmp309588 __tmp309585))))
                  (declare (not safe))
                  (cons __tmp309584 _g303801303808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp309583
                                                         '()
                                                         _L303780_
                                                         _L303782_)))))
                                        (declare (not safe))
                                        (cons __tmp309589 __tmp309582))))
                                 (declare (not safe))
                                 (cons __tmp309581 '()))))
                          (declare (not safe))
                          (cons __tmp309590 __tmp309580))))
                   (declare (not safe))
                   (cons __tmp309594 __tmp309579))))
              (___kont309186309187_
               (lambda (_L303666_ _L303668_)
                 (let ((__tmp309609
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp309595
                        (let ((__tmp309605
                               (let ((__tmp309608
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309606
                                      (let ((__tmp309607
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp309607 '()))))
                                 (declare (not safe))
                                 (cons __tmp309608 __tmp309606)))
                              (__tmp309596
                               (let ((__tmp309597
                                      (let ((__tmp309604
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp309598
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L303666_
                                                  _L303668_))
                                               (let ((__tmp309599
                                                      (lambda (_g303683303687_
                                                               _g303684303690_
                                                               _g303685303692_)
                                                        (let ((__tmp309600
                                                               (let ((__tmp309603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp309601
                              (let ((__tmp309602
                                     (let ()
                                       (declare (not safe))
                                       (cons _g303683303687_ '()))))
                                (declare (not safe))
                                (cons _g303684303690_ __tmp309602))))
                         (declare (not safe))
                         (cons __tmp309603 __tmp309601))))
                  (declare (not safe))
                  (cons __tmp309600 _g303685303692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp309599
                                                         '()
                                                         _L303666_
                                                         _L303668_)))))
                                        (declare (not safe))
                                        (cons __tmp309604 __tmp309598))))
                                 (declare (not safe))
                                 (cons __tmp309597 '()))))
                          (declare (not safe))
                          (cons __tmp309605 __tmp309596))))
                   (declare (not safe))
                   (cons __tmp309609 __tmp309595)))))
          (let* ((___match309230309231_
                  (lambda (_e303572303602_
                           _hd303571303606_
                           _tl303570303609_
                           ___splice309188309189_
                           _target303573303612_
                           _tl303575303615_)
                    (letrec ((_loop303576303618_
                              (lambda (_hd303574303622_
                                       _dispatch303580303625_
                                       _arity303581303627_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303574303622_))
                                    (let ((_e303577303630_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303574303622_))))
                                      (let ((_lp-tl303579303637_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303577303630_)))
                                            (_lp-hd303578303634_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303577303630_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd303578303634_))
                                            (let ((_e303586303640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd303578303634_))))
                                              (let ((_tl303584303647_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e303586303640_)))
                                                    (_hd303585303644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e303586303640_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl303584303647_))
                                                    (let ((_e303589303650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl303584303647_))))
                                                      (let ((_tl303587303657_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e303589303650_)))
                    (_hd303588303654_
                     (let () (declare (not safe)) (##car _e303589303650_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl303587303657_))
                    (_loop303576303618_
                     _lp-tl303579303637_
                     (let ()
                       (declare (not safe))
                       (cons _hd303588303654_ _dispatch303580303625_))
                     (let ()
                       (declare (not safe))
                       (cons _hd303585303644_ _arity303581303627_)))
                    (let () (declare (not safe)) (_g303540303595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303540303595_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g303540303595_)))))
                                    (let ((_arity303583303663_
                                           (reverse _arity303581303627_))
                                          (_dispatch303582303660_
                                           (reverse _dispatch303580303625_)))
                                      (___kont309186309187_
                                       _dispatch303582303660_
                                       _arity303583303663_))))))
                      (_loop303576303618_ _target303573303612_ '() '()))))
                 (___match309222309223_
                  (lambda (_e303572303602_ _hd303571303606_ _tl303570303609_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl303570303609_))
                        (let ((___splice309188309189_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl303570303609_
                                  '0))))
                          (let ((_tl303575303615_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice309188309189_ '1)))
                                (_target303573303612_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice309188309189_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl303575303615_))
                                (___match309230309231_
                                 _e303572303602_
                                 _hd303571303606_
                                 _tl303570303609_
                                 ___splice309188309189_
                                 _target303573303612_
                                 _tl303575303615_)
                                (let ()
                                  (declare (not safe))
                                  (_g303540303595_)))))
                        (let () (declare (not safe)) (_g303540303595_)))))
                 (___match309216309217_
                  (lambda (_e303546303702_
                           _hd303545303706_
                           _tl303544303709_
                           _e303549303712_
                           _hd303548303716_
                           _tl303547303719_
                           _e303550303722_
                           ___splice309184309185_
                           _target303551303726_
                           _tl303553303729_)
                    (letrec ((_loop303554303732_
                              (lambda (_hd303552303736_
                                       _dispatch303558303739_
                                       _arity303559303741_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303552303736_))
                                    (let ((_e303555303744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303552303736_))))
                                      (let ((_lp-tl303557303751_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303555303744_)))
                                            (_lp-hd303556303748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303555303744_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd303556303748_))
                                            (let ((_e303564303754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd303556303748_))))
                                              (let ((_tl303562303761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e303564303754_)))
                                                    (_hd303563303758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e303564303754_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl303562303761_))
                                                    (let ((_e303567303764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl303562303761_))))
                                                      (let ((_tl303565303771_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e303567303764_)))
                    (_hd303566303768_
                     (let () (declare (not safe)) (##car _e303567303764_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl303565303771_))
                    (_loop303554303732_
                     _lp-tl303557303751_
                     (let ()
                       (declare (not safe))
                       (cons _hd303566303768_ _dispatch303558303739_))
                     (let ()
                       (declare (not safe))
                       (cons _hd303563303758_ _arity303559303741_)))
                    (___match309222309223_
                     _e303546303702_
                     _hd303545303706_
                     _tl303544303709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match309222309223_
                                                     _e303546303702_
                                                     _hd303545303706_
                                                     _tl303544303709_))))
                                            (___match309222309223_
                                             _e303546303702_
                                             _hd303545303706_
                                             _tl303544303709_))))
                                    (let ((_arity303561303777_
                                           (reverse _arity303559303741_))
                                          (_dispatch303560303774_
                                           (reverse _dispatch303558303739_)))
                                      (___kont309182309183_
                                       _dispatch303560303774_
                                       _arity303561303777_))))))
                      (_loop303554303732_ _target303551303726_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309179309180_))
                (let ((_e303546303702_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309179309180_))))
                  (let ((_tl303544303709_
                         (let () (declare (not safe)) (##cdr _e303546303702_)))
                        (_hd303545303706_
                         (let ()
                           (declare (not safe))
                           (##car _e303546303702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl303544303709_))
                        (let ((_e303549303712_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl303544303709_))))
                          (let ((_tl303547303719_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e303549303712_)))
                                (_hd303548303716_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e303549303712_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd303548303716_))
                                (let ((_e303550303722_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd303548303716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e303550303722_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl303547303719_))
                                          (let ((___splice309184309185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl303547303719_
                                                    '0))))
                                            (let ((_tl303553303729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309184309185_
                                                      '1)))
                                                  (_target303551303726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309184309185_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303553303729_))
                                                  (___match309216309217_
                                                   _e303546303702_
                                                   _hd303545303706_
                                                   _tl303544303709_
                                                   _e303549303712_
                                                   _hd303548303716_
                                                   _tl303547303719_
                                                   _e303550303722_
                                                   ___splice309184309185_
                                                   _target303551303726_
                                                   _tl303553303729_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303544303709_))
                                                      (let ((___splice309188309189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303544303709_ '0))))
                (let ((_tl303575303615_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309188309189_ '1)))
                      (_target303573303612_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309188309189_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303575303615_))
                      (___match309230309231_
                       _e303546303702_
                       _hd303545303706_
                       _tl303544303709_
                       ___splice309188309189_
                       _target303573303612_
                       _tl303575303615_)
                      (let () (declare (not safe)) (_g303540303595_)))))
              (let () (declare (not safe)) (_g303540303595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl303544303709_))
                                              (let ((___splice309188309189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl303544303709_
                                                        '0))))
                                                (let ((_tl303575303615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice309188309189_
                                                          '1)))
                                                      (_target303573303612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice309188309189_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl303575303615_))
                                                      (___match309230309231_
                                                       _e303546303702_
                                                       _hd303545303706_
                                                       _tl303544303709_
                                                       ___splice309188309189_
                                                       _target303573303612_
                                                       _tl303575303615_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g303540303595_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g303540303595_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl303544303709_))
                                          (let ((___splice309188309189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl303544303709_
                                                    '0))))
                                            (let ((_tl303575303615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309188309189_
                                                      '1)))
                                                  (_target303573303612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309188309189_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303575303615_))
                                                  (___match309230309231_
                                                   _e303546303702_
                                                   _hd303545303706_
                                                   _tl303544303709_
                                                   ___splice309188309189_
                                                   _target303573303612_
                                                   _tl303575303615_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g303540303595_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g303540303595_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl303544303709_))
                                    (let ((___splice309188309189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl303544303709_
                                              '0))))
                                      (let ((_tl303575303615_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309188309189_
                                                '1)))
                                            (_target303573303612_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309188309189_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303575303615_))
                                            (___match309230309231_
                                             _e303546303702_
                                             _hd303545303706_
                                             _tl303544303709_
                                             ___splice309188309189_
                                             _target303573303612_
                                             _tl303575303615_)
                                            (let ()
                                              (declare (not safe))
                                              (_g303540303595_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g303540303595_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl303544303709_))
                            (let ((___splice309188309189_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl303544303709_
                                      '0))))
                              (let ((_tl303575303615_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice309188309189_
                                        '1)))
                                    (_target303573303612_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice309188309189_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl303575303615_))
                                    (___match309230309231_
                                     _e303546303702_
                                     _hd303545303706_
                                     _tl303544303709_
                                     ___splice309188309189_
                                     _target303573303612_
                                     _tl303575303615_)
                                    (let ()
                                      (declare (not safe))
                                      (_g303540303595_)))))
                            (let () (declare (not safe)) (_g303540303595_))))))
                (let () (declare (not safe)) (_g303540303595_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx303817_)
      (let* ((_g303821303839_
              (lambda (_g303822303835_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303822303835_))))
             (_g303820303894_
              (lambda (_g303822303843_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303822303843_))
                    (let ((_e303827303846_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303822303843_))))
                      (let ((_hd303826303850_
                             (let ()
                               (declare (not safe))
                               (##car _e303827303846_)))
                            (_tl303825303853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303827303846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl303825303853_))
                            (let ((_e303830303856_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl303825303853_))))
                              (let ((_hd303829303860_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e303830303856_)))
                                    (_tl303828303863_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e303830303856_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl303828303863_))
                                    (let ((_e303833303866_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl303828303863_))))
                                      (let ((_hd303832303870_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303833303866_)))
                                            (_tl303831303873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303833303866_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303831303873_))
                                            ((lambda (_L303876_ _L303878_)
                                               (let ((__tmp309623
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp309610
                                                      (let ((__tmp309619
                                                             (let ((__tmp309622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309620
                            (let ((__tmp309621
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp309621 '()))))
                       (declare (not safe))
                       (cons __tmp309622 __tmp309620)))
                    (__tmp309611
                     (let ((__tmp309616
                            (let ((__tmp309618
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309617
                                   (let ()
                                     (declare (not safe))
                                     (cons _L303878_ '()))))
                              (declare (not safe))
                              (cons __tmp309618 __tmp309617)))
                           (__tmp309612
                            (let ((__tmp309613
                                   (let ((__tmp309615
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp309614
                                          (let ()
                                            (declare (not safe))
                                            (cons _L303876_ '()))))
                                     (declare (not safe))
                                     (cons __tmp309615 __tmp309614))))
                              (declare (not safe))
                              (cons __tmp309613 '()))))
                       (declare (not safe))
                       (cons __tmp309616 __tmp309612))))
                (declare (not safe))
                (cons __tmp309619 __tmp309611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp309623
                                                       __tmp309610)))
                                             _hd303832303870_
                                             _hd303829303860_)
                                            (_g303821303839_
                                             _g303822303843_))))
                                    (_g303821303839_ _g303822303843_))))
                            (_g303821303839_ _g303822303843_))))
                    (_g303821303839_ _g303822303843_)))))
        (_g303820303894_ _$stx303817_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx303898_)
      (let* ((_g303902303920_
              (lambda (_g303903303916_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303903303916_))))
             (_g303901303975_
              (lambda (_g303903303924_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303903303924_))
                    (let ((_e303908303927_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303903303924_))))
                      (let ((_hd303907303931_
                             (let ()
                               (declare (not safe))
                               (##car _e303908303927_)))
                            (_tl303906303934_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303908303927_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl303906303934_))
                            (let ((_e303911303937_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl303906303934_))))
                              (let ((_hd303910303941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e303911303937_)))
                                    (_tl303909303944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e303911303937_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl303909303944_))
                                    (let ((_e303914303947_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl303909303944_))))
                                      (let ((_hd303913303951_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303914303947_)))
                                            (_tl303912303954_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303914303947_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303912303954_))
                                            ((lambda (_L303957_ _L303959_)
                                               (let ((__tmp309637
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp309624
                                                      (let ((__tmp309633
                                                             (let ((__tmp309636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309634
                            (let ((__tmp309635
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp309635 '()))))
                       (declare (not safe))
                       (cons __tmp309636 __tmp309634)))
                    (__tmp309625
                     (let ((__tmp309630
                            (let ((__tmp309632
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309631
                                   (let ()
                                     (declare (not safe))
                                     (cons _L303959_ '()))))
                              (declare (not safe))
                              (cons __tmp309632 __tmp309631)))
                           (__tmp309626
                            (let ((__tmp309627
                                   (let ((__tmp309629
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp309628
                                          (let ()
                                            (declare (not safe))
                                            (cons _L303957_ '()))))
                                     (declare (not safe))
                                     (cons __tmp309629 __tmp309628))))
                              (declare (not safe))
                              (cons __tmp309627 '()))))
                       (declare (not safe))
                       (cons __tmp309630 __tmp309626))))
                (declare (not safe))
                (cons __tmp309633 __tmp309625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp309637
                                                       __tmp309624)))
                                             _hd303913303951_
                                             _hd303910303941_)
                                            (_g303902303920_
                                             _g303903303924_))))
                                    (_g303902303920_ _g303903303924_))))
                            (_g303902303920_ _g303903303924_))))
                    (_g303902303920_ _g303903303924_)))))
        (_g303901303975_ _$stx303898_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx303979_)
      (let* ((___stx309233309234_ _$stx303979_)
             (_g303986304057_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309233309234_)))))
        (let ((___kont309236309237_
               (lambda (_L304348_ _L304350_)
                 (let ((__tmp309643
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309638
                        (let ((__tmp309639
                               (let ((__tmp309640
                                      (let ((__tmp309642
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309641
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304348_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309642 __tmp309641))))
                                 (declare (not safe))
                                 (cons __tmp309640 '()))))
                          (declare (not safe))
                          (cons _L304350_ __tmp309639))))
                   (declare (not safe))
                   (cons __tmp309643 __tmp309638))))
              (___kont309238309239_
               (lambda (_L304267_ _L304269_)
                 (let ((__tmp309652
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309644
                        (let ((__tmp309645
                               (let ((__tmp309646
                                      (let ((__tmp309651
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309647
                                             (let ((__tmp309648
                                                    (lambda (_g304288304291_
                                                             _g304289304294_)
                                                      (let ((__tmp309649
                                                             (let ((__tmp309650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g304288304291_ __tmp309650))))
                (declare (not safe))
                (cons __tmp309649 _g304289304294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp309648
                                                       '()
                                                       _L304267_))))
                                        (declare (not safe))
                                        (cons __tmp309651 __tmp309647))))
                                 (declare (not safe))
                                 (cons __tmp309646 '()))))
                          (declare (not safe))
                          (cons _L304269_ __tmp309645))))
                   (declare (not safe))
                   (cons __tmp309652 __tmp309644))))
              (___kont309242309243_
               (lambda (_L304179_ _L304181_)
                 (let ((__tmp309659
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309653
                        (let ((__tmp309654
                               (let ((__tmp309655
                                      (let ((__tmp309658
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309656
                                             (let ((__tmp309657
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L304179_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp309657))))
                                        (declare (not safe))
                                        (cons __tmp309658 __tmp309656))))
                                 (declare (not safe))
                                 (cons __tmp309655 '()))))
                          (declare (not safe))
                          (cons _L304181_ __tmp309654))))
                   (declare (not safe))
                   (cons __tmp309659 __tmp309653))))
              (___kont309244309245_
               (lambda (_L304114_ _L304116_)
                 (let ((__tmp309669
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309660
                        (let ((__tmp309661
                               (let ((__tmp309662
                                      (let ((__tmp309668
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309663
                                             (let ((__tmp309664
                                                    (let ((__tmp309665
                                                           (lambda (_g304133304136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g304134304139_)
                     (let ((__tmp309666
                            (let ((__tmp309667
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g304133304136_ __tmp309667))))
                       (declare (not safe))
                       (cons __tmp309666 _g304134304139_)))))
              (declare (not safe))
              (foldr1 __tmp309665 '() _L304114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp309664))))
                                        (declare (not safe))
                                        (cons __tmp309668 __tmp309663))))
                                 (declare (not safe))
                                 (cons __tmp309662 '()))))
                          (declare (not safe))
                          (cons _L304116_ __tmp309661))))
                   (declare (not safe))
                   (cons __tmp309669 __tmp309660)))))
          (let* ((___match309352309353_
                  (lambda (_e304039304064_
                           _hd304038304068_
                           _tl304037304071_
                           _e304042304074_
                           _hd304041304078_
                           _tl304040304081_
                           ___splice309246309247_
                           _target304043304084_
                           _tl304045304087_)
                    (letrec ((_loop304046304090_
                              (lambda (_hd304044304094_ _arity304050304097_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd304044304094_))
                                    (let ((_e304047304100_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd304044304094_))))
                                      (let ((_lp-tl304049304107_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e304047304100_)))
                                            (_lp-hd304048304104_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e304047304100_))))
                                        (_loop304046304090_
                                         _lp-tl304049304107_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd304048304104_
                                                 _arity304050304097_)))))
                                    (let ((_arity304051304110_
                                           (reverse _arity304050304097_)))
                                      (___kont309244309245_
                                       _arity304051304110_
                                       _hd304041304078_))))))
                      (_loop304046304090_ _target304043304084_ '()))))
                 (___match309312309313_
                  (lambda (_e304007304203_
                           _hd304006304207_
                           _tl304005304210_
                           _e304010304213_
                           _hd304009304217_
                           _tl304008304220_
                           _e304013304223_
                           _hd304012304227_
                           _tl304011304230_
                           _e304014304233_
                           ___splice309240309241_
                           _target304015304237_
                           _tl304017304240_)
                    (letrec ((_loop304018304243_
                              (lambda (_hd304016304247_ _arity304022304250_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd304016304247_))
                                    (let ((_e304019304253_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd304016304247_))))
                                      (let ((_lp-tl304021304260_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e304019304253_)))
                                            (_lp-hd304020304257_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e304019304253_))))
                                        (_loop304018304243_
                                         _lp-tl304021304260_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd304020304257_
                                                 _arity304022304250_)))))
                                    (let ((_arity304023304263_
                                           (reverse _arity304022304250_)))
                                      (___kont309238309239_
                                       _arity304023304263_
                                       _hd304009304217_))))))
                      (_loop304018304243_ _target304015304237_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309233309234_))
                (let ((_e303992304304_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309233309234_))))
                  (let ((_tl303990304311_
                         (let () (declare (not safe)) (##cdr _e303992304304_)))
                        (_hd303991304308_
                         (let ()
                           (declare (not safe))
                           (##car _e303992304304_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl303990304311_))
                        (let ((_e303995304314_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl303990304311_))))
                          (let ((_tl303993304321_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e303995304314_)))
                                (_hd303994304318_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e303995304314_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl303993304321_))
                                (let ((_e303998304324_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl303993304321_))))
                                  (let ((_tl303996304331_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e303998304324_)))
                                        (_hd303997304328_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e303998304324_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd303997304328_))
                                        (let ((_e303999304334_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd303997304328_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e303999304334_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl303996304331_))
                                                  (let ((_e304002304338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl303996304331_))))
                                                    (let ((_tl304000304345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e304002304338_)))
                                                          (_hd304001304342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e304002304338_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl304000304345_))
                                                          (___kont309236309237_
                                                           _hd304001304342_
                                                           _hd303994304318_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl303996304331_))
                      (let ((___splice309240309241_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl303996304331_ '0))))
                        (let ((_tl304017304240_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309240309241_ '1)))
                              (_target304015304237_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309240309241_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl304017304240_))
                              (___match309312309313_
                               _e303992304304_
                               _hd303991304308_
                               _tl303990304311_
                               _e303995304314_
                               _hd303994304318_
                               _tl303993304321_
                               _e303998304324_
                               _hd303997304328_
                               _tl303996304331_
                               _e303999304334_
                               ___splice309240309241_
                               _target304015304237_
                               _tl304017304240_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl303993304321_))
                                  (let ((___splice309246309247_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl303993304321_
                                            '0))))
                                    (let ((_tl304045304087_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice309246309247_
                                              '1)))
                                          (_target304043304084_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice309246309247_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl304045304087_))
                                          (___match309352309353_
                                           _e303992304304_
                                           _hd303991304308_
                                           _tl303990304311_
                                           _e303995304314_
                                           _hd303994304318_
                                           _tl303993304321_
                                           ___splice309246309247_
                                           _target304043304084_
                                           _tl304045304087_)
                                          (let ()
                                            (declare (not safe))
                                            (_g303986304057_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g303986304057_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl303993304321_))
                          (let ((___splice309246309247_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl303993304321_
                                    '0))))
                            (let ((_tl304045304087_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice309246309247_ '1)))
                                  (_target304043304084_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice309246309247_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl304045304087_))
                                  (___match309352309353_
                                   _e303992304304_
                                   _hd303991304308_
                                   _tl303990304311_
                                   _e303995304314_
                                   _hd303994304318_
                                   _tl303993304321_
                                   ___splice309246309247_
                                   _target304043304084_
                                   _tl304045304087_)
                                  (let ()
                                    (declare (not safe))
                                    (_g303986304057_)))))
                          (let () (declare (not safe)) (_g303986304057_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303996304331_))
                                                      (let ((___splice309240309241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303996304331_ '0))))
                (let ((_tl304017304240_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309240309241_ '1)))
                      (_target304015304237_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309240309241_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl304017304240_))
                      (___match309312309313_
                       _e303992304304_
                       _hd303991304308_
                       _tl303990304311_
                       _e303995304314_
                       _hd303994304318_
                       _tl303993304321_
                       _e303998304324_
                       _hd303997304328_
                       _tl303996304331_
                       _e303999304334_
                       ___splice309240309241_
                       _target304015304237_
                       _tl304017304240_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl303996304331_))
                          (___kont309242309243_
                           _hd303997304328_
                           _hd303994304318_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl303993304321_))
                              (let ((___splice309246309247_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl303993304321_
                                        '0))))
                                (let ((_tl304045304087_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice309246309247_
                                          '1)))
                                      (_target304043304084_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice309246309247_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304045304087_))
                                      (___match309352309353_
                                       _e303992304304_
                                       _hd303991304308_
                                       _tl303990304311_
                                       _e303995304314_
                                       _hd303994304318_
                                       _tl303993304321_
                                       ___splice309246309247_
                                       _target304043304084_
                                       _tl304045304087_)
                                      (let ()
                                        (declare (not safe))
                                        (_g303986304057_)))))
                              (let ()
                                (declare (not safe))
                                (_g303986304057_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl303996304331_))
                  (___kont309242309243_ _hd303997304328_ _hd303994304318_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl303993304321_))
                      (let ((___splice309246309247_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl303993304321_ '0))))
                        (let ((_tl304045304087_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309246309247_ '1)))
                              (_target304043304084_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309246309247_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl304045304087_))
                              (___match309352309353_
                               _e303992304304_
                               _hd303991304308_
                               _tl303990304311_
                               _e303995304314_
                               _hd303994304318_
                               _tl303993304321_
                               ___splice309246309247_
                               _target304043304084_
                               _tl304045304087_)
                              (let ()
                                (declare (not safe))
                                (_g303986304057_)))))
                      (let () (declare (not safe)) (_g303986304057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303996304331_))
                                                  (___kont309242309243_
                                                   _hd303997304328_
                                                   _hd303994304318_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303993304321_))
                                                      (let ((___splice309246309247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303993304321_ '0))))
                (let ((_tl304045304087_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309246309247_ '1)))
                      (_target304043304084_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309246309247_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl304045304087_))
                      (___match309352309353_
                       _e303992304304_
                       _hd303991304308_
                       _tl303990304311_
                       _e303995304314_
                       _hd303994304318_
                       _tl303993304321_
                       ___splice309246309247_
                       _target304043304084_
                       _tl304045304087_)
                      (let () (declare (not safe)) (_g303986304057_)))))
              (let () (declare (not safe)) (_g303986304057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303996304331_))
                                            (___kont309242309243_
                                             _hd303997304328_
                                             _hd303994304318_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl303993304321_))
                                                (let ((___splice309246309247_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl303993304321_
                                                          '0))))
                                                  (let ((_tl304045304087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice309246309247_
                                                            '1)))
                                                        (_target304043304084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice309246309247_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl304045304087_))
                                                        (___match309352309353_
                                                         _e303992304304_
                                                         _hd303991304308_
                                                         _tl303990304311_
                                                         _e303995304314_
                                                         _hd303994304318_
                                                         _tl303993304321_
                                                         ___splice309246309247_
                                                         _target304043304084_
                                                         _tl304045304087_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g303986304057_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g303986304057_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl303993304321_))
                                    (let ((___splice309246309247_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl303993304321_
                                              '0))))
                                      (let ((_tl304045304087_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309246309247_
                                                '1)))
                                            (_target304043304084_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309246309247_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl304045304087_))
                                            (___match309352309353_
                                             _e303992304304_
                                             _hd303991304308_
                                             _tl303990304311_
                                             _e303995304314_
                                             _hd303994304318_
                                             _tl303993304321_
                                             ___splice309246309247_
                                             _target304043304084_
                                             _tl304045304087_)
                                            (let ()
                                              (declare (not safe))
                                              (_g303986304057_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g303986304057_))))))
                        (let () (declare (not safe)) (_g303986304057_)))))
                (let () (declare (not safe)) (_g303986304057_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx304374_)
      (let* ((___stx309355309356_ _$stx304374_)
             (_g304379304414_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309355309356_)))))
        (let ((___kont309358309359_
               (lambda (_L304536_ _L304538_)
                 (let ((__tmp309675
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309670
                        (let ((__tmp309671
                               (let ((__tmp309672
                                      (let ((__tmp309674
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309673
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304536_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309674 __tmp309673))))
                                 (declare (not safe))
                                 (cons __tmp309672 '()))))
                          (declare (not safe))
                          (cons _L304538_ __tmp309671))))
                   (declare (not safe))
                   (cons __tmp309675 __tmp309670))))
              (___kont309360309361_
               (lambda (_L304471_ _L304473_)
                 (let ((__tmp309684
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309676
                        (let ((__tmp309677
                               (let ((__tmp309678
                                      (let ((__tmp309683
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309679
                                             (let ((__tmp309680
                                                    (lambda (_g304490304493_
                                                             _g304491304496_)
                                                      (let ((__tmp309681
                                                             (let ((__tmp309682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g304490304493_ __tmp309682))))
                (declare (not safe))
                (cons __tmp309681 _g304491304496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp309680
                                                       '()
                                                       _L304471_))))
                                        (declare (not safe))
                                        (cons __tmp309683 __tmp309679))))
                                 (declare (not safe))
                                 (cons __tmp309678 '()))))
                          (declare (not safe))
                          (cons _L304473_ __tmp309677))))
                   (declare (not safe))
                   (cons __tmp309684 __tmp309676)))))
          (let ((___match309404309405_
                 (lambda (_e304396304421_
                          _hd304395304425_
                          _tl304394304428_
                          _e304399304431_
                          _hd304398304435_
                          _tl304397304438_
                          ___splice309362309363_
                          _target304400304441_
                          _tl304402304444_)
                   (letrec ((_loop304403304447_
                             (lambda (_hd304401304451_ _arity304407304454_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd304401304451_))
                                   (let ((_e304404304457_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd304401304451_))))
                                     (let ((_lp-tl304406304464_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e304404304457_)))
                                           (_lp-hd304405304461_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e304404304457_))))
                                       (_loop304403304447_
                                        _lp-tl304406304464_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd304405304461_
                                                _arity304407304454_)))))
                                   (let ((_arity304408304467_
                                          (reverse _arity304407304454_)))
                                     (___kont309360309361_
                                      _arity304408304467_
                                      _hd304398304435_))))))
                     (_loop304403304447_ _target304400304441_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309355309356_))
                (let ((_e304385304506_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309355309356_))))
                  (let ((_tl304383304513_
                         (let () (declare (not safe)) (##cdr _e304385304506_)))
                        (_hd304384304510_
                         (let ()
                           (declare (not safe))
                           (##car _e304385304506_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl304383304513_))
                        (let ((_e304388304516_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl304383304513_))))
                          (let ((_tl304386304523_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e304388304516_)))
                                (_hd304387304520_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e304388304516_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl304386304523_))
                                (let ((_e304391304526_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl304386304523_))))
                                  (let ((_tl304389304533_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e304391304526_)))
                                        (_hd304390304530_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e304391304526_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304389304533_))
                                        (___kont309358309359_
                                         _hd304390304530_
                                         _hd304387304520_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl304386304523_))
                                            (let ((___splice309362309363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl304386304523_
                                                      '0))))
                                              (let ((_tl304402304444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice309362309363_
                                                        '1)))
                                                    (_target304400304441_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice309362309363_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl304402304444_))
                                                    (___match309404309405_
                                                     _e304385304506_
                                                     _hd304384304510_
                                                     _tl304383304513_
                                                     _e304388304516_
                                                     _hd304387304520_
                                                     _tl304386304523_
                                                     ___splice309362309363_
                                                     _target304400304441_
                                                     _tl304402304444_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g304379304414_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g304379304414_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl304386304523_))
                                    (let ((___splice309362309363_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl304386304523_
                                              '0))))
                                      (let ((_tl304402304444_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309362309363_
                                                '1)))
                                            (_target304400304441_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309362309363_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl304402304444_))
                                            (___match309404309405_
                                             _e304385304506_
                                             _hd304384304510_
                                             _tl304383304513_
                                             _e304388304516_
                                             _hd304387304520_
                                             _tl304386304523_
                                             ___splice309362309363_
                                             _target304400304441_
                                             _tl304402304444_)
                                            (let ()
                                              (declare (not safe))
                                              (_g304379304414_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g304379304414_))))))
                        (let () (declare (not safe)) (_g304379304414_)))))
                (let () (declare (not safe)) (_g304379304414_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx304558_)
      (let* ((_g304562304597_
              (lambda (_g304563304593_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304563304593_))))
             (_g304561304725_
              (lambda (_g304563304601_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304563304601_))
                    (let ((_e304568304604_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304563304601_))))
                      (let ((_hd304567304608_
                             (let ()
                               (declare (not safe))
                               (##car _e304568304604_)))
                            (_tl304566304611_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304568304604_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304566304611_))
                            (let ((_g309685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304566304611_
                                      '0))))
                              (begin
                                (let ((_g309686_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309685_)
                                             (##vector-length _g309685_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309686_ 2)))
                                      (error "Context expects 2 values"
                                             _g309686_)))
                                (let ((_target304569304614_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309685_ 0)))
                                      (_tl304571304617_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309685_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304571304617_))
                                      (letrec ((_loop304572304620_
                                                (lambda (_hd304570304624_
                                                         _arity304576304627_
                                                         _prim304577304629_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304570304624_))
                                                      (let ((_e304573304632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304570304624_))))
                (let ((_lp-hd304574304636_
                       (let () (declare (not safe)) (##car _e304573304632_)))
                      (_lp-tl304575304639_
                       (let () (declare (not safe)) (##cdr _e304573304632_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304574304636_))
                      (let ((_e304582304642_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304574304636_))))
                        (let ((_hd304581304646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304582304642_)))
                              (_tl304580304649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304582304642_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl304580304649_))
                              (let ((_g309695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl304580304649_
                                        '0))))
                                (begin
                                  (let ((_g309696_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g309695_)
                                               (##vector-length _g309695_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g309696_ 2)))
                                        (error "Context expects 2 values"
                                               _g309696_)))
                                  (let ((_target304583304652_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309695_ 0)))
                                        (_tl304585304655_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309695_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304585304655_))
                                        (letrec ((_loop304586304658_
                                                  (lambda (_hd304584304662_
                                                           _arity304590304665_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd304584304662_))
                                                        (let ((_e304587304668_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd304584304662_))))
                  (let ((_lp-hd304588304672_
                         (let () (declare (not safe)) (##car _e304587304668_)))
                        (_lp-tl304589304675_
                         (let ()
                           (declare (not safe))
                           (##cdr _e304587304668_))))
                    (_loop304586304658_
                     _lp-tl304589304675_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd304588304672_ _arity304590304665_)))))
                (let ((_arity304591304678_ (reverse _arity304590304665_)))
                  (_loop304572304620_
                   _lp-tl304575304639_
                   (let ()
                     (declare (not safe))
                     (cons _arity304591304678_ _arity304576304627_))
                   (let ()
                     (declare (not safe))
                     (cons _hd304581304646_ _prim304577304629_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop304586304658_
                                           _target304583304652_
                                           '()))
                                        (_g304562304597_ _g304563304601_)))))
                              (_g304562304597_ _g304563304601_))))
                      (_g304562304597_ _g304563304601_))))
              (let ((_arity304578304682_ (reverse _arity304576304627_))
                    (_prim304579304685_ (reverse _prim304577304629_)))
                ((lambda (_L304688_ _L304690_)
                   (let ((__tmp309694
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309687
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304688_
                               _L304690_))
                            (let ((__tmp309688
                                   (lambda (_g304705304711_
                                            _g304706304714_
                                            _g304707304716_)
                                     (let ((__tmp309689
                                            (let ((__tmp309693
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp309690
                                                   (let ((__tmp309691
                                                          (let ((__tmp309692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g304708304719_ _g304709304722_)
                           (let ()
                             (declare (not safe))
                             (cons _g304708304719_ _g304709304722_)))))
                    (declare (not safe))
                    (foldr1 __tmp309692 '() _g304705304711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304706304714_
                                                           __tmp309691))))
                                              (declare (not safe))
                                              (cons __tmp309693 __tmp309690))))
                                       (declare (not safe))
                                       (cons __tmp309689 _g304707304716_)))))
                              (declare (not safe))
                              (foldr2 __tmp309688 '() _L304688_ _L304690_)))))
                     (declare (not safe))
                     (cons __tmp309694 __tmp309687)))
                 _arity304578304682_
                 _prim304579304685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304572304620_
                                         _target304569304614_
                                         '()
                                         '()))
                                      (_g304562304597_ _g304563304601_)))))
                            (_g304562304597_ _g304563304601_))))
                    (_g304562304597_ _g304563304601_)))))
        (_g304561304725_ _$stx304558_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx304731_)
      (let* ((_g304735304770_
              (lambda (_g304736304766_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304736304766_))))
             (_g304734304898_
              (lambda (_g304736304774_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304736304774_))
                    (let ((_e304741304777_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304736304774_))))
                      (let ((_hd304740304781_
                             (let ()
                               (declare (not safe))
                               (##car _e304741304777_)))
                            (_tl304739304784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304741304777_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304739304784_))
                            (let ((_g309697_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304739304784_
                                      '0))))
                              (begin
                                (let ((_g309698_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309697_)
                                             (##vector-length _g309697_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309698_ 2)))
                                      (error "Context expects 2 values"
                                             _g309698_)))
                                (let ((_target304742304787_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309697_ 0)))
                                      (_tl304744304790_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309697_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304744304790_))
                                      (letrec ((_loop304745304793_
                                                (lambda (_hd304743304797_
                                                         _arity304749304800_
                                                         _prim304750304802_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304743304797_))
                                                      (let ((_e304746304805_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304743304797_))))
                (let ((_lp-hd304747304809_
                       (let () (declare (not safe)) (##car _e304746304805_)))
                      (_lp-tl304748304812_
                       (let () (declare (not safe)) (##cdr _e304746304805_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304747304809_))
                      (let ((_e304755304815_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304747304809_))))
                        (let ((_hd304754304819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304755304815_)))
                              (_tl304753304822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304755304815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl304753304822_))
                              (let ((_g309707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl304753304822_
                                        '0))))
                                (begin
                                  (let ((_g309708_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g309707_)
                                               (##vector-length _g309707_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g309708_ 2)))
                                        (error "Context expects 2 values"
                                               _g309708_)))
                                  (let ((_target304756304825_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309707_ 0)))
                                        (_tl304758304828_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309707_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304758304828_))
                                        (letrec ((_loop304759304831_
                                                  (lambda (_hd304757304835_
                                                           _arity304763304838_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd304757304835_))
                                                        (let ((_e304760304841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd304757304835_))))
                  (let ((_lp-hd304761304845_
                         (let () (declare (not safe)) (##car _e304760304841_)))
                        (_lp-tl304762304848_
                         (let ()
                           (declare (not safe))
                           (##cdr _e304760304841_))))
                    (_loop304759304831_
                     _lp-tl304762304848_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd304761304845_ _arity304763304838_)))))
                (let ((_arity304764304851_ (reverse _arity304763304838_)))
                  (_loop304745304793_
                   _lp-tl304748304812_
                   (let ()
                     (declare (not safe))
                     (cons _arity304764304851_ _arity304749304800_))
                   (let ()
                     (declare (not safe))
                     (cons _hd304754304819_ _prim304750304802_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop304759304831_
                                           _target304756304825_
                                           '()))
                                        (_g304735304770_ _g304736304774_)))))
                              (_g304735304770_ _g304736304774_))))
                      (_g304735304770_ _g304736304774_))))
              (let ((_arity304751304855_ (reverse _arity304749304800_))
                    (_prim304752304858_ (reverse _prim304750304802_)))
                ((lambda (_L304861_ _L304863_)
                   (let ((__tmp309706
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309699
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304861_
                               _L304863_))
                            (let ((__tmp309700
                                   (lambda (_g304878304884_
                                            _g304879304887_
                                            _g304880304889_)
                                     (let ((__tmp309701
                                            (let ((__tmp309705
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp309702
                                                   (let ((__tmp309703
                                                          (let ((__tmp309704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g304881304892_ _g304882304895_)
                           (let ()
                             (declare (not safe))
                             (cons _g304881304892_ _g304882304895_)))))
                    (declare (not safe))
                    (foldr1 __tmp309704 '() _g304878304884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304879304887_
                                                           __tmp309703))))
                                              (declare (not safe))
                                              (cons __tmp309705 __tmp309702))))
                                       (declare (not safe))
                                       (cons __tmp309701 _g304880304889_)))))
                              (declare (not safe))
                              (foldr2 __tmp309700 '() _L304861_ _L304863_)))))
                     (declare (not safe))
                     (cons __tmp309706 __tmp309699)))
                 _arity304751304855_
                 _prim304752304858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304745304793_
                                         _target304742304787_
                                         '()
                                         '()))
                                      (_g304735304770_ _g304736304774_)))))
                            (_g304735304770_ _g304736304774_))))
                    (_g304735304770_ _g304736304774_)))))
        (_g304734304898_ _$stx304731_)))))
