(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx44_)
      (let* ((_g4866_ (lambda (_g4962_)
                        (gx#raise-syntax-error '#f '"Bad syntax" _g4962_)))
             (_g47123_
              (lambda (_g4970_)
                (if (gx#stx-pair? _g4970_)
                    (let ((_e5273_ (gx#syntax-e _g4970_)))
                      (let ((_hd5377_
                             (let () (declare (not safe)) (##car _e5273_)))
                            (_tl5480_
                             (let () (declare (not safe)) (##cdr _e5273_))))
                        (if (gx#stx-pair? _tl5480_)
                            (let ((_e5583_ (gx#syntax-e _tl5480_)))
                              (let ((_hd5687_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5583_)))
                                    (_tl5790_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5583_))))
                                (if (gx#stx-pair? _tl5790_)
                                    (let ((_e5893_ (gx#syntax-e _tl5790_)))
                                      (let ((_hd5997_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5893_)))
                                            (_tl60100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5893_))))
                                        (if (gx#stx-null? _tl60100_)
                                            ((lambda (_L103_ _L105_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'key)
                               (cons (gx#datum->syntax '#f 'lst)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'default)
                                                 (cons '#f '()))
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'cond)
                               (cons (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'pair?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lst)
                           '()))
               (cons (cons _L103_
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'lst) '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f '=>)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'cdr)
                                                       '())))
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'procedure?)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'default)
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'default)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'key)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'default)
                                                             '()))
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5997_
                                             _hd5687_)
                                            (_g4866_ _g4970_))))
                                    (_g4866_ _g4970_))))
                            (_g4866_ _g4970_))))
                    (_g4866_ _g4970_)))))
        (_g47123_ _$stx44_))))
  (define |[:0:]#defpget|
    (lambda (_$stx127_)
      (let* ((_g131149_
              (lambda (_g132145_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g132145_)))
             (_g130204_
              (lambda (_g132153_)
                (if (gx#stx-pair? _g132153_)
                    (let ((_e135156_ (gx#syntax-e _g132153_)))
                      (let ((_hd136160_
                             (let () (declare (not safe)) (##car _e135156_)))
                            (_tl137163_
                             (let () (declare (not safe)) (##cdr _e135156_))))
                        (if (gx#stx-pair? _tl137163_)
                            (let ((_e138166_ (gx#syntax-e _tl137163_)))
                              (let ((_hd139170_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e138166_)))
                                    (_tl140173_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e138166_))))
                                (if (gx#stx-pair? _tl140173_)
                                    (let ((_e141176_ (gx#syntax-e _tl140173_)))
                                      (let ((_hd142180_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e141176_)))
                                            (_tl143183_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e141176_))))
                                        (if (gx#stx-null? _tl143183_)
                                            ((lambda (_L186_ _L188_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'key)
                               (cons (gx#datum->syntax '#f 'lst)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'default)
                                                 (cons '#f '()))
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'lp)
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'rest)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lst)
                                                             '()))
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'match)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'rest)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '@list)
                                       (cons (gx#datum->syntax '#f 'k)
                                             (cons (gx#datum->syntax '#f 'v)
                                                   (gx#datum->syntax
                                                    '#f
                                                    'rest))))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons _L186_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'k)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'key)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'v)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lp)
                             (cons (gx#datum->syntax '#f 'rest) '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'procedure?)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'default)
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'default)
                             (cons (gx#datum->syntax '#f 'key) '()))
                       (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd142180_
                                             _hd139170_)
                                            (_g131149_ _g132153_))))
                                    (_g131149_ _g132153_))))
                            (_g131149_ _g132153_))))
                    (_g131149_ _g132153_)))))
        (_g130204_ _$stx127_))))
  (define |[:0:]#defremove1|
    (lambda (_$stx208_)
      (let* ((_g212230_
              (lambda (_g213226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g213226_)))
             (_g211285_
              (lambda (_g213234_)
                (if (gx#stx-pair? _g213234_)
                    (let ((_e216237_ (gx#syntax-e _g213234_)))
                      (let ((_hd217241_
                             (let () (declare (not safe)) (##car _e216237_)))
                            (_tl218244_
                             (let () (declare (not safe)) (##cdr _e216237_))))
                        (if (gx#stx-pair? _tl218244_)
                            (let ((_e219247_ (gx#syntax-e _tl218244_)))
                              (let ((_hd220251_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e219247_)))
                                    (_tl221254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e219247_))))
                                (if (gx#stx-pair? _tl221254_)
                                    (let ((_e222257_ (gx#syntax-e _tl221254_)))
                                      (let ((_hd223261_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222257_)))
                                            (_tl224264_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222257_))))
                                        (if (gx#stx-null? _tl224264_)
                                            ((lambda (_L267_ _L269_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'el)
                               (cons (gx#datum->syntax '#f 'lst) '())))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'lp)
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'rest)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lst)
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'r)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '@list)
                                 '())
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'match)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'rest)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '@list)
                                       (cons (gx#datum->syntax '#f 'hd)
                                             (gx#datum->syntax '#f 'rest)))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons _L267_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'el)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'hd)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'foldl1)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons (gx#datum->syntax '#f 'rest)
                                   (cons (gx#datum->syntax '#f 'r) '()))))
                 (cons (cons (gx#datum->syntax '#f 'lp)
                             (cons (gx#datum->syntax '#f 'rest)
                                   (cons (cons (gx#datum->syntax '#f 'cons)
                                               (cons (gx#datum->syntax '#f 'hd)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'r)
                                                           '())))
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (gx#datum->syntax '#f 'lst) '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd223261_
                                             _hd220251_)
                                            (_g212230_ _g213234_))))
                                    (_g212230_ _g213234_))))
                            (_g212230_ _g213234_))))
                    (_g212230_ _g213234_)))))
        (_g211285_ _$stx208_)))))
