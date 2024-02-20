(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79057_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79059_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79061_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79066_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79069_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79074_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79077_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79082_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79085_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79090_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79093_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79200_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79052
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79056 |gx[1]#_g79057_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79056
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79058 |gx[1]#_g79059_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79058
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79060 |gx[1]#_g79061_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79060
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79062
               (let ((__tmp79067
                      (let ((__tmp79068 |gx[1]#_g79069_|))
                        (declare (not safe))
                        (cons 'e __tmp79068)))
                     (__tmp79063
                      (let ((__tmp79064
                             (let ((__tmp79065 |gx[1]#_g79066_|))
                               (declare (not safe))
                               (cons 'source __tmp79065))))
                        (declare (not safe))
                        (cons __tmp79064 '()))))
                 (declare (not safe))
                 (cons __tmp79067 __tmp79063))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79062
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79070
               (let ((__tmp79075
                      (let ((__tmp79076 |gx[1]#_g79077_|))
                        (declare (not safe))
                        (cons 'e __tmp79076)))
                     (__tmp79071
                      (let ((__tmp79072
                             (let ((__tmp79073 |gx[1]#_g79074_|))
                               (declare (not safe))
                               (cons 'source __tmp79073))))
                        (declare (not safe))
                        (cons __tmp79072 '()))))
                 (declare (not safe))
                 (cons __tmp79075 __tmp79071))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79070
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79078
               (let ((__tmp79083
                      (let ((__tmp79084 |gx[1]#_g79085_|))
                        (declare (not safe))
                        (cons 'e __tmp79084)))
                     (__tmp79079
                      (let ((__tmp79080
                             (let ((__tmp79081 |gx[1]#_g79082_|))
                               (declare (not safe))
                               (cons 'source __tmp79081))))
                        (declare (not safe))
                        (cons __tmp79080 '()))))
                 (declare (not safe))
                 (cons __tmp79083 __tmp79079))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79078
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79086
               (let ((__tmp79091
                      (let ((__tmp79092 |gx[1]#_g79093_|))
                        (declare (not safe))
                        (cons 'e __tmp79092)))
                     (__tmp79087
                      (let ((__tmp79088
                             (let ((__tmp79089 |gx[1]#_g79090_|))
                               (declare (not safe))
                               (cons 'source __tmp79089))))
                        (declare (not safe))
                        (cons __tmp79088 '()))))
                 (declare (not safe))
                 (cons __tmp79091 __tmp79087))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79052
           __tmp79086
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79052))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77672_)
        (let* ((_g7767677690_
                (lambda (_g7767777686_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7767777686_)))
               (_g7767577732_
                (lambda (_g7767777694_)
                  (if (gx#stx-pair? _g7767777694_)
                      (let ((_e7768177697_ (gx#syntax-e _g7767777694_)))
                        (let ((_hd7768077701_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7768177697_)))
                              (_tl7767977704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7768177697_))))
                          (if (gx#stx-pair? _tl7767977704_)
                              (let ((_e7768477707_
                                     (gx#syntax-e _tl7767977704_)))
                                (let ((_hd7768377711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7768477707_)))
                                      (_tl7768277714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7768477707_))))
                                  (if (gx#stx-null? _tl7768277714_)
                                      ((lambda (_L77717_)
                                         (let ((__tmp79103
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79094
                                                (let ((__tmp79100
                                                       (let ((__tmp79102
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79101
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77717_ '()))))
                 (declare (not safe))
                 (cons __tmp79102 __tmp79101)))
              (__tmp79095
               (let ((__tmp79096
                      (let ((__tmp79099 (gx#datum->syntax '#f 'error))
                            (__tmp79097
                             (let ((__tmp79098
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77717_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79098))))
                        (declare (not safe))
                        (cons __tmp79099 __tmp79097))))
                 (declare (not safe))
                 (cons __tmp79096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79100
                                                        __tmp79095))))
                                           (declare (not safe))
                                           (cons __tmp79103 __tmp79094)))
                                       _hd7768377711_)
                                      (_g7767677690_ _g7767777694_))))
                              (_g7767677690_ _g7767777694_))))
                      (_g7767677690_ _g7767777694_)))))
          (_g7767577732_ _$stx77672_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77736_)
        (letrec ((_generate77739_
                  (lambda (_tgt77888_ _kws77890_ _clauses77891_)
                    (letrec ((_generate-clause77893_
                              (lambda (_hd78803_ _E78805_)
                                (let* ((___stx7895578956_ _hd78803_)
                                       (_g7880978836_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7895578956_))))
                                  (let ((___kont7895878959_
                                         (lambda (_L78932_ _L78934_)
                                           (_generate177895_
                                            _hd78803_
                                            _L78934_
                                            '#t
                                            _L78932_
                                            _E78805_)))
                                        (___kont7896078961_
                                         (lambda (_L78884_ _L78886_ _L78887_)
                                           (_generate177895_
                                            _hd78803_
                                            _L78887_
                                            _L78886_
                                            _L78884_
                                            _E78805_)))
                                        (___kont7896278963_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77736_
                                            _hd78803_))))
                                    (if (gx#stx-pair? ___stx7895578956_)
                                        (let ((_e7881578912_
                                               (gx#syntax-e
                                                ___stx7895578956_)))
                                          (let ((_tl7881378919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7881578912_)))
                                                (_hd7881478916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7881578912_))))
                                            (if (gx#stx-pair? _tl7881378919_)
                                                (let ((_e7881878922_
                                                       (gx#syntax-e
                                                        _tl7881378919_)))
                                                  (let ((_tl7881678929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7881878922_)))
                                                        (_hd7881778926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7881878922_))))
                                                    (if (gx#stx-null?
                                                         _tl7881678929_)
                                                        (___kont7895878959_
                                                         _hd7881778926_
                                                         _hd7881478916_)
                                                        (if (gx#stx-pair?
                                                             _tl7881678929_)
                                                            (let ((_e7883078874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7881678929_)))
                      (let ((_tl7882878881_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7883078874_)))
                            (_hd7882978878_
                             (let ()
                               (declare (not safe))
                               (##car _e7883078874_))))
                        (if (gx#stx-null? _tl7882878881_)
                            (___kont7896078961_
                             _hd7882978878_
                             _hd7881778926_
                             _hd7881478916_)
                            (___kont7896278963_))))
                    (___kont7896278963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7896278963_))))
                                        (___kont7896278963_))))))
                             (_generate177895_
                              (lambda (_where78281_
                                       _hd78283_
                                       _fender78284_
                                       _body78285_
                                       _E78286_)
                                (letrec ((_recur78288_
                                          (lambda (_hd78291_
                                                   _tgt78293_
                                                   _K78294_)
                                            (let* ((___stx7900179002_
                                                    _hd78291_)
                                                   (_g7829778309_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7900179002_))))
                                              (let ((___kont7900479005_
                                                     (lambda (_L78593_
                                                              _L78595_)
                                                       (let* ((_g7860678614_
                                                               (lambda (_g7860778610_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7860778610_)))
                      (_g7860578795_
                       (lambda (_g7860778618_)
                         ((lambda (_L78621_)
                            (let ()
                              (let* ((_g7863378641_
                                      (lambda (_g7863478637_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7863478637_)))
                                     (_g7863278791_
                                      (lambda (_g7863478645_)
                                        ((lambda (_L78648_)
                                           (let ()
                                             (let* ((_g7866178669_
                                                     (lambda (_g7866278665_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7866278665_)))
                                                    (_g7866078787_
                                                     (lambda (_g7866278673_)
                                                       ((lambda (_L78676_)
                                                          (let ()
                                                            (let* ((_g7868978697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7869078693_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7869078693_)))
                           (_g7868878783_
                            (lambda (_g7869078701_)
                              ((lambda (_L78704_)
                                 (let ()
                                   (let* ((_g7871778725_
                                           (lambda (_g7871878721_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7871878721_)))
                                          (_g7871678779_
                                           (lambda (_g7871878729_)
                                             ((lambda (_L78732_)
                                                (let ()
                                                  (let* ((_g7874578753_
                                                          (lambda (_g7874678749_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7874678749_)))
                                                         (_g7874478775_
                                                          (lambda (_g7874678757_)
                                                            ((lambda (_L78760_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79136 (gx#datum->syntax '#f 'if))
                                 (__tmp79104
                                  (let ((__tmp79133
                                         (let ((__tmp79135
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79134
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78621_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79135 __tmp79134)))
                                        (__tmp79105
                                         (let ((__tmp79107
                                                (let ((__tmp79132
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79108
                                                       (let ((__tmp79126
                                                              (let ((__tmp79127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79128
                                    (let ((__tmp79129
                                           (let ((__tmp79131
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79130
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78621_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79131 __tmp79130))))
                                      (declare (not safe))
                                      (cons __tmp79129 '()))))
                               (declare (not safe))
                               (cons _L78648_ __tmp79128))))
                        (declare (not safe))
                        (cons __tmp79127 '())))
                     (__tmp79109
                      (let ((__tmp79110
                             (let ((__tmp79125 (gx#datum->syntax '#f 'let))
                                   (__tmp79111
                                    (let ((__tmp79113
                                           (let ((__tmp79120
                                                  (let ((__tmp79121
                                                         (let ((__tmp79122
                                                                (let ((__tmp79124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79123
                               (let ()
                                 (declare (not safe))
                                 (cons _L78648_ '()))))
                          (declare (not safe))
                          (cons __tmp79124 __tmp79123))))
                   (declare (not safe))
                   (cons __tmp79122 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78676_
                                                          __tmp79121)))
                                                 (__tmp79114
                                                  (let ((__tmp79115
                                                         (let ((__tmp79116
                                                                (let ((__tmp79117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79119 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79118
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78648_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79119 __tmp79118))))
                          (declare (not safe))
                          (cons __tmp79117 '()))))
                   (declare (not safe))
                   (cons _L78704_ __tmp79116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79115 '()))))
                                             (declare (not safe))
                                             (cons __tmp79120 __tmp79114)))
                                          (__tmp79112
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78732_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79113 __tmp79112))))
                               (declare (not safe))
                               (cons __tmp79125 __tmp79111))))
                        (declare (not safe))
                        (cons __tmp79110 '()))))
                 (declare (not safe))
                 (cons __tmp79126 __tmp79109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79132
                                                        __tmp79108)))
                                               (__tmp79106
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78760_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79107 __tmp79106))))
                                    (declare (not safe))
                                    (cons __tmp79133 __tmp79105))))
                             (declare (not safe))
                             (cons __tmp79136 __tmp79104)))))
                     _g7874678757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7874478775_ _E78286_))))
                                              _g7871878729_))))
                                     (_g7871678779_
                                      (_recur78288_
                                       _L78595_
                                       _L78676_
                                       (_recur78288_
                                        _L78593_
                                        _L78704_
                                        _K78294_))))))
                               _g7869078701_))))
                      (_g7868878783_ (gx#genident 'tl)))))
                _g7866278673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7866078787_
                                                (gx#genident 'hd)))))
                                         _g7863478645_))))
                                (_g7863278791_ (gx#genident 'e)))))
                          _g7860778618_))))
                 (_g7860578795_ _tgt78293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7900679007_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78291_)
                                                           (if (gx#underscore?
                                                                _hd78291_)
                                                               _K78294_
                                                               (if (let ((__tmp79181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7831978321_)
                                    (gx#bound-identifier=?
                                     _g7831978321_
                                     _hd78291_))))
                             (declare (not safe))
                             (find __tmp79181 _kws77890_))
                           (let* ((_g7832578340_
                                   (lambda (_g7832678336_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7832678336_)))
                                  (_g7832478391_
                                   (lambda (_g7832678344_)
                                     (if (gx#stx-pair? _g7832678344_)
                                         (let ((_e7833178347_
                                                (gx#syntax-e _g7832678344_)))
                                           (let ((_hd7833078351_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7833178347_)))
                                                 (_tl7832978354_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7833178347_))))
                                             (if (gx#stx-pair? _tl7832978354_)
                                                 (let ((_e7833478357_
                                                        (gx#syntax-e
                                                         _tl7832978354_)))
                                                   (let ((_hd7833378361_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7833478357_)))
                                                         (_tl7833278364_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7833478357_))))
                                                     (if (gx#stx-null?
                                                          _tl7833278364_)
                                                         ((lambda (_L78367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78369_)
                    (let ()
                      (let ((__tmp79180 (gx#datum->syntax '#f 'if))
                            (__tmp79163
                             (let ((__tmp79166
                                    (let ((__tmp79179
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79167
                                           (let ((__tmp79176
                                                  (let ((__tmp79178
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79177
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L78369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79178
                                                          __tmp79177)))
                                                 (__tmp79168
                                                  (let ((__tmp79169
                                                         (let ((__tmp79175
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79170
                        (let ((__tmp79171
                               (let ((__tmp79172
                                      (let ((__tmp79174
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79173
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78367_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79174 __tmp79173))))
                                 (declare (not safe))
                                 (cons __tmp79172 '()))))
                          (declare (not safe))
                          (cons _L78369_ __tmp79171))))
                   (declare (not safe))
                   (cons __tmp79175 __tmp79170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79169 '()))))
                                             (declare (not safe))
                                             (cons __tmp79176 __tmp79168))))
                                      (declare (not safe))
                                      (cons __tmp79179 __tmp79167)))
                                   (__tmp79164
                                    (let ((__tmp79165
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78286_ '()))))
                                      (declare (not safe))
                                      (cons _K78294_ __tmp79165))))
                               (declare (not safe))
                               (cons __tmp79166 __tmp79164))))
                        (declare (not safe))
                        (cons __tmp79180 __tmp79163))))
                  _hd7833378361_
                  _hd7833078351_)
                 (_g7832578340_ _g7832678344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7832578340_
                                                  _g7832678344_))))
                                         (_g7832578340_ _g7832678344_)))))
                             (_g7832478391_ (list _tgt78293_ _hd78291_)))
                           (let* ((_g7839578410_
                                   (lambda (_g7839678406_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7839678406_)))
                                  (_g7839478454_
                                   (lambda (_g7839678414_)
                                     (if (gx#stx-pair? _g7839678414_)
                                         (let ((_e7840178417_
                                                (gx#syntax-e _g7839678414_)))
                                           (let ((_hd7840078421_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7840178417_)))
                                                 (_tl7839978424_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7840178417_))))
                                             (if (gx#stx-pair? _tl7839978424_)
                                                 (let ((_e7840478427_
                                                        (gx#syntax-e
                                                         _tl7839978424_)))
                                                   (let ((_hd7840378431_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7840478427_)))
                                                         (_tl7840278434_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7840478427_))))
                                                     (if (gx#stx-null?
                                                          _tl7840278434_)
                                                         ((lambda (_L78437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78439_)
                    (let ()
                      (let ((__tmp79162 (gx#datum->syntax '#f 'let))
                            (__tmp79157
                             (let ((__tmp79159
                                    (let ((__tmp79160
                                           (let ((__tmp79161
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78439_ '()))))
                                             (declare (not safe))
                                             (cons _L78437_ __tmp79161))))
                                      (declare (not safe))
                                      (cons __tmp79160 '())))
                                   (__tmp79158
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78294_ '()))))
                               (declare (not safe))
                               (cons __tmp79159 __tmp79158))))
                        (declare (not safe))
                        (cons __tmp79162 __tmp79157))))
                  _hd7840378431_
                  _hd7840078421_)
                 (_g7839578410_ _g7839678414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7839578410_
                                                  _g7839678414_))))
                                         (_g7839578410_ _g7839678414_)))))
                             (_g7839478454_ (list _tgt78293_ _hd78291_)))))
                   (if (gx#stx-null? _hd78291_)
                       (let* ((_g7845878466_
                               (lambda (_g7845978462_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7845978462_)))
                              (_g7845778484_
                               (lambda (_g7845978470_)
                                 ((lambda (_L78473_)
                                    (let ()
                                      (let ((__tmp79156
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79150
                                             (let ((__tmp79153
                                                    (let ((__tmp79155
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79154
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L78473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79155 __tmp79154)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79151
                                                    (let ((__tmp79152
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78294_ __tmp79152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79153 __tmp79151))))
                                        (declare (not safe))
                                        (cons __tmp79156 __tmp79150))))
                                  _g7845978470_))))
                         (_g7845778484_ _tgt78293_))
                       (if (gx#stx-datum? _hd78291_)
                           (let* ((_g7848878507_
                                   (lambda (_g7848978503_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7848978503_)))
                                  (_g7848778565_
                                   (lambda (_g7848978511_)
                                     (if (gx#stx-pair? _g7848978511_)
                                         (let ((_e7849578514_
                                                (gx#syntax-e _g7848978511_)))
                                           (let ((_hd7849478518_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7849578514_)))
                                                 (_tl7849378521_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7849578514_))))
                                             (if (gx#stx-pair? _tl7849378521_)
                                                 (let ((_e7849878524_
                                                        (gx#syntax-e
                                                         _tl7849378521_)))
                                                   (let ((_hd7849778528_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7849878524_)))
                                                         (_tl7849678531_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7849878524_))))
                                                     (if (gx#stx-pair?
                                                          _tl7849678531_)
                                                         (let ((_e7850178534_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7849678531_)))
                   (let ((_hd7850078538_
                          (let () (declare (not safe)) (##car _e7850178534_)))
                         (_tl7849978541_
                          (let () (declare (not safe)) (##cdr _e7850178534_))))
                     (if (gx#stx-null? _tl7849978541_)
                         ((lambda (_L78544_ _L78546_ _L78547_)
                            (let ()
                              (let ((__tmp79149 (gx#datum->syntax '#f 'if))
                                    (__tmp79137
                                     (let ((__tmp79140
                                            (let ((__tmp79141
                                                   (let ((__tmp79146
                                                          (let ((__tmp79148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79147
                         (let () (declare (not safe)) (cons _L78547_ '()))))
                    (declare (not safe))
                    (cons __tmp79148 __tmp79147)))
                 (__tmp79142
                  (let ((__tmp79143
                         (let ((__tmp79145 (gx#datum->syntax '#f 'quote))
                               (__tmp79144
                                (let ()
                                  (declare (not safe))
                                  (cons _L78546_ '()))))
                           (declare (not safe))
                           (cons __tmp79145 __tmp79144))))
                    (declare (not safe))
                    (cons __tmp79143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79146
                                                           __tmp79142))))
                                              (declare (not safe))
                                              (cons _L78544_ __tmp79141)))
                                           (__tmp79138
                                            (let ((__tmp79139
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78286_ '()))))
                                              (declare (not safe))
                                              (cons _K78294_ __tmp79139))))
                                       (declare (not safe))
                                       (cons __tmp79140 __tmp79138))))
                                (declare (not safe))
                                (cons __tmp79149 __tmp79137))))
                          _hd7850078538_
                          _hd7849778528_
                          _hd7849478518_)
                         (_g7848878507_ _g7848978511_))))
                 (_g7848878507_ _g7848978511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7848878507_
                                                  _g7848978511_))))
                                         (_g7848878507_ _g7848978511_)))))
                             (_g7848778565_
                              (list _tgt78293_
                                    _hd78291_
                                    (let ((_e78569_ (gx#stx-e _hd78291_)))
                                      (if (or (keyword? _e78569_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78569_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78569_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77736_
                            _where78281_
                            _hd78291_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7900179002_)
                                                    (let ((_e7830378583_
                                                           (gx#syntax-e
                                                            ___stx7900179002_)))
                                                      (let ((_tl7830178590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7830378583_)))
                    (_hd7830278587_
                     (let () (declare (not safe)) (##car _e7830378583_))))
                (___kont7900479005_ _tl7830178590_ _hd7830278587_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7900679007_)))))))
                                  (_recur78288_
                                   _hd78283_
                                   _tgt77888_
                                   (let ((__tmp79185
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79182
                                          (let ((__tmp79183
                                                 (let ((__tmp79184
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78286_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78285_
                                                         __tmp79184))))
                                            (declare (not safe))
                                            (cons _fender78284_ __tmp79183))))
                                     (declare (not safe))
                                     (cons __tmp79185 __tmp79182))))))
                             (_generate-clauses77896_
                              (lambda (_clauses78019_)
                                (let _lp78022_ ((_rest78025_ _clauses78019_)
                                                (_E78027_ (gx#genident 'E))
                                                (_r78028_ '()))
                                  (let* ((___stx7903779038_ _rest78025_)
                                         (_g7803178043_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7903779038_))))
                                    (let ((___kont7904079041_
                                           (lambda (_L78108_ _L78110_)
                                             (let* ((___stx7901779018_
                                                     _L78110_)
                                                    (_g7812278133_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7901779018_))))
                                               (let ((___kont7902079021_
                                                      (lambda (_L78262_)
                                                        (if (gx#stx-null?
                                                             _L78108_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78262_)
                             (let ((__tmp79194 (gx#stx-null? _L78262_)))
                               (declare (not safe))
                               (not __tmp79194)))
                        (let ((__tmp79186
                               (let ((__tmp79187
                                      (let ((__tmp79188
                                             (gx#stx-wrap-source
                                              (let ((__tmp79193
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79189
                                                     (let ((__tmp79190
                                                            (let ((__tmp79191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79192 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79192 _L78262_))))
                      (declare (not safe))
                      (cons __tmp79191 '()))))
               (declare (not safe))
               (cons '() __tmp79190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79193 __tmp79189))
                                              (gx#stx-source _L78110_))))
                                        (declare (not safe))
                                        (cons __tmp79188 '()))))
                                 (declare (not safe))
                                 (cons _E78027_ __tmp79187))))
                          (declare (not safe))
                          (cons __tmp79186 _r78028_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77736_
                         _L78110_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77736_
                     _L78110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7902279023_
                                                      (lambda ()
                                                        (let* ((_g7814478152_
                                                                (lambda (_g7814578148_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7814578148_)))
                       (_g7814378241_
                        (lambda (_g7814578156_)
                          ((lambda (_L78159_)
                             (let ()
                               (let* ((_g7817578183_
                                       (lambda (_g7817678179_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7817678179_)))
                                      (_g7817478237_
                                       (lambda (_g7817678187_)
                                         ((lambda (_L78190_)
                                            (let ()
                                              (let* ((_g7820378211_
                                                      (lambda (_g7820478207_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7820478207_)))
                                                     (_g7820278233_
                                                      (lambda (_g7820478215_)
                                                        ((lambda (_L78218_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78022_
                                                                _L78108_
                                                                _L78159_
                                                                (let ((__tmp79195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79196
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78218_ '()))))
                                 (declare (not safe))
                                 (cons _E78027_ __tmp79196))))
                          (declare (not safe))
                          (cons __tmp79195 _r78028_))))))
                 _g7820478215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7820278233_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79199
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79197
                                                         (let ((__tmp79198
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78190_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79199
                                                          __tmp79197))
                                                  (gx#stx-source _L78110_))))))
                                          _g7817678187_))))
                                 (_g7817478237_
                                  (_generate-clause77893_
                                   _L78110_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78159_ '())))))))
                           _g7814578156_))))
                  (_g7814378241_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7901779018_)
                                                     (let ((_e7812778252_
                                                            (gx#syntax-e
                                                             ___stx7901779018_)))
                                                       (let ((_tl7812578259_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7812778252_)))
                     (_hd7812678256_
                      (let () (declare (not safe)) (##car _e7812778252_))))
                 (if (gx#identifier? _hd7812678256_)
                     (if (gx#free-identifier=? |gx[1]#_g79200_| _hd7812678256_)
                         (___kont7902079021_ _tl7812578259_)
                         (___kont7902279023_))
                     (___kont7902279023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7902279023_))))))
                                          (___kont7904279043_
                                           (lambda ()
                                             (let* ((_g7805478062_
                                                     (lambda (_g7805578058_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7805578058_)))
                                                    (_g7805378087_
                                                     (lambda (_g7805578066_)
                                                       ((lambda (_L78069_)
                                                          (let ()
                                                            (let ((__tmp79201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79202
                                  (let ((__tmp79203
                                         (gx#stx-wrap-source
                                          (let ((__tmp79211
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79204
                                                 (let ((__tmp79205
                                                        (let ((__tmp79206
                                                               (let ((__tmp79210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79207
                              (let ((__tmp79208
                                     (let ((__tmp79209
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78069_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79209))))
                                (declare (not safe))
                                (cons '#f __tmp79208))))
                         (declare (not safe))
                         (cons __tmp79210 __tmp79207))))
                  (declare (not safe))
                  (cons __tmp79206 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79205))))
                                            (declare (not safe))
                                            (cons __tmp79211 __tmp79204))
                                          (gx#stx-source _stx77736_))))
                                    (declare (not safe))
                                    (cons __tmp79203 '()))))
                             (declare (not safe))
                             (cons _E78027_ __tmp79202))))
                      (declare (not safe))
                      (cons __tmp79201 _r78028_))))
                _g7805578066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7805378087_ _tgt77888_)))))
                                      (if (gx#stx-pair? ___stx7903779038_)
                                          (let ((_e7803778098_
                                                 (gx#syntax-e
                                                  ___stx7903779038_)))
                                            (let ((_tl7803578105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7803778098_)))
                                                  (_hd7803678102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7803778098_))))
                                              (___kont7904079041_
                                               _tl7803578105_
                                               _hd7803678102_)))
                                          (___kont7904279043_))))))))
                      (let* ((_bind77898_
                              (_generate-clauses77896_ _clauses77891_))
                             (_g7790177918_
                              (lambda (_g7790277914_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7790277914_)))
                             (_g7790078015_
                              (lambda (_g7790277922_)
                                (if (gx#stx-pair/null? _g7790277922_)
                                    (let ((_g79212_
                                           (gx#syntax-split-splice
                                            _g7790277922_
                                            '0)))
                                      (begin
                                        (let ((_g79213_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79212_)
                                                     (##vector-length _g79212_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79213_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79213_)))
                                        (let ((_target7790477925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79212_ 0)))
                                              (_tl7790677928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79212_ 1))))
                                          (if (gx#stx-null? _tl7790677928_)
                                              (letrec ((_loop7790777931_
                                                        (lambda (_hd7790577935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7791177938_)
                  (if (gx#stx-pair? _hd7790577935_)
                      (let ((_e7790877941_ (gx#syntax-e _hd7790577935_)))
                        (let ((_lp-hd7790977945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7790877941_)))
                              (_lp-tl7791077948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7790877941_))))
                          (_loop7790777931_
                           _lp-tl7791077948_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7790977945_ _bind-try7791177938_)))))
                      (let ((_bind-try7791277951_
                             (reverse _bind-try7791177938_)))
                        ((lambda (_L77955_)
                           (let ()
                             (let* ((_g7797377981_
                                     (lambda (_g7797477977_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7797477977_)))
                                    (_g7797278011_
                                     (lambda (_g7797477985_)
                                       ((lambda (_L77988_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79219
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79214
                                                     (let ((__tmp79217
                                                            (let ((__tmp79218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7800278005_ _g7800378008_)
                             (let ()
                               (declare (not safe))
                               (cons _g7800278005_ _g7800378008_)))))
                      (declare (not safe))
                      (foldr1 __tmp79218 '() _L77955_)))
                   (__tmp79215
                    (let ((__tmp79216
                           (let () (declare (not safe)) (cons _L77988_ '()))))
                      (declare (not safe))
                      (cons __tmp79216 '()))))
               (declare (not safe))
               (cons __tmp79217 __tmp79215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79219
                                                      __tmp79214)))))
                                        _g7797477985_))))
                               (_g7797278011_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind77898_)))))))
                         _bind-try7791277951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7790777931_
                                                 _target7790477925_
                                                 '()))
                                              (_g7790177918_ _g7790277922_)))))
                                    (_g7790177918_ _g7790277922_)))))
                        (_g7790078015_ _bind77898_))))))
          (let* ((_g7774277761_
                  (lambda (_g7774377757_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7774377757_)))
                 (_g7774177884_
                  (lambda (_g7774377765_)
                    (if (gx#stx-pair? _g7774377765_)
                        (let ((_e7774977768_ (gx#syntax-e _g7774377765_)))
                          (let ((_hd7774877772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7774977768_)))
                                (_tl7774777775_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7774977768_))))
                            (if (gx#stx-pair? _tl7774777775_)
                                (let ((_e7775277778_
                                       (gx#syntax-e _tl7774777775_)))
                                  (let ((_hd7775177782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7775277778_)))
                                        (_tl7775077785_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7775277778_))))
                                    (if (gx#stx-pair? _tl7775077785_)
                                        (let ((_e7775577788_
                                               (gx#syntax-e _tl7775077785_)))
                                          (let ((_hd7775477792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7775577788_)))
                                                (_tl7775377795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7775577788_))))
                                            ((lambda (_L77798_
                                                      _L77800_
                                                      _L77801_)
                                               (if (and (gx#identifier-list?
                                                         _L77800_)
                                                        (gx#stx-list?
                                                         _L77798_))
                                                   (let* ((_g7781977827_
                                                           (lambda (_g7782077823_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7782077823_)))
                                                          (_g7781877880_
                                                           (lambda (_g7782077831_)
                                                             ((lambda (_L77834_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7784677854_
                                  (lambda (_g7784777850_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7784777850_)))
                                 (_g7784577876_
                                  (lambda (_g7784777858_)
                                    ((lambda (_L77861_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79225
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79220
                                                  (let ((__tmp79222
                                                         (let ((__tmp79223
                                                                (let ((__tmp79224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77801_ '()))))
                          (declare (not safe))
                          (cons _L77834_ __tmp79224))))
                   (declare (not safe))
                   (cons __tmp79223 '())))
                (__tmp79221 (let () (declare (not safe)) (cons _L77861_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79222
                                                          __tmp79221))))
                                             (declare (not safe))
                                             (cons __tmp79225 __tmp79220)))))
                                     _g7784777858_))))
                            (_g7784577876_
                             (_generate77739_
                              _L77834_
                              (gx#syntax->list _L77800_)
                              _L77798_)))))
                      _g7782077831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7781877880_
                                                      (gx#genident 'e)))
                                                   (_g7774277761_
                                                    _g7774377765_)))
                                             _tl7775377795_
                                             _hd7775477792_
                                             _hd7775177782_)))
                                        (_g7774277761_ _g7774377765_))))
                                (_g7774277761_ _g7774377765_))))
                        (_g7774277761_ _g7774377765_)))))
            (_g7774177884_ _stx77736_)))))))
