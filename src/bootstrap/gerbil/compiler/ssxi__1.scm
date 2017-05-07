(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx6450_)
      (let ((_g64546472_
             (lambda (_g64556468_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64556468_))))
        (let ((_g64536528_
               (lambda (_g64556476_)
                 (if (gx#stx-pair? _g64556476_)
                     (let ((_e64586479_ (gx#syntax-e _g64556476_)))
                       (let ((_hd64596483_ (##car _e64586479_))
                             (_tl64606486_ (##cdr _e64586479_)))
                         (if (gx#stx-pair? _tl64606486_)
                             (let ((_e64616489_ (gx#syntax-e _tl64606486_)))
                               (let ((_hd64626493_ (##car _e64616489_))
                                     (_tl64636496_ (##cdr _e64616489_)))
                                 (if (gx#stx-pair? _tl64636496_)
                                     (let ((_e64646499_
                                            (gx#syntax-e _tl64636496_)))
                                       (let ((_hd64656503_ (##car _e64646499_))
                                             (_tl64666506_
                                              (##cdr _e64646499_)))
                                         (if (gx#stx-null? _tl64666506_)
                                             ((lambda (_L6509_ _L6511_)
                                                (if (gx#identifier? _L6511_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'optimizer-declare-type!)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L6511_ '()))
                        (cons _L6509_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64546472_ _g64556476_)))
                                              _hd64656503_
                                              _hd64626493_)
                                             (_g64546472_ _g64556476_))))
                                     (_g64546472_ _g64556476_))))
                             (_g64546472_ _g64556476_))))
                     (_g64546472_ _g64556476_)))))
          (_g64536528_ _$stx6450_)))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx6532_)
      (let ((_g65366565_
             (lambda (_g65376561_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g65376561_))))
        (let ((_g65356665_
               (lambda (_g65376569_)
                 (if (gx#stx-pair? _g65376569_)
                     (let ((_e65406572_ (gx#syntax-e _g65376569_)))
                       (let ((_hd65416576_ (##car _e65406572_))
                             (_tl65426579_ (##cdr _e65406572_)))
                         (if (gx#stx-pair/null? _tl65426579_)
                             (if (fx>= (gx#stx-length _tl65426579_) '0)
                                 (let ((_g7284_ (gx#syntax-split-splice
                                                 _tl65426579_
                                                 '0)))
                                   (begin
                                     (let ((_g7285_ (values-count _g7284_)))
                                       (if (not (fx= _g7285_ 2))
                                           (error "Context expects 2 values"
                                                  _g7285_)))
                                     (let ((_target65436582_
                                            (values-ref _g7284_ 0))
                                           (_tl65456585_
                                            (values-ref _g7284_ 1)))
                                       (if (gx#stx-null? _tl65456585_)
                                           (letrec ((_loop65466588_
                                                     (lambda (_hd65446592_
                                                              _type65506595_
                                                              _symbol65516597_)
                                                       (if (gx#stx-pair?
                                                            _hd65446592_)
                                                           (let ((_e65476600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd65446592_)))
                     (let ((_lp-hd65486604_ (##car _e65476600_))
                           (_lp-tl65496607_ (##cdr _e65476600_)))
                       (if (gx#stx-pair? _lp-hd65486604_)
                           (let ((_e65546610_ (gx#syntax-e _lp-hd65486604_)))
                             (let ((_hd65556614_ (##car _e65546610_))
                                   (_tl65566617_ (##cdr _e65546610_)))
                               (if (gx#stx-pair? _tl65566617_)
                                   (let ((_e65576620_
                                          (gx#syntax-e _tl65566617_)))
                                     (let ((_hd65586624_ (##car _e65576620_))
                                           (_tl65596627_ (##cdr _e65576620_)))
                                       (if (gx#stx-null? _tl65596627_)
                                           (_loop65466588_
                                            _lp-tl65496607_
                                            (cons _hd65586624_ _type65506595_)
                                            (cons _hd65556614_
                                                  _symbol65516597_))
                                           (_g65366565_ _g65376569_))))
                                   (_g65366565_ _g65376569_))))
                           (_g65366565_ _g65376569_))))
                   (let ((_type65526630_ (reverse _type65506595_))
                         (_symbol65536633_ (reverse _symbol65516597_)))
                     ((lambda (_L6636_ _L6638_)
                        (cons (gx#datum->syntax '#f 'begin)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _L6636_
                                 _L6638_)
                                (foldr (lambda (_g66536657_
                                                _g66546660_
                                                _g66556662_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'declare-type)
                                                     (cons _g66546660_
                                                           (cons _g66536657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g66556662_))
                                       '()
                                       _L6636_
                                       _L6638_))))
                      _type65526630_
                      _symbol65536633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop65466588_
                                              _target65436582_
                                              '()
                                              '()))
                                           (_g65366565_ _g65376569_)))))
                                 (_g65366565_ _g65376569_))
                             (_g65366565_ _g65376569_))))
                     (_g65366565_ _g65376569_)))))
          (_g65356665_ _$stx6532_)))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx6670_)
      (let ((_g66766742_
             (lambda (_g66776738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g66776738_))))
        (let ((_g66756827_
               (lambda (_g66776746_)
                 (if (gx#stx-pair? _g66776746_)
                     (let ((_e67226749_ (gx#syntax-e _g66776746_)))
                       (let ((_hd67236753_ (##car _e67226749_))
                             (_tl67246756_ (##cdr _e67226749_)))
                         (if (gx#stx-pair? _tl67246756_)
                             (let ((_e67256759_ (gx#syntax-e _tl67246756_)))
                               (let ((_hd67266763_ (##car _e67256759_))
                                     (_tl67276766_ (##cdr _e67256759_)))
                                 (if (gx#stx-pair? _tl67276766_)
                                     (let ((_e67286769_
                                            (gx#syntax-e _tl67276766_)))
                                       (let ((_hd67296773_ (##car _e67286769_))
                                             (_tl67306776_
                                              (##cdr _e67286769_)))
                                         (if (gx#stx-pair? _tl67306776_)
                                             (let ((_e67316779_
                                                    (gx#syntax-e
                                                     _tl67306776_)))
                                               (let ((_hd67326783_
                                                      (##car _e67316779_))
                                                     (_tl67336786_
                                                      (##cdr _e67316779_)))
                                                 (if (gx#stx-pair?
                                                      _tl67336786_)
                                                     (let ((_e67346789_
                                                            (gx#syntax-e
                                                             _tl67336786_)))
                                                       (let ((_hd67356793_
                                                              (##car _e67346789_))
                                                             (_tl67366796_
                                                              (##cdr _e67346789_)))
                                                         (if (gx#stx-null?
                                                              _tl67366796_)
                                                             ((lambda (_L6799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L6801_
                               _L6802_
                               _L6803_
                               _L6804_)
                        (cons _L6804_
                              (cons (gx#datum->syntax '#f 'type)
                                    (cons _L6802_
                                          (cons _L6801_
                                                (cons _L6799_
                                                      (cons '#f '())))))))
                      _hd67356793_
                      _hd67326783_
                      _hd67296773_
                      _hd67266763_
                      _hd67236753_)
                     (_g66766742_ _g66776746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66766742_
                                                      _g66776746_))))
                                             (_g66766742_ _g66776746_))))
                                     (_g66766742_ _g66776746_))))
                             (_g66766742_ _g66776746_))))
                     (_g66766742_ _g66776746_)))))
          (let ((_g66746897_
                 (lambda (_g66776831_)
                   (if (gx#stx-pair? _g66776831_)
                       (let ((_e67056834_ (gx#syntax-e _g66776831_)))
                         (let ((_hd67066838_ (##car _e67056834_))
                               (_tl67076841_ (##cdr _e67056834_)))
                           (if (gx#stx-pair? _tl67076841_)
                               (let ((_e67086844_ (gx#syntax-e _tl67076841_)))
                                 (let ((_hd67096848_ (##car _e67086844_))
                                       (_tl67106851_ (##cdr _e67086844_)))
                                   (if (gx#stx-pair? _tl67106851_)
                                       (let ((_e67116854_
                                              (gx#syntax-e _tl67106851_)))
                                         (let ((_hd67126858_
                                                (##car _e67116854_))
                                               (_tl67136861_
                                                (##cdr _e67116854_)))
                                           (if (gx#stx-pair? _tl67136861_)
                                               (let ((_e67146864_
                                                      (gx#syntax-e
                                                       _tl67136861_)))
                                                 (let ((_hd67156868_
                                                        (##car _e67146864_))
                                                       (_tl67166871_
                                                        (##cdr _e67146864_)))
                                                   (if (gx#stx-null?
                                                        _tl67166871_)
                                                       ((lambda (_L6874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6876_
                         _L6877_
                         _L6878_)
                  (cons _L6878_
                        (cons _L6877_
                              (cons _L6876_
                                    (cons _L6874_
                                          (cons '#f (cons '#f '())))))))
                _hd67156868_
                _hd67126858_
                _hd67096848_
                _hd67066838_)
               (_g66756827_ _g66776831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66756827_ _g66776831_))))
                                       (_g66756827_ _g66776831_))))
                               (_g66756827_ _g66776831_))))
                       (_g66756827_ _g66776831_)))))
            (let ((_g66736993_
                   (lambda (_g66776901_)
                     (if (gx#stx-pair? _g66776901_)
                         (let ((_e66836904_ (gx#syntax-e _g66776901_)))
                           (let ((_hd66846908_ (##car _e66836904_))
                                 (_tl66856911_ (##cdr _e66836904_)))
                             (if (gx#stx-pair? _tl66856911_)
                                 (let ((_e66866914_
                                        (gx#syntax-e _tl66856911_)))
                                   (let ((_hd66876918_ (##car _e66866914_))
                                         (_tl66886921_ (##cdr _e66866914_)))
                                     (if (gx#stx-pair? _tl66886921_)
                                         (let ((_e66896924_
                                                (gx#syntax-e _tl66886921_)))
                                           (let ((_hd66906928_
                                                  (##car _e66896924_))
                                                 (_tl66916931_
                                                  (##cdr _e66896924_)))
                                             (if (gx#stx-pair? _tl66916931_)
                                                 (let ((_e66926934_
                                                        (gx#syntax-e
                                                         _tl66916931_)))
                                                   (let ((_hd66936938_
                                                          (##car _e66926934_))
                                                         (_tl66946941_
                                                          (##cdr _e66926934_)))
                                                     (if (gx#stx-pair?
                                                          _tl66946941_)
                                                         (let ((_e66956944_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66946941_)))
                   (let ((_hd66966948_ (##car _e66956944_))
                         (_tl66976951_ (##cdr _e66956944_)))
                     (if (gx#stx-pair? _tl66976951_)
                         (let ((_e66986954_ (gx#syntax-e _tl66976951_)))
                           (let ((_hd66996958_ (##car _e66986954_))
                                 (_tl67006961_ (##cdr _e66986954_)))
                             (if (gx#stx-null? _tl67006961_)
                                 ((lambda (_L6964_
                                           _L6966_
                                           _L6967_
                                           _L6968_
                                           _L6969_)
                                    (cons (gx#datum->syntax
                                           '#f
                                           'make-!struct-type)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L6969_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L6968_ '()))
                                                      (cons _L6967_
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L6966_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L6964_ '()))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _hd66996958_
                                  _hd66966948_
                                  _hd66936938_
                                  _hd66906928_
                                  _hd66876918_)
                                 (_g66746897_ _g66776901_))))
                         (_g66746897_ _g66776901_))))
                 (_g66746897_ _g66776901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g66746897_ _g66776901_))))
                                         (_g66746897_ _g66776901_))))
                                 (_g66746897_ _g66776901_))))
                         (_g66746897_ _g66776901_)))))
              (_g66736993_ _$stx6670_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx6997_)
      (let ((_g70017015_
             (lambda (_g70027011_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g70027011_))))
        (let ((_g70007056_
               (lambda (_g70027019_)
                 (if (gx#stx-pair? _g70027019_)
                     (let ((_e70047022_ (gx#syntax-e _g70027019_)))
                       (let ((_hd70057026_ (##car _e70047022_))
                             (_tl70067029_ (##cdr _e70047022_)))
                         (if (gx#stx-pair? _tl70067029_)
                             (let ((_e70077032_ (gx#syntax-e _tl70067029_)))
                               (let ((_hd70087036_ (##car _e70077032_))
                                     (_tl70097039_ (##cdr _e70077032_)))
                                 (if (gx#stx-null? _tl70097039_)
                                     ((lambda (_L7042_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-!struct-pred)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L7042_ '()))
                                                    '())))
                                      _hd70087036_)
                                     (_g70017015_ _g70027019_))))
                             (_g70017015_ _g70027019_))))
                     (_g70017015_ _g70027019_)))))
          (_g70007056_ _$stx6997_)))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx7060_)
      (let ((_g70647078_
             (lambda (_g70657074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g70657074_))))
        (let ((_g70637119_
               (lambda (_g70657082_)
                 (if (gx#stx-pair? _g70657082_)
                     (let ((_e70677085_ (gx#syntax-e _g70657082_)))
                       (let ((_hd70687089_ (##car _e70677085_))
                             (_tl70697092_ (##cdr _e70677085_)))
                         (if (gx#stx-pair? _tl70697092_)
                             (let ((_e70707095_ (gx#syntax-e _tl70697092_)))
                               (let ((_hd70717099_ (##car _e70707095_))
                                     (_tl70727102_ (##cdr _e70707095_)))
                                 (if (gx#stx-null? _tl70727102_)
                                     ((lambda (_L7105_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-!struct-cons)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L7105_ '()))
                                                    '())))
                                      _hd70717099_)
                                     (_g70647078_ _g70657082_))))
                             (_g70647078_ _g70657082_))))
                     (_g70647078_ _g70657082_)))))
          (_g70637119_ _$stx7060_)))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx7123_)
      (let ((_g71277145_
             (lambda (_g71287141_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g71287141_))))
        (let ((_g71267200_
               (lambda (_g71287149_)
                 (if (gx#stx-pair? _g71287149_)
                     (let ((_e71317152_ (gx#syntax-e _g71287149_)))
                       (let ((_hd71327156_ (##car _e71317152_))
                             (_tl71337159_ (##cdr _e71317152_)))
                         (if (gx#stx-pair? _tl71337159_)
                             (let ((_e71347162_ (gx#syntax-e _tl71337159_)))
                               (let ((_hd71357166_ (##car _e71347162_))
                                     (_tl71367169_ (##cdr _e71347162_)))
                                 (if (gx#stx-pair? _tl71367169_)
                                     (let ((_e71377172_
                                            (gx#syntax-e _tl71367169_)))
                                       (let ((_hd71387176_ (##car _e71377172_))
                                             (_tl71397179_
                                              (##cdr _e71377172_)))
                                         (if (gx#stx-null? _tl71397179_)
                                             ((lambda (_L7182_ _L7184_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'make-!struct-getf)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L7184_ '()))
                    (cons _L7182_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd71387176_
                                              _hd71357166_)
                                             (_g71277145_ _g71287149_))))
                                     (_g71277145_ _g71287149_))))
                             (_g71277145_ _g71287149_))))
                     (_g71277145_ _g71287149_)))))
          (_g71267200_ _$stx7123_)))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx7204_)
      (let ((_g72087226_
             (lambda (_g72097222_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g72097222_))))
        (let ((_g72077281_
               (lambda (_g72097230_)
                 (if (gx#stx-pair? _g72097230_)
                     (let ((_e72127233_ (gx#syntax-e _g72097230_)))
                       (let ((_hd72137237_ (##car _e72127233_))
                             (_tl72147240_ (##cdr _e72127233_)))
                         (if (gx#stx-pair? _tl72147240_)
                             (let ((_e72157243_ (gx#syntax-e _tl72147240_)))
                               (let ((_hd72167247_ (##car _e72157243_))
                                     (_tl72177250_ (##cdr _e72157243_)))
                                 (if (gx#stx-pair? _tl72177250_)
                                     (let ((_e72187253_
                                            (gx#syntax-e _tl72177250_)))
                                       (let ((_hd72197257_ (##car _e72187253_))
                                             (_tl72207260_
                                              (##cdr _e72187253_)))
                                         (if (gx#stx-null? _tl72207260_)
                                             ((lambda (_L7263_ _L7265_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'make-!struct-setf)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L7265_ '()))
                    (cons _L7263_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd72197257_
                                              _hd72167247_)
                                             (_g72087226_ _g72097230_))))
                                     (_g72087226_ _g72097230_))))
                             (_g72087226_ _g72097230_))))
                     (_g72087226_ _g72097230_)))))
          (_g72077281_ _$stx7204_))))))
