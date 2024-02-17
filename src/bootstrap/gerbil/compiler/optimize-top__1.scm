(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx236628_)
      (let* ((_g236632236661_
              (lambda (_g236633236657_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236633236657_))))
             (_g236631236762_
              (lambda (_g236633236665_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236633236665_))
                    (let ((_e236638236668_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236633236665_))))
                      (let ((_hd236637236672_
                             (let ()
                               (declare (not safe))
                               (##car _e236638236668_)))
                            (_tl236636236675_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236638236668_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236636236675_))
                            (let ((_g252139_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236636236675_
                                      '0))))
                              (begin
                                (let ((_g252140_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252139_)
                                             (##vector-length _g252139_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252140_ 2)))
                                      (error "Context expects 2 values"
                                             _g252140_)))
                                (let ((_target236639236678_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252139_ 0)))
                                      (_tl236641236681_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252139_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236641236681_))
                                      (letrec ((_loop236642236684_
                                                (lambda (_hd236640236688_
                                                         _type-e236646236691_
                                                         _id236647236693_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236640236688_))
                                                      (let ((_e236643236696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236640236688_))))
                (let ((_lp-hd236644236700_
                       (let () (declare (not safe)) (##car _e236643236696_)))
                      (_lp-tl236645236703_
                       (let () (declare (not safe)) (##cdr _e236643236696_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236644236700_))
                      (let ((_e236652236706_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236644236700_))))
                        (let ((_hd236651236710_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236652236706_)))
                              (_tl236650236713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236652236706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236650236713_))
                              (let ((_e236655236716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236650236713_))))
                                (let ((_hd236654236720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236655236716_)))
                                      (_tl236653236723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236655236716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236653236723_))
                                      (_loop236642236684_
                                       _lp-tl236645236703_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236654236720_
                                               _type-e236646236691_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236651236710_
                                               _id236647236693_)))
                                      (_g236632236661_ _g236633236665_))))
                              (_g236632236661_ _g236633236665_))))
                      (_g236632236661_ _g236633236665_))))
              (let ((_type-e236648236726_ (reverse _type-e236646236691_))
                    (_id236649236729_ (reverse _id236647236693_)))
                ((lambda (_L236732_ _L236734_)
                   (let ((__tmp252152
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp252141
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236732_
                               _L236734_))
                            (let ((__tmp252142
                                   (lambda (_g236750236754_
                                            _g236751236757_
                                            _g236752236759_)
                                     (let ((__tmp252143
                                            (let ((__tmp252151
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp252144
                                                   (let ((__tmp252150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp252145
                                                          (let ((__tmp252147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252149
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp252148
                                (let ()
                                  (declare (not safe))
                                  (cons _g236751236757_ '()))))
                           (declare (not safe))
                           (cons __tmp252149 __tmp252148)))
                        (__tmp252146
                         (let ()
                           (declare (not safe))
                           (cons _g236750236754_ '()))))
                    (declare (not safe))
                    (cons __tmp252147 __tmp252146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252150
                                                           __tmp252145))))
                                              (declare (not safe))
                                              (cons __tmp252151 __tmp252144))))
                                       (declare (not safe))
                                       (cons __tmp252143 _g236752236759_)))))
                              (declare (not safe))
                              (foldr2 __tmp252142 '() _L236732_ _L236734_)))))
                     (declare (not safe))
                     (cons __tmp252152 __tmp252141)))
                 _type-e236648236726_
                 _id236649236729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236642236684_
                                         _target236639236678_
                                         '()
                                         '()))
                                      (_g236632236661_ _g236633236665_)))))
                            (_g236632236661_ _g236633236665_))))
                    (_g236632236661_ _g236633236665_)))))
        (_g236631236762_ _$stx236628_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx236767_)
      (let* ((_g236771236800_
              (lambda (_g236772236796_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236772236796_))))
             (_g236770236900_
              (lambda (_g236772236804_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236772236804_))
                    (let ((_e236777236807_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236772236804_))))
                      (let ((_hd236776236811_
                             (let ()
                               (declare (not safe))
                               (##car _e236777236807_)))
                            (_tl236775236814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236777236807_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236775236814_))
                            (let ((_g252153_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236775236814_
                                      '0))))
                              (begin
                                (let ((_g252154_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252153_)
                                             (##vector-length _g252153_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252154_ 2)))
                                      (error "Context expects 2 values"
                                             _g252154_)))
                                (let ((_target236778236817_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252153_ 0)))
                                      (_tl236780236820_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252153_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236780236820_))
                                      (letrec ((_loop236781236823_
                                                (lambda (_hd236779236827_
                                                         _type-e236785236830_
                                                         _id236786236832_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236779236827_))
                                                      (let ((_e236782236835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236779236827_))))
                (let ((_lp-hd236783236839_
                       (let () (declare (not safe)) (##car _e236782236835_)))
                      (_lp-tl236784236842_
                       (let () (declare (not safe)) (##cdr _e236782236835_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236783236839_))
                      (let ((_e236791236845_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236783236839_))))
                        (let ((_hd236790236849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236791236845_)))
                              (_tl236789236852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236791236845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236789236852_))
                              (let ((_e236794236855_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236789236852_))))
                                (let ((_hd236793236859_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236794236855_)))
                                      (_tl236792236862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236794236855_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236792236862_))
                                      (_loop236781236823_
                                       _lp-tl236784236842_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236793236859_
                                               _type-e236785236830_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236790236849_
                                               _id236786236832_)))
                                      (_g236771236800_ _g236772236804_))))
                              (_g236771236800_ _g236772236804_))))
                      (_g236771236800_ _g236772236804_))))
              (let ((_type-e236787236865_ (reverse _type-e236785236830_))
                    (_id236788236868_ (reverse _id236786236832_)))
                ((lambda (_L236871_ _L236873_)
                   (let ((__tmp252166
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp252155
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236871_
                               _L236873_))
                            (let ((__tmp252156
                                   (lambda (_g236888236892_
                                            _g236889236895_
                                            _g236890236897_)
                                     (let ((__tmp252157
                                            (let ((__tmp252165
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp252158
                                                   (let ((__tmp252164
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp252159
                                                          (let ((__tmp252161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252163
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp252162
                                (let ()
                                  (declare (not safe))
                                  (cons _g236889236895_ '()))))
                           (declare (not safe))
                           (cons __tmp252163 __tmp252162)))
                        (__tmp252160
                         (let ()
                           (declare (not safe))
                           (cons _g236888236892_ '()))))
                    (declare (not safe))
                    (cons __tmp252161 __tmp252160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252164
                                                           __tmp252159))))
                                              (declare (not safe))
                                              (cons __tmp252165 __tmp252158))))
                                       (declare (not safe))
                                       (cons __tmp252157 _g236890236897_)))))
                              (declare (not safe))
                              (foldr2 __tmp252156 '() _L236871_ _L236873_)))))
                     (declare (not safe))
                     (cons __tmp252166 __tmp252155)))
                 _type-e236787236865_
                 _id236788236868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236781236823_
                                         _target236778236817_
                                         '()
                                         '()))
                                      (_g236771236800_ _g236772236804_)))))
                            (_g236771236800_ _g236772236804_))))
                    (_g236771236800_ _g236772236804_)))))
        (_g236770236900_ _$stx236767_)))))
