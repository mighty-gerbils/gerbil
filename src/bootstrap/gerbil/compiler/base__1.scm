(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g195105_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195107_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195109_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195114_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195117_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195122_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195125_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195130_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195133_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195138_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195141_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx189895_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189895_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx189898_)
        (let* ((_g189901189925_
                (lambda (_g189902189921_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g189902189921_))))
               (_g189900190228_
                (lambda (_g189902189929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g189902189929_))
                      (let ((_e189907189932_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g189902189929_))))
                        (let ((_hd189906189936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189907189932_)))
                              (_tl189905189939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189907189932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl189905189939_))
                              (let ((_e189910189942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl189905189939_))))
                                (let ((_hd189909189946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e189910189942_)))
                                      (_tl189908189949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e189910189942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl189908189949_))
                                      (let ((_g195076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl189908189949_
                                                '0))))
                                        (begin
                                          (let ((_g195077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195076_)
                                                       (##vector-length
                                                        _g195076_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195077_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195077_)))
                                          (let ((_target189911189952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g195076_ 0)))
                                                (_tl189913189955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g195076_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl189913189955_))
                                                (letrec ((_loop189914189958_
                                                          (lambda (_hd189912189962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause189918189965_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd189912189962_))
                        (let ((_e189915189968_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd189912189962_))))
                          (let ((_lp-hd189916189972_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189915189968_)))
                                (_lp-tl189917189975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189915189968_))))
                            (_loop189914189958_
                             _lp-tl189917189975_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd189916189972_
                                     _clause189918189965_)))))
                        (let ((_clause189919189978_
                               (reverse _clause189918189965_)))
                          ((lambda (_L189982_ _L189984_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L189984_))
                                 (let* ((_g190003190020_
                                         (lambda (_g190004190016_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g190004190016_))))
                                        (_g190002190081_
                                         (lambda (_g190004190024_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g190004190024_))
                                               (let ((_g195078_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g190004190024_
                                                         '0))))
                                                 (begin
                                                   (let ((_g195079_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g195078_)
                        (##vector-length _g195078_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g195079_ 2)))
                 (error "Context expects 2 values" _g195079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target190006190027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195078_
                                                             0)))
                                                         (_tl190008190030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195078_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl190008190030_))
                                                         (letrec ((_loop190009190033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd190007190037_ _clause190013190040_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd190007190037_))
                                 (let ((_e190010190043_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd190007190037_))))
                                   (let ((_lp-hd190011190047_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e190010190043_)))
                                         (_lp-tl190012190050_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e190010190043_))))
                                     (_loop190009190033_
                                      _lp-tl190012190050_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd190011190047_
                                              _clause190013190040_)))))
                                 (let ((_clause190014190053_
                                        (reverse _clause190013190040_)))
                                   ((lambda (_L190057_)
                                      (let ()
                                        (let ((__tmp195091
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp195080
                                               (let ((__tmp195089
                                                      (let ((__tmp195090
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp195090 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp195081
                                                      (let ((__tmp195082
                                                             (let ((__tmp195088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp195083
                            (let ((__tmp195087
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp195084
                                   (let ((__tmp195085
                                          (let ((__tmp195086
                                                 (lambda (_g190072190075_
                                                          _g190073190078_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g190072190075_
                                                           _g190073190078_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp195086
                                                    '()
                                                    _L190057_))))
                                     (declare (not safe))
                                     (cons _L189984_ __tmp195085))))
                              (declare (not safe))
                              (cons __tmp195087 __tmp195084))))
                       (declare (not safe))
                       (cons __tmp195088 __tmp195083))))
                (declare (not safe))
                (cons __tmp195082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp195089
                                                       __tmp195081))))
                                          (declare (not safe))
                                          (cons __tmp195091 __tmp195080))))
                                    _clause190014190053_))))))
                   (_loop190009190033_ _target190006190027_ '()))
                 (_g190003190020_ _g190004190024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g190003190020_
                                                _g190004190024_)))))
                                   (_g190002190081_
                                    (let ((__tmp195094
                                           (lambda (_clause190085_)
                                             (let* ((___stx195022195023_
                                                     _clause190085_)
                                                    (_g190089190116_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx195022195023_)))))
                                               (let ((___kont195025195026_
                                                      (lambda (_L190201_
                                                               _L190203_)
                                                        (let ((__tmp195095
                                                               (let ((__tmp195096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195098
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp195097
                                     (let ()
                                       (declare (not safe))
                                       (cons _L190201_ '()))))
                                (declare (not safe))
                                (cons __tmp195098 __tmp195097))))
                         (declare (not safe))
                         (cons __tmp195096 '()))))
                  (declare (not safe))
                  (cons _L190203_ __tmp195095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont195027195028_
                                                      (lambda (_L190153_
                                                               _L190155_
                                                               _L190156_)
                                                        (let ((__tmp195099
                                                               (let ((__tmp195100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195101
                                     (let ((__tmp195103
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp195102
                                            (let ()
                                              (declare (not safe))
                                              (cons _L190153_ '()))))
                                       (declare (not safe))
                                       (cons __tmp195103 __tmp195102))))
                                (declare (not safe))
                                (cons __tmp195101 '()))))
                         (declare (not safe))
                         (cons _L190155_ __tmp195100))))
                  (declare (not safe))
                  (cons _L190156_ __tmp195099)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx195022195023_))
                                                     (let ((_e190095190181_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx195022195023_))))
                                                       (let ((_tl190093190188_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e190095190181_)))
                     (_hd190094190185_
                      (let () (declare (not safe)) (##car _e190095190181_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl190093190188_))
                     (let ((_e190098190191_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl190093190188_))))
                       (let ((_tl190096190198_
                              (let ()
                                (declare (not safe))
                                (##cdr _e190098190191_)))
                             (_hd190097190195_
                              (let ()
                                (declare (not safe))
                                (##car _e190098190191_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl190096190198_))
                             (___kont195025195026_
                              _hd190097190195_
                              _hd190094190185_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl190096190198_))
                                 (let ((_e190110190143_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl190096190198_))))
                                   (let ((_tl190108190150_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e190110190143_)))
                                         (_hd190109190147_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e190110190143_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl190108190150_))
                                         (___kont195027195028_
                                          _hd190109190147_
                                          _hd190097190195_
                                          _hd190094190185_)
                                         (let ()
                                           (declare (not safe))
                                           (_g190089190116_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g190089190116_))))))
                     (let () (declare (not safe)) (_g190089190116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g190089190116_)))))))
                                          (__tmp195092
                                           (let ((__tmp195093
                                                  (lambda (_g190219190222_
                                                           _g190220190225_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g190219190222_
                                                            _g190220190225_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp195093
                                                     '()
                                                     _L189982_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp195094 __tmp195092))))
                                 (_g189901189925_ _g189902189929_)))
                           _clause189919189978_
                           _hd189909189946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop189914189958_
                                                   _target189911189952_
                                                   '()))
                                                (_g189901189925_
                                                 _g189902189929_)))))
                                      (_g189901189925_ _g189902189929_))))
                              (_g189901189925_ _g189902189929_))))
                      (_g189901189925_ _g189902189929_)))))
          (_g189900190228_ _stx189898_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj195065
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195104 |gxc[1]#_g195105_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195104
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195106 |gxc[1]#_g195107_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195106
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195108 |gxc[1]#_g195109_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195108
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195110
               (let ((__tmp195115
                      (let ((__tmp195116 |gxc[1]#_g195117_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195116)))
                     (__tmp195111
                      (let ((__tmp195112
                             (let ((__tmp195113 |gxc[1]#_g195114_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195113))))
                        (declare (not safe))
                        (cons __tmp195112 '()))))
                 (declare (not safe))
                 (cons __tmp195115 __tmp195111))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195110
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195118
               (let ((__tmp195123
                      (let ((__tmp195124 |gxc[1]#_g195125_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195124)))
                     (__tmp195119
                      (let ((__tmp195120
                             (let ((__tmp195121 |gxc[1]#_g195122_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195121))))
                        (declare (not safe))
                        (cons __tmp195120 '()))))
                 (declare (not safe))
                 (cons __tmp195123 __tmp195119))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195118
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195126
               (let ((__tmp195131
                      (let ((__tmp195132 |gxc[1]#_g195133_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195132)))
                     (__tmp195127
                      (let ((__tmp195128
                             (let ((__tmp195129 |gxc[1]#_g195130_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195129))))
                        (declare (not safe))
                        (cons __tmp195128 '()))))
                 (declare (not safe))
                 (cons __tmp195131 __tmp195127))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195126
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195134
               (let ((__tmp195139
                      (let ((__tmp195140 |gxc[1]#_g195141_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195140)))
                     (__tmp195135
                      (let ((__tmp195136
                             (let ((__tmp195137 |gxc[1]#_g195138_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195137))))
                        (declare (not safe))
                        (cons __tmp195136 '()))))
                 (declare (not safe))
                 (cons __tmp195139 __tmp195135))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195065
           __tmp195134
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj195065))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190234_)
        (let* ((_g190238190252_
                (lambda (_g190239190248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190239190248_))))
               (_g190237190293_
                (lambda (_g190239190256_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190239190256_))
                      (let ((_e190243190259_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190239190256_))))
                        (let ((_hd190242190263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190243190259_)))
                              (_tl190241190266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190243190259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190241190266_))
                              (let ((_e190246190269_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190241190266_))))
                                (let ((_hd190245190273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190246190269_)))
                                      (_tl190244190276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190246190269_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190244190276_))
                                      ((lambda (_L190279_)
                                         (let ((__tmp195149
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp195142
                                                (let ((__tmp195148
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp195143
                                                       (let ((__tmp195144
                                                              (let ((__tmp195147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp195145
                             (let ((__tmp195146
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190279_ '()))))
                               (declare (not safe))
                               (cons '() __tmp195146))))
                        (declare (not safe))
                        (cons __tmp195147 __tmp195145))))
                 (declare (not safe))
                 (cons __tmp195144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp195148
                                                        __tmp195143))))
                                           (declare (not safe))
                                           (cons __tmp195149 __tmp195142)))
                                       _hd190245190273_)
                                      (_g190238190252_ _g190239190256_))))
                              (_g190238190252_ _g190239190256_))))
                      (_g190238190252_ _g190239190256_)))))
          (_g190237190293_ _$stx190234_))))))
