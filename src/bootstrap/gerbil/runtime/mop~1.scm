(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx61229_)
      (let* ((___stx6582265823_ _$stx61229_)
             (_g6123461263_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6582265823_))))
        (let ((___kont6582565826_
               (lambda (_L61356_ _L61358_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _L61358_ (cons _L61356_ '())))
                             (cons _L61356_ '())))))
              (___kont6582765828_
               (lambda (_L61300_ _L61302_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _L61300_ (cons _L61300_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _L61302_
                                                           (cons _L61300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L61300_ '())))
                                   '()))))))
          (let ((___match6584965850_
                 (lambda (_e6124061326_
                          _hd6123961330_
                          _tl6123861333_
                          _e6124361336_
                          _hd6124261340_
                          _tl6124161343_
                          _e6124661346_
                          _hd6124561350_
                          _tl6124461353_)
                   (let ((_L61356_ _hd6124561350_) (_L61358_ _hd6124261340_))
                     (if (or (gx#identifier? _L61356_)
                             (gx#stx-fixnum? _L61356_))
                         (___kont6582565826_ _L61356_ _L61358_)
                         (___kont6582765828_
                          _hd6124561350_
                          _hd6124261340_))))))
            (if (gx#stx-pair? ___stx6582265823_)
                (let ((_e6124061326_ (gx#syntax-e ___stx6582265823_)))
                  (let ((_tl6123861333_
                         (let () (declare (not safe)) (##cdr _e6124061326_)))
                        (_hd6123961330_
                         (let () (declare (not safe)) (##car _e6124061326_))))
                    (if (gx#stx-pair? _tl6123861333_)
                        (let ((_e6124361336_ (gx#syntax-e _tl6123861333_)))
                          (let ((_tl6124161343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6124361336_)))
                                (_hd6124261340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6124361336_))))
                            (if (gx#stx-pair? _tl6124161343_)
                                (let ((_e6124661346_
                                       (gx#syntax-e _tl6124161343_)))
                                  (let ((_tl6124461353_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6124661346_)))
                                        (_hd6124561350_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6124661346_))))
                                    (if (gx#stx-null? _tl6124461353_)
                                        (___match6584965850_
                                         _e6124061326_
                                         _hd6123961330_
                                         _tl6123861333_
                                         _e6124361336_
                                         _hd6124261340_
                                         _tl6124161343_
                                         _e6124661346_
                                         _hd6124561350_
                                         _tl6124461353_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6123461263_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6123461263_)))))
                        (let () (declare (not safe)) (_g6123461263_)))))
                (let () (declare (not safe)) (_g6123461263_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx61381_)
      (let* ((___stx6587265873_ _$stx61381_)
             (_g6138661415_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6587265873_))))
        (let ((___kont6587565876_
               (lambda (_L61507_ _L61509_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _L61509_ (cons _L61507_ '())))
                             (cons '0 '())))))
              (___kont6587765878_
               (lambda (_L61452_ _L61454_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _L61452_ (cons _L61452_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _L61454_
                                                           (cons _L61452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((___match6589965900_
                 (lambda (_e6139261477_
                          _hd6139161481_
                          _tl6139061484_
                          _e6139561487_
                          _hd6139461491_
                          _tl6139361494_
                          _e6139861497_
                          _hd6139761501_
                          _tl6139661504_)
                   (let ((_L61507_ _hd6139761501_) (_L61509_ _hd6139461491_))
                     (if (or (gx#identifier? _L61507_)
                             (gx#stx-fixnum? _L61507_))
                         (___kont6587565876_ _L61507_ _L61509_)
                         (___kont6587765878_
                          _hd6139761501_
                          _hd6139461491_))))))
            (if (gx#stx-pair? ___stx6587265873_)
                (let ((_e6139261477_ (gx#syntax-e ___stx6587265873_)))
                  (let ((_tl6139061484_
                         (let () (declare (not safe)) (##cdr _e6139261477_)))
                        (_hd6139161481_
                         (let () (declare (not safe)) (##car _e6139261477_))))
                    (if (gx#stx-pair? _tl6139061484_)
                        (let ((_e6139561487_ (gx#syntax-e _tl6139061484_)))
                          (let ((_tl6139361494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6139561487_)))
                                (_hd6139461491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6139561487_))))
                            (if (gx#stx-pair? _tl6139361494_)
                                (let ((_e6139861497_
                                       (gx#syntax-e _tl6139361494_)))
                                  (let ((_tl6139661504_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6139861497_)))
                                        (_hd6139761501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6139861497_))))
                                    (if (gx#stx-null? _tl6139661504_)
                                        (___match6589965900_
                                         _e6139261477_
                                         _hd6139161481_
                                         _tl6139061484_
                                         _e6139561487_
                                         _hd6139461491_
                                         _tl6139361494_
                                         _e6139861497_
                                         _hd6139761501_
                                         _tl6139661504_)
                                        (let ()
                                          (declare (not safe))
                                          (_g6138661415_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6138661415_)))))
                        (let () (declare (not safe)) (_g6138661415_)))))
                (let () (declare (not safe)) (_g6138661415_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx61532_)
      (let* ((_g6153561556_
              (lambda (_g6153661552_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6153661552_)))
             (_g6153461784_
              (lambda (_g6153661560_)
                (if (gx#stx-pair? _g6153661560_)
                    (let ((_e6154161563_ (gx#syntax-e _g6153661560_)))
                      (let ((_hd6154061567_
                             (let ()
                               (declare (not safe))
                               (##car _e6154161563_)))
                            (_tl6153961570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6154161563_))))
                        (if (gx#stx-pair? _tl6153961570_)
                            (let ((_e6154461573_ (gx#syntax-e _tl6153961570_)))
                              (let ((_hd6154361577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6154461573_)))
                                    (_tl6154261580_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6154461573_))))
                                (if (gx#stx-pair? _hd6154361577_)
                                    (let ((_e6154761583_
                                           (gx#syntax-e _hd6154361577_)))
                                      (let ((_hd6154661587_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6154761583_)))
                                            (_tl6154561590_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6154761583_))))
                                        (if (gx#stx-pair? _tl6154561590_)
                                            (let ((_e6155061593_
                                                   (gx#syntax-e
                                                    _tl6154561590_)))
                                              (let ((_hd6154961597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6155061593_)))
                                                    (_tl6154861600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6155061593_))))
                                                (if (gx#stx-null?
                                                     _tl6154861600_)
                                                    (if (gx#stx-null?
                                                         _tl6154261580_)
                                                        ((lambda (_L61603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L61605_)
                   (let* ((_g6162361631_
                           (lambda (_g6162461627_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g6162461627_)))
                          (_g6162261780_
                           (lambda (_g6162461635_)
                             ((lambda (_L61638_)
                                (let ()
                                  (let* ((_g6165061658_
                                          (lambda (_g6165161654_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g6165161654_)))
                                         (_g6164961776_
                                          (lambda (_g6165161662_)
                                            ((lambda (_L61665_)
                                               (let ()
                                                 (let* ((_g6167861686_
                                                         (lambda (_g6167961682_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g6167961682_)))
                                                        (_g6167761772_
                                                         (lambda (_g6167961690_)
                                                           ((lambda (_L61693_)
                                                              (let ()
                                                                (let* ((_g6170661714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g6170761710_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g6170761710_)))
                               (_g6170561768_
                                (lambda (_g6170761718_)
                                  ((lambda (_L61721_)
                                     (let ()
                                       (let* ((_g6173461742_
                                               (lambda (_g6173561738_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g6173561738_)))
                                              (_g6173361764_
                                               (lambda (_g6173561746_)
                                                 ((lambda (_L61749_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'def)
                                  (cons _L61665_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.accessor)
                        (cons _L61638_ (cons _L61605_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass) '())
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-ref)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons _L61603_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class::t)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L61605_ '()))
                                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _L61693_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _L61638_ (cons _L61605_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-ref)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons _L61603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L61605_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons _L61721_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _L61638_
                                          (cons _L61605_ (cons '#t '()))))
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##structure-set!)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'klass)
                          (cons (gx#datum->syntax '#f 'val)
                                (cons _L61603_
                                      (cons (gx#datum->syntax '#f 'class::t)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L61605_ '()))
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L61749_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                          (cons _L61638_
                                                (cons _L61605_
                                                      (cons '#f '()))))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (cons (gx#datum->syntax '#f '##unchecked-structure-set!)
                          (cons (gx#datum->syntax '#f 'klass)
                                (cons (gx#datum->syntax '#f 'val)
                                      (cons _L61603_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'class::t)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L61605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g6173561746_))))
                                         (_g6173361764_
                                          (gx#stx-identifier
                                           _L61605_
                                           '"&"
                                           _L61721_)))))
                                   _g6170761718_))))
                          (_g6170561768_
                           (gx#stx-identifier _L61605_ _L61665_ '"-set!")))))
                    _g6167961690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6167761772_
                                                    (gx#stx-identifier
                                                     _L61605_
                                                     '"&"
                                                     _L61665_)))))
                                             _g6165161662_))))
                                    (_g6164961776_
                                     (gx#stx-identifier
                                      _L61605_
                                      '"class-type-"
                                      _L61605_)))))
                              _g6162461635_))))
                     (_g6162261780_ (gx#core-quote-syntax 'class::t))))
                 _hd6154961597_
                 _hd6154661587_)
                (_g6153561556_ _g6153661560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6153561556_
                                                     _g6153661560_))))
                                            (_g6153561556_ _g6153661560_))))
                                    (_g6153561556_ _g6153661560_))))
                            (_g6153561556_ _g6153661560_))))
                    (_g6153561556_ _g6153661560_)))))
        (_g6153461784_ _stx61532_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx61788_)
      (let* ((_g6179261821_
              (lambda (_g6179361817_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6179361817_)))
             (_g6179161921_
              (lambda (_g6179361825_)
                (if (gx#stx-pair? _g6179361825_)
                    (let ((_e6179861828_ (gx#syntax-e _g6179361825_)))
                      (let ((_hd6179761832_
                             (let ()
                               (declare (not safe))
                               (##car _e6179861828_)))
                            (_tl6179661835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6179861828_))))
                        (if (gx#stx-pair/null? _tl6179661835_)
                            (let ((_g66190_
                                   (gx#syntax-split-splice _tl6179661835_ '0)))
                              (begin
                                (let ((_g66191_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g66190_)
                                             (##vector-length _g66190_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g66191_ 2)))
                                      (error "Context expects 2 values"
                                             _g66191_)))
                                (let ((_target6179961838_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66190_ 0)))
                                      (_tl6180161841_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66190_ 1))))
                                  (if (gx#stx-null? _tl6180161841_)
                                      (letrec ((_loop6180261844_
                                                (lambda (_hd6180061848_
                                                         _field6180661851_
                                                         _slot6180761853_)
                                                  (if (gx#stx-pair?
                                                       _hd6180061848_)
                                                      (let ((_e6180361856_
                                                             (gx#syntax-e
                                                              _hd6180061848_)))
                                                        (let ((_lp-hd6180461860_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6180361856_)))
                      (_lp-tl6180561863_
                       (let () (declare (not safe)) (##cdr _e6180361856_))))
                  (if (gx#stx-pair? _lp-hd6180461860_)
                      (let ((_e6181261866_ (gx#syntax-e _lp-hd6180461860_)))
                        (let ((_hd6181161870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6181261866_)))
                              (_tl6181061873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6181261866_))))
                          (if (gx#stx-pair? _tl6181061873_)
                              (let ((_e6181561876_
                                     (gx#syntax-e _tl6181061873_)))
                                (let ((_hd6181461880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6181561876_)))
                                      (_tl6181361883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6181561876_))))
                                  (if (gx#stx-null? _tl6181361883_)
                                      (_loop6180261844_
                                       _lp-tl6180561863_
                                       (cons _hd6181461880_ _field6180661851_)
                                       (cons _hd6181161870_ _slot6180761853_))
                                      (_g6179261821_ _g6179361825_))))
                              (_g6179261821_ _g6179361825_))))
                      (_g6179261821_ _g6179361825_))))
              (let ((_field6180861886_ (reverse _field6180661851_))
                    (_slot6180961889_ (reverse _slot6180761853_)))
                ((lambda (_L61892_ _L61894_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L61892_ _L61894_)
                           (let ((__tmp66192
                                  (lambda (_g6190961913_
                                           _g6191061916_
                                           _g6191161918_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _g6191061916_
                                                            (cons _g6190961913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g6191161918_))))
                             (declare (not safe))
                             (__foldr2 __tmp66192 '() _L61892_ _L61894_)))))
                 _field6180861886_
                 _slot6180961889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6180261844_
                                         _target6179961838_
                                         '()
                                         '()))
                                      (_g6179261821_ _g6179361825_)))))
                            (_g6179261821_ _g6179361825_))))
                    (_g6179261821_ _g6179361825_)))))
        (_g6179161921_ _$stx61788_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_$stx61926_)
      (let* ((_g6193061964_
              (lambda (_g6193161960_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6193161960_)))
             (_g6192962075_
              (lambda (_g6193161968_)
                (if (gx#stx-pair? _g6193161968_)
                    (let ((_e6194061971_ (gx#syntax-e _g6193161968_)))
                      (let ((_hd6193961975_
                             (let ()
                               (declare (not safe))
                               (##car _e6194061971_)))
                            (_tl6193861978_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6194061971_))))
                        (if (gx#stx-pair? _tl6193861978_)
                            (let ((_e6194361981_ (gx#syntax-e _tl6193861978_)))
                              (let ((_hd6194261985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6194361981_)))
                                    (_tl6194161988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6194361981_))))
                                (if (gx#stx-pair? _tl6194161988_)
                                    (let ((_e6194661991_
                                           (gx#syntax-e _tl6194161988_)))
                                      (let ((_hd6194561995_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6194661991_)))
                                            (_tl6194461998_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6194661991_))))
                                        (if (gx#stx-pair? _tl6194461998_)
                                            (let ((_e6194962001_
                                                   (gx#syntax-e
                                                    _tl6194461998_)))
                                              (let ((_hd6194862005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6194962001_)))
                                                    (_tl6194762008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6194962001_))))
                                                (if (gx#stx-pair?
                                                     _tl6194762008_)
                                                    (let ((_e6195262011_
                                                           (gx#syntax-e
                                                            _tl6194762008_)))
                                                      (let ((_hd6195162015_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6195262011_)))
                    (_tl6195062018_
                     (let () (declare (not safe)) (##cdr _e6195262011_))))
                (if (gx#stx-pair? _tl6195062018_)
                    (let ((_e6195562021_ (gx#syntax-e _tl6195062018_)))
                      (let ((_hd6195462025_
                             (let ()
                               (declare (not safe))
                               (##car _e6195562021_)))
                            (_tl6195362028_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6195562021_))))
                        (if (gx#stx-pair? _tl6195362028_)
                            (let ((_e6195862031_ (gx#syntax-e _tl6195362028_)))
                              (let ((_hd6195762035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6195862031_)))
                                    (_tl6195662038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6195862031_))))
                                (if (gx#stx-null? _tl6195662038_)
                                    ((lambda (_L62041_
                                              _L62043_
                                              _L62044_
                                              _L62045_
                                              _L62046_
                                              _L62047_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _L62047_ '()))
                                   (cons _L62046_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'error)
                                               (cons '"unknown slot"
                                                     (cons 'class:
                                                           (cons _L62047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'slot: (cons _L62046_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _L62047_ '()))
                                         (cons (cons _L62045_
                                                     (cons _L62047_
                                                           (cons _L62046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _L62047_ '()))
                                               (cons (cons _L62044_
                                                           (cons _L62047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L62046_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _L62047_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L62043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L62047_
                               (cons _L62046_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _L62041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _L62047_
                                     (cons _L62046_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd6195762035_
                                     _hd6195462025_
                                     _hd6195162015_
                                     _hd6194862005_
                                     _hd6194561995_
                                     _hd6194261985_)
                                    (_g6193061964_ _g6193161968_))))
                            (_g6193061964_ _g6193161968_))))
                    (_g6193061964_ _g6193161968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6193061964_
                                                     _g6193161968_))))
                                            (_g6193061964_ _g6193161968_))))
                                    (_g6193061964_ _g6193161968_))))
                            (_g6193061964_ _g6193161968_))))
                    (_g6193061964_ _g6193161968_)))))
        (_g6192962075_ _$stx61926_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx62079_)
      (let* ((_g6208362109_
              (lambda (_g6208462105_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6208462105_)))
             (_g6208262192_
              (lambda (_g6208462113_)
                (if (gx#stx-pair? _g6208462113_)
                    (let ((_e6209162116_ (gx#syntax-e _g6208462113_)))
                      (let ((_hd6209062120_
                             (let ()
                               (declare (not safe))
                               (##car _e6209162116_)))
                            (_tl6208962123_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6209162116_))))
                        (if (gx#stx-pair? _tl6208962123_)
                            (let ((_e6209462126_ (gx#syntax-e _tl6208962123_)))
                              (let ((_hd6209362130_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6209462126_)))
                                    (_tl6209262133_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6209462126_))))
                                (if (gx#stx-pair? _tl6209262133_)
                                    (let ((_e6209762136_
                                           (gx#syntax-e _tl6209262133_)))
                                      (let ((_hd6209662140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6209762136_)))
                                            (_tl6209562143_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6209762136_))))
                                        (if (gx#stx-pair? _tl6209562143_)
                                            (let ((_e6210062146_
                                                   (gx#syntax-e
                                                    _tl6209562143_)))
                                              (let ((_hd6209962150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6210062146_)))
                                                    (_tl6209862153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6210062146_))))
                                                (if (gx#stx-pair?
                                                     _tl6209862153_)
                                                    (let ((_e6210362156_
                                                           (gx#syntax-e
                                                            _tl6209862153_)))
                                                      (let ((_hd6210262160_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6210362156_)))
                    (_tl6210162163_
                     (let () (declare (not safe)) (##cdr _e6210362156_))))
                (if (gx#stx-null? _tl6210162163_)
                    ((lambda (_L62166_ _L62168_ _L62169_ _L62170_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _L62170_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _L62169_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _L62168_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _L62166_
                                     (cons _L62170_ (cons _L62169_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _hd6210262160_
                     _hd6209962150_
                     _hd6209662140_
                     _hd6209362130_)
                    (_g6208362109_ _g6208462113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6208362109_
                                                     _g6208462113_))))
                                            (_g6208362109_ _g6208462113_))))
                                    (_g6208362109_ _g6208462113_))))
                            (_g6208362109_ _g6208462113_))))
                    (_g6208362109_ _g6208462113_)))))
        (_g6208262192_ _$stx62079_))))
  (define |[:0:]#defsubtype|
    (lambda (_$stx62196_)
      (let* ((_g6220062229_
              (lambda (_g6220162225_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6220162225_)))
             (_g6219962329_
              (lambda (_g6220162233_)
                (if (gx#stx-pair? _g6220162233_)
                    (let ((_e6220662236_ (gx#syntax-e _g6220162233_)))
                      (let ((_hd6220562240_
                             (let ()
                               (declare (not safe))
                               (##car _e6220662236_)))
                            (_tl6220462243_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6220662236_))))
                        (if (gx#stx-pair/null? _tl6220462243_)
                            (let ((_g66193_
                                   (gx#syntax-split-splice _tl6220462243_ '0)))
                              (begin
                                (let ((_g66194_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g66193_)
                                             (##vector-length _g66193_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g66194_ 2)))
                                      (error "Context expects 2 values"
                                             _g66194_)))
                                (let ((_target6220762246_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66193_ 0)))
                                      (_tl6220962249_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66193_ 1))))
                                  (if (gx#stx-null? _tl6220962249_)
                                      (letrec ((_loop6221062252_
                                                (lambda (_hd6220862256_
                                                         _name6221462259_
                                                         _t6221562261_)
                                                  (if (gx#stx-pair?
                                                       _hd6220862256_)
                                                      (let ((_e6221162264_
                                                             (gx#syntax-e
                                                              _hd6220862256_)))
                                                        (let ((_lp-hd6221262268_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6221162264_)))
                      (_lp-tl6221362271_
                       (let () (declare (not safe)) (##cdr _e6221162264_))))
                  (if (gx#stx-pair? _lp-hd6221262268_)
                      (let ((_e6222062274_ (gx#syntax-e _lp-hd6221262268_)))
                        (let ((_hd6221962278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6222062274_)))
                              (_tl6221862281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6222062274_))))
                          (if (gx#stx-pair? _tl6221862281_)
                              (let ((_e6222362284_
                                     (gx#syntax-e _tl6221862281_)))
                                (let ((_hd6222262288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6222362284_)))
                                      (_tl6222162291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6222362284_))))
                                  (if (gx#stx-null? _tl6222162291_)
                                      (_loop6221062252_
                                       _lp-tl6221362271_
                                       (cons _hd6222262288_ _name6221462259_)
                                       (cons _hd6221962278_ _t6221562261_))
                                      (_g6220062229_ _g6220162233_))))
                              (_g6220062229_ _g6220162233_))))
                      (_g6220062229_ _g6220162233_))))
              (let ((_name6221662294_ (reverse _name6221462259_))
                    (_t6221762297_ (reverse _t6221562261_)))
                ((lambda (_L62300_ _L62302_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L62300_ _L62302_)
                           (let ((__tmp66195
                                  (lambda (_g6231762321_
                                           _g6231862324_
                                           _g6231962326_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _g6231862324_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _g6231762321_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g6231962326_))))
                             (declare (not safe))
                             (__foldr2 __tmp66195 '() _L62300_ _L62302_)))))
                 _name6221662294_
                 _t6221762297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6221062252_
                                         _target6220762246_
                                         '()
                                         '()))
                                      (_g6220062229_ _g6220162233_)))))
                            (_g6220062229_ _g6220162233_))))
                    (_g6220062229_ _g6220162233_)))))
        (_g6219962329_ _$stx62196_))))
  (define |[:0:]#defsystem-class|
    (lambda (_$stx62334_)
      (let* ((_g6233862369_
              (lambda (_g6233962365_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6233962365_)))
             (_g6233762488_
              (lambda (_g6233962373_)
                (if (gx#stx-pair? _g6233962373_)
                    (let ((_e6234562376_ (gx#syntax-e _g6233962373_)))
                      (let ((_hd6234462380_
                             (let ()
                               (declare (not safe))
                               (##car _e6234562376_)))
                            (_tl6234362383_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6234562376_))))
                        (if (gx#stx-pair? _tl6234362383_)
                            (let ((_e6234862386_ (gx#syntax-e _tl6234362383_)))
                              (let ((_hd6234762390_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6234862386_)))
                                    (_tl6234662393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6234862386_))))
                                (if (gx#stx-pair? _tl6234662393_)
                                    (let ((_e6235162396_
                                           (gx#syntax-e _tl6234662393_)))
                                      (let ((_hd6235062400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6235162396_)))
                                            (_tl6234962403_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6235162396_))))
                                        (if (gx#stx-pair? _tl6234962403_)
                                            (let ((_e6235462406_
                                                   (gx#syntax-e
                                                    _tl6234962403_)))
                                              (let ((_hd6235362410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6235462406_)))
                                                    (_tl6235262413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6235462406_))))
                                                (if (gx#stx-pair/null?
                                                     _hd6235362410_)
                                                    (let ((_g66196_
                                                           (gx#syntax-split-splice
                                                            _hd6235362410_
                                                            '0)))
                                                      (begin
                                                        (let ((_g66197_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g66196_)
                             (##vector-length _g66196_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g66197_ 2)))
                      (error "Context expects 2 values" _g66197_)))
                (let ((_target6235562416_
                       (let () (declare (not safe)) (##vector-ref _g66196_ 0)))
                      (_tl6235762419_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g66196_ 1))))
                  (if (gx#stx-null? _tl6235762419_)
                      (letrec ((_loop6235862422_
                                (lambda (_hd6235662426_ _super6236262429_)
                                  (if (gx#stx-pair? _hd6235662426_)
                                      (let ((_e6235962432_
                                             (gx#syntax-e _hd6235662426_)))
                                        (let ((_lp-hd6236062436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6235962432_)))
                                              (_lp-tl6236162439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6235962432_))))
                                          (_loop6235862422_
                                           _lp-tl6236162439_
                                           (cons _lp-hd6236062436_
                                                 _super6236262429_))))
                                      (let ((_super6236362442_
                                             (reverse _super6236262429_)))
                                        (if (gx#stx-null? _tl6235262413_)
                                            ((lambda (_L62446_
                                                      _L62448_
                                                      _L62449_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _L62449_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _L62448_
                                                 (cons (let ((__tmp66198
                                                              (lambda (_g6247362476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g6247462479_)
                        (cons _g6247362476_ _g6247462479_))))
                 (declare (not safe))
                 (__foldr1 __tmp66198 '() _L62446_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L62448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp66199
                                  (lambda (_g6247162482_ _g6247262485_)
                                    (cons _g6247162482_ _g6247262485_))))
                             (declare (not safe))
                             (__foldr1 __tmp66199 '() _L62446_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _super6236362442_
                                             _hd6235062400_
                                             _hd6234762390_)
                                            (_g6233862369_ _g6233962373_)))))))
                        (_loop6235862422_ _target6235562416_ '()))
                      (_g6233862369_ _g6233962373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6233862369_
                                                     _g6233962373_))))
                                            (_g6233862369_ _g6233962373_))))
                                    (_g6233862369_ _g6233962373_))))
                            (_g6233862369_ _g6233962373_))))
                    (_g6233862369_ _g6233962373_)))))
        (_g6233762488_ _$stx62334_))))
  (define |[:0:]#defshadow-class|
    (lambda (_$stx62493_)
      (let* ((_g6249762528_
              (lambda (_g6249862524_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6249862524_)))
             (_g6249662639_
              (lambda (_g6249862532_)
                (if (gx#stx-pair? _g6249862532_)
                    (let ((_e6250462535_ (gx#syntax-e _g6249862532_)))
                      (let ((_hd6250362539_
                             (let ()
                               (declare (not safe))
                               (##car _e6250462535_)))
                            (_tl6250262542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6250462535_))))
                        (if (gx#stx-pair? _tl6250262542_)
                            (let ((_e6250762545_ (gx#syntax-e _tl6250262542_)))
                              (let ((_hd6250662549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6250762545_)))
                                    (_tl6250562552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6250762545_))))
                                (if (gx#stx-pair? _tl6250562552_)
                                    (let ((_e6251062555_
                                           (gx#syntax-e _tl6250562552_)))
                                      (let ((_hd6250962559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6251062555_)))
                                            (_tl6250862562_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6251062555_))))
                                        (if (gx#stx-pair/null? _hd6250962559_)
                                            (let ((_g66200_
                                                   (gx#syntax-split-splice
                                                    _hd6250962559_
                                                    '0)))
                                              (begin
                                                (let ((_g66201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g66200_)
                                                             (##vector-length
                                                              _g66200_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g66201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g66201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target6251162565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g66200_
                                                          0)))
                                                      (_tl6251362568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g66200_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl6251362568_)
                                                      (letrec ((_loop6251462571_
                                                                (lambda (_hd6251262575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super6251862578_)
                          (if (gx#stx-pair? _hd6251262575_)
                              (let ((_e6251562581_
                                     (gx#syntax-e _hd6251262575_)))
                                (let ((_lp-hd6251662585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6251562581_)))
                                      (_lp-tl6251762588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6251562581_))))
                                  (_loop6251462571_
                                   _lp-tl6251762588_
                                   (cons _lp-hd6251662585_
                                         _super6251862578_))))
                              (let ((_super6251962591_
                                     (reverse _super6251862578_)))
                                (if (gx#stx-pair? _tl6250862562_)
                                    (let ((_e6252262595_
                                           (gx#syntax-e _tl6250862562_)))
                                      (let ((_hd6252162599_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6252262595_)))
                                            (_tl6252062602_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6252262595_))))
                                        (if (gx#stx-null? _tl6252062602_)
                                            ((lambda (_L62605_
                                                      _L62607_
                                                      _L62608_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _L62608_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _L62608_
                                                 (cons (let ((__tmp66202
                                                              (lambda (_g6263062633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g6263162636_)
                        (cons _g6263062633_ _g6263162636_))))
                 (declare (not safe))
                 (__foldr1 __tmp66202 '() _L62607_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _L62605_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6252162599_
                                             _super6251962591_
                                             _hd6250662549_)
                                            (_g6249762528_ _g6249862532_))))
                                    (_g6249762528_ _g6249862532_)))))))
                (_loop6251462571_ _target6251162565_ '()))
              (_g6249762528_ _g6249862532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6249762528_ _g6249862532_))))
                                    (_g6249762528_ _g6249862532_))))
                            (_g6249762528_ _g6249862532_))))
                    (_g6249762528_ _g6249862532_)))))
        (_g6249662639_ _$stx62493_)))))
