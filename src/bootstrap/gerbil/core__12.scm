(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args31882_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31882_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args31878_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31878_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31875_)
      (if (gx#identifier? _stx31875_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31875_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31872_)
      (if (gx#identifier? _stx31872_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31872_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31886_)
      (let* ((___stx4069540696_ _stx31886_)
             (_g3189231951_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4069540696_))))
        (let ((___kont4069840699_
               (lambda (_L32224_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32224_)
                  _stx31886_)))
              (___kont4070040701_
               (lambda (_L32123_ _L32125_ _L32126_)
                 (let* ((_g3214832156_
                         (lambda (_g3214932152_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3214932152_)))
                        (_g3214732183_
                         (lambda (_g3214932160_)
                           ((lambda (_L32163_)
                              (let ()
                                (cons _L32163_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3217432177_
                                                        _g3217532180_)
                                                 (cons _g3217432177_
                                                       _g3217532180_))
                                               (cons _L32123_ '())
                                               _L32125_)))))
                            _g3214932160_))))
                   (_g3214732183_
                    (gx#stx-identifier _L32126_ _L32126_ '"-set!")))))
              (___kont4070440705_
               (lambda (_L32033_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32033_)
                  _stx31886_)))
              (___kont4070640707_
               (lambda (_L31988_ _L31990_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L31990_ (cons _L31988_ '()))))))
          (let* ((___match4078640787_
                  (lambda (_e3193731958_
                           _hd3193831962_
                           _tl3193931965_
                           _e3194031968_
                           _hd3194131972_
                           _tl3194231975_
                           _e3194331978_
                           _hd3194431982_
                           _tl3194531985_)
                    (let ((_L31988_ _hd3194431982_) (_L31990_ _hd3194131972_))
                      (if (gx#identifier? _L31990_)
                          (___kont4070640707_ _L31988_ _L31990_)
                          (_g3189231951_)))))
                 (___match4076640767_
                  (lambda (_e3192932013_
                           _hd3193032017_
                           _tl3193132020_
                           _e3193232023_
                           _hd3193332027_
                           _tl3193432030_)
                    (let ((_L32033_ _hd3193332027_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32033_)
                          (___kont4070440705_ _L32033_)
                          (if (gx#stx-pair? _tl3193432030_)
                              (let ((_e3194331978_
                                     (gx#syntax-e _tl3193432030_)))
                                (let ((_tl3194531985_ (##cdr _e3194331978_))
                                      (_hd3194431982_ (##car _e3194331978_)))
                                  (if (gx#stx-null? _tl3194531985_)
                                      (___match4078640787_
                                       _e3192932013_
                                       _hd3193032017_
                                       _tl3193132020_
                                       _e3193232023_
                                       _hd3193332027_
                                       _tl3193432030_
                                       _e3194331978_
                                       _hd3194431982_
                                       _tl3194531985_)
                                      (_g3189231951_))))
                              (_g3189231951_))))))
                 (___match4075440755_
                  (lambda (_e3190732053_
                           _hd3190832057_
                           _tl3190932060_
                           _e3191032063_
                           _hd3191132067_
                           _tl3191232070_
                           _e3191332073_
                           _hd3191432077_
                           _tl3191532080_
                           ___splice4070240703_
                           _target3191632083_
                           _tl3191832086_)
                    (letrec ((_loop3191932089_
                              (lambda (_hd3191732093_ _arg3192332096_)
                                (if (gx#stx-pair? _hd3191732093_)
                                    (let ((_e3192032099_
                                           (gx#syntax-e _hd3191732093_)))
                                      (let ((_lp-tl3192232106_
                                             (##cdr _e3192032099_))
                                            (_lp-hd3192132103_
                                             (##car _e3192032099_)))
                                        (_loop3191932089_
                                         _lp-tl3192232106_
                                         (cons _lp-hd3192132103_
                                               _arg3192332096_))))
                                    (let ((_arg3192432109_
                                           (reverse _arg3192332096_)))
                                      (if (gx#stx-pair? _tl3191232070_)
                                          (let ((_e3192532113_
                                                 (gx#syntax-e _tl3191232070_)))
                                            (let ((_tl3192732120_
                                                   (##cdr _e3192532113_))
                                                  (_hd3192632117_
                                                   (##car _e3192532113_)))
                                              (if (gx#stx-null? _tl3192732120_)
                                                  (let ((_L32123_
                                                         _hd3192632117_)
                                                        (_L32125_
                                                         _arg3192432109_)
                                                        (_L32126_
                                                         _hd3191432077_))
                                                    (if (gx#identifier?
                                                         _L32126_)
                                                        (___kont4070040701_
                                                         _L32123_
                                                         _L32125_
                                                         _L32126_)
                                                        (___match4076640767_
                                                         _e3190732053_
                                                         _hd3190832057_
                                                         _tl3190932060_
                                                         _e3191032063_
                                                         _hd3191132067_
                                                         _tl3191232070_)))
                                                  (___match4076640767_
                                                   _e3190732053_
                                                   _hd3190832057_
                                                   _tl3190932060_
                                                   _e3191032063_
                                                   _hd3191132067_
                                                   _tl3191232070_))))
                                          (___match4076640767_
                                           _e3190732053_
                                           _hd3190832057_
                                           _tl3190932060_
                                           _e3191032063_
                                           _hd3191132067_
                                           _tl3191232070_)))))))
                      (_loop3191932089_ _target3191632083_ '())))))
            (if (gx#stx-pair? ___stx4069540696_)
                (let ((_e3189532194_ (gx#syntax-e ___stx4069540696_)))
                  (let ((_tl3189732201_ (##cdr _e3189532194_))
                        (_hd3189632198_ (##car _e3189532194_)))
                    (if (gx#stx-pair? _tl3189732201_)
                        (let ((_e3189832204_ (gx#syntax-e _tl3189732201_)))
                          (let ((_tl3190032211_ (##cdr _e3189832204_))
                                (_hd3189932208_ (##car _e3189832204_)))
                            (if (gx#stx-pair? _hd3189932208_)
                                (let ((_e3190132214_
                                       (gx#syntax-e _hd3189932208_)))
                                  (let ((_tl3190332221_ (##cdr _e3190132214_))
                                        (_hd3190232218_ (##car _e3190132214_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32224_ _hd3190232218_))
                                          (___kont4069840699_ _L32224_))
                                        (if (gx#stx-pair/null? _tl3190332221_)
                                            (let ((___splice4070240703_
                                                   (gx#syntax-split-splice
                                                    _tl3190332221_
                                                    '0)))
                                              (let ((_tl3191832086_
                                                     (##vector-ref
                                                      ___splice4070240703_
                                                      '1))
                                                    (_target3191632083_
                                                     (##vector-ref
                                                      ___splice4070240703_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3191832086_)
                                                    (___match4075440755_
                                                     _e3189532194_
                                                     _hd3189632198_
                                                     _tl3189732201_
                                                     _e3189832204_
                                                     _hd3189932208_
                                                     _tl3190032211_
                                                     _e3190132214_
                                                     _hd3190232218_
                                                     _tl3190332221_
                                                     ___splice4070240703_
                                                     _target3191632083_
                                                     _tl3191832086_)
                                                    (___match4076640767_
                                                     _e3189532194_
                                                     _hd3189632198_
                                                     _tl3189732201_
                                                     _e3189832204_
                                                     _hd3189932208_
                                                     _tl3190032211_))))
                                            (___match4076640767_
                                             _e3189532194_
                                             _hd3189632198_
                                             _tl3189732201_
                                             _e3189832204_
                                             _hd3189932208_
                                             _tl3190032211_)))))
                                (___match4076640767_
                                 _e3189532194_
                                 _hd3189632198_
                                 _tl3189732201_
                                 _e3189832204_
                                 _hd3189932208_
                                 _tl3190032211_))))
                        (_g3189231951_))))
                (_g3189231951_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32244_)
      (let* ((_g3224732271_
              (lambda (_g3224832267_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3224832267_)))
             (_g3224632449_
              (lambda (_g3224832275_)
                (if (gx#stx-pair? _g3224832275_)
                    (let ((_e3225132278_ (gx#syntax-e _g3224832275_)))
                      (let ((_hd3225232282_ (##car _e3225132278_))
                            (_tl3225332285_ (##cdr _e3225132278_)))
                        (if (gx#stx-pair/null? _tl3225332285_)
                            (if (fx>= (gx#stx-length _tl3225332285_) '1)
                                (let ((_g41295_
                                       (gx#syntax-split-splice
                                        _tl3225332285_
                                        '1)))
                                  (begin
                                    (let ((_g41296_
                                           (if (##values? _g41295_)
                                               (##vector-length _g41295_)
                                               1)))
                                      (if (not (##fx= _g41296_ 2))
                                          (error "Context expects 2 values"
                                                 _g41296_)))
                                    (let ((_target3225432288_
                                           (##vector-ref _g41295_ 0))
                                          (_tl3225632291_
                                           (##vector-ref _g41295_ 1)))
                                      (if (gx#stx-pair? _tl3225632291_)
                                          (let ((_e3226332294_
                                                 (gx#syntax-e _tl3225632291_)))
                                            (let ((_hd3226432298_
                                                   (##car _e3226332294_))
                                                  (_tl3226532301_
                                                   (##cdr _e3226332294_)))
                                              (if (gx#stx-null? _tl3226532301_)
                                                  (letrec ((_loop3225732304_
                                                            (lambda (_hd3225532308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3226132311_)
                      (if (gx#stx-pair? _hd3225532308_)
                          (let ((_e3225832314_ (gx#syntax-e _hd3225532308_)))
                            (let ((_lp-hd3225932318_ (##car _e3225832314_))
                                  (_lp-tl3226032321_ (##cdr _e3225832314_)))
                              (_loop3225732304_
                               _lp-tl3226032321_
                               (cons _lp-hd3225932318_ _tgt3226132311_))))
                          (let ((_tgt3226232324_ (reverse _tgt3226132311_)))
                            ((lambda (_L32328_ _L32330_)
                               (let* ((_g3234832365_
                                       (lambda (_g3234932361_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3234932361_)))
                                      (_g3234732437_
                                       (lambda (_g3234932369_)
                                         (if (gx#stx-pair/null? _g3234932369_)
                                             (let ((_g41297_
                                                    (gx#syntax-split-splice
                                                     _g3234932369_
                                                     '0)))
                                               (begin
                                                 (let ((_g41298_
                                                        (if (##values?
                                                             _g41297_)
                                                            (##vector-length
                                                             _g41297_)
                                                            1)))
                                                   (if (not (##fx= _g41298_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41298_)))
                                                 (let ((_target3235132372_
                                                        (##vector-ref
                                                         _g41297_
                                                         0))
                                                       (_tl3235332375_
                                                        (##vector-ref
                                                         _g41297_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3235332375_)
                                                       (letrec ((_loop3235432378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3235232382_ _$e3235832385_)
                           (if (gx#stx-pair? _hd3235232382_)
                               (let ((_e3235532388_
                                      (gx#syntax-e _hd3235232382_)))
                                 (let ((_lp-hd3235632392_
                                        (##car _e3235532388_))
                                       (_lp-tl3235732395_
                                        (##cdr _e3235532388_)))
                                   (_loop3235432378_
                                    _lp-tl3235732395_
                                    (cons _lp-hd3235632392_ _$e3235832385_))))
                               (let ((_$e3235932398_ (reverse _$e3235832385_)))
                                 ((lambda (_L32402_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g3241732423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g3241832426_)
                                 (cons _g3241732423_ _g3241832426_))
                               '()
                               _L32402_))
                      (cons _L32328_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32402_
                                                     _L32330_)
                                                    (foldr (lambda (_g3241932429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3242032432_
                            _g3242132434_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3242032432_ (cons _g3241932429_ '())))
                           _g3242132434_))
                   '()
                   _L32402_
                   _L32330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3235932398_))))))
                 (_loop3235432378_ _target3235132372_ '()))
               (_g3234832365_ _g3234932369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3234832365_ _g3234932369_)))))
                                 (_g3234732437_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3244032443_
                                                     _g3244132446_)
                                              (cons _g3244032443_
                                                    _g3244132446_))
                                            '()
                                            _L32330_))))))
                             _hd3226432298_
                             _tgt3226232324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3225732304_
                                                     _target3225432288_
                                                     '()))
                                                  (_g3224732271_
                                                   _g3224832275_))))
                                          (_g3224732271_ _g3224832275_)))))
                                (_g3224732271_ _g3224832275_))
                            (_g3224732271_ _g3224832275_))))
                    (_g3224732271_ _g3224832275_)))))
        (_g3224632449_ _stx32244_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32455_)
      (let* ((___stx4078940790_ _stx32455_)
             (_g3245932517_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4078940790_))))
        (let ((___kont4079240793_
               (lambda (_L32851_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (begin
                               '#!void
                               (foldr (lambda (_g3286732870_ _g3286832873_)
                                        (cons _g3286732870_ _g3286832873_))
                                      '()
                                      _L32851_))))))
              (___kont4079640797_
               (lambda (_L32628_ _L32630_ _L32631_)
                 (let* ((_g3265432662_
                         (lambda (_g3265532658_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3265532658_)))
                        (_g3265332782_
                         (lambda (_g3265532666_)
                           ((lambda (_L32669_)
                              (let ()
                                (let* ((_g3268132698_
                                        (lambda (_g3268232694_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3268232694_)))
                                       (_g3268032762_
                                        (lambda (_g3268232702_)
                                          (if (gx#stx-pair/null? _g3268232702_)
                                              (let ((_g41299_
                                                     (gx#syntax-split-splice
                                                      _g3268232702_
                                                      '0)))
                                                (begin
                                                  (let ((_g41300_
                                                         (if (##values?
                                                              _g41299_)
                                                             (##vector-length
                                                              _g41299_)
                                                             1)))
                                                    (if (not (##fx= _g41300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3268432705_
                                                         (##vector-ref
                                                          _g41299_
                                                          0))
                                                        (_tl3268632708_
                                                         (##vector-ref
                                                          _g41299_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3268632708_)
                                                        (letrec ((_loop3268732711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3268532715_ _arg3269132718_)
                            (if (gx#stx-pair? _hd3268532715_)
                                (let ((_e3268832721_
                                       (gx#syntax-e _hd3268532715_)))
                                  (let ((_lp-hd3268932725_
                                         (##car _e3268832721_))
                                        (_lp-tl3269032728_
                                         (##cdr _e3268832721_)))
                                    (_loop3268732711_
                                     _lp-tl3269032728_
                                     (cons _lp-hd3268932725_
                                           _arg3269132718_))))
                                (let ((_arg3269232731_
                                       (reverse _arg3269132718_)))
                                  ((lambda (_L32735_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L32669_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3275332756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3275432759_)
                        (cons _g3275332756_ _g3275432759_))
                      '()
                      _L32735_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3269232731_))))))
                  (_loop3268732711_ _target3268432705_ '()))
                (_g3268132698_ _g3268232702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3268132698_ _g3268232702_)))))
                                  (_g3268032762_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3276532768_
                                                             _g3276632771_)
                                                      (cons _g3276532768_
                                                            _g3276632771_))
                                                    '()
                                                    _L32631_)))
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3277332776_
                                                             _g3277432779_)
                                                      (cons _g3277332776_
                                                            _g3277432779_))
                                                    '()
                                                    _L32630_))))))))
                            _g3265532666_))))
                   (_g3265332782_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g3278532788_ _g3278632791_)
                                            (cons _g3278532788_ _g3278632791_))
                                          '()
                                          _L32628_))))
                     (gx#stx-source _stx32455_)))))))
          (let* ((___match4084440845_
                  (lambda (_e3248032524_
                           _hd3248132528_
                           _tl3248232531_
                           _e3248332534_
                           _hd3248432538_
                           _tl3248532541_
                           ___splice4079840799_
                           _target3248632544_
                           _tl3248832547_)
                    (letrec ((_loop3248932550_
                              (lambda (_hd3248732554_
                                       _expr3249332557_
                                       _param3249432559_)
                                (if (gx#stx-pair? _hd3248732554_)
                                    (let ((_e3249032562_
                                           (gx#syntax-e _hd3248732554_)))
                                      (let ((_lp-tl3249232569_
                                             (##cdr _e3249032562_))
                                            (_lp-hd3249132566_
                                             (##car _e3249032562_)))
                                        (if (gx#stx-pair? _lp-hd3249132566_)
                                            (let ((_e3249732572_
                                                   (gx#syntax-e
                                                    _lp-hd3249132566_)))
                                              (let ((_tl3249932579_
                                                     (##cdr _e3249732572_))
                                                    (_hd3249832576_
                                                     (##car _e3249732572_)))
                                                (if (gx#stx-pair?
                                                     _tl3249932579_)
                                                    (let ((_e3250032582_
                                                           (gx#syntax-e
                                                            _tl3249932579_)))
                                                      (let ((_tl3250232589_
                                                             (##cdr _e3250032582_))
                                                            (_hd3250132586_
                                                             (##car _e3250032582_)))
                                                        (if (gx#stx-null?
                                                             _tl3250232589_)
                                                            (_loop3248932550_
                                                             _lp-tl3249232569_
                                                             (cons _hd3250132586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3249332557_)
                     (cons _hd3249832576_ _param3249432559_))
                    (_g3245932517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3245932517_))))
                                            (_g3245932517_))))
                                    (let ((_param3249632595_
                                           (reverse _param3249432559_))
                                          (_expr3249532592_
                                           (reverse _expr3249332557_)))
                                      (if (gx#stx-pair/null? _tl3248532541_)
                                          (let ((___splice4080040801_
                                                 (gx#syntax-split-splice
                                                  _tl3248532541_
                                                  '0)))
                                            (let ((_tl3250532601_
                                                   (##vector-ref
                                                    ___splice4080040801_
                                                    '1))
                                                  (_target3250332598_
                                                   (##vector-ref
                                                    ___splice4080040801_
                                                    '0)))
                                              (if (gx#stx-null? _tl3250532601_)
                                                  (letrec ((_loop3250632604_
                                                            (lambda (_hd3250432608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3251032611_)
                      (if (gx#stx-pair? _hd3250432608_)
                          (let ((_e3250732614_ (gx#syntax-e _hd3250432608_)))
                            (let ((_lp-tl3250932621_ (##cdr _e3250732614_))
                                  (_lp-hd3250832618_ (##car _e3250732614_)))
                              (_loop3250632604_
                               _lp-tl3250932621_
                               (cons _lp-hd3250832618_ _body3251032611_))))
                          (let ((_body3251132624_ (reverse _body3251032611_)))
                            (___kont4079640797_
                             _body3251132624_
                             _expr3249532592_
                             _param3249632595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3250632604_
                                                     _target3250332598_
                                                     '()))
                                                  (_g3245932517_))))
                                          (_g3245932517_)))))))
                      (_loop3248932550_ _target3248632544_ '() '()))))
                 (___match4082440825_
                  (lambda (_e3246232801_
                           _hd3246332805_
                           _tl3246432808_
                           _e3246532811_
                           _hd3246632815_
                           _tl3246732818_
                           ___splice4079440795_
                           _target3246832821_
                           _tl3247032824_)
                    (letrec ((_loop3247132827_
                              (lambda (_hd3246932831_ _body3247532834_)
                                (if (gx#stx-pair? _hd3246932831_)
                                    (let ((_e3247232837_
                                           (gx#syntax-e _hd3246932831_)))
                                      (let ((_lp-tl3247432844_
                                             (##cdr _e3247232837_))
                                            (_lp-hd3247332841_
                                             (##car _e3247232837_)))
                                        (_loop3247132827_
                                         _lp-tl3247432844_
                                         (cons _lp-hd3247332841_
                                               _body3247532834_))))
                                    (let ((_body3247632847_
                                           (reverse _body3247532834_)))
                                      (___kont4079240793_
                                       _body3247632847_))))))
                      (_loop3247132827_ _target3246832821_ '())))))
            (if (gx#stx-pair? ___stx4078940790_)
                (let ((_e3246232801_ (gx#syntax-e ___stx4078940790_)))
                  (let ((_tl3246432808_ (##cdr _e3246232801_))
                        (_hd3246332805_ (##car _e3246232801_)))
                    (if (gx#stx-pair? _tl3246432808_)
                        (let ((_e3246532811_ (gx#syntax-e _tl3246432808_)))
                          (let ((_tl3246732818_ (##cdr _e3246532811_))
                                (_hd3246632815_ (##car _e3246532811_)))
                            (if (gx#stx-null? _hd3246632815_)
                                (if (gx#stx-pair/null? _tl3246732818_)
                                    (let ((___splice4079440795_
                                           (gx#syntax-split-splice
                                            _tl3246732818_
                                            '0)))
                                      (let ((_tl3247032824_
                                             (##vector-ref
                                              ___splice4079440795_
                                              '1))
                                            (_target3246832821_
                                             (##vector-ref
                                              ___splice4079440795_
                                              '0)))
                                        (if (gx#stx-null? _tl3247032824_)
                                            (___match4082440825_
                                             _e3246232801_
                                             _hd3246332805_
                                             _tl3246432808_
                                             _e3246532811_
                                             _hd3246632815_
                                             _tl3246732818_
                                             ___splice4079440795_
                                             _target3246832821_
                                             _tl3247032824_)
                                            (if (gx#stx-pair/null?
                                                 _hd3246632815_)
                                                (let ((___splice4079840799_
                                                       (gx#syntax-split-splice
                                                        _hd3246632815_
                                                        '0)))
                                                  (let ((_tl3248832547_
                                                         (##vector-ref
                                                          ___splice4079840799_
                                                          '1))
                                                        (_target3248632544_
                                                         (##vector-ref
                                                          ___splice4079840799_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3248832547_)
                                                        (___match4084440845_
                                                         _e3246232801_
                                                         _hd3246332805_
                                                         _tl3246432808_
                                                         _e3246532811_
                                                         _hd3246632815_
                                                         _tl3246732818_
                                                         ___splice4079840799_
                                                         _target3248632544_
                                                         _tl3248832547_)
                                                        (_g3245932517_))))
                                                (_g3245932517_)))))
                                    (if (gx#stx-pair/null? _hd3246632815_)
                                        (let ((___splice4079840799_
                                               (gx#syntax-split-splice
                                                _hd3246632815_
                                                '0)))
                                          (let ((_tl3248832547_
                                                 (##vector-ref
                                                  ___splice4079840799_
                                                  '1))
                                                (_target3248632544_
                                                 (##vector-ref
                                                  ___splice4079840799_
                                                  '0)))
                                            (if (gx#stx-null? _tl3248832547_)
                                                (___match4084440845_
                                                 _e3246232801_
                                                 _hd3246332805_
                                                 _tl3246432808_
                                                 _e3246532811_
                                                 _hd3246632815_
                                                 _tl3246732818_
                                                 ___splice4079840799_
                                                 _target3248632544_
                                                 _tl3248832547_)
                                                (_g3245932517_))))
                                        (_g3245932517_)))
                                (if (gx#stx-pair/null? _hd3246632815_)
                                    (let ((___splice4079840799_
                                           (gx#syntax-split-splice
                                            _hd3246632815_
                                            '0)))
                                      (let ((_tl3248832547_
                                             (##vector-ref
                                              ___splice4079840799_
                                              '1))
                                            (_target3248632544_
                                             (##vector-ref
                                              ___splice4079840799_
                                              '0)))
                                        (if (gx#stx-null? _tl3248832547_)
                                            (___match4084440845_
                                             _e3246232801_
                                             _hd3246332805_
                                             _tl3246432808_
                                             _e3246532811_
                                             _hd3246632815_
                                             _tl3246732818_
                                             ___splice4079840799_
                                             _target3248632544_
                                             _tl3248832547_)
                                            (_g3245932517_))))
                                    (_g3245932517_)))))
                        (_g3245932517_))))
                (_g3245932517_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32884_)
      (let* ((_g3288832912_
              (lambda (_g3288932908_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3288932908_)))
             (_g3288732997_
              (lambda (_g3288932916_)
                (if (gx#stx-pair? _g3288932916_)
                    (let ((_e3289232919_ (gx#syntax-e _g3288932916_)))
                      (let ((_hd3289332923_ (##car _e3289232919_))
                            (_tl3289432926_ (##cdr _e3289232919_)))
                        (if (gx#stx-pair? _tl3289432926_)
                            (let ((_e3289532929_ (gx#syntax-e _tl3289432926_)))
                              (let ((_hd3289632933_ (##car _e3289532929_))
                                    (_tl3289732936_ (##cdr _e3289532929_)))
                                (if (gx#stx-pair/null? _tl3289732936_)
                                    (let ((_g41301_
                                           (gx#syntax-split-splice
                                            _tl3289732936_
                                            '0)))
                                      (begin
                                        (let ((_g41302_
                                               (if (##values? _g41301_)
                                                   (##vector-length _g41301_)
                                                   1)))
                                          (if (not (##fx= _g41302_ 2))
                                              (error "Context expects 2 values"
                                                     _g41302_)))
                                        (let ((_target3289832939_
                                               (##vector-ref _g41301_ 0))
                                              (_tl3290032942_
                                               (##vector-ref _g41301_ 1)))
                                          (if (gx#stx-null? _tl3290032942_)
                                              (letrec ((_loop3290132945_
                                                        (lambda (_hd3289932949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3290532952_)
                  (if (gx#stx-pair? _hd3289932949_)
                      (let ((_e3290232955_ (gx#syntax-e _hd3289932949_)))
                        (let ((_lp-hd3290332959_ (##car _e3290232955_))
                              (_lp-tl3290432962_ (##cdr _e3290232955_)))
                          (_loop3290132945_
                           _lp-tl3290432962_
                           (cons _lp-hd3290332959_ _body3290532952_))))
                      (let ((_body3290632965_ (reverse _body3290532952_)))
                        ((lambda (_L32969_ _L32971_)
                           (if (gx#identifier? _L32971_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L32971_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3298832991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3298932994_)
                          (cons _g3298832991_ _g3298932994_))
                        '()
                        _L32969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3288832912_ _g3288932916_)))
                         _body3290632965_
                         _hd3289632933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3290132945_
                                                 _target3289832939_
                                                 '()))
                                              (_g3288832912_ _g3288932916_)))))
                                    (_g3288832912_ _g3288932916_))))
                            (_g3288832912_ _g3288932916_))))
                    (_g3288832912_ _g3288932916_)))))
        (_g3288732997_ _$stx32884_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33002_)
      (let* ((_g3300633030_
              (lambda (_g3300733026_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3300733026_)))
             (_g3300533115_
              (lambda (_g3300733034_)
                (if (gx#stx-pair? _g3300733034_)
                    (let ((_e3301033037_ (gx#syntax-e _g3300733034_)))
                      (let ((_hd3301133041_ (##car _e3301033037_))
                            (_tl3301233044_ (##cdr _e3301033037_)))
                        (if (gx#stx-pair? _tl3301233044_)
                            (let ((_e3301333047_ (gx#syntax-e _tl3301233044_)))
                              (let ((_hd3301433051_ (##car _e3301333047_))
                                    (_tl3301533054_ (##cdr _e3301333047_)))
                                (if (gx#stx-pair/null? _tl3301533054_)
                                    (let ((_g41303_
                                           (gx#syntax-split-splice
                                            _tl3301533054_
                                            '0)))
                                      (begin
                                        (let ((_g41304_
                                               (if (##values? _g41303_)
                                                   (##vector-length _g41303_)
                                                   1)))
                                          (if (not (##fx= _g41304_ 2))
                                              (error "Context expects 2 values"
                                                     _g41304_)))
                                        (let ((_target3301633057_
                                               (##vector-ref _g41303_ 0))
                                              (_tl3301833060_
                                               (##vector-ref _g41303_ 1)))
                                          (if (gx#stx-null? _tl3301833060_)
                                              (letrec ((_loop3301933063_
                                                        (lambda (_hd3301733067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3302333070_)
                  (if (gx#stx-pair? _hd3301733067_)
                      (let ((_e3302033073_ (gx#syntax-e _hd3301733067_)))
                        (let ((_lp-hd3302133077_ (##car _e3302033073_))
                              (_lp-tl3302233080_ (##cdr _e3302033073_)))
                          (_loop3301933063_
                           _lp-tl3302233080_
                           (cons _lp-hd3302133077_ _body3302333070_))))
                      (let ((_body3302433083_ (reverse _body3302333070_)))
                        ((lambda (_L33087_ _L33089_)
                           (if (gx#identifier? _L33089_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33089_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3310633109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3310733112_)
                          (cons _g3310633109_ _g3310733112_))
                        '()
                        _L33087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3300633030_ _g3300733034_)))
                         _body3302433083_
                         _hd3301433051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3301933063_
                                                 _target3301633057_
                                                 '()))
                                              (_g3300633030_ _g3300733034_)))))
                                    (_g3300633030_ _g3300733034_))))
                            (_g3300633030_ _g3300733034_))))
                    (_g3300633030_ _g3300733034_)))))
        (_g3300533115_ _$stx33002_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33120_)
      (let* ((_g3312433152_
              (lambda (_g3312533148_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3312533148_)))
             (_g3312333251_
              (lambda (_g3312533156_)
                (if (gx#stx-pair? _g3312533156_)
                    (let ((_e3312933159_ (gx#syntax-e _g3312533156_)))
                      (let ((_hd3313033163_ (##car _e3312933159_))
                            (_tl3313133166_ (##cdr _e3312933159_)))
                        (if (gx#stx-pair? _tl3313133166_)
                            (let ((_e3313233169_ (gx#syntax-e _tl3313133166_)))
                              (let ((_hd3313333173_ (##car _e3313233169_))
                                    (_tl3313433176_ (##cdr _e3313233169_)))
                                (if (gx#stx-pair? _tl3313433176_)
                                    (let ((_e3313533179_
                                           (gx#syntax-e _tl3313433176_)))
                                      (let ((_hd3313633183_
                                             (##car _e3313533179_))
                                            (_tl3313733186_
                                             (##cdr _e3313533179_)))
                                        (if (gx#stx-pair/null? _tl3313733186_)
                                            (let ((_g41305_
                                                   (gx#syntax-split-splice
                                                    _tl3313733186_
                                                    '0)))
                                              (begin
                                                (let ((_g41306_
                                                       (if (##values? _g41305_)
                                                           (##vector-length
                                                            _g41305_)
                                                           1)))
                                                  (if (not (##fx= _g41306_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41306_)))
                                                (let ((_target3313833189_
                                                       (##vector-ref
                                                        _g41305_
                                                        0))
                                                      (_tl3314033192_
                                                       (##vector-ref
                                                        _g41305_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3314033192_)
                                                      (letrec ((_loop3314133195_
                                                                (lambda (_hd3313933199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3314533202_)
                          (if (gx#stx-pair? _hd3313933199_)
                              (let ((_e3314233205_
                                     (gx#syntax-e _hd3313933199_)))
                                (let ((_lp-hd3314333209_ (##car _e3314233205_))
                                      (_lp-tl3314433212_
                                       (##cdr _e3314233205_)))
                                  (_loop3314133195_
                                   _lp-tl3314433212_
                                   (cons _lp-hd3314333209_ _rest3314533202_))))
                              (let ((_rest3314633215_
                                     (reverse _rest3314533202_)))
                                ((lambda (_L33219_ _L33221_ _L33222_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33221_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3324233245_ _g3324333248_)
                                          (cons _g3324233245_ _g3324333248_))
                                        '()
                                        _L33219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3314633215_
                                 _hd3313633183_
                                 _hd3313333173_))))))
                (_loop3314133195_ _target3313833189_ '()))
              (_g3312433152_ _g3312533156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3312433152_ _g3312533156_))))
                                    (_g3312433152_ _g3312533156_))))
                            (_g3312433152_ _g3312533156_))))
                    (_g3312433152_ _g3312533156_)))))
        (_g3312333251_ _$stx33120_)))))
