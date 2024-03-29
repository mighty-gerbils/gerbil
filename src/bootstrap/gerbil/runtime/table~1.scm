(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57984_)
      (let* ((_g5798858002_
              (lambda (_g5798957998_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5798957998_)))
             (_g5798758044_
              (lambda (_g5798958006_)
                (if (gx#stx-pair? _g5798958006_)
                    (let ((_e5799358009_ (gx#syntax-e _g5798958006_)))
                      (let ((_hd5799258013_
                             (let ()
                               (declare (not safe))
                               (##car _e5799358009_)))
                            (_tl5799158016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5799358009_))))
                        (if (gx#stx-pair? _tl5799158016_)
                            (let ((_e5799658019_ (gx#syntax-e _tl5799158016_)))
                              (let ((_hd5799558023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5799658019_)))
                                    (_tl5799458026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5799658019_))))
                                (if (gx#stx-null? _tl5799458026_)
                                    ((lambda (_L58029_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _L58029_ '()))))
                                     _hd5799558023_)
                                    (_g5798858002_ _g5798958006_))))
                            (_g5798858002_ _g5798958006_))))
                    (_g5798858002_ _g5798958006_)))))
        (_g5798758044_ _$stx57984_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx58048_)
      (let* ((_g5805258098_
              (lambda (_g5805358094_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5805358094_)))
             (_g5805158251_
              (lambda (_g5805358102_)
                (if (gx#stx-pair? _g5805358102_)
                    (let ((_e5806558105_ (gx#syntax-e _g5805358102_)))
                      (let ((_hd5806458109_
                             (let ()
                               (declare (not safe))
                               (##car _e5806558105_)))
                            (_tl5806358112_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5806558105_))))
                        (if (gx#stx-pair? _tl5806358112_)
                            (let ((_e5806858115_ (gx#syntax-e _tl5806358112_)))
                              (let ((_hd5806758119_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5806858115_)))
                                    (_tl5806658122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5806858115_))))
                                (if (gx#stx-pair? _tl5806658122_)
                                    (let ((_e5807158125_
                                           (gx#syntax-e _tl5806658122_)))
                                      (let ((_hd5807058129_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5807158125_)))
                                            (_tl5806958132_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5807158125_))))
                                        (if (gx#stx-pair? _tl5806958132_)
                                            (let ((_e5807458135_
                                                   (gx#syntax-e
                                                    _tl5806958132_)))
                                              (let ((_hd5807358139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5807458135_)))
                                                    (_tl5807258142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5807458135_))))
                                                (if (gx#stx-pair?
                                                     _tl5807258142_)
                                                    (let ((_e5807758145_
                                                           (gx#syntax-e
                                                            _tl5807258142_)))
                                                      (let ((_hd5807658149_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5807758145_)))
                    (_tl5807558152_
                     (let () (declare (not safe)) (##cdr _e5807758145_))))
                (if (gx#stx-pair? _tl5807558152_)
                    (let ((_e5808058155_ (gx#syntax-e _tl5807558152_)))
                      (let ((_hd5807958159_
                             (let ()
                               (declare (not safe))
                               (##car _e5808058155_)))
                            (_tl5807858162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5808058155_))))
                        (if (gx#stx-pair? _tl5807858162_)
                            (let ((_e5808358165_ (gx#syntax-e _tl5807858162_)))
                              (let ((_hd5808258169_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5808358165_)))
                                    (_tl5808158172_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5808358165_))))
                                (if (gx#stx-pair? _tl5808158172_)
                                    (let ((_e5808658175_
                                           (gx#syntax-e _tl5808158172_)))
                                      (let ((_hd5808558179_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5808658175_)))
                                            (_tl5808458182_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5808658175_))))
                                        (if (gx#stx-pair? _tl5808458182_)
                                            (let ((_e5808958185_
                                                   (gx#syntax-e
                                                    _tl5808458182_)))
                                              (let ((_hd5808858189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5808958185_)))
                                                    (_tl5808758192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5808958185_))))
                                                (if (gx#stx-pair?
                                                     _tl5808758192_)
                                                    (let ((_e5809258195_
                                                           (gx#syntax-e
                                                            _tl5808758192_)))
                                                      (let ((_hd5809158199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5809258195_)))
                    (_tl5809058202_
                     (let () (declare (not safe)) (##cdr _e5809258195_))))
                (if (gx#stx-null? _tl5809058202_)
                    ((lambda (_L58205_
                              _L58207_
                              _L58208_
                              _L58209_
                              _L58210_
                              _L58211_
                              _L58212_
                              _L58213_
                              _L58214_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _L58214_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'size-hint)
                         (cons '#f '()))
                   (cons (cons (gx#datum->syntax '#f 'seed) (cons '0 '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-raw-table)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'size-hint)
                         (cons _L58207_
                               (cons _L58205_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _L58213_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         (cons (gx#datum->syntax '#f 'key)
                               (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'table)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'seed)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '&raw-table-seed)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tab)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons (cons (gx#datum->syntax '#f '__table-ref)
                                           (cons (gx#datum->syntax '#f 'table)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'seed)
                                                       (cons _L58207_
                                                             (cons _L58205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'default)
                                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L58212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'tab)
                               (cons (gx#datum->syntax '#f 'key)
                                     (cons (gx#datum->syntax '#f 'value)
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'when)
                               (cons (cons (gx#datum->syntax '#f 'fx<)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-free)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fxquotient)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-table)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           (cons '4 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__raw-table-rehash!)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       '()))
                                           '())))
                         (cons (cons _L58211_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'value)
                                                       '()))))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'def)
                                                           (cons (cons _L58211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'tab)
                                     (cons (gx#datum->syntax '#f 'key)
                                           (cons (gx#datum->syntax '#f 'value)
                                                 '()))))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'table)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '&raw-table-table)
                           (cons (gx#datum->syntax '#f 'tab) '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'seed)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '&raw-table-seed)
                                 (cons (gx#datum->syntax '#f 'tab) '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '__table-set!)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'table)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'seed)
                           (cons _L58207_
                                 (cons _L58205_
                                       (cons (gx#datum->syntax '#f 'key)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'value)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'set!)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '&raw-table-free)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'tab)
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fx-)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '&raw-table-free)
                               (cons (gx#datum->syntax '#f 'tab) '()))
                         (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'set!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-count)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 (cons (cons (gx#datum->syntax '#f 'lambda)
                             (cons '()
                                   (cons (cons (gx#datum->syntax '#f 'set!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-count)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'def)
                         (cons (cons _L58210_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _L58210_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'default)
                                                             '())))))
                               (cons (cons (gx#datum->syntax '#f 'when)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '&raw-table-free)
                           (cons (gx#datum->syntax '#f 'tab) '()))
                     (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-length)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '&raw-table-table)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'tab)
                                                               '()))
                                                   '()))
                                       (cons '4 '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__raw-table-rehash!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tab)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _L58209_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _L58210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _L58209_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _L58210_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'default)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'table)
                           (cons (cons (gx#datum->syntax '#f '&raw-table-table)
                                       (cons (gx#datum->syntax '#f 'tab) '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'seed)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-seed)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f '__table-update!)
                           (cons (gx#datum->syntax '#f 'table)
                                 (cons (gx#datum->syntax '#f 'seed)
                                       (cons _L58207_
                                             (cons _L58205_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _L58210_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'default)
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'set!)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '&raw-table-free)
                               (cons (gx#datum->syntax '#f 'tab) '()))
                         (cons (cons (gx#datum->syntax '#f 'fx-)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '&raw-table-free)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       '()))
                                           (cons '1 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons (cons (gx#datum->syntax '#f 'fx+)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons '1 '())))
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons (cons (gx#datum->syntax '#f 'fx+)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons '1 '())))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons (gx#datum->syntax '#f 'def)
                                     (cons (cons _L58208_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'table)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-table)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'seed)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-seed)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'tab)
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f '__table-del!)
                                 (cons (gx#datum->syntax '#f 'table)
                                       (cons (gx#datum->syntax '#f 'seed)
                                             (cons _L58207_
                                                   (cons _L58205_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'key)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons '()
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'set!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&raw-table-count)
                         (cons (gx#datum->syntax '#f 'tab) '()))
                   (cons (cons (gx#datum->syntax '#f 'fx-)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '&raw-table-count)
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 '()))
                                     (cons '1 '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     _hd5809158199_
                     _hd5808858189_
                     _hd5808558179_
                     _hd5808258169_
                     _hd5807958159_
                     _hd5807658149_
                     _hd5807358139_
                     _hd5807058129_
                     _hd5806758119_)
                    (_g5805258098_ _g5805358102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5805258098_
                                                     _g5805358102_))))
                                            (_g5805258098_ _g5805358102_))))
                                    (_g5805258098_ _g5805358102_))))
                            (_g5805258098_ _g5805358102_))))
                    (_g5805258098_ _g5805358102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5805258098_
                                                     _g5805358102_))))
                                            (_g5805258098_ _g5805358102_))))
                                    (_g5805258098_ _g5805358102_))))
                            (_g5805258098_ _g5805358102_))))
                    (_g5805258098_ _g5805358102_)))))
        (_g5805158251_ _$stx58048_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx58255_)
      (let* ((_g5825958281_
              (lambda (_g5826058277_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5826058277_)))
             (_g5825858350_
              (lambda (_g5826058285_)
                (if (gx#stx-pair? _g5826058285_)
                    (let ((_e5826658288_ (gx#syntax-e _g5826058285_)))
                      (let ((_hd5826558292_
                             (let ()
                               (declare (not safe))
                               (##car _e5826658288_)))
                            (_tl5826458295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5826658288_))))
                        (if (gx#stx-pair? _tl5826458295_)
                            (let ((_e5826958298_ (gx#syntax-e _tl5826458295_)))
                              (let ((_hd5826858302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5826958298_)))
                                    (_tl5826758305_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5826958298_))))
                                (if (gx#stx-pair? _tl5826758305_)
                                    (let ((_e5827258308_
                                           (gx#syntax-e _tl5826758305_)))
                                      (let ((_hd5827158312_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5827258308_)))
                                            (_tl5827058315_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5827258308_))))
                                        (if (gx#stx-pair? _tl5827058315_)
                                            (let ((_e5827558318_
                                                   (gx#syntax-e
                                                    _tl5827058315_)))
                                              (let ((_hd5827458322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5827558318_)))
                                                    (_tl5827358325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5827558318_))))
                                                (if (gx#stx-null?
                                                     _tl5827358325_)
                                                    ((lambda (_L58328_
                                                              _L58330_
                                                              _L58331_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _L58331_
                                                   (cons _L58330_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _L58330_ (cons _L58330_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _L58328_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5827458322_
                                                     _hd5827158312_
                                                     _hd5826858302_)
                                                    (_g5825958281_
                                                     _g5826058285_))))
                                            (_g5825958281_ _g5826058285_))))
                                    (_g5825958281_ _g5826058285_))))
                            (_g5825958281_ _g5826058285_))))
                    (_g5825958281_ _g5826058285_)))))
        (_g5825858350_ _$stx58255_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx58354_)
      (let* ((_g5835858392_
              (lambda (_g5835958388_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5835958388_)))
             (_g5835758503_
              (lambda (_g5835958396_)
                (if (gx#stx-pair? _g5835958396_)
                    (let ((_e5836858399_ (gx#syntax-e _g5835958396_)))
                      (let ((_hd5836758403_
                             (let ()
                               (declare (not safe))
                               (##car _e5836858399_)))
                            (_tl5836658406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5836858399_))))
                        (if (gx#stx-pair? _tl5836658406_)
                            (let ((_e5837158409_ (gx#syntax-e _tl5836658406_)))
                              (let ((_hd5837058413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5837158409_)))
                                    (_tl5836958416_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5837158409_))))
                                (if (gx#stx-pair? _tl5836958416_)
                                    (let ((_e5837458419_
                                           (gx#syntax-e _tl5836958416_)))
                                      (let ((_hd5837358423_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5837458419_)))
                                            (_tl5837258426_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5837458419_))))
                                        (if (gx#stx-pair? _tl5837258426_)
                                            (let ((_e5837758429_
                                                   (gx#syntax-e
                                                    _tl5837258426_)))
                                              (let ((_hd5837658433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5837758429_)))
                                                    (_tl5837558436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5837758429_))))
                                                (if (gx#stx-pair?
                                                     _tl5837558436_)
                                                    (let ((_e5838058439_
                                                           (gx#syntax-e
                                                            _tl5837558436_)))
                                                      (let ((_hd5837958443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5838058439_)))
                    (_tl5837858446_
                     (let () (declare (not safe)) (##cdr _e5838058439_))))
                (if (gx#stx-pair? _tl5837858446_)
                    (let ((_e5838358449_ (gx#syntax-e _tl5837858446_)))
                      (let ((_hd5838258453_
                             (let ()
                               (declare (not safe))
                               (##car _e5838358449_)))
                            (_tl5838158456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5838358449_))))
                        (if (gx#stx-pair? _tl5838158456_)
                            (let ((_e5838658459_ (gx#syntax-e _tl5838158456_)))
                              (let ((_hd5838558463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5838658459_)))
                                    (_tl5838458466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5838658459_))))
                                (if (gx#stx-null? _tl5838458466_)
                                    ((lambda (_L58469_
                                              _L58471_
                                              _L58472_
                                              _L58473_
                                              _L58474_
                                              _L58475_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _L58473_ (cons _L58471_ '()))
                                         (cons _L58474_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _L58475_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'entries)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'fxquotient)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons '2 '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'start)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fxarithmetic-shift-left)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fxmodulo)
                         (cons (gx#datum->syntax '#f 'h)
                               (cons (gx#datum->syntax '#f 'entries) '())))
                   (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'loop)
                             (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'start)
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'i)
                                                     (cons '1 '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'deleted)
                                                           (cons '#f '()))
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'k)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'vector-ref)
                               (cons _L58475_
                                     (cons (gx#datum->syntax '#f 'probe) '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'cond)
                         (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons (gx#datum->syntax '#f 'k)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'macro-unused-obj)
                                                             '())
                                                       '())))
                                     (cons _L58469_ '()))
                               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'k)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'macro-deleted-obj)
                           '())
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'loop)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe-step)
                           (cons (gx#datum->syntax '#f 'start)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons (gx#datum->syntax '#f 'size)
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons '1 '())))
                           (cons (cons (gx#datum->syntax '#f 'or)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (cons _L58472_
                                                       (cons _L58471_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _L58475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'probe)
                                             (cons '1 '())))
                                 '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'loop)
                           (cons (cons (gx#datum->syntax '#f 'probe-step)
                                       (cons (gx#datum->syntax '#f 'start)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'size)
                                                         '()))))
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons '1 '())))
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             '()))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd5838558463_
                                     _hd5838258453_
                                     _hd5837958443_
                                     _hd5837658433_
                                     _hd5837358423_
                                     _hd5837058413_)
                                    (_g5835858392_ _g5835958396_))))
                            (_g5835858392_ _g5835958396_))))
                    (_g5835858392_ _g5835958396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5835858392_
                                                     _g5835958396_))))
                                            (_g5835858392_ _g5835958396_))))
                                    (_g5835858392_ _g5835958396_))))
                            (_g5835858392_ _g5835958396_))))
                    (_g5835858392_ _g5835958396_)))))
        (_g5835758503_ _$stx58354_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx58507_)
      (let* ((_g5851158553_
              (lambda (_g5851258549_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5851258549_)))
             (_g5851058692_
              (lambda (_g5851258557_)
                (if (gx#stx-pair? _g5851258557_)
                    (let ((_e5852358560_ (gx#syntax-e _g5851258557_)))
                      (let ((_hd5852258564_
                             (let ()
                               (declare (not safe))
                               (##car _e5852358560_)))
                            (_tl5852158567_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5852358560_))))
                        (if (gx#stx-pair? _tl5852158567_)
                            (let ((_e5852658570_ (gx#syntax-e _tl5852158567_)))
                              (let ((_hd5852558574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5852658570_)))
                                    (_tl5852458577_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5852658570_))))
                                (if (gx#stx-pair? _tl5852458577_)
                                    (let ((_e5852958580_
                                           (gx#syntax-e _tl5852458577_)))
                                      (let ((_hd5852858584_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5852958580_)))
                                            (_tl5852758587_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5852958580_))))
                                        (if (gx#stx-pair? _tl5852758587_)
                                            (let ((_e5853258590_
                                                   (gx#syntax-e
                                                    _tl5852758587_)))
                                              (let ((_hd5853158594_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5853258590_)))
                                                    (_tl5853058597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5853258590_))))
                                                (if (gx#stx-pair?
                                                     _tl5853058597_)
                                                    (let ((_e5853558600_
                                                           (gx#syntax-e
                                                            _tl5853058597_)))
                                                      (let ((_hd5853458604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5853558600_)))
                    (_tl5853358607_
                     (let () (declare (not safe)) (##cdr _e5853558600_))))
                (if (gx#stx-pair? _tl5853358607_)
                    (let ((_e5853858610_ (gx#syntax-e _tl5853358607_)))
                      (let ((_hd5853758614_
                             (let ()
                               (declare (not safe))
                               (##car _e5853858610_)))
                            (_tl5853658617_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5853858610_))))
                        (if (gx#stx-pair? _tl5853658617_)
                            (let ((_e5854158620_ (gx#syntax-e _tl5853658617_)))
                              (let ((_hd5854058624_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5854158620_)))
                                    (_tl5853958627_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5854158620_))))
                                (if (gx#stx-pair? _tl5853958627_)
                                    (let ((_e5854458630_
                                           (gx#syntax-e _tl5853958627_)))
                                      (let ((_hd5854358634_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5854458630_)))
                                            (_tl5854258637_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5854458630_))))
                                        (if (gx#stx-pair? _tl5854258637_)
                                            (let ((_e5854758640_
                                                   (gx#syntax-e
                                                    _tl5854258637_)))
                                              (let ((_hd5854658644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5854758640_)))
                                                    (_tl5854558647_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5854758640_))))
                                                (if (gx#stx-null?
                                                     _tl5854558647_)
                                                    ((lambda (_L58650_
                                                              _L58652_
                                                              _L58653_
                                                              _L58654_
                                                              _L58655_
                                                              _L58656_
                                                              _L58657_
                                                              _L58658_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'h)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'fxxor)
                                                   (cons (cons _L58656_
                                                               (cons _L58654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _L58657_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _L58658_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'entries)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fxquotient)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'size)
                             (cons '2 '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'start)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fxarithmetic-shift-left)
                             (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                         (cons (gx#datum->syntax '#f 'h)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'entries)
                                                     '())))
                                   (cons '1 '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f 'loop)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'probe)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'start)
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                       (cons (cons (gx#datum->syntax '#f 'deleted)
                                   (cons '#f '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'k)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _L58658_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'cond)
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'k)
                         (cons (cons (gx#datum->syntax '#f 'macro-unused-obj)
                                     '())
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
                         (cons (gx#datum->syntax '#f 'deleted)
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector-set!)
                                                       (cons _L58658_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _L58654_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _L58658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _L58653_ '()))))
               (cons (cons _L58650_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _L58658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _L58654_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _L58658_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _L58653_ '()))))
                     (cons (cons _L58652_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'k)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-deleted-obj)
                                           '())
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'loop)
                               (cons (cons (gx#datum->syntax '#f 'probe-step)
                                           (cons (gx#datum->syntax '#f 'start)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'i)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'size)
                                                             '()))))
                                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'i)
                                                       (cons '1 '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'or)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'deleted)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (cons _L58655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _L58654_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _L58658_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _L58654_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _L58658_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _L58653_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'else)
                               (cons (cons (gx#datum->syntax '#f 'loop)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'probe-step)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'start)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'i)
                           (cons (gx#datum->syntax '#f 'size) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'i)
                           (cons '1 '())))
               (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5854658644_
                                                     _hd5854358634_
                                                     _hd5854058624_
                                                     _hd5853758614_
                                                     _hd5853458604_
                                                     _hd5853158594_
                                                     _hd5852858584_
                                                     _hd5852558574_)
                                                    (_g5851158553_
                                                     _g5851258557_))))
                                            (_g5851158553_ _g5851258557_))))
                                    (_g5851158553_ _g5851258557_))))
                            (_g5851158553_ _g5851258557_))))
                    (_g5851158553_ _g5851258557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5851158553_
                                                     _g5851258557_))))
                                            (_g5851158553_ _g5851258557_))))
                                    (_g5851158553_ _g5851258557_))))
                            (_g5851158553_ _g5851258557_))))
                    (_g5851158553_ _g5851258557_)))))
        (_g5851058692_ _$stx58507_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58696_)
      (let* ((_g5870058746_
              (lambda (_g5870158742_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5870158742_)))
             (_g5869958899_
              (lambda (_g5870158750_)
                (if (gx#stx-pair? _g5870158750_)
                    (let ((_e5871358753_ (gx#syntax-e _g5870158750_)))
                      (let ((_hd5871258757_
                             (let ()
                               (declare (not safe))
                               (##car _e5871358753_)))
                            (_tl5871158760_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5871358753_))))
                        (if (gx#stx-pair? _tl5871158760_)
                            (let ((_e5871658763_ (gx#syntax-e _tl5871158760_)))
                              (let ((_hd5871558767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5871658763_)))
                                    (_tl5871458770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5871658763_))))
                                (if (gx#stx-pair? _tl5871458770_)
                                    (let ((_e5871958773_
                                           (gx#syntax-e _tl5871458770_)))
                                      (let ((_hd5871858777_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5871958773_)))
                                            (_tl5871758780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5871958773_))))
                                        (if (gx#stx-pair? _tl5871758780_)
                                            (let ((_e5872258783_
                                                   (gx#syntax-e
                                                    _tl5871758780_)))
                                              (let ((_hd5872158787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5872258783_)))
                                                    (_tl5872058790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5872258783_))))
                                                (if (gx#stx-pair?
                                                     _tl5872058790_)
                                                    (let ((_e5872558793_
                                                           (gx#syntax-e
                                                            _tl5872058790_)))
                                                      (let ((_hd5872458797_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5872558793_)))
                    (_tl5872358800_
                     (let () (declare (not safe)) (##cdr _e5872558793_))))
                (if (gx#stx-pair? _tl5872358800_)
                    (let ((_e5872858803_ (gx#syntax-e _tl5872358800_)))
                      (let ((_hd5872758807_
                             (let ()
                               (declare (not safe))
                               (##car _e5872858803_)))
                            (_tl5872658810_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5872858803_))))
                        (if (gx#stx-pair? _tl5872658810_)
                            (let ((_e5873158813_ (gx#syntax-e _tl5872658810_)))
                              (let ((_hd5873058817_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5873158813_)))
                                    (_tl5872958820_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5873158813_))))
                                (if (gx#stx-pair? _tl5872958820_)
                                    (let ((_e5873458823_
                                           (gx#syntax-e _tl5872958820_)))
                                      (let ((_hd5873358827_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5873458823_)))
                                            (_tl5873258830_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5873458823_))))
                                        (if (gx#stx-pair? _tl5873258830_)
                                            (let ((_e5873758833_
                                                   (gx#syntax-e
                                                    _tl5873258830_)))
                                              (let ((_hd5873658837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5873758833_)))
                                                    (_tl5873558840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5873758833_))))
                                                (if (gx#stx-pair?
                                                     _tl5873558840_)
                                                    (let ((_e5874058843_
                                                           (gx#syntax-e
                                                            _tl5873558840_)))
                                                      (let ((_hd5873958847_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5874058843_)))
                    (_tl5873858850_
                     (let () (declare (not safe)) (##cdr _e5874058843_))))
                (if (gx#stx-null? _tl5873858850_)
                    ((lambda (_L58853_
                              _L58855_
                              _L58856_
                              _L58857_
                              _L58858_
                              _L58859_
                              _L58860_
                              _L58861_
                              _L58862_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _L58860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _L58858_ '()))
                         (cons _L58861_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _L58862_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'entries)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'fxquotient)
                               (cons (gx#datum->syntax '#f 'size)
                                     (cons '2 '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'start)
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      'fxarithmetic-shift-left)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'entries)
                                                             '())))
                                           (cons '1 '())))
                               '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'loop)
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'probe)
                               (cons (gx#datum->syntax '#f 'start) '()))
                         (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                               (cons (cons (gx#datum->syntax '#f 'deleted)
                                           (cons '#f '()))
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'k)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector-ref)
                                                       (cons _L58862_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'cond)
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'eq?)
                           (cons (gx#datum->syntax '#f 'k)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-unused-obj)
                                             '())
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'deleted)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'vector-set!)
                                                               (cons _L58862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _L58858_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _L58862_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _L58857_
                                                     (cons _L58856_ '()))
                                               '()))))
                       (cons (cons _L58853_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _L58862_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _L58858_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _L58862_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _L58857_
                                                           (cons _L58856_ '()))
                                                     '()))))
                             (cons (cons _L58855_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))
               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                 (cons (gx#datum->syntax '#f 'k)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'macro-deleted-obj)
                                                   '())
                                             '())))
                           (cons (cons (gx#datum->syntax '#f 'loop)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'probe-step)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'start)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'i)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'size)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'fx+)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'i)
                                                               (cons '1 '())))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'or)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'deleted)
                             (cons (gx#datum->syntax '#f 'probe) '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     (cons (cons (cons _L58859_
                                       (cons _L58858_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _L58862_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _L58858_ '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _L58862_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _L58857_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _L58862_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax '#f 'loop)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'probe-step)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'start)
                             (cons (gx#datum->syntax '#f 'i)
                                   (cons (gx#datum->syntax '#f 'size) '()))))
                 (cons (cons (gx#datum->syntax '#f 'fx+)
                             (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                       (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _hd5873958847_
                     _hd5873658837_
                     _hd5873358827_
                     _hd5873058817_
                     _hd5872758807_
                     _hd5872458797_
                     _hd5872158787_
                     _hd5871858777_
                     _hd5871558767_)
                    (_g5870058746_ _g5870158750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5870058746_
                                                     _g5870158750_))))
                                            (_g5870058746_ _g5870158750_))))
                                    (_g5870058746_ _g5870158750_))))
                            (_g5870058746_ _g5870158750_))))
                    (_g5870058746_ _g5870158750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5870058746_
                                                     _g5870158750_))))
                                            (_g5870058746_ _g5870158750_))))
                                    (_g5870058746_ _g5870158750_))))
                            (_g5870058746_ _g5870158750_))))
                    (_g5870058746_ _g5870158750_)))))
        (_g5869958899_ _$stx58696_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58903_)
      (let* ((_g5890758941_
              (lambda (_g5890858937_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5890858937_)))
             (_g5890659052_
              (lambda (_g5890858945_)
                (if (gx#stx-pair? _g5890858945_)
                    (let ((_e5891758948_ (gx#syntax-e _g5890858945_)))
                      (let ((_hd5891658952_
                             (let ()
                               (declare (not safe))
                               (##car _e5891758948_)))
                            (_tl5891558955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5891758948_))))
                        (if (gx#stx-pair? _tl5891558955_)
                            (let ((_e5892058958_ (gx#syntax-e _tl5891558955_)))
                              (let ((_hd5891958962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5892058958_)))
                                    (_tl5891858965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5892058958_))))
                                (if (gx#stx-pair? _tl5891858965_)
                                    (let ((_e5892358968_
                                           (gx#syntax-e _tl5891858965_)))
                                      (let ((_hd5892258972_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5892358968_)))
                                            (_tl5892158975_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5892358968_))))
                                        (if (gx#stx-pair? _tl5892158975_)
                                            (let ((_e5892658978_
                                                   (gx#syntax-e
                                                    _tl5892158975_)))
                                              (let ((_hd5892558982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5892658978_)))
                                                    (_tl5892458985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5892658978_))))
                                                (if (gx#stx-pair?
                                                     _tl5892458985_)
                                                    (let ((_e5892958988_
                                                           (gx#syntax-e
                                                            _tl5892458985_)))
                                                      (let ((_hd5892858992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5892958988_)))
                    (_tl5892758995_
                     (let () (declare (not safe)) (##cdr _e5892958988_))))
                (if (gx#stx-pair? _tl5892758995_)
                    (let ((_e5893258998_ (gx#syntax-e _tl5892758995_)))
                      (let ((_hd5893159002_
                             (let ()
                               (declare (not safe))
                               (##car _e5893258998_)))
                            (_tl5893059005_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5893258998_))))
                        (if (gx#stx-pair? _tl5893059005_)
                            (let ((_e5893559008_ (gx#syntax-e _tl5893059005_)))
                              (let ((_hd5893459012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5893559008_)))
                                    (_tl5893359015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5893559008_))))
                                (if (gx#stx-null? _tl5893359015_)
                                    ((lambda (_L59018_
                                              _L59020_
                                              _L59021_
                                              _L59022_
                                              _L59023_
                                              _L59024_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _L59022_ (cons _L59020_ '()))
                                         (cons _L59023_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _L59024_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'entries)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'fxquotient)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons '2 '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'start)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fxarithmetic-shift-left)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fxmodulo)
                         (cons (gx#datum->syntax '#f 'h)
                               (cons (gx#datum->syntax '#f 'entries) '())))
                   (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'loop)
                             (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'start)
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'i)
                                                     (cons '1 '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'k)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'vector-ref)
                               (cons _L59024_
                                     (cons (gx#datum->syntax '#f 'probe) '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'cond)
                         (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons (gx#datum->syntax '#f 'k)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'macro-unused-obj)
                                                             '())
                                                       '())))
                                     (cons (cons (gx#datum->syntax '#f 'void)
                                                 '())
                                           '()))
                               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'k)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'macro-deleted-obj)
                           '())
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'loop)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe-step)
                           (cons (gx#datum->syntax '#f 'start)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons (gx#datum->syntax '#f 'size)
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons '1 '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (cons _L59021_
                                                       (cons _L59020_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _L59024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _L59024_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'macro-absent-obj)
                                                   '())
                                             '()))))
                     (cons (cons _L59018_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'loop)
                           (cons (cons (gx#datum->syntax '#f 'probe-step)
                                       (cons (gx#datum->syntax '#f 'start)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'size)
                                                         '()))))
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons '1 '())))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd5893459012_
                                     _hd5893159002_
                                     _hd5892858992_
                                     _hd5892558982_
                                     _hd5892258972_
                                     _hd5891958962_)
                                    (_g5890758941_ _g5890858945_))))
                            (_g5890758941_ _g5890858945_))))
                    (_g5890758941_ _g5890858945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5890758941_
                                                     _g5890858945_))))
                                            (_g5890758941_ _g5890858945_))))
                                    (_g5890758941_ _g5890858945_))))
                            (_g5890758941_ _g5890858945_))))
                    (_g5890758941_ _g5890858945_)))))
        (_g5890659052_ _$stx58903_)))))
