(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158715_)
      (let* ((_g158719158737_
              (lambda (_g158720158733_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158720158733_))))
             (_g158718158792_
              (lambda (_g158720158741_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158720158741_))
                    (let ((_e158725158744_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158720158741_))))
                      (let ((_hd158724158748_
                             (let ()
                               (declare (not safe))
                               (##car _e158725158744_)))
                            (_tl158723158751_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158725158744_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158723158751_))
                            (let ((_e158728158754_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158723158751_))))
                              (let ((_hd158727158758_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158728158754_)))
                                    (_tl158726158761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158728158754_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158726158761_))
                                    (let ((_e158731158764_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158726158761_))))
                                      (let ((_hd158730158768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158731158764_)))
                                            (_tl158729158771_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158731158764_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158729158771_))
                                            ((lambda (_L158774_ _L158776_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158776_))
                                                   (let ((__tmp162256
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162251
                                                          (let ((__tmp162253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162255
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162254
                                (let ()
                                  (declare (not safe))
                                  (cons _L158776_ '()))))
                           (declare (not safe))
                           (cons __tmp162255 __tmp162254)))
                        (__tmp162252
                         (let () (declare (not safe)) (cons _L158774_ '()))))
                    (declare (not safe))
                    (cons __tmp162253 __tmp162252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162256
                                                           __tmp162251))
                                                   (_g158719158737_
                                                    _g158720158741_)))
                                             _hd158730158768_
                                             _hd158727158758_)
                                            (_g158719158737_
                                             _g158720158741_))))
                                    (_g158719158737_ _g158720158741_))))
                            (_g158719158737_ _g158720158741_))))
                    (_g158719158737_ _g158720158741_)))))
        (_g158718158792_ _$stx158715_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158796_)
      (let* ((_g158800158829_
              (lambda (_g158801158825_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158801158825_))))
             (_g158799158929_
              (lambda (_g158801158833_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158801158833_))
                    (let ((_e158806158836_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158801158833_))))
                      (let ((_hd158805158840_
                             (let ()
                               (declare (not safe))
                               (##car _e158806158836_)))
                            (_tl158804158843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158806158836_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158804158843_))
                            (let ((_g162257_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158804158843_
                                      '0))))
                              (begin
                                (let ((_g162258_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162257_)
                                             (##vector-length _g162257_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162258_ 2)))
                                      (error "Context expects 2 values"
                                             _g162258_)))
                                (let ((_target158807158846_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162257_ 0)))
                                      (_tl158809158849_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162257_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158809158849_))
                                      (letrec ((_loop158810158852_
                                                (lambda (_hd158808158856_
                                                         _type158814158859_
                                                         _symbol158815158861_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158808158856_))
                                                      (let ((_e158811158864_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158808158856_))))
                (let ((_lp-hd158812158868_
                       (let () (declare (not safe)) (##car _e158811158864_)))
                      (_lp-tl158813158871_
                       (let () (declare (not safe)) (##cdr _e158811158864_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158812158868_))
                      (let ((_e158820158874_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158812158868_))))
                        (let ((_hd158819158878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158820158874_)))
                              (_tl158818158881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158820158874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158818158881_))
                              (let ((_e158823158884_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158818158881_))))
                                (let ((_hd158822158888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158823158884_)))
                                      (_tl158821158891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158823158884_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158821158891_))
                                      (_loop158810158852_
                                       _lp-tl158813158871_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158822158888_
                                               _type158814158859_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158819158878_
                                               _symbol158815158861_)))
                                      (_g158800158829_ _g158801158833_))))
                              (_g158800158829_ _g158801158833_))))
                      (_g158800158829_ _g158801158833_))))
              (let ((_type158816158894_ (reverse _type158814158859_))
                    (_symbol158817158897_ (reverse _symbol158815158861_)))
                ((lambda (_L158900_ _L158902_)
                   (let ((__tmp162265
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162259
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158900_
                               _L158902_))
                            (let ((__tmp162260
                                   (lambda (_g158917158921_
                                            _g158918158924_
                                            _g158919158926_)
                                     (let ((__tmp162261
                                            (let ((__tmp162264
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162262
                                                   (let ((__tmp162263
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158917158921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158918158924_
                                                           __tmp162263))))
                                              (declare (not safe))
                                              (cons __tmp162264 __tmp162262))))
                                       (declare (not safe))
                                       (cons __tmp162261 _g158919158926_)))))
                              (declare (not safe))
                              (foldr2 __tmp162260 '() _L158900_ _L158902_)))))
                     (declare (not safe))
                     (cons __tmp162265 __tmp162259)))
                 _type158816158894_
                 _symbol158817158897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158810158852_
                                         _target158807158846_
                                         '()
                                         '()))
                                      (_g158800158829_ _g158801158833_)))))
                            (_g158800158829_ _g158801158833_))))
                    (_g158800158829_ _g158801158833_)))))
        (_g158799158929_ _$stx158796_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158934_)
      (let* ((___stx161816161817_ _$stx158934_)
             (_g158939158981_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161816161817_)))))
        (let ((___kont161819161820_
               (lambda (_L159109_ _L159111_ _L159112_ _L159113_)
                 (let ((__tmp162279
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162266
                        (let ((__tmp162276
                               (let ((__tmp162278
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162277
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159113_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162278 __tmp162277)))
                              (__tmp162267
                               (let ((__tmp162273
                                      (let ((__tmp162275
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162274
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159112_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162275 __tmp162274)))
                                     (__tmp162268
                                      (let ((__tmp162270
                                             (let ((__tmp162272
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162271
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159111_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162272 __tmp162271)))
                                            (__tmp162269
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159109_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162270 __tmp162269))))
                                 (declare (not safe))
                                 (cons __tmp162273 __tmp162268))))
                          (declare (not safe))
                          (cons __tmp162276 __tmp162267))))
                   (declare (not safe))
                   (cons __tmp162279 __tmp162266))))
              (___kont161821161822_
               (lambda (_L159028_ _L159030_ _L159031_ _L159032_)
                 (let ((__tmp162280
                        (let ((__tmp162281
                               (let ((__tmp162282
                                      (let ((__tmp162283
                                             (let ((__tmp162284
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162284 '()))))
                                        (declare (not safe))
                                        (cons _L159028_ __tmp162283))))
                                 (declare (not safe))
                                 (cons _L159030_ __tmp162282))))
                          (declare (not safe))
                          (cons _L159031_ __tmp162281))))
                   (declare (not safe))
                   (cons _L159032_ __tmp162280)))))
          (let ((___match161855161856_
                 (lambda (_e158947159059_
                          _hd158946159063_
                          _tl158945159066_
                          _e158950159069_
                          _hd158949159073_
                          _tl158948159076_
                          _e158953159079_
                          _hd158952159083_
                          _tl158951159086_
                          _e158956159089_
                          _hd158955159093_
                          _tl158954159096_
                          _e158959159099_
                          _hd158958159103_
                          _tl158957159106_)
                   (let ((_L159109_ _hd158958159103_)
                         (_L159111_ _hd158955159093_)
                         (_L159112_ _hd158952159083_)
                         (_L159113_ _hd158949159073_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159113_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159112_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159111_)))
                         (___kont161819161820_
                          _L159109_
                          _L159111_
                          _L159112_
                          _L159113_)
                         (let () (declare (not safe)) (_g158939158981_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161816161817_))
                (let ((_e158947159059_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161816161817_))))
                  (let ((_tl158945159066_
                         (let () (declare (not safe)) (##cdr _e158947159059_)))
                        (_hd158946159063_
                         (let ()
                           (declare (not safe))
                           (##car _e158947159059_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158945159066_))
                        (let ((_e158950159069_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158945159066_))))
                          (let ((_tl158948159076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158950159069_)))
                                (_hd158949159073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158950159069_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158948159076_))
                                (let ((_e158953159079_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158948159076_))))
                                  (let ((_tl158951159086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158953159079_)))
                                        (_hd158952159083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158953159079_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158951159086_))
                                        (let ((_e158956159089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158951159086_))))
                                          (let ((_tl158954159096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158956159089_)))
                                                (_hd158955159093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158956159089_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158954159096_))
                                                (let ((_e158959159099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158954159096_))))
                                                  (let ((_tl158957159106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158959159099_)))
                                                        (_hd158958159103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158959159099_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158957159106_))
                                                        (___match161855161856_
                                                         _e158947159059_
                                                         _hd158946159063_
                                                         _tl158945159066_
                                                         _e158950159069_
                                                         _hd158949159073_
                                                         _tl158948159076_
                                                         _e158953159079_
                                                         _hd158952159083_
                                                         _tl158951159086_
                                                         _e158956159089_
                                                         _hd158955159093_
                                                         _tl158954159096_
                                                         _e158959159099_
                                                         _hd158958159103_
                                                         _tl158957159106_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158939158981_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158954159096_))
                                                    (___kont161821161822_
                                                     _hd158955159093_
                                                     _hd158952159083_
                                                     _hd158949159073_
                                                     _hd158946159063_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158939158981_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158939158981_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158939158981_)))))
                        (let () (declare (not safe)) (_g158939158981_)))))
                (let () (declare (not safe)) (_g158939158981_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159138_)
      (let* ((_g159142159177_
              (lambda (_g159143159173_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159143159173_))))
             (_g159141159296_
              (lambda (_g159143159181_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159143159181_))
                    (let ((_e159149159184_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159143159181_))))
                      (let ((_hd159148159188_
                             (let ()
                               (declare (not safe))
                               (##car _e159149159184_)))
                            (_tl159147159191_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159149159184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159147159191_))
                            (let ((_g162285_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159147159191_
                                      '0))))
                              (begin
                                (let ((_g162286_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162285_)
                                             (##vector-length _g162285_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162286_ 2)))
                                      (error "Context expects 2 values"
                                             _g162286_)))
                                (let ((_target159150159194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162285_ 0)))
                                      (_tl159152159197_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162285_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159152159197_))
                                      (letrec ((_loop159153159200_
                                                (lambda (_hd159151159204_
                                                         _symbol159157159207_
                                                         _method159158159209_
                                                         _type-t159159159211_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159151159204_))
                                                      (let ((_e159154159214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159151159204_))))
                (let ((_lp-hd159155159218_
                       (let () (declare (not safe)) (##car _e159154159214_)))
                      (_lp-tl159156159221_
                       (let () (declare (not safe)) (##cdr _e159154159214_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159155159218_))
                      (let ((_e159165159224_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159155159218_))))
                        (let ((_hd159164159228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159165159224_)))
                              (_tl159163159231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159165159224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159163159231_))
                              (let ((_e159168159234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159163159231_))))
                                (let ((_hd159167159238_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159168159234_)))
                                      (_tl159166159241_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159168159234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159166159241_))
                                      (let ((_e159171159244_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159166159241_))))
                                        (let ((_hd159170159248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159171159244_)))
                                              (_tl159169159251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159171159244_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159169159251_))
                                              (_loop159153159200_
                                               _lp-tl159156159221_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159170159248_
                                                       _symbol159157159207_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159167159238_
                                                       _method159158159209_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159164159228_
                                                       _type-t159159159211_)))
                                              (_g159142159177_
                                               _g159143159181_))))
                                      (_g159142159177_ _g159143159181_))))
                              (_g159142159177_ _g159143159181_))))
                      (_g159142159177_ _g159143159181_))))
              (let ((_symbol159160159254_ (reverse _symbol159157159207_))
                    (_method159161159257_ (reverse _method159158159209_))
                    (_type-t159162159259_ (reverse _type-t159159159211_)))
                ((lambda (_L159262_ _L159264_ _L159265_)
                   (let ((__tmp162294
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162287
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159262_
                               _L159264_
                               _L159265_))
                            (let ((__tmp162288
                                   (lambda (_g159281159286_
                                            _g159282159289_
                                            _g159283159291_
                                            _g159284159293_)
                                     (let ((__tmp162289
                                            (let ((__tmp162293
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162290
                                                   (let ((__tmp162291
                                                          (let ((__tmp162292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159281159286_ '()))))
                    (declare (not safe))
                    (cons _g159282159289_ __tmp162292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159283159291_
                                                           __tmp162291))))
                                              (declare (not safe))
                                              (cons __tmp162293 __tmp162290))))
                                       (declare (not safe))
                                       (cons __tmp162289 _g159284159293_)))))
                              (declare (not safe))
                              (foldr* __tmp162288
                                      '()
                                      _L159262_
                                      _L159264_
                                      _L159265_)))))
                     (declare (not safe))
                     (cons __tmp162294 __tmp162287)))
                 _symbol159160159254_
                 _method159161159257_
                 _type-t159162159259_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159153159200_
                                         _target159150159194_
                                         '()
                                         '()
                                         '()))
                                      (_g159142159177_ _g159143159181_)))))
                            (_g159142159177_ _g159143159181_))))
                    (_g159142159177_ _g159143159181_)))))
        (_g159141159296_ _$stx159138_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159301_)
      (let* ((_g159305159338_
              (lambda (_g159306159334_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159306159334_))))
             (_g159304159452_
              (lambda (_g159306159342_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159306159342_))
                    (let ((_e159312159345_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159306159342_))))
                      (let ((_hd159311159349_
                             (let ()
                               (declare (not safe))
                               (##car _e159312159345_)))
                            (_tl159310159352_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159312159345_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159310159352_))
                            (let ((_e159315159355_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159310159352_))))
                              (let ((_hd159314159359_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159315159355_)))
                                    (_tl159313159362_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159315159355_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159313159362_))
                                    (let ((_g162295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159313159362_
                                              '0))))
                                      (begin
                                        (let ((_g162296_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162295_)
                                                     (##vector-length
                                                      _g162295_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162296_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162296_)))
                                        (let ((_target159316159365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162295_ 0)))
                                              (_tl159318159368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162295_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159318159368_))
                                              (letrec ((_loop159319159371_
                                                        (lambda (_hd159317159375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159323159378_
                         _method159324159380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159317159375_))
                      (let ((_e159320159383_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159317159375_))))
                        (let ((_lp-hd159321159387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159320159383_)))
                              (_lp-tl159322159390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159320159383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159321159387_))
                              (let ((_e159329159393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159321159387_))))
                                (let ((_hd159328159397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159329159393_)))
                                      (_tl159327159400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159329159393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159327159400_))
                                      (let ((_e159332159403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159327159400_))))
                                        (let ((_hd159331159407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159332159403_)))
                                              (_tl159330159410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159332159403_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159330159410_))
                                              (_loop159319159371_
                                               _lp-tl159322159390_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159331159407_
                                                       _symbol159323159378_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159328159397_
                                                       _method159324159380_)))
                                              (_g159305159338_
                                               _g159306159342_))))
                                      (_g159305159338_ _g159306159342_))))
                              (_g159305159338_ _g159306159342_))))
                      (let ((_symbol159325159413_
                             (reverse _symbol159323159378_))
                            (_method159326159416_
                             (reverse _method159324159380_)))
                        ((lambda (_L159419_ _L159421_ _L159422_)
                           (let ((__tmp162304
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162297
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159419_
                                       _L159421_))
                                    (let ((__tmp162298
                                           (lambda (_g159440159444_
                                                    _g159441159447_
                                                    _g159442159449_)
                                             (let ((__tmp162299
                                                    (let ((__tmp162303
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162300
                                                           (let ((__tmp162301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162302
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159440159444_ '()))))
                            (declare (not safe))
                            (cons _g159441159447_ __tmp162302))))
                     (declare (not safe))
                     (cons _L159422_ __tmp162301))))
              (declare (not safe))
              (cons __tmp162303 __tmp162300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162299
                                                     _g159442159449_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162298
                                              '()
                                              _L159419_
                                              _L159421_)))))
                             (declare (not safe))
                             (cons __tmp162304 __tmp162297)))
                         _symbol159325159413_
                         _method159326159416_
                         _hd159314159359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159319159371_
                                                 _target159316159365_
                                                 '()
                                                 '()))
                                              (_g159305159338_
                                               _g159306159342_)))))
                                    (_g159305159338_ _g159306159342_))))
                            (_g159305159338_ _g159306159342_))))
                    (_g159305159338_ _g159306159342_)))))
        (_g159304159452_ _$stx159301_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159457_)
      (let* ((_g159461159475_
              (lambda (_g159462159471_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159462159471_))))
             (_g159460159516_
              (lambda (_g159462159479_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159462159479_))
                    (let ((_e159466159482_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159462159479_))))
                      (let ((_hd159465159486_
                             (let ()
                               (declare (not safe))
                               (##car _e159466159482_)))
                            (_tl159464159489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159466159482_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159464159489_))
                            (let ((_e159469159492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159464159489_))))
                              (let ((_hd159468159496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159469159492_)))
                                    (_tl159467159499_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159469159492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159467159499_))
                                    ((lambda (_L159502_)
                                       (let ((__tmp162309
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162305
                                              (let ((__tmp162306
                                                     (let ((__tmp162308
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162307
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162308 __tmp162307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162306 '()))))
                                         (declare (not safe))
                                         (cons __tmp162309 __tmp162305)))
                                     _hd159468159496_)
                                    (_g159461159475_ _g159462159479_))))
                            (_g159461159475_ _g159462159479_))))
                    (_g159461159475_ _g159462159479_)))))
        (_g159460159516_ _$stx159457_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159520_)
      (let* ((_g159524159574_
              (lambda (_g159525159570_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159525159570_))))
             (_g159523159741_
              (lambda (_g159525159578_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159525159578_))
                    (let ((_e159538159581_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159525159578_))))
                      (let ((_hd159537159585_
                             (let ()
                               (declare (not safe))
                               (##car _e159538159581_)))
                            (_tl159536159588_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159538159581_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159536159588_))
                            (let ((_e159541159591_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159536159588_))))
                              (let ((_hd159540159595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159541159591_)))
                                    (_tl159539159598_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159541159591_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159539159598_))
                                    (let ((_e159544159601_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159539159598_))))
                                      (let ((_hd159543159605_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159544159601_)))
                                            (_tl159542159608_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159544159601_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159542159608_))
                                            (let ((_e159547159611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159542159608_))))
                                              (let ((_hd159546159615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159547159611_)))
                                                    (_tl159545159618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159547159611_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159545159618_))
                                                    (let ((_e159550159621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159545159618_))))
                                                      (let ((_hd159549159625_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159550159621_)))
                    (_tl159548159628_
                     (let () (declare (not safe)) (##cdr _e159550159621_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159548159628_))
                    (let ((_e159553159631_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159548159628_))))
                      (let ((_hd159552159635_
                             (let ()
                               (declare (not safe))
                               (##car _e159553159631_)))
                            (_tl159551159638_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159553159631_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159551159638_))
                            (let ((_e159556159641_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159551159638_))))
                              (let ((_hd159555159645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159556159641_)))
                                    (_tl159554159648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159556159641_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159554159648_))
                                    (let ((_e159559159651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159554159648_))))
                                      (let ((_hd159558159655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159559159651_)))
                                            (_tl159557159658_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159559159651_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159557159658_))
                                            (let ((_e159562159661_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159557159658_))))
                                              (let ((_hd159561159665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159562159661_)))
                                                    (_tl159560159668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159562159661_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159560159668_))
                                                    (let ((_e159565159671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159560159668_))))
                                                      (let ((_hd159564159675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159565159671_)))
                    (_tl159563159678_
                     (let () (declare (not safe)) (##cdr _e159565159671_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159563159678_))
                    (let ((_e159568159681_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159563159678_))))
                      (let ((_hd159567159685_
                             (let ()
                               (declare (not safe))
                               (##car _e159568159681_)))
                            (_tl159566159688_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159568159681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159566159688_))
                            ((lambda (_L159691_
                                      _L159693_
                                      _L159694_
                                      _L159695_
                                      _L159696_
                                      _L159697_
                                      _L159698_
                                      _L159699_
                                      _L159700_
                                      _L159701_)
                               (let ((__tmp162344
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162310
                                      (let ((__tmp162341
                                             (let ((__tmp162343
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162342
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159701_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162343 __tmp162342)))
                                            (__tmp162311
                                             (let ((__tmp162338
                                                    (let ((__tmp162340
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162339
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162340 __tmp162339)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162312
                                                    (let ((__tmp162335
                                                           (let ((__tmp162337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162336
                          (let () (declare (not safe)) (cons _L159699_ '()))))
                     (declare (not safe))
                     (cons __tmp162337 __tmp162336)))
                  (__tmp162313
                   (let ((__tmp162332
                          (let ((__tmp162334
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162333
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159698_ '()))))
                            (declare (not safe))
                            (cons __tmp162334 __tmp162333)))
                         (__tmp162314
                          (let ((__tmp162329
                                 (let ((__tmp162331
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162330
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159697_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162331 __tmp162330)))
                                (__tmp162315
                                 (let ((__tmp162326
                                        (let ((__tmp162328
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162327
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159696_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162328 __tmp162327)))
                                       (__tmp162316
                                        (let ((__tmp162317
                                               (let ((__tmp162318
                                                      (let ((__tmp162323
                                                             (let ((__tmp162325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162324
                            (let ()
                              (declare (not safe))
                              (cons _L159693_ '()))))
                       (declare (not safe))
                       (cons __tmp162325 __tmp162324)))
                    (__tmp162319
                     (let ((__tmp162320
                            (let ((__tmp162322
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162321
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159691_ '()))))
                              (declare (not safe))
                              (cons __tmp162322 __tmp162321))))
                       (declare (not safe))
                       (cons __tmp162320 '()))))
                (declare (not safe))
                (cons __tmp162323 __tmp162319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159694_
                                                       __tmp162318))))
                                          (declare (not safe))
                                          (cons _L159695_ __tmp162317))))
                                   (declare (not safe))
                                   (cons __tmp162326 __tmp162316))))
                            (declare (not safe))
                            (cons __tmp162329 __tmp162315))))
                     (declare (not safe))
                     (cons __tmp162332 __tmp162314))))
              (declare (not safe))
              (cons __tmp162335 __tmp162313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162338
                                                     __tmp162312))))
                                        (declare (not safe))
                                        (cons __tmp162341 __tmp162311))))
                                 (declare (not safe))
                                 (cons __tmp162344 __tmp162310)))
                             _hd159567159685_
                             _hd159564159675_
                             _hd159561159665_
                             _hd159558159655_
                             _hd159555159645_
                             _hd159552159635_
                             _hd159549159625_
                             _hd159546159615_
                             _hd159543159605_
                             _hd159540159595_)
                            (_g159524159574_ _g159525159578_))))
                    (_g159524159574_ _g159525159578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159524159574_
                                                     _g159525159578_))))
                                            (_g159524159574_
                                             _g159525159578_))))
                                    (_g159524159574_ _g159525159578_))))
                            (_g159524159574_ _g159525159578_))))
                    (_g159524159574_ _g159525159578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159524159574_
                                                     _g159525159578_))))
                                            (_g159524159574_
                                             _g159525159578_))))
                                    (_g159524159574_ _g159525159578_))))
                            (_g159524159574_ _g159525159578_))))
                    (_g159524159574_ _g159525159578_)))))
        (_g159523159741_ _$stx159520_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159745_)
      (let* ((_g159749159763_
              (lambda (_g159750159759_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159750159759_))))
             (_g159748159804_
              (lambda (_g159750159767_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159750159767_))
                    (let ((_e159754159770_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159750159767_))))
                      (let ((_hd159753159774_
                             (let ()
                               (declare (not safe))
                               (##car _e159754159770_)))
                            (_tl159752159777_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159754159770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159752159777_))
                            (let ((_e159757159780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159752159777_))))
                              (let ((_hd159756159784_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159757159780_)))
                                    (_tl159755159787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159757159780_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159755159787_))
                                    ((lambda (_L159790_)
                                       (let ((__tmp162349
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162345
                                              (let ((__tmp162346
                                                     (let ((__tmp162348
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162347
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162348 __tmp162347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162346 '()))))
                                         (declare (not safe))
                                         (cons __tmp162349 __tmp162345)))
                                     _hd159756159784_)
                                    (_g159749159763_ _g159750159767_))))
                            (_g159749159763_ _g159750159767_))))
                    (_g159749159763_ _g159750159767_)))))
        (_g159748159804_ _$stx159745_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159808_)
      (let* ((_g159812159826_
              (lambda (_g159813159822_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159813159822_))))
             (_g159811159867_
              (lambda (_g159813159830_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159813159830_))
                    (let ((_e159817159833_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159813159830_))))
                      (let ((_hd159816159837_
                             (let ()
                               (declare (not safe))
                               (##car _e159817159833_)))
                            (_tl159815159840_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159817159833_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159815159840_))
                            (let ((_e159820159843_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159815159840_))))
                              (let ((_hd159819159847_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159820159843_)))
                                    (_tl159818159850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159820159843_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159818159850_))
                                    ((lambda (_L159853_)
                                       (let ((__tmp162354
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162350
                                              (let ((__tmp162351
                                                     (let ((__tmp162353
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162352
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162353 __tmp162352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162351 '()))))
                                         (declare (not safe))
                                         (cons __tmp162354 __tmp162350)))
                                     _hd159819159847_)
                                    (_g159812159826_ _g159813159830_))))
                            (_g159812159826_ _g159813159830_))))
                    (_g159812159826_ _g159813159830_)))))
        (_g159811159867_ _$stx159808_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159871_)
      (let* ((_g159875159897_
              (lambda (_g159876159893_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159876159893_))))
             (_g159874159966_
              (lambda (_g159876159901_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159876159901_))
                    (let ((_e159882159904_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159876159901_))))
                      (let ((_hd159881159908_
                             (let ()
                               (declare (not safe))
                               (##car _e159882159904_)))
                            (_tl159880159911_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159882159904_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159880159911_))
                            (let ((_e159885159914_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159880159911_))))
                              (let ((_hd159884159918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159885159914_)))
                                    (_tl159883159921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159885159914_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159883159921_))
                                    (let ((_e159888159924_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159883159921_))))
                                      (let ((_hd159887159928_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159888159924_)))
                                            (_tl159886159931_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159888159924_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159886159931_))
                                            (let ((_e159891159934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159886159931_))))
                                              (let ((_hd159890159938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159891159934_)))
                                                    (_tl159889159941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159891159934_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159889159941_))
                                                    ((lambda (_L159944_
                                                              _L159946_
                                                              _L159947_)
                                                       (let ((__tmp162364
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162355
                      (let ((__tmp162361
                             (let ((__tmp162363
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162362
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159947_ '()))))
                               (declare (not safe))
                               (cons __tmp162363 __tmp162362)))
                            (__tmp162356
                             (let ((__tmp162358
                                    (let ((__tmp162360
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162359
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159946_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162360 __tmp162359)))
                                   (__tmp162357
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159944_ '()))))
                               (declare (not safe))
                               (cons __tmp162358 __tmp162357))))
                        (declare (not safe))
                        (cons __tmp162361 __tmp162356))))
                 (declare (not safe))
                 (cons __tmp162364 __tmp162355)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159890159938_
                                                     _hd159887159928_
                                                     _hd159884159918_)
                                                    (_g159875159897_
                                                     _g159876159901_))))
                                            (_g159875159897_
                                             _g159876159901_))))
                                    (_g159875159897_ _g159876159901_))))
                            (_g159875159897_ _g159876159901_))))
                    (_g159875159897_ _g159876159901_)))))
        (_g159874159966_ _$stx159871_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159970_)
      (let* ((_g159974159996_
              (lambda (_g159975159992_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159975159992_))))
             (_g159973160065_
              (lambda (_g159975160000_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159975160000_))
                    (let ((_e159981160003_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159975160000_))))
                      (let ((_hd159980160007_
                             (let ()
                               (declare (not safe))
                               (##car _e159981160003_)))
                            (_tl159979160010_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159981160003_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159979160010_))
                            (let ((_e159984160013_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159979160010_))))
                              (let ((_hd159983160017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159984160013_)))
                                    (_tl159982160020_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159984160013_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159982160020_))
                                    (let ((_e159987160023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159982160020_))))
                                      (let ((_hd159986160027_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159987160023_)))
                                            (_tl159985160030_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159987160023_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159985160030_))
                                            (let ((_e159990160033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159985160030_))))
                                              (let ((_hd159989160037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159990160033_)))
                                                    (_tl159988160040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159990160033_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159988160040_))
                                                    ((lambda (_L160043_
                                                              _L160045_
                                                              _L160046_)
                                                       (let ((__tmp162374
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162365
                      (let ((__tmp162371
                             (let ((__tmp162373
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162372
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160046_ '()))))
                               (declare (not safe))
                               (cons __tmp162373 __tmp162372)))
                            (__tmp162366
                             (let ((__tmp162368
                                    (let ((__tmp162370
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162369
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160045_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162370 __tmp162369)))
                                   (__tmp162367
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160043_ '()))))
                               (declare (not safe))
                               (cons __tmp162368 __tmp162367))))
                        (declare (not safe))
                        (cons __tmp162371 __tmp162366))))
                 (declare (not safe))
                 (cons __tmp162374 __tmp162365)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159989160037_
                                                     _hd159986160027_
                                                     _hd159983160017_)
                                                    (_g159974159996_
                                                     _g159975160000_))))
                                            (_g159974159996_
                                             _g159975160000_))))
                                    (_g159974159996_ _g159975160000_))))
                            (_g159974159996_ _g159975160000_))))
                    (_g159974159996_ _g159975160000_)))))
        (_g159973160065_ _$stx159970_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160069_)
      (let* ((___stx161884161885_ _$stx160069_)
             (_g160077160145_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161884161885_)))))
        (let ((___kont161887161888_
               (lambda (_L160423_ _L160425_)
                 (let ((__tmp162395
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162375
                        (let ((__tmp162391
                               (let ((__tmp162394
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162392
                                      (let ((__tmp162393
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162393 '()))))
                                 (declare (not safe))
                                 (cons __tmp162394 __tmp162392)))
                              (__tmp162376
                               (let ((__tmp162388
                                      (let ((__tmp162390
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162389
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160425_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162390 __tmp162389)))
                                     (__tmp162377
                                      (let ((__tmp162378
                                             (let ((__tmp162379
                                                    (let ((__tmp162380
                                                           (let ((__tmp162387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162381
                          (let ((__tmp162382
                                 (let ((__tmp162386
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162383
                                        (let ((__tmp162384
                                               (let ((__tmp162385
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160423_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162385))))
                                          (declare (not safe))
                                          (cons _L160425_ __tmp162384))))
                                   (declare (not safe))
                                   (cons __tmp162386 __tmp162383))))
                            (declare (not safe))
                            (cons __tmp162382 '()))))
                     (declare (not safe))
                     (cons __tmp162387 __tmp162381))))
              (declare (not safe))
              (cons __tmp162380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160423_ __tmp162379))))
                                        (declare (not safe))
                                        (cons '#f __tmp162378))))
                                 (declare (not safe))
                                 (cons __tmp162388 __tmp162377))))
                          (declare (not safe))
                          (cons __tmp162391 __tmp162376))))
                   (declare (not safe))
                   (cons __tmp162395 __tmp162375))))
              (___kont161889161890_
               (lambda (_L160354_ _L160356_)
                 (let ((__tmp162396
                        (let ((__tmp162397
                               (let ((__tmp162398
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160354_ __tmp162398))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162397))))
                   (declare (not safe))
                   (cons _L160356_ __tmp162396))))
              (___kont161891161892_
               (lambda (_L160293_ _L160295_)
                 (let ((__tmp162412
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162399
                        (let ((__tmp162408
                               (let ((__tmp162411
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162409
                                      (let ((__tmp162410
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162410 '()))))
                                 (declare (not safe))
                                 (cons __tmp162411 __tmp162409)))
                              (__tmp162400
                               (let ((__tmp162405
                                      (let ((__tmp162407
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162406
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160295_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162407 __tmp162406)))
                                     (__tmp162401
                                      (let ((__tmp162402
                                             (let ((__tmp162404
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162403
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160293_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162404
                                                     __tmp162403))))
                                        (declare (not safe))
                                        (cons __tmp162402 '()))))
                                 (declare (not safe))
                                 (cons __tmp162405 __tmp162401))))
                          (declare (not safe))
                          (cons __tmp162408 __tmp162400))))
                   (declare (not safe))
                   (cons __tmp162412 __tmp162399))))
              (___kont161893161894_
               (lambda (_L160225_ _L160227_)
                 (let ((__tmp162426
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162413
                        (let ((__tmp162422
                               (let ((__tmp162425
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162423
                                      (let ((__tmp162424
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162424 '()))))
                                 (declare (not safe))
                                 (cons __tmp162425 __tmp162423)))
                              (__tmp162414
                               (let ((__tmp162419
                                      (let ((__tmp162421
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162420
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160227_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162421 __tmp162420)))
                                     (__tmp162415
                                      (let ((__tmp162416
                                             (let ((__tmp162418
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162417
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160225_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162418
                                                     __tmp162417))))
                                        (declare (not safe))
                                        (cons __tmp162416 '()))))
                                 (declare (not safe))
                                 (cons __tmp162419 __tmp162415))))
                          (declare (not safe))
                          (cons __tmp162422 __tmp162414))))
                   (declare (not safe))
                   (cons __tmp162426 __tmp162413))))
              (___kont161895161896_
               (lambda (_L160172_ _L160174_)
                 (let ((__tmp162427
                        (let ((__tmp162428
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160172_ __tmp162428))))
                   (declare (not safe))
                   (cons _L160174_ __tmp162427)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161884161885_))
              (let ((_e160083160379_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161884161885_))))
                (let ((_tl160081160386_
                       (let () (declare (not safe)) (##cdr _e160083160379_)))
                      (_hd160082160383_
                       (let () (declare (not safe)) (##car _e160083160379_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160081160386_))
                      (let ((_e160086160389_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160081160386_))))
                        (let ((_tl160084160396_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160086160389_)))
                              (_hd160085160393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160086160389_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160084160396_))
                              (let ((_e160089160399_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160084160396_))))
                                (let ((_tl160087160406_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160089160399_)))
                                      (_hd160088160403_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160089160399_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160088160403_))
                                      (let ((_e160090160409_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160088160403_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160090160409_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160087160406_))
                                                (let ((_e160093160413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160087160406_))))
                                                  (let ((_tl160091160420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160093160413_)))
                                                        (_hd160092160417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160093160413_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160091160420_))
                                                        (___kont161887161888_
                                                         _hd160092160417_
                                                         _hd160085160393_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160085160393_))
                                                            (let ((_e160102160340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160085160393_))))
                      (declare (not safe))
                      (_g160077160145_))
                    (let () (declare (not safe)) (_g160077160145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160085160393_))
                                                    (let ((_e160102160340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160085160393_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160102160340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160087160406_))
                      (___kont161889161890_ _hd160088160403_ _hd160082160383_)
                      (let () (declare (not safe)) (_g160077160145_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160087160406_))
                      (___kont161893161894_ _hd160088160403_ _hd160085160393_)
                      (let () (declare (not safe)) (_g160077160145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160087160406_))
                                                        (___kont161893161894_
                                                         _hd160088160403_
                                                         _hd160085160393_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160077160145_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160085160393_))
                                                (let ((_e160102160340_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160085160393_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160102160340_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160087160406_))
                                                          (___kont161889161890_
                                                           _hd160088160403_
                                                           _hd160082160383_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160087160406_))
                      (let ((_e160120160283_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160087160406_))))
                        (let ((_tl160118160290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160120160283_)))
                              (_hd160119160287_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160120160283_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160118160290_))
                              (___kont161891161892_
                               _hd160119160287_
                               _hd160088160403_)
                              (let ()
                                (declare (not safe))
                                (_g160077160145_)))))
                      (let () (declare (not safe)) (_g160077160145_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160087160406_))
                  (___kont161893161894_ _hd160088160403_ _hd160085160393_)
                  (let () (declare (not safe)) (_g160077160145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160087160406_))
                                                    (___kont161893161894_
                                                     _hd160088160403_
                                                     _hd160085160393_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160077160145_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160085160393_))
                                          (let ((_e160102160340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160085160393_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160102160340_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160087160406_))
                                                    (___kont161889161890_
                                                     _hd160088160403_
                                                     _hd160082160383_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160087160406_))
                                                        (let ((_e160120160283_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160087160406_))))
                  (let ((_tl160118160290_
                         (let () (declare (not safe)) (##cdr _e160120160283_)))
                        (_hd160119160287_
                         (let ()
                           (declare (not safe))
                           (##car _e160120160283_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160118160290_))
                        (___kont161891161892_
                         _hd160119160287_
                         _hd160088160403_)
                        (let () (declare (not safe)) (_g160077160145_)))))
                (let () (declare (not safe)) (_g160077160145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160087160406_))
                                                    (___kont161893161894_
                                                     _hd160088160403_
                                                     _hd160085160393_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160077160145_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160087160406_))
                                              (___kont161893161894_
                                               _hd160088160403_
                                               _hd160085160393_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160077160145_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160085160393_))
                                  (let ((_e160102160340_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160085160393_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160084160396_))
                                        (___kont161895161896_
                                         _hd160085160393_
                                         _hd160082160383_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160077160145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160084160396_))
                                      (___kont161895161896_
                                       _hd160085160393_
                                       _hd160082160383_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160077160145_)))))))
                      (let () (declare (not safe)) (_g160077160145_)))))
              (let () (declare (not safe)) (_g160077160145_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160447_)
      (let* ((___stx162024162025_ _$stx160447_)
             (_g160452160507_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162024162025_)))))
        (let ((___kont162027162028_
               (lambda (_L160692_ _L160694_)
                 (let ((__tmp162444
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162429
                        (let ((__tmp162440
                               (let ((__tmp162443
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162441
                                      (let ((__tmp162442
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162442 '()))))
                                 (declare (not safe))
                                 (cons __tmp162443 __tmp162441)))
                              (__tmp162430
                               (let ((__tmp162431
                                      (let ((__tmp162439
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162432
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160692_
                                                  _L160694_))
                                               (let ((__tmp162433
                                                      (lambda (_g160711160715_
                                                               _g160712160718_
                                                               _g160713160720_)
                                                        (let ((__tmp162434
                                                               (let ((__tmp162438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162435
                              (let ((__tmp162436
                                     (let ((__tmp162437
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160711160715_ '()))))
                                       (declare (not safe))
                                       (cons _g160712160718_ __tmp162437))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162436))))
                         (declare (not safe))
                         (cons __tmp162438 __tmp162435))))
                  (declare (not safe))
                  (cons __tmp162434 _g160713160720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162433
                                                         '()
                                                         _L160692_
                                                         _L160694_)))))
                                        (declare (not safe))
                                        (cons __tmp162439 __tmp162432))))
                                 (declare (not safe))
                                 (cons __tmp162431 '()))))
                          (declare (not safe))
                          (cons __tmp162440 __tmp162430))))
                   (declare (not safe))
                   (cons __tmp162444 __tmp162429))))
              (___kont162031162032_
               (lambda (_L160578_ _L160580_)
                 (let ((__tmp162459
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162445
                        (let ((__tmp162455
                               (let ((__tmp162458
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162456
                                      (let ((__tmp162457
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162457 '()))))
                                 (declare (not safe))
                                 (cons __tmp162458 __tmp162456)))
                              (__tmp162446
                               (let ((__tmp162447
                                      (let ((__tmp162454
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162448
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160578_
                                                  _L160580_))
                                               (let ((__tmp162449
                                                      (lambda (_g160595160599_
                                                               _g160596160602_
                                                               _g160597160604_)
                                                        (let ((__tmp162450
                                                               (let ((__tmp162453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162451
                              (let ((__tmp162452
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160595160599_ '()))))
                                (declare (not safe))
                                (cons _g160596160602_ __tmp162452))))
                         (declare (not safe))
                         (cons __tmp162453 __tmp162451))))
                  (declare (not safe))
                  (cons __tmp162450 _g160597160604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162449
                                                         '()
                                                         _L160578_
                                                         _L160580_)))))
                                        (declare (not safe))
                                        (cons __tmp162454 __tmp162448))))
                                 (declare (not safe))
                                 (cons __tmp162447 '()))))
                          (declare (not safe))
                          (cons __tmp162455 __tmp162446))))
                   (declare (not safe))
                   (cons __tmp162459 __tmp162445)))))
          (let* ((___match162075162076_
                  (lambda (_e160484160514_
                           _hd160483160518_
                           _tl160482160521_
                           ___splice162033162034_
                           _target160485160524_
                           _tl160487160527_)
                    (letrec ((_loop160488160530_
                              (lambda (_hd160486160534_
                                       _dispatch160492160537_
                                       _arity160493160539_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160486160534_))
                                    (let ((_e160489160542_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160486160534_))))
                                      (let ((_lp-tl160491160549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160489160542_)))
                                            (_lp-hd160490160546_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160489160542_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160490160546_))
                                            (let ((_e160498160552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160490160546_))))
                                              (let ((_tl160496160559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160498160552_)))
                                                    (_hd160497160556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160498160552_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160496160559_))
                                                    (let ((_e160501160562_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160496160559_))))
                                                      (let ((_tl160499160569_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160501160562_)))
                    (_hd160500160566_
                     (let () (declare (not safe)) (##car _e160501160562_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160499160569_))
                    (_loop160488160530_
                     _lp-tl160491160549_
                     (let ()
                       (declare (not safe))
                       (cons _hd160500160566_ _dispatch160492160537_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160497160556_ _arity160493160539_)))
                    (let () (declare (not safe)) (_g160452160507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160452160507_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160452160507_)))))
                                    (let ((_arity160495160575_
                                           (reverse _arity160493160539_))
                                          (_dispatch160494160572_
                                           (reverse _dispatch160492160537_)))
                                      (___kont162031162032_
                                       _dispatch160494160572_
                                       _arity160495160575_))))))
                      (_loop160488160530_ _target160485160524_ '() '()))))
                 (___match162067162068_
                  (lambda (_e160484160514_ _hd160483160518_ _tl160482160521_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160482160521_))
                        (let ((___splice162033162034_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160482160521_
                                  '0))))
                          (let ((_tl160487160527_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162033162034_ '1)))
                                (_target160485160524_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162033162034_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160487160527_))
                                (___match162075162076_
                                 _e160484160514_
                                 _hd160483160518_
                                 _tl160482160521_
                                 ___splice162033162034_
                                 _target160485160524_
                                 _tl160487160527_)
                                (let ()
                                  (declare (not safe))
                                  (_g160452160507_)))))
                        (let () (declare (not safe)) (_g160452160507_)))))
                 (___match162061162062_
                  (lambda (_e160458160614_
                           _hd160457160618_
                           _tl160456160621_
                           _e160461160624_
                           _hd160460160628_
                           _tl160459160631_
                           _e160462160634_
                           ___splice162029162030_
                           _target160463160638_
                           _tl160465160641_)
                    (letrec ((_loop160466160644_
                              (lambda (_hd160464160648_
                                       _dispatch160470160651_
                                       _arity160471160653_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160464160648_))
                                    (let ((_e160467160656_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160464160648_))))
                                      (let ((_lp-tl160469160663_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160467160656_)))
                                            (_lp-hd160468160660_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160467160656_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160468160660_))
                                            (let ((_e160476160666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160468160660_))))
                                              (let ((_tl160474160673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160476160666_)))
                                                    (_hd160475160670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160476160666_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160474160673_))
                                                    (let ((_e160479160676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160474160673_))))
                                                      (let ((_tl160477160683_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160479160676_)))
                    (_hd160478160680_
                     (let () (declare (not safe)) (##car _e160479160676_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160477160683_))
                    (_loop160466160644_
                     _lp-tl160469160663_
                     (let ()
                       (declare (not safe))
                       (cons _hd160478160680_ _dispatch160470160651_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160475160670_ _arity160471160653_)))
                    (___match162067162068_
                     _e160458160614_
                     _hd160457160618_
                     _tl160456160621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162067162068_
                                                     _e160458160614_
                                                     _hd160457160618_
                                                     _tl160456160621_))))
                                            (___match162067162068_
                                             _e160458160614_
                                             _hd160457160618_
                                             _tl160456160621_))))
                                    (let ((_arity160473160689_
                                           (reverse _arity160471160653_))
                                          (_dispatch160472160686_
                                           (reverse _dispatch160470160651_)))
                                      (___kont162027162028_
                                       _dispatch160472160686_
                                       _arity160473160689_))))))
                      (_loop160466160644_ _target160463160638_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162024162025_))
                (let ((_e160458160614_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162024162025_))))
                  (let ((_tl160456160621_
                         (let () (declare (not safe)) (##cdr _e160458160614_)))
                        (_hd160457160618_
                         (let ()
                           (declare (not safe))
                           (##car _e160458160614_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160456160621_))
                        (let ((_e160461160624_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160456160621_))))
                          (let ((_tl160459160631_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160461160624_)))
                                (_hd160460160628_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160461160624_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160460160628_))
                                (let ((_e160462160634_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160460160628_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160462160634_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160459160631_))
                                          (let ((___splice162029162030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160459160631_
                                                    '0))))
                                            (let ((_tl160465160641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162029162030_
                                                      '1)))
                                                  (_target160463160638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162029162030_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160465160641_))
                                                  (___match162061162062_
                                                   _e160458160614_
                                                   _hd160457160618_
                                                   _tl160456160621_
                                                   _e160461160624_
                                                   _hd160460160628_
                                                   _tl160459160631_
                                                   _e160462160634_
                                                   ___splice162029162030_
                                                   _target160463160638_
                                                   _tl160465160641_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160456160621_))
                                                      (let ((___splice162033162034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160456160621_ '0))))
                (let ((_tl160487160527_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162033162034_ '1)))
                      (_target160485160524_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162033162034_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160487160527_))
                      (___match162075162076_
                       _e160458160614_
                       _hd160457160618_
                       _tl160456160621_
                       ___splice162033162034_
                       _target160485160524_
                       _tl160487160527_)
                      (let () (declare (not safe)) (_g160452160507_)))))
              (let () (declare (not safe)) (_g160452160507_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160456160621_))
                                              (let ((___splice162033162034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160456160621_
                                                        '0))))
                                                (let ((_tl160487160527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162033162034_
                                                          '1)))
                                                      (_target160485160524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162033162034_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160487160527_))
                                                      (___match162075162076_
                                                       _e160458160614_
                                                       _hd160457160618_
                                                       _tl160456160621_
                                                       ___splice162033162034_
                                                       _target160485160524_
                                                       _tl160487160527_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160452160507_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160452160507_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160456160621_))
                                          (let ((___splice162033162034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160456160621_
                                                    '0))))
                                            (let ((_tl160487160527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162033162034_
                                                      '1)))
                                                  (_target160485160524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162033162034_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160487160527_))
                                                  (___match162075162076_
                                                   _e160458160614_
                                                   _hd160457160618_
                                                   _tl160456160621_
                                                   ___splice162033162034_
                                                   _target160485160524_
                                                   _tl160487160527_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160452160507_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160452160507_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160456160621_))
                                    (let ((___splice162033162034_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160456160621_
                                              '0))))
                                      (let ((_tl160487160527_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162033162034_
                                                '1)))
                                            (_target160485160524_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162033162034_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160487160527_))
                                            (___match162075162076_
                                             _e160458160614_
                                             _hd160457160618_
                                             _tl160456160621_
                                             ___splice162033162034_
                                             _target160485160524_
                                             _tl160487160527_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160452160507_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160452160507_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160456160621_))
                            (let ((___splice162033162034_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160456160621_
                                      '0))))
                              (let ((_tl160487160527_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162033162034_
                                        '1)))
                                    (_target160485160524_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162033162034_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160487160527_))
                                    (___match162075162076_
                                     _e160458160614_
                                     _hd160457160618_
                                     _tl160456160621_
                                     ___splice162033162034_
                                     _target160485160524_
                                     _tl160487160527_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160452160507_)))))
                            (let () (declare (not safe)) (_g160452160507_))))))
                (let () (declare (not safe)) (_g160452160507_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160729_)
      (let* ((_g160733160751_
              (lambda (_g160734160747_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160734160747_))))
             (_g160732160806_
              (lambda (_g160734160755_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160734160755_))
                    (let ((_e160739160758_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160734160755_))))
                      (let ((_hd160738160762_
                             (let ()
                               (declare (not safe))
                               (##car _e160739160758_)))
                            (_tl160737160765_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160739160758_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160737160765_))
                            (let ((_e160742160768_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160737160765_))))
                              (let ((_hd160741160772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160742160768_)))
                                    (_tl160740160775_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160742160768_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160740160775_))
                                    (let ((_e160745160778_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160740160775_))))
                                      (let ((_hd160744160782_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160745160778_)))
                                            (_tl160743160785_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160745160778_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160743160785_))
                                            ((lambda (_L160788_ _L160790_)
                                               (let ((__tmp162473
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162460
                                                      (let ((__tmp162469
                                                             (let ((__tmp162472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162470
                            (let ((__tmp162471
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162471 '()))))
                       (declare (not safe))
                       (cons __tmp162472 __tmp162470)))
                    (__tmp162461
                     (let ((__tmp162466
                            (let ((__tmp162468
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162467
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160790_ '()))))
                              (declare (not safe))
                              (cons __tmp162468 __tmp162467)))
                           (__tmp162462
                            (let ((__tmp162463
                                   (let ((__tmp162465
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162464
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160788_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162465 __tmp162464))))
                              (declare (not safe))
                              (cons __tmp162463 '()))))
                       (declare (not safe))
                       (cons __tmp162466 __tmp162462))))
                (declare (not safe))
                (cons __tmp162469 __tmp162461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162473
                                                       __tmp162460)))
                                             _hd160744160782_
                                             _hd160741160772_)
                                            (_g160733160751_
                                             _g160734160755_))))
                                    (_g160733160751_ _g160734160755_))))
                            (_g160733160751_ _g160734160755_))))
                    (_g160733160751_ _g160734160755_)))))
        (_g160732160806_ _$stx160729_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160810_)
      (let* ((_g160814160832_
              (lambda (_g160815160828_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160815160828_))))
             (_g160813160887_
              (lambda (_g160815160836_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160815160836_))
                    (let ((_e160820160839_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160815160836_))))
                      (let ((_hd160819160843_
                             (let ()
                               (declare (not safe))
                               (##car _e160820160839_)))
                            (_tl160818160846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160820160839_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160818160846_))
                            (let ((_e160823160849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160818160846_))))
                              (let ((_hd160822160853_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160823160849_)))
                                    (_tl160821160856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160823160849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160821160856_))
                                    (let ((_e160826160859_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160821160856_))))
                                      (let ((_hd160825160863_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160826160859_)))
                                            (_tl160824160866_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160826160859_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160824160866_))
                                            ((lambda (_L160869_ _L160871_)
                                               (let ((__tmp162487
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162474
                                                      (let ((__tmp162483
                                                             (let ((__tmp162486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162484
                            (let ((__tmp162485
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162485 '()))))
                       (declare (not safe))
                       (cons __tmp162486 __tmp162484)))
                    (__tmp162475
                     (let ((__tmp162480
                            (let ((__tmp162482
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162481
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160871_ '()))))
                              (declare (not safe))
                              (cons __tmp162482 __tmp162481)))
                           (__tmp162476
                            (let ((__tmp162477
                                   (let ((__tmp162479
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162478
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160869_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162479 __tmp162478))))
                              (declare (not safe))
                              (cons __tmp162477 '()))))
                       (declare (not safe))
                       (cons __tmp162480 __tmp162476))))
                (declare (not safe))
                (cons __tmp162483 __tmp162475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162487
                                                       __tmp162474)))
                                             _hd160825160863_
                                             _hd160822160853_)
                                            (_g160814160832_
                                             _g160815160836_))))
                                    (_g160814160832_ _g160815160836_))))
                            (_g160814160832_ _g160815160836_))))
                    (_g160814160832_ _g160815160836_)))))
        (_g160813160887_ _$stx160810_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160891_)
      (let* ((___stx162078162079_ _$stx160891_)
             (_g160898160969_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162078162079_)))))
        (let ((___kont162081162082_
               (lambda (_L161260_ _L161262_)
                 (let ((__tmp162493
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162488
                        (let ((__tmp162489
                               (let ((__tmp162490
                                      (let ((__tmp162492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162491
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161260_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162492 __tmp162491))))
                                 (declare (not safe))
                                 (cons __tmp162490 '()))))
                          (declare (not safe))
                          (cons _L161262_ __tmp162489))))
                   (declare (not safe))
                   (cons __tmp162493 __tmp162488))))
              (___kont162083162084_
               (lambda (_L161179_ _L161181_)
                 (let ((__tmp162502
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162494
                        (let ((__tmp162495
                               (let ((__tmp162496
                                      (let ((__tmp162501
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162497
                                             (let ((__tmp162498
                                                    (lambda (_g161200161203_
                                                             _g161201161206_)
                                                      (let ((__tmp162499
                                                             (let ((__tmp162500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161200161203_ __tmp162500))))
                (declare (not safe))
                (cons __tmp162499 _g161201161206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162498
                                                       '()
                                                       _L161179_))))
                                        (declare (not safe))
                                        (cons __tmp162501 __tmp162497))))
                                 (declare (not safe))
                                 (cons __tmp162496 '()))))
                          (declare (not safe))
                          (cons _L161181_ __tmp162495))))
                   (declare (not safe))
                   (cons __tmp162502 __tmp162494))))
              (___kont162087162088_
               (lambda (_L161091_ _L161093_)
                 (let ((__tmp162509
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162503
                        (let ((__tmp162504
                               (let ((__tmp162505
                                      (let ((__tmp162508
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162506
                                             (let ((__tmp162507
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161091_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162507))))
                                        (declare (not safe))
                                        (cons __tmp162508 __tmp162506))))
                                 (declare (not safe))
                                 (cons __tmp162505 '()))))
                          (declare (not safe))
                          (cons _L161093_ __tmp162504))))
                   (declare (not safe))
                   (cons __tmp162509 __tmp162503))))
              (___kont162089162090_
               (lambda (_L161026_ _L161028_)
                 (let ((__tmp162519
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162510
                        (let ((__tmp162511
                               (let ((__tmp162512
                                      (let ((__tmp162518
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162513
                                             (let ((__tmp162514
                                                    (let ((__tmp162515
                                                           (lambda (_g161045161048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161046161051_)
                     (let ((__tmp162516
                            (let ((__tmp162517
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161045161048_ __tmp162517))))
                       (declare (not safe))
                       (cons __tmp162516 _g161046161051_)))))
              (declare (not safe))
              (foldr1 __tmp162515 '() _L161026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162514))))
                                        (declare (not safe))
                                        (cons __tmp162518 __tmp162513))))
                                 (declare (not safe))
                                 (cons __tmp162512 '()))))
                          (declare (not safe))
                          (cons _L161028_ __tmp162511))))
                   (declare (not safe))
                   (cons __tmp162519 __tmp162510)))))
          (let* ((___match162197162198_
                  (lambda (_e160951160976_
                           _hd160950160980_
                           _tl160949160983_
                           _e160954160986_
                           _hd160953160990_
                           _tl160952160993_
                           ___splice162091162092_
                           _target160955160996_
                           _tl160957160999_)
                    (letrec ((_loop160958161002_
                              (lambda (_hd160956161006_ _arity160962161009_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160956161006_))
                                    (let ((_e160959161012_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160956161006_))))
                                      (let ((_lp-tl160961161019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160959161012_)))
                                            (_lp-hd160960161016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160959161012_))))
                                        (_loop160958161002_
                                         _lp-tl160961161019_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160960161016_
                                                 _arity160962161009_)))))
                                    (let ((_arity160963161022_
                                           (reverse _arity160962161009_)))
                                      (___kont162089162090_
                                       _arity160963161022_
                                       _hd160953160990_))))))
                      (_loop160958161002_ _target160955160996_ '()))))
                 (___match162157162158_
                  (lambda (_e160919161115_
                           _hd160918161119_
                           _tl160917161122_
                           _e160922161125_
                           _hd160921161129_
                           _tl160920161132_
                           _e160925161135_
                           _hd160924161139_
                           _tl160923161142_
                           _e160926161145_
                           ___splice162085162086_
                           _target160927161149_
                           _tl160929161152_)
                    (letrec ((_loop160930161155_
                              (lambda (_hd160928161159_ _arity160934161162_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160928161159_))
                                    (let ((_e160931161165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160928161159_))))
                                      (let ((_lp-tl160933161172_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160931161165_)))
                                            (_lp-hd160932161169_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160931161165_))))
                                        (_loop160930161155_
                                         _lp-tl160933161172_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160932161169_
                                                 _arity160934161162_)))))
                                    (let ((_arity160935161175_
                                           (reverse _arity160934161162_)))
                                      (___kont162083162084_
                                       _arity160935161175_
                                       _hd160921161129_))))))
                      (_loop160930161155_ _target160927161149_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162078162079_))
                (let ((_e160904161216_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162078162079_))))
                  (let ((_tl160902161223_
                         (let () (declare (not safe)) (##cdr _e160904161216_)))
                        (_hd160903161220_
                         (let ()
                           (declare (not safe))
                           (##car _e160904161216_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160902161223_))
                        (let ((_e160907161226_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160902161223_))))
                          (let ((_tl160905161233_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160907161226_)))
                                (_hd160906161230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160907161226_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160905161233_))
                                (let ((_e160910161236_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160905161233_))))
                                  (let ((_tl160908161243_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160910161236_)))
                                        (_hd160909161240_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160910161236_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160909161240_))
                                        (let ((_e160911161246_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160909161240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160911161246_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160908161243_))
                                                  (let ((_e160914161250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160908161243_))))
                                                    (let ((_tl160912161257_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160914161250_)))
                                                          (_hd160913161254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160914161250_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160912161257_))
                                                          (___kont162081162082_
                                                           _hd160913161254_
                                                           _hd160906161230_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160908161243_))
                      (let ((___splice162085162086_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160908161243_ '0))))
                        (let ((_tl160929161152_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162085162086_ '1)))
                              (_target160927161149_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162085162086_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160929161152_))
                              (___match162157162158_
                               _e160904161216_
                               _hd160903161220_
                               _tl160902161223_
                               _e160907161226_
                               _hd160906161230_
                               _tl160905161233_
                               _e160910161236_
                               _hd160909161240_
                               _tl160908161243_
                               _e160911161246_
                               ___splice162085162086_
                               _target160927161149_
                               _tl160929161152_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160905161233_))
                                  (let ((___splice162091162092_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160905161233_
                                            '0))))
                                    (let ((_tl160957160999_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162091162092_
                                              '1)))
                                          (_target160955160996_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162091162092_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160957160999_))
                                          (___match162197162198_
                                           _e160904161216_
                                           _hd160903161220_
                                           _tl160902161223_
                                           _e160907161226_
                                           _hd160906161230_
                                           _tl160905161233_
                                           ___splice162091162092_
                                           _target160955160996_
                                           _tl160957160999_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160898160969_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160898160969_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160905161233_))
                          (let ((___splice162091162092_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160905161233_
                                    '0))))
                            (let ((_tl160957160999_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162091162092_ '1)))
                                  (_target160955160996_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162091162092_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160957160999_))
                                  (___match162197162198_
                                   _e160904161216_
                                   _hd160903161220_
                                   _tl160902161223_
                                   _e160907161226_
                                   _hd160906161230_
                                   _tl160905161233_
                                   ___splice162091162092_
                                   _target160955160996_
                                   _tl160957160999_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160898160969_)))))
                          (let () (declare (not safe)) (_g160898160969_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160908161243_))
                                                      (let ((___splice162085162086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160908161243_ '0))))
                (let ((_tl160929161152_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162085162086_ '1)))
                      (_target160927161149_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162085162086_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160929161152_))
                      (___match162157162158_
                       _e160904161216_
                       _hd160903161220_
                       _tl160902161223_
                       _e160907161226_
                       _hd160906161230_
                       _tl160905161233_
                       _e160910161236_
                       _hd160909161240_
                       _tl160908161243_
                       _e160911161246_
                       ___splice162085162086_
                       _target160927161149_
                       _tl160929161152_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160908161243_))
                          (___kont162087162088_
                           _hd160909161240_
                           _hd160906161230_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160905161233_))
                              (let ((___splice162091162092_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160905161233_
                                        '0))))
                                (let ((_tl160957160999_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162091162092_
                                          '1)))
                                      (_target160955160996_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162091162092_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160957160999_))
                                      (___match162197162198_
                                       _e160904161216_
                                       _hd160903161220_
                                       _tl160902161223_
                                       _e160907161226_
                                       _hd160906161230_
                                       _tl160905161233_
                                       ___splice162091162092_
                                       _target160955160996_
                                       _tl160957160999_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160898160969_)))))
                              (let ()
                                (declare (not safe))
                                (_g160898160969_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160908161243_))
                  (___kont162087162088_ _hd160909161240_ _hd160906161230_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160905161233_))
                      (let ((___splice162091162092_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160905161233_ '0))))
                        (let ((_tl160957160999_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162091162092_ '1)))
                              (_target160955160996_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162091162092_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160957160999_))
                              (___match162197162198_
                               _e160904161216_
                               _hd160903161220_
                               _tl160902161223_
                               _e160907161226_
                               _hd160906161230_
                               _tl160905161233_
                               ___splice162091162092_
                               _target160955160996_
                               _tl160957160999_)
                              (let ()
                                (declare (not safe))
                                (_g160898160969_)))))
                      (let () (declare (not safe)) (_g160898160969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160908161243_))
                                                  (___kont162087162088_
                                                   _hd160909161240_
                                                   _hd160906161230_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160905161233_))
                                                      (let ((___splice162091162092_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160905161233_ '0))))
                (let ((_tl160957160999_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162091162092_ '1)))
                      (_target160955160996_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162091162092_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160957160999_))
                      (___match162197162198_
                       _e160904161216_
                       _hd160903161220_
                       _tl160902161223_
                       _e160907161226_
                       _hd160906161230_
                       _tl160905161233_
                       ___splice162091162092_
                       _target160955160996_
                       _tl160957160999_)
                      (let () (declare (not safe)) (_g160898160969_)))))
              (let () (declare (not safe)) (_g160898160969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160908161243_))
                                            (___kont162087162088_
                                             _hd160909161240_
                                             _hd160906161230_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160905161233_))
                                                (let ((___splice162091162092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160905161233_
                                                          '0))))
                                                  (let ((_tl160957160999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162091162092_
                                                            '1)))
                                                        (_target160955160996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162091162092_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160957160999_))
                                                        (___match162197162198_
                                                         _e160904161216_
                                                         _hd160903161220_
                                                         _tl160902161223_
                                                         _e160907161226_
                                                         _hd160906161230_
                                                         _tl160905161233_
                                                         ___splice162091162092_
                                                         _target160955160996_
                                                         _tl160957160999_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160898160969_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160898160969_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160905161233_))
                                    (let ((___splice162091162092_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160905161233_
                                              '0))))
                                      (let ((_tl160957160999_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162091162092_
                                                '1)))
                                            (_target160955160996_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162091162092_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160957160999_))
                                            (___match162197162198_
                                             _e160904161216_
                                             _hd160903161220_
                                             _tl160902161223_
                                             _e160907161226_
                                             _hd160906161230_
                                             _tl160905161233_
                                             ___splice162091162092_
                                             _target160955160996_
                                             _tl160957160999_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160898160969_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160898160969_))))))
                        (let () (declare (not safe)) (_g160898160969_)))))
                (let () (declare (not safe)) (_g160898160969_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161286_)
      (let* ((___stx162200162201_ _$stx161286_)
             (_g161291161326_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162200162201_)))))
        (let ((___kont162203162204_
               (lambda (_L161448_ _L161450_)
                 (let ((__tmp162525
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162520
                        (let ((__tmp162521
                               (let ((__tmp162522
                                      (let ((__tmp162524
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162523
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161448_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162524 __tmp162523))))
                                 (declare (not safe))
                                 (cons __tmp162522 '()))))
                          (declare (not safe))
                          (cons _L161450_ __tmp162521))))
                   (declare (not safe))
                   (cons __tmp162525 __tmp162520))))
              (___kont162205162206_
               (lambda (_L161383_ _L161385_)
                 (let ((__tmp162534
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162526
                        (let ((__tmp162527
                               (let ((__tmp162528
                                      (let ((__tmp162533
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162529
                                             (let ((__tmp162530
                                                    (lambda (_g161402161405_
                                                             _g161403161408_)
                                                      (let ((__tmp162531
                                                             (let ((__tmp162532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161402161405_ __tmp162532))))
                (declare (not safe))
                (cons __tmp162531 _g161403161408_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162530
                                                       '()
                                                       _L161383_))))
                                        (declare (not safe))
                                        (cons __tmp162533 __tmp162529))))
                                 (declare (not safe))
                                 (cons __tmp162528 '()))))
                          (declare (not safe))
                          (cons _L161385_ __tmp162527))))
                   (declare (not safe))
                   (cons __tmp162534 __tmp162526)))))
          (let ((___match162249162250_
                 (lambda (_e161308161333_
                          _hd161307161337_
                          _tl161306161340_
                          _e161311161343_
                          _hd161310161347_
                          _tl161309161350_
                          ___splice162207162208_
                          _target161312161353_
                          _tl161314161356_)
                   (letrec ((_loop161315161359_
                             (lambda (_hd161313161363_ _arity161319161366_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161313161363_))
                                   (let ((_e161316161369_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161313161363_))))
                                     (let ((_lp-tl161318161376_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161316161369_)))
                                           (_lp-hd161317161373_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161316161369_))))
                                       (_loop161315161359_
                                        _lp-tl161318161376_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161317161373_
                                                _arity161319161366_)))))
                                   (let ((_arity161320161379_
                                          (reverse _arity161319161366_)))
                                     (___kont162205162206_
                                      _arity161320161379_
                                      _hd161310161347_))))))
                     (_loop161315161359_ _target161312161353_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162200162201_))
                (let ((_e161297161418_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162200162201_))))
                  (let ((_tl161295161425_
                         (let () (declare (not safe)) (##cdr _e161297161418_)))
                        (_hd161296161422_
                         (let ()
                           (declare (not safe))
                           (##car _e161297161418_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161295161425_))
                        (let ((_e161300161428_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161295161425_))))
                          (let ((_tl161298161435_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161300161428_)))
                                (_hd161299161432_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161300161428_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161298161435_))
                                (let ((_e161303161438_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161298161435_))))
                                  (let ((_tl161301161445_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161303161438_)))
                                        (_hd161302161442_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161303161438_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161301161445_))
                                        (___kont162203162204_
                                         _hd161302161442_
                                         _hd161299161432_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161298161435_))
                                            (let ((___splice162207162208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161298161435_
                                                      '0))))
                                              (let ((_tl161314161356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162207162208_
                                                        '1)))
                                                    (_target161312161353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162207162208_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161314161356_))
                                                    (___match162249162250_
                                                     _e161297161418_
                                                     _hd161296161422_
                                                     _tl161295161425_
                                                     _e161300161428_
                                                     _hd161299161432_
                                                     _tl161298161435_
                                                     ___splice162207162208_
                                                     _target161312161353_
                                                     _tl161314161356_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161291161326_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161291161326_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161298161435_))
                                    (let ((___splice162207162208_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161298161435_
                                              '0))))
                                      (let ((_tl161314161356_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162207162208_
                                                '1)))
                                            (_target161312161353_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162207162208_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161314161356_))
                                            (___match162249162250_
                                             _e161297161418_
                                             _hd161296161422_
                                             _tl161295161425_
                                             _e161300161428_
                                             _hd161299161432_
                                             _tl161298161435_
                                             ___splice162207162208_
                                             _target161312161353_
                                             _tl161314161356_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161291161326_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161291161326_))))))
                        (let () (declare (not safe)) (_g161291161326_)))))
                (let () (declare (not safe)) (_g161291161326_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161470_)
      (let* ((_g161474161509_
              (lambda (_g161475161505_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161475161505_))))
             (_g161473161637_
              (lambda (_g161475161513_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161475161513_))
                    (let ((_e161480161516_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161475161513_))))
                      (let ((_hd161479161520_
                             (let ()
                               (declare (not safe))
                               (##car _e161480161516_)))
                            (_tl161478161523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161480161516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161478161523_))
                            (let ((_g162535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161478161523_
                                      '0))))
                              (begin
                                (let ((_g162536_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162535_)
                                             (##vector-length _g162535_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162536_ 2)))
                                      (error "Context expects 2 values"
                                             _g162536_)))
                                (let ((_target161481161526_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162535_ 0)))
                                      (_tl161483161529_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162535_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161483161529_))
                                      (letrec ((_loop161484161532_
                                                (lambda (_hd161482161536_
                                                         _arity161488161539_
                                                         _prim161489161541_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161482161536_))
                                                      (let ((_e161485161544_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161482161536_))))
                (let ((_lp-hd161486161548_
                       (let () (declare (not safe)) (##car _e161485161544_)))
                      (_lp-tl161487161551_
                       (let () (declare (not safe)) (##cdr _e161485161544_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161486161548_))
                      (let ((_e161494161554_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161486161548_))))
                        (let ((_hd161493161558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161494161554_)))
                              (_tl161492161561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161494161554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161492161561_))
                              (let ((_g162545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161492161561_
                                        '0))))
                                (begin
                                  (let ((_g162546_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162545_)
                                               (##vector-length _g162545_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162546_ 2)))
                                        (error "Context expects 2 values"
                                               _g162546_)))
                                  (let ((_target161495161564_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162545_ 0)))
                                        (_tl161497161567_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162545_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161497161567_))
                                        (letrec ((_loop161498161570_
                                                  (lambda (_hd161496161574_
                                                           _arity161502161577_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161496161574_))
                                                        (let ((_e161499161580_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161496161574_))))
                  (let ((_lp-hd161500161584_
                         (let () (declare (not safe)) (##car _e161499161580_)))
                        (_lp-tl161501161587_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161499161580_))))
                    (_loop161498161570_
                     _lp-tl161501161587_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161500161584_ _arity161502161577_)))))
                (let ((_arity161503161590_ (reverse _arity161502161577_)))
                  (_loop161484161532_
                   _lp-tl161487161551_
                   (let ()
                     (declare (not safe))
                     (cons _arity161503161590_ _arity161488161539_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161493161558_ _prim161489161541_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161498161570_
                                           _target161495161564_
                                           '()))
                                        (_g161474161509_ _g161475161513_)))))
                              (_g161474161509_ _g161475161513_))))
                      (_g161474161509_ _g161475161513_))))
              (let ((_arity161490161594_ (reverse _arity161488161539_))
                    (_prim161491161597_ (reverse _prim161489161541_)))
                ((lambda (_L161600_ _L161602_)
                   (let ((__tmp162544
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162537
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161600_
                               _L161602_))
                            (let ((__tmp162538
                                   (lambda (_g161617161623_
                                            _g161618161626_
                                            _g161619161628_)
                                     (let ((__tmp162539
                                            (let ((__tmp162543
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162540
                                                   (let ((__tmp162541
                                                          (let ((__tmp162542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161620161631_ _g161621161634_)
                           (let ()
                             (declare (not safe))
                             (cons _g161620161631_ _g161621161634_)))))
                    (declare (not safe))
                    (foldr1 __tmp162542 '() _g161617161623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161618161626_
                                                           __tmp162541))))
                                              (declare (not safe))
                                              (cons __tmp162543 __tmp162540))))
                                       (declare (not safe))
                                       (cons __tmp162539 _g161619161628_)))))
                              (declare (not safe))
                              (foldr2 __tmp162538 '() _L161600_ _L161602_)))))
                     (declare (not safe))
                     (cons __tmp162544 __tmp162537)))
                 _arity161490161594_
                 _prim161491161597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161484161532_
                                         _target161481161526_
                                         '()
                                         '()))
                                      (_g161474161509_ _g161475161513_)))))
                            (_g161474161509_ _g161475161513_))))
                    (_g161474161509_ _g161475161513_)))))
        (_g161473161637_ _$stx161470_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161643_)
      (let* ((_g161647161682_
              (lambda (_g161648161678_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161648161678_))))
             (_g161646161810_
              (lambda (_g161648161686_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161648161686_))
                    (let ((_e161653161689_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161648161686_))))
                      (let ((_hd161652161693_
                             (let ()
                               (declare (not safe))
                               (##car _e161653161689_)))
                            (_tl161651161696_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161653161689_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161651161696_))
                            (let ((_g162547_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161651161696_
                                      '0))))
                              (begin
                                (let ((_g162548_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162547_)
                                             (##vector-length _g162547_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162548_ 2)))
                                      (error "Context expects 2 values"
                                             _g162548_)))
                                (let ((_target161654161699_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162547_ 0)))
                                      (_tl161656161702_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162547_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161656161702_))
                                      (letrec ((_loop161657161705_
                                                (lambda (_hd161655161709_
                                                         _arity161661161712_
                                                         _prim161662161714_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161655161709_))
                                                      (let ((_e161658161717_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161655161709_))))
                (let ((_lp-hd161659161721_
                       (let () (declare (not safe)) (##car _e161658161717_)))
                      (_lp-tl161660161724_
                       (let () (declare (not safe)) (##cdr _e161658161717_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161659161721_))
                      (let ((_e161667161727_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161659161721_))))
                        (let ((_hd161666161731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161667161727_)))
                              (_tl161665161734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161667161727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161665161734_))
                              (let ((_g162557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161665161734_
                                        '0))))
                                (begin
                                  (let ((_g162558_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162557_)
                                               (##vector-length _g162557_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162558_ 2)))
                                        (error "Context expects 2 values"
                                               _g162558_)))
                                  (let ((_target161668161737_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162557_ 0)))
                                        (_tl161670161740_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162557_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161670161740_))
                                        (letrec ((_loop161671161743_
                                                  (lambda (_hd161669161747_
                                                           _arity161675161750_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161669161747_))
                                                        (let ((_e161672161753_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161669161747_))))
                  (let ((_lp-hd161673161757_
                         (let () (declare (not safe)) (##car _e161672161753_)))
                        (_lp-tl161674161760_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161672161753_))))
                    (_loop161671161743_
                     _lp-tl161674161760_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161673161757_ _arity161675161750_)))))
                (let ((_arity161676161763_ (reverse _arity161675161750_)))
                  (_loop161657161705_
                   _lp-tl161660161724_
                   (let ()
                     (declare (not safe))
                     (cons _arity161676161763_ _arity161661161712_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161666161731_ _prim161662161714_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161671161743_
                                           _target161668161737_
                                           '()))
                                        (_g161647161682_ _g161648161686_)))))
                              (_g161647161682_ _g161648161686_))))
                      (_g161647161682_ _g161648161686_))))
              (let ((_arity161663161767_ (reverse _arity161661161712_))
                    (_prim161664161770_ (reverse _prim161662161714_)))
                ((lambda (_L161773_ _L161775_)
                   (let ((__tmp162556
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162549
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161773_
                               _L161775_))
                            (let ((__tmp162550
                                   (lambda (_g161790161796_
                                            _g161791161799_
                                            _g161792161801_)
                                     (let ((__tmp162551
                                            (let ((__tmp162555
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162552
                                                   (let ((__tmp162553
                                                          (let ((__tmp162554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161793161804_ _g161794161807_)
                           (let ()
                             (declare (not safe))
                             (cons _g161793161804_ _g161794161807_)))))
                    (declare (not safe))
                    (foldr1 __tmp162554 '() _g161790161796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161791161799_
                                                           __tmp162553))))
                                              (declare (not safe))
                                              (cons __tmp162555 __tmp162552))))
                                       (declare (not safe))
                                       (cons __tmp162551 _g161792161801_)))))
                              (declare (not safe))
                              (foldr2 __tmp162550 '() _L161773_ _L161775_)))))
                     (declare (not safe))
                     (cons __tmp162556 __tmp162549)))
                 _arity161663161767_
                 _prim161664161770_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161657161705_
                                         _target161654161699_
                                         '()
                                         '()))
                                      (_g161647161682_ _g161648161686_)))))
                            (_g161647161682_ _g161648161686_))))
                    (_g161647161682_ _g161648161686_)))))
        (_g161646161810_ _$stx161643_)))))
