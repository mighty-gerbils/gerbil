(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx225728_)
      (let* ((_g225732225761_
              (lambda (_g225733225757_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g225733225757_))))
             (_g225731225862_
              (lambda (_g225733225765_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g225733225765_))
                    (let ((_e225738225768_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g225733225765_))))
                      (let ((_hd225737225772_
                             (let ()
                               (declare (not safe))
                               (##car _e225738225768_)))
                            (_tl225736225775_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225738225768_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl225736225775_))
                            (let ((_g241122_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl225736225775_
                                      '0))))
                              (begin
                                (let ((_g241123_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241122_)
                                             (##vector-length _g241122_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241123_ 2)))
                                      (error "Context expects 2 values"
                                             _g241123_)))
                                (let ((_target225739225778_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241122_ 0)))
                                      (_tl225741225781_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241122_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225741225781_))
                                      (letrec ((_loop225742225784_
                                                (lambda (_hd225740225788_
                                                         _type-e225746225791_
                                                         _id225747225793_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd225740225788_))
                                                      (let ((_e225743225796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd225740225788_))))
                (let ((_lp-hd225744225800_
                       (let () (declare (not safe)) (##car _e225743225796_)))
                      (_lp-tl225745225803_
                       (let () (declare (not safe)) (##cdr _e225743225796_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd225744225800_))
                      (let ((_e225752225806_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd225744225800_))))
                        (let ((_hd225751225810_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225752225806_)))
                              (_tl225750225813_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225752225806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225750225813_))
                              (let ((_e225755225816_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl225750225813_))))
                                (let ((_hd225754225820_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225755225816_)))
                                      (_tl225753225823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225755225816_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225753225823_))
                                      (_loop225742225784_
                                       _lp-tl225745225803_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225754225820_
                                               _type-e225746225791_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225751225810_
                                               _id225747225793_)))
                                      (_g225732225761_ _g225733225765_))))
                              (_g225732225761_ _g225733225765_))))
                      (_g225732225761_ _g225733225765_))))
              (let ((_type-e225748225826_ (reverse _type-e225746225791_))
                    (_id225749225829_ (reverse _id225747225793_)))
                ((lambda (_L225832_ _L225834_)
                   (let ((__tmp241135
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241124
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L225832_
                               _L225834_))
                            (let ((__tmp241125
                                   (lambda (_g225850225854_
                                            _g225851225857_
                                            _g225852225859_)
                                     (let ((__tmp241126
                                            (let ((__tmp241134
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241127
                                                   (let ((__tmp241133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241128
                                                          (let ((__tmp241130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241132
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241131
                                (let ()
                                  (declare (not safe))
                                  (cons _g225851225857_ '()))))
                           (declare (not safe))
                           (cons __tmp241132 __tmp241131)))
                        (__tmp241129
                         (let ()
                           (declare (not safe))
                           (cons _g225850225854_ '()))))
                    (declare (not safe))
                    (cons __tmp241130 __tmp241129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241133
                                                           __tmp241128))))
                                              (declare (not safe))
                                              (cons __tmp241134 __tmp241127))))
                                       (declare (not safe))
                                       (cons __tmp241126 _g225852225859_)))))
                              (declare (not safe))
                              (foldr2 __tmp241125 '() _L225832_ _L225834_)))))
                     (declare (not safe))
                     (cons __tmp241135 __tmp241124)))
                 _type-e225748225826_
                 _id225749225829_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop225742225784_
                                         _target225739225778_
                                         '()
                                         '()))
                                      (_g225732225761_ _g225733225765_)))))
                            (_g225732225761_ _g225733225765_))))
                    (_g225732225761_ _g225733225765_)))))
        (_g225731225862_ _$stx225728_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx225867_)
      (let* ((_g225871225900_
              (lambda (_g225872225896_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g225872225896_))))
             (_g225870226000_
              (lambda (_g225872225904_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g225872225904_))
                    (let ((_e225877225907_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g225872225904_))))
                      (let ((_hd225876225911_
                             (let ()
                               (declare (not safe))
                               (##car _e225877225907_)))
                            (_tl225875225914_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225877225907_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl225875225914_))
                            (let ((_g241136_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl225875225914_
                                      '0))))
                              (begin
                                (let ((_g241137_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241136_)
                                             (##vector-length _g241136_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241137_ 2)))
                                      (error "Context expects 2 values"
                                             _g241137_)))
                                (let ((_target225878225917_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241136_ 0)))
                                      (_tl225880225920_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241136_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225880225920_))
                                      (letrec ((_loop225881225923_
                                                (lambda (_hd225879225927_
                                                         _type-e225885225930_
                                                         _id225886225932_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd225879225927_))
                                                      (let ((_e225882225935_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd225879225927_))))
                (let ((_lp-hd225883225939_
                       (let () (declare (not safe)) (##car _e225882225935_)))
                      (_lp-tl225884225942_
                       (let () (declare (not safe)) (##cdr _e225882225935_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd225883225939_))
                      (let ((_e225891225945_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd225883225939_))))
                        (let ((_hd225890225949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225891225945_)))
                              (_tl225889225952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225891225945_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225889225952_))
                              (let ((_e225894225955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl225889225952_))))
                                (let ((_hd225893225959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225894225955_)))
                                      (_tl225892225962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225894225955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225892225962_))
                                      (_loop225881225923_
                                       _lp-tl225884225942_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225893225959_
                                               _type-e225885225930_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd225890225949_
                                               _id225886225932_)))
                                      (_g225871225900_ _g225872225904_))))
                              (_g225871225900_ _g225872225904_))))
                      (_g225871225900_ _g225872225904_))))
              (let ((_type-e225887225965_ (reverse _type-e225885225930_))
                    (_id225888225968_ (reverse _id225886225932_)))
                ((lambda (_L225971_ _L225973_)
                   (let ((__tmp241149
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241138
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L225971_
                               _L225973_))
                            (let ((__tmp241139
                                   (lambda (_g225988225992_
                                            _g225989225995_
                                            _g225990225997_)
                                     (let ((__tmp241140
                                            (let ((__tmp241148
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241141
                                                   (let ((__tmp241147
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241142
                                                          (let ((__tmp241144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241146
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241145
                                (let ()
                                  (declare (not safe))
                                  (cons _g225989225995_ '()))))
                           (declare (not safe))
                           (cons __tmp241146 __tmp241145)))
                        (__tmp241143
                         (let ()
                           (declare (not safe))
                           (cons _g225988225992_ '()))))
                    (declare (not safe))
                    (cons __tmp241144 __tmp241143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241147
                                                           __tmp241142))))
                                              (declare (not safe))
                                              (cons __tmp241148 __tmp241141))))
                                       (declare (not safe))
                                       (cons __tmp241140 _g225990225997_)))))
                              (declare (not safe))
                              (foldr2 __tmp241139 '() _L225971_ _L225973_)))))
                     (declare (not safe))
                     (cons __tmp241149 __tmp241138)))
                 _type-e225887225965_
                 _id225888225968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop225881225923_
                                         _target225878225917_
                                         '()
                                         '()))
                                      (_g225871225900_ _g225872225904_)))))
                            (_g225871225900_ _g225872225904_))))
                    (_g225871225900_ _g225872225904_)))))
        (_g225870226000_ _$stx225867_)))))
