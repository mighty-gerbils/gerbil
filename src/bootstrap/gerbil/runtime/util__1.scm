(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx3651_)
      (let* ((_g36553673_
              (lambda (_g36563669_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36563669_)))
             (_g36543729_
              (lambda (_g36563677_)
                (if (gx#stx-pair? _g36563677_)
                    (let ((_e36593680_ (gx#syntax-e _g36563677_)))
                      (let ((_hd36603684_
                             (let () (declare (not safe)) (##car _e36593680_)))
                            (_tl36613687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e36593680_))))
                        (if (gx#stx-pair? _tl36613687_)
                            (let ((_e36623690_ (gx#syntax-e _tl36613687_)))
                              (let ((_hd36633694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e36623690_)))
                                    (_tl36643697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e36623690_))))
                                (if (gx#stx-pair? _tl36643697_)
                                    (let ((_e36653700_
                                           (gx#syntax-e _tl36643697_)))
                                      (let ((_hd36663704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e36653700_)))
                                            (_tl36673707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e36653700_))))
                                        (if (gx#stx-null? _tl36673707_)
                                            ((lambda (_L3710_ _L3712_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L3712_
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
               (cons (cons _L3710_
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
                                             _hd36663704_
                                             _hd36633694_)
                                            (_g36553673_ _g36563677_))))
                                    (_g36553673_ _g36563677_))))
                            (_g36553673_ _g36563677_))))
                    (_g36553673_ _g36563677_)))))
        (_g36543729_ _$stx3651_))))
  (define |[:0:]#defpget|
    (lambda (_$stx3733_)
      (let* ((_g37373755_
              (lambda (_g37383751_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37383751_)))
             (_g37363810_
              (lambda (_g37383759_)
                (if (gx#stx-pair? _g37383759_)
                    (let ((_e37413762_ (gx#syntax-e _g37383759_)))
                      (let ((_hd37423766_
                             (let () (declare (not safe)) (##car _e37413762_)))
                            (_tl37433769_
                             (let ()
                               (declare (not safe))
                               (##cdr _e37413762_))))
                        (if (gx#stx-pair? _tl37433769_)
                            (let ((_e37443772_ (gx#syntax-e _tl37433769_)))
                              (let ((_hd37453776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e37443772_)))
                                    (_tl37463779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e37443772_))))
                                (if (gx#stx-pair? _tl37463779_)
                                    (let ((_e37473782_
                                           (gx#syntax-e _tl37463779_)))
                                      (let ((_hd37483786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e37473782_)))
                                            (_tl37493789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e37473782_))))
                                        (if (gx#stx-null? _tl37493789_)
                                            ((lambda (_L3792_ _L3794_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L3794_
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
                                             (cons (cons _L3792_
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
                                             _hd37483786_
                                             _hd37453776_)
                                            (_g37373755_ _g37383759_))))
                                    (_g37373755_ _g37383759_))))
                            (_g37373755_ _g37383759_))))
                    (_g37373755_ _g37383759_)))))
        (_g37363810_ _$stx3733_))))
  (define |[:0:]#defremove1|
    (lambda (_$stx3814_)
      (let* ((_g38183836_
              (lambda (_g38193832_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38193832_)))
             (_g38173891_
              (lambda (_g38193840_)
                (if (gx#stx-pair? _g38193840_)
                    (let ((_e38223843_ (gx#syntax-e _g38193840_)))
                      (let ((_hd38233847_
                             (let () (declare (not safe)) (##car _e38223843_)))
                            (_tl38243850_
                             (let ()
                               (declare (not safe))
                               (##cdr _e38223843_))))
                        (if (gx#stx-pair? _tl38243850_)
                            (let ((_e38253853_ (gx#syntax-e _tl38243850_)))
                              (let ((_hd38263857_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e38253853_)))
                                    (_tl38273860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e38253853_))))
                                (if (gx#stx-pair? _tl38273860_)
                                    (let ((_e38283863_
                                           (gx#syntax-e _tl38273860_)))
                                      (let ((_hd38293867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e38283863_)))
                                            (_tl38303870_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e38283863_))))
                                        (if (gx#stx-null? _tl38303870_)
                                            ((lambda (_L3873_ _L3875_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _L3875_
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
                                             (cons (cons _L3873_
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
                                             _hd38293867_
                                             _hd38263857_)
                                            (_g38183836_ _g38193840_))))
                                    (_g38183836_ _g38193840_))))
                            (_g38183836_ _g38193840_))))
                    (_g38183836_ _g38193840_)))))
        (_g38173891_ _$stx3814_)))))
