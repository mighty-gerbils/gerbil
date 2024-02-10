(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g50116_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50117_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50174_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50175_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50176_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50178_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50179_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50180_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50181_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50182_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50183_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50184_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50185_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50186_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50187_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50580_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50664_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50684_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50685_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50814_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50815_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50816_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50817_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50818_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp50100 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp50100
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30749_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30749_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30746_)
        (if (gx#identifier? _stx30746_)
            (let ((__tmp50101 (gx#syntax-local-value _stx30746_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp50101))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx29052_ _match-stx29054_)
        (letrec ((_parse129056_
                  (lambda (_hd29409_)
                    (let* ((___stx4490844909_ _hd29409_)
                           (_g2943529577_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4490844909_))))
                      (let ((___kont4491144912_
                             (lambda (_L30509_ _L30511_)
                               (let* ((___stx4482844829_ _L30509_)
                                      (_g3052830561_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4482844829_))))
                                 (let ((___kont4483144832_
                                        (lambda ()
                                          (let ((__tmp50102
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30511_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp50102))))
                                       (___kont4483344834_
                                        (lambda (_L30702_)
                                          (let ((__tmp50103
                                                 (let ((__tmp50104
                                                        (let ((__tmp50105
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse129056_ _L30702_))))
                  (declare (not safe))
                  (cons __tmp50105 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp50104))))
                                            (declare (not safe))
                                            (cons '?: __tmp50103))))
                                       (___kont4483544836_
                                        (lambda (_L30672_)
                                          (let ((__tmp50106
                                                 (let ((__tmp50107
                                                        (let ((__tmp50108
                                                               (let ((__tmp50109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse129056_ _L30672_))))
                         (declare (not safe))
                         (cons __tmp50109 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp50108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp50107))))
                                            (declare (not safe))
                                            (cons '?: __tmp50106))))
                                       (___kont4483744838_
                                        (lambda (_L30623_ _L30625_)
                                          (let ((__tmp50110
                                                 (let ((__tmp50111
                                                        (let ((__tmp50112
                                                               (let ((__tmp50113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50114
                                     (let ((__tmp50115
                                            (let ()
                                              (declare (not safe))
                                              (_parse129056_ _L30623_))))
                                       (declare (not safe))
                                       (cons __tmp50115 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp50114))))
                         (declare (not safe))
                         (cons _L30625_ __tmp50113))))
                  (declare (not safe))
                  (cons ':: __tmp50112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp50111))))
                                            (declare (not safe))
                                            (cons '?: __tmp50110))))
                                       (___kont4483944840_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error29063_ _hd29409_)))))
                                   (let ((_g3052430713_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4482844829_)
                                                (let ((_e3053330692_
                                                       (gx#syntax-e
                                                        ___stx4482844829_)))
                                                  (let ((_tl3053130699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3053330692_)))
                                                        (_hd3053230696_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3053330692_))))
                                                    (if (gx#stx-null?
                                                         _tl3053130699_)
                                                        (___kont4483344834_
                                                         _hd3053230696_)
                                                        (if (gx#identifier?
                                                             _hd3053230696_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g50117_|
                         _hd3053230696_)
                        (if (gx#stx-pair? _tl3053130699_)
                            (let ((_e3054030662_ (gx#syntax-e _tl3053130699_)))
                              (let ((_tl3053830669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3054030662_)))
                                    (_hd3053930666_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3054030662_))))
                                (if (gx#stx-null? _tl3053830669_)
                                    (___kont4483544836_ _hd3053930666_)
                                    (___kont4483944840_))))
                            (___kont4483944840_))
                        (___kont4483944840_))
                    (if (gx#stx-datum? _hd3053230696_)
                        (let ((_e3054630589_ (gx#stx-e _hd3053230696_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3054630589_ '::))
                              (if (gx#stx-pair? _tl3053130699_)
                                  (let ((_e3054930593_
                                         (gx#syntax-e _tl3053130699_)))
                                    (let ((_tl3054730600_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3054930593_)))
                                          (_hd3054830597_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3054930593_))))
                                      (if (gx#stx-pair? _tl3054730600_)
                                          (let ((_e3055230603_
                                                 (gx#syntax-e _tl3054730600_)))
                                            (let ((_tl3055030610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3055230603_)))
                                                  (_hd3055130607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3055230603_))))
                                              (if (gx#identifier?
                                                   _hd3055130607_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50116_|
                                                       _hd3055130607_)
                                                      (if (gx#stx-pair?
                                                           _tl3055030610_)
                                                          (let ((_e3055530613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3055030610_)))
                    (let ((_tl3055330620_
                           (let () (declare (not safe)) (##cdr _e3055530613_)))
                          (_hd3055430617_
                           (let ()
                             (declare (not safe))
                             (##car _e3055530613_))))
                      (if (gx#stx-null? _tl3055330620_)
                          (___kont4483744838_ _hd3055430617_ _hd3054830597_)
                          (___kont4483944840_))))
                  (___kont4483944840_))
              (___kont4483944840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4483944840_))))
                                          (___kont4483944840_))))
                                  (___kont4483944840_))
                              (___kont4483944840_)))
                        (___kont4483944840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4483944840_)))))
                                     (if (gx#stx-null? ___stx4482844829_)
                                         (___kont4483144832_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3052430713_))))))))
                            (___kont4491344914_
                             (lambda (_L30414_)
                               (let* ((___stx4481044811_ _L30414_)
                                      (_g3042630437_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4481044811_))))
                                 (let ((___kont4481344814_
                                        (lambda (_L30465_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse129056_ _L30465_))))
                                       (___kont4481544816_
                                        (lambda ()
                                          (let ((__tmp50118
                                                 (gx#stx-map
                                                  _parse129056_
                                                  _L30414_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp50118)))))
                                   (if (gx#stx-pair? ___stx4481044811_)
                                       (let ((_e3043130455_
                                              (gx#syntax-e ___stx4481044811_)))
                                         (let ((_tl3042930462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3043130455_)))
                                               (_hd3043030459_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3043130455_))))
                                           (if (gx#stx-null? _tl3042930462_)
                                               (___kont4481344814_
                                                _hd3043030459_)
                                               (___kont4481544816_))))
                                       (___kont4481544816_))))))
                            (___kont4491544916_
                             (lambda (_L30329_)
                               (let* ((___stx4479244793_ _L30329_)
                                      (_g3034130352_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4479244793_))))
                                 (let ((___kont4479544796_
                                        (lambda (_L30380_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse129056_ _L30380_))))
                                       (___kont4479744798_
                                        (lambda ()
                                          (let ((__tmp50119
                                                 (gx#stx-map
                                                  _parse129056_
                                                  _L30329_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp50119)))))
                                   (if (gx#stx-pair? ___stx4479244793_)
                                       (let ((_e3034630370_
                                              (gx#syntax-e ___stx4479244793_)))
                                         (let ((_tl3034430377_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3034630370_)))
                                               (_hd3034530374_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3034630370_))))
                                           (if (gx#stx-null? _tl3034430377_)
                                               (___kont4479544796_
                                                _hd3034530374_)
                                               (___kont4479744798_))))
                                       (___kont4479744798_))))))
                            (___kont4491744918_
                             (lambda (_L30299_)
                               (let ((__tmp50120
                                      (let ((__tmp50121
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30299_))))
                                        (declare (not safe))
                                        (cons __tmp50121 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp50120))))
                            (___kont4491944920_
                             (lambda (_L30255_ _L30257_)
                               (let ((__tmp50122
                                      (let ((__tmp50125
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30257_)))
                                            (__tmp50123
                                             (let ((__tmp50124
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse129056_
                                                       _L30255_))))
                                               (declare (not safe))
                                               (cons __tmp50124 '()))))
                                        (declare (not safe))
                                        (cons __tmp50125 __tmp50123))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp50122))))
                            (___kont4492144922_
                             (lambda (_L30199_ _L30201_ _L30202_)
                               (if (gx#stx-null? _L30199_)
                                   (let ((__tmp50133
                                          (let ((__tmp50136
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse129056_ _L30202_)))
                                                (__tmp50134
                                                 (let ((__tmp50135
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse129056_
                                                           _L30201_))))
                                                   (declare (not safe))
                                                   (cons __tmp50135 '()))))
                                            (declare (not safe))
                                            (cons __tmp50136 __tmp50134))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp50133))
                                   (let ((__tmp50126
                                          (let ((__tmp50132
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse129056_ _L30202_)))
                                                (__tmp50127
                                                 (let ((__tmp50128
                                                        (let ((__tmp50129
                                                               (let ((__tmp50131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp50130
                              (let ()
                                (declare (not safe))
                                (cons _L30201_ _L30199_))))
                         (declare (not safe))
                         (cons __tmp50131 __tmp50130))))
                  (declare (not safe))
                  (_parse129056_ __tmp50129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50128 '()))))
                                            (declare (not safe))
                                            (cons __tmp50132 __tmp50127))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp50126)))))
                            (___kont4492344924_
                             (lambda (_L30151_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list29058_ _L30151_))))
                            (___kont4492544926_
                             (lambda (_L30121_)
                               (let ((__tmp50137
                                      (let ((__tmp50138
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30121_))))
                                        (declare (not safe))
                                        (cons __tmp50138 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp50137))))
                            (___kont4492744928_
                             (lambda (_L30084_)
                               (let ((__tmp50139
                                      (let ((__tmp50140
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30084_))))
                                        (declare (not safe))
                                        (cons __tmp50140 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp50139))))
                            (___kont4492944930_
                             (lambda (_L30060_)
                               (let ()
                                 (declare (not safe))
                                 (_parse129056_ _L30060_))))
                            (___kont4493144932_
                             (lambda (_L30022_)
                               (let ((__tmp50141
                                      (let ((__tmp50142
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                _L30022_))))
                                        (declare (not safe))
                                        (cons __tmp50142 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp50141))))
                            (___kont4493344934_
                             (lambda (_L29994_)
                               (let ((__tmp50143
                                      (let ((__tmp50144
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                _L29994_))))
                                        (declare (not safe))
                                        (cons __tmp50144 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp50143))))
                            (___kont4493544936_
                             (lambda (_L29955_)
                               (let ((__tmp50145
                                      (let ((__tmp50146
                                             (let ((__tmp50147
                                                    (let ((__tmp50148
                                                           (lambda (_g2996829971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2996929974_)
                     (let ()
                       (declare (not safe))
                       (cons _g2996829971_ _g2996929974_)))))
              (declare (not safe))
              (foldr1 __tmp50148 '() _L29955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                __tmp50147))))
                                        (declare (not safe))
                                        (cons __tmp50146 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp50145))))
                            (___kont4493944940_
                             (lambda (_L29901_ _L29903_)
                               (let ((__tmp50149
                                      (let ((__tmp50152
                                             (gx#syntax-local-value _L29903_))
                                            (__tmp50150
                                             (let ((__tmp50151
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector29059_
                                                       _L29901_))))
                                               (declare (not safe))
                                               (cons __tmp50151 '()))))
                                        (declare (not safe))
                                        (cons __tmp50152 __tmp50150))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp50149))))
                            (___kont4494144942_
                             (lambda (_L29871_ _L29873_)
                               (let ((__tmp50153
                                      (let ((__tmp50156
                                             (gx#syntax-local-value _L29873_))
                                            (__tmp50154
                                             (let ((__tmp50155
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body29061_
                                                       _L29871_))))
                                               (declare (not safe))
                                               (cons __tmp50155 '()))))
                                        (declare (not safe))
                                        (cons __tmp50156 __tmp50154))))
                                 (declare (not safe))
                                 (cons 'class: __tmp50153))))
                            (___kont4494344944_
                             (lambda (_L29831_ _L29833_)
                               (let ((__tmp50157
                                      (let ((__tmp50158
                                             (let ((__tmp50163
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp50159
                                                    (let ((__tmp50160
                                                           (let ((__tmp50162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp50161
                          (let () (declare (not safe)) (cons _L29831_ '()))))
                     (declare (not safe))
                     (cons __tmp50162 __tmp50161))))
              (declare (not safe))
              (cons _L29833_ __tmp50160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50163 __tmp50159))))
                                        (declare (not safe))
                                        (cons __tmp50158 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp50157))))
                            (___kont4494544946_
                             (lambda (_L29791_)
                               (let ((__tmp50164
                                      (let ((__tmp50165 (gx#stx-e _L29791_)))
                                        (declare (not safe))
                                        (cons __tmp50165 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp50164))))
                            (___kont4494744948_
                             (lambda (_L29751_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq29062_ _L29751_))))
                            (___kont4494944950_
                             (lambda (_L29707_ _L29709_)
                               (let ((__tmp50166
                                      (let ((__tmp50167
                                             (let ((__tmp50168
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse129056_
                                                       _L29707_))))
                                               (declare (not safe))
                                               (cons __tmp50168 '()))))
                                        (declare (not safe))
                                        (cons _L29709_ __tmp50167))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp50166))))
                            (___kont4495144952_
                             (lambda (_L29655_)
                               (let ((__tmp50169
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29655_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29409_))
                                        (let ((_$e29666_
                                               (gx#stx-source _hd29409_)))
                                          (if _$e29666_
                                              _$e29666_
                                              (gx#stx-source _stx29052_)))))))
                                 (declare (not safe))
                                 (_parse129056_ __tmp50169))))
                            (___kont4495344954_
                             (lambda (_L29629_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4495544956_
                             (lambda (_L29613_)
                               (let ((__tmp50170
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29613_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp50170))))
                            (___kont4495744958_
                             (lambda (_L29595_)
                               (let ((__tmp50171
                                      (let ((__tmp50172 (gx#stx-e _L29595_)))
                                        (declare (not safe))
                                        (cons __tmp50172 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp50171))))
                            (___kont4495944960_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error29063_ _hd29409_)))))
                        (let* ((_g2943329606_
                                (lambda ()
                                  (let ((_L29595_ ___stx4490844909_))
                                    (if (gx#stx-datum? _L29595_)
                                        (___kont4495744958_ _L29595_)
                                        (___kont4495944960_)))))
                               (_g2943229622_
                                (lambda ()
                                  (let ((_L29613_ ___stx4490844909_))
                                    (if (and (gx#identifier? _L29613_)
                                             (let ((__tmp50173
                                                    (gx#ellipsis? _L29613_)))
                                               (declare (not safe))
                                               (not __tmp50173)))
                                        (___kont4495544956_ _L29613_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943329606_))))))
                               (_g2943129638_
                                (lambda ()
                                  (let ((_L29629_ ___stx4490844909_))
                                    (if (gx#underscore? _L29629_)
                                        (___kont4495344954_ _L29629_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943229622_))))))
                               (___match4523545236_
                                (lambda (_e2956829645_
                                         _hd2956729649_
                                         _tl2956629652_)
                                  (let ((_L29655_ _hd2956729649_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29655_))
                                        (___kont4495144952_ _L29655_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943129638_))))))
                               (___match4516945170_
                                (lambda (_e2953629811_
                                         _hd2953529815_
                                         _tl2953429818_
                                         _e2953929821_
                                         _hd2953829825_
                                         _tl2953729828_)
                                  (let ((_L29831_ _hd2953829825_)
                                        (_L29833_ _hd2953529815_))
                                    (if (and (gx#identifier? _L29833_)
                                             (or (gx#free-identifier=?
                                                  _L29833_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29833_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29833_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4494344944_ _L29831_ _L29833_)
                                        (if (gx#identifier? _hd2953529815_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50175_|
                                                 _hd2953529815_)
                                                (___kont4494544946_
                                                 _hd2953829825_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g50174_|
                                                     _hd2953529815_)
                                                    (___kont4494744948_
                                                     _hd2953829825_)
                                                    (___match4523545236_
                                                     _e2953629811_
                                                     _hd2953529815_
                                                     _tl2953429818_)))
                                            (___match4523545236_
                                             _e2953629811_
                                             _hd2953529815_
                                             _tl2953429818_))))))
                               (___match4515545156_
                                (lambda (_e2953129861_
                                         _hd2953029865_
                                         _tl2952929868_)
                                  (let ((_L29871_ _tl2952929868_)
                                        (_L29873_ _hd2953029865_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29873_))
                                        (___kont4494144942_ _L29871_ _L29873_)
                                        (if (gx#stx-pair? _tl2952929868_)
                                            (let ((_e2953929821_
                                                   (gx#syntax-e
                                                    _tl2952929868_)))
                                              (let ((_tl2953729828_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2953929821_)))
                                                    (_hd2953829825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2953929821_))))
                                                (if (gx#stx-null?
                                                     _tl2953729828_)
                                                    (___match4516945170_
                                                     _e2953129861_
                                                     _hd2953029865_
                                                     _tl2952929868_
                                                     _e2953929821_
                                                     _hd2953829825_
                                                     _tl2953729828_)
                                                    (if (gx#identifier?
                                                         _hd2953029865_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g50175_|
                                                             _hd2953029865_)
                                                            (___match4523545236_
                                                             _e2953129861_
                                                             _hd2953029865_
                                                             _tl2952929868_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g50174_|
                         _hd2953029865_)
                        (___match4523545236_
                         _e2953129861_
                         _hd2953029865_
                         _tl2952929868_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50176_|
                             _hd2953029865_)
                            (if (gx#stx-pair? _tl2953729828_)
                                (let ((_e2956429697_
                                       (gx#syntax-e _tl2953729828_)))
                                  (let ((_tl2956229704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2956429697_)))
                                        (_hd2956329701_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2956429697_))))
                                    (if (gx#stx-null? _tl2956229704_)
                                        (___kont4494944950_
                                         _hd2956329701_
                                         _hd2953829825_)
                                        (___match4523545236_
                                         _e2953129861_
                                         _hd2953029865_
                                         _tl2952929868_))))
                                (___match4523545236_
                                 _e2953129861_
                                 _hd2953029865_
                                 _tl2952929868_))
                            (___match4523545236_
                             _e2953129861_
                             _hd2953029865_
                             _tl2952929868_))))
                (___match4523545236_
                 _e2953129861_
                 _hd2953029865_
                 _tl2952929868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4523545236_
                                             _e2953129861_
                                             _hd2953029865_
                                             _tl2952929868_))))))
                               (___match4514945150_
                                (lambda (_e2952629891_
                                         _hd2952529895_
                                         _tl2952429898_)
                                  (let ((_L29901_ _tl2952429898_)
                                        (_L29903_ _hd2952529895_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29903_
                                           gerbil/core$<MOP>$<MOP:2>#class-type-struct?))
                                        (___kont4493944940_ _L29901_ _L29903_)
                                        (___match4515545156_
                                         _e2952629891_
                                         _hd2952529895_
                                         _tl2952429898_)))))
                               (___match4514345144_
                                (lambda (_e2951229921_
                                         ___splice4493744938_
                                         _target2951329925_
                                         _tl2951529928_)
                                  (letrec ((_loop2951629931_
                                            (lambda (_hd2951429935_
                                                     _body2952029938_)
                                              (if (gx#stx-pair? _hd2951429935_)
                                                  (let ((_e2951729941_
                                                         (gx#syntax-e
                                                          _hd2951429935_)))
                                                    (let ((_lp-tl2951929948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2951729941_)))
                                                          (_lp-hd2951829945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2951729941_))))
                                                      (let ((__tmp50177
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2951829945_ _body2952029938_))))
                (declare (not safe))
                (_loop2951629931_ _lp-tl2951929948_ __tmp50177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2952129951_
                                                         (reverse _body2952029938_)))
                                                    (___kont4493544936_
                                                     _body2952129951_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2951629931_
                                       _target2951329925_
                                       '())))))
                               (_g2942329977_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4490844909_)
                                      (let ((_e2951229921_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4490844909_))))
                                        (if (gx#stx-pair/null? _e2951229921_)
                                            (let ((___splice4493744938_
                                                   (gx#syntax-split-splice
                                                    _e2951229921_
                                                    '0)))
                                              (let ((_tl2951529928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4493744938_
                                                        '1)))
                                                    (_target2951329925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4493744938_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2951529928_)
                                                    (___match4514345144_
                                                     _e2951229921_
                                                     ___splice4493744938_
                                                     _target2951329925_
                                                     _tl2951529928_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2943129638_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2943129638_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2943129638_)))))
                               (_g2941930094_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4490844909_)
                                      (let ((_e2949530080_
                                             (unbox (gx#syntax-e
                                                     ___stx4490844909_))))
                                        (___kont4492744928_ _e2949530080_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2942329977_)))))
                               (___match4499744998_
                                (lambda (_e2945230319_
                                         _hd2945130323_
                                         _tl2945030326_)
                                  (let ((_L30329_ _tl2945030326_))
                                    (if (gx#stx-list? _L30329_)
                                        (___kont4491544916_ _L30329_)
                                        (___match4514945150_
                                         _e2945230319_
                                         _hd2945130323_
                                         _tl2945030326_)))))
                               (___match4498744988_
                                (lambda (_e2944830404_
                                         _hd2944730408_
                                         _tl2944630411_)
                                  (let ((_L30414_ _tl2944630411_))
                                    (if (gx#stx-list? _L30414_)
                                        (___kont4491344914_ _L30414_)
                                        (___match4514945150_
                                         _e2944830404_
                                         _hd2944730408_
                                         _tl2944630411_))))))
                          (if (gx#stx-pair? ___stx4490844909_)
                              (let ((_e2944130489_
                                     (gx#syntax-e ___stx4490844909_)))
                                (let ((_tl2943930496_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2944130489_)))
                                      (_hd2944030493_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2944130489_))))
                                  (if (gx#identifier? _hd2944030493_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50187_|
                                           _hd2944030493_)
                                          (if (gx#stx-pair? _tl2943930496_)
                                              (let ((_e2944430499_
                                                     (gx#syntax-e
                                                      _tl2943930496_)))
                                                (let ((_tl2944230506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2944430499_)))
                                                      (_hd2944330503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2944430499_))))
                                                  (___kont4491144912_
                                                   _tl2944230506_
                                                   _hd2944330503_)))
                                              (___match4514945150_
                                               _e2944130489_
                                               _hd2944030493_
                                               _tl2943930496_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50186_|
                                               _hd2944030493_)
                                              (___match4498744988_
                                               _e2944130489_
                                               _hd2944030493_
                                               _tl2943930496_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50185_|
                                                   _hd2944030493_)
                                                  (___match4499744998_
                                                   _e2944130489_
                                                   _hd2944030493_
                                                   _tl2943930496_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50184_|
                                                       _hd2944030493_)
                                                      (if (gx#stx-pair?
                                                           _tl2943930496_)
                                                          (let ((_e2945930289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2943930496_)))
                    (let ((_tl2945730296_
                           (let () (declare (not safe)) (##cdr _e2945930289_)))
                          (_hd2945830293_
                           (let ()
                             (declare (not safe))
                             (##car _e2945930289_))))
                      (if (gx#stx-null? _tl2945730296_)
                          (___kont4491744918_ _hd2945830293_)
                          (___match4514945150_
                           _e2944130489_
                           _hd2944030493_
                           _tl2943930496_))))
                  (___match4514945150_
                   _e2944130489_
                   _hd2944030493_
                   _tl2943930496_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g50183_|
                   _hd2944030493_)
                  (if (gx#stx-pair? _tl2943930496_)
                      (let ((_e2946730235_ (gx#syntax-e _tl2943930496_)))
                        (let ((_tl2946530242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2946730235_)))
                              (_hd2946630239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2946730235_))))
                          (if (gx#stx-pair? _tl2946530242_)
                              (let ((_e2947030245_
                                     (gx#syntax-e _tl2946530242_)))
                                (let ((_tl2946830252_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2947030245_)))
                                      (_hd2946930249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2947030245_))))
                                  (if (gx#stx-null? _tl2946830252_)
                                      (___kont4491944920_
                                       _hd2946930249_
                                       _hd2946630239_)
                                      (___match4514945150_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_))))
                              (___match4514945150_
                               _e2944130489_
                               _hd2944030493_
                               _tl2943930496_))))
                      (___match4514945150_
                       _e2944130489_
                       _hd2944030493_
                       _tl2943930496_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g50182_|
                       _hd2944030493_)
                      (if (gx#stx-pair? _tl2943930496_)
                          (let ((_e2947930179_ (gx#syntax-e _tl2943930496_)))
                            (let ((_tl2947730186_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2947930179_)))
                                  (_hd2947830183_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2947930179_))))
                              (if (gx#stx-pair? _tl2947730186_)
                                  (let ((_e2948230189_
                                         (gx#syntax-e _tl2947730186_)))
                                    (let ((_tl2948030196_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2948230189_)))
                                          (_hd2948130193_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2948230189_))))
                                      (___kont4492144922_
                                       _tl2948030196_
                                       _hd2948130193_
                                       _hd2947830183_)))
                                  (___match4514945150_
                                   _e2944130489_
                                   _hd2944030493_
                                   _tl2943930496_))))
                          (___match4514945150_
                           _e2944130489_
                           _hd2944030493_
                           _tl2943930496_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g50181_|
                           _hd2944030493_)
                          (___kont4492344924_ _tl2943930496_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50180_|
                               _hd2944030493_)
                              (if (gx#stx-pair? _tl2943930496_)
                                  (let ((_e2949330111_
                                         (gx#syntax-e _tl2943930496_)))
                                    (let ((_tl2949130118_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2949330111_)))
                                          (_hd2949230115_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2949330111_))))
                                      (if (gx#stx-null? _tl2949130118_)
                                          (___kont4492544926_ _hd2949230115_)
                                          (___match4514945150_
                                           _e2944130489_
                                           _hd2944030493_
                                           _tl2943930496_))))
                                  (___match4514945150_
                                   _e2944130489_
                                   _hd2944030493_
                                   _tl2943930496_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50179_|
                                   _hd2944030493_)
                                  (if (gx#stx-pair? _tl2943930496_)
                                      (let ((_e2950230050_
                                             (gx#syntax-e _tl2943930496_)))
                                        (let ((_tl2950030057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2950230050_)))
                                              (_hd2950130054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2950230050_))))
                                          (if (gx#stx-null? _tl2950030057_)
                                              (___kont4492944930_
                                               _hd2950130054_)
                                              (___kont4493144932_
                                               _tl2943930496_))))
                                      (___kont4493144932_ _tl2943930496_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50178_|
                                       _hd2944030493_)
                                      (___kont4493344934_ _tl2943930496_)
                                      (___match4514945150_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4514945150_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_))))
                              (let ()
                                (declare (not safe))
                                (_g2941930094_))))))))
                 (_parse-list29058_
                  (lambda (_body29238_)
                    (let* ((___stx4523845239_ _body29238_)
                           (_g2924429273_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4523845239_))))
                      (let ((___kont4524145242_
                             (lambda (_L29391_)
                               (let ()
                                 (declare (not safe))
                                 (_parse129056_ _L29391_))))
                            (___kont4524345244_
                             (lambda (_L29343_ _L29345_ _L29346_)
                               (let ((__tmp50188
                                      (let ((__tmp50191
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L29346_)))
                                            (__tmp50189
                                             (let ((__tmp50190
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list29058_
                                                       _L29343_))))
                                               (declare (not safe))
                                               (cons __tmp50190 '()))))
                                        (declare (not safe))
                                        (cons __tmp50191 __tmp50189))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp50188))))
                            (___kont4524545246_
                             (lambda (_L29301_ _L29303_)
                               (let ((__tmp50192
                                      (let ((__tmp50195
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L29303_)))
                                            (__tmp50193
                                             (let ((__tmp50194
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list29058_
                                                       _L29301_))))
                                               (declare (not safe))
                                               (cons __tmp50194 '()))))
                                        (declare (not safe))
                                        (cons __tmp50195 __tmp50193))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp50192))))
                            (___kont4524745248_
                             (lambda ()
                               (if (gx#stx-null? _body29238_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp50196
                                              (gx#stx-pair? _body29238_)))
                                         (declare (not safe))
                                         (not __tmp50196))
                                       (let ()
                                         (declare (not safe))
                                         (_parse129056_ _body29238_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error29063_ _body29238_)))))))
                        (let* ((___match4528745288_
                                (lambda (_e2926729291_
                                         _hd2926629295_
                                         _tl2926529298_)
                                  (let ((_L29301_ _tl2926529298_)
                                        (_L29303_ _hd2926629295_))
                                    (if (let ((__tmp50197
                                               (gx#ellipsis? _L29303_)))
                                          (declare (not safe))
                                          (not __tmp50197))
                                        (___kont4524545246_ _L29301_ _L29303_)
                                        (___kont4524745248_)))))
                               (___match4528145282_
                                (lambda (_e2925929323_
                                         _hd2925829327_
                                         _tl2925729330_
                                         _e2926229333_
                                         _hd2926129337_
                                         _tl2926029340_)
                                  (let ((_L29343_ _tl2926029340_)
                                        (_L29345_ _hd2926129337_)
                                        (_L29346_ _hd2925829327_))
                                    (if (gx#ellipsis? _L29345_)
                                        (___kont4524345244_
                                         _L29343_
                                         _L29345_
                                         _L29346_)
                                        (___match4528745288_
                                         _e2925929323_
                                         _hd2925829327_
                                         _tl2925729330_))))))
                          (if (gx#stx-pair? ___stx4523845239_)
                              (let ((_e2924929367_
                                     (gx#syntax-e ___stx4523845239_)))
                                (let ((_tl2924729374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2924929367_)))
                                      (_hd2924829371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2924929367_))))
                                  (if (gx#stx-datum? _hd2924829371_)
                                      (let ((_e2925029377_
                                             (gx#stx-e _hd2924829371_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2925029377_ '::))
                                            (if (gx#stx-pair? _tl2924729374_)
                                                (let ((_e2925329381_
                                                       (gx#syntax-e
                                                        _tl2924729374_)))
                                                  (let ((_tl2925129388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2925329381_)))
                                                        (_hd2925229385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2925329381_))))
                                                    (if (gx#stx-null?
                                                         _tl2925129388_)
                                                        (___kont4524145242_
                                                         _hd2925229385_)
                                                        (___match4528145282_
                                                         _e2924929367_
                                                         _hd2924829371_
                                                         _tl2924729374_
                                                         _e2925329381_
                                                         _hd2925229385_
                                                         _tl2925129388_))))
                                                (___match4528745288_
                                                 _e2924929367_
                                                 _hd2924829371_
                                                 _tl2924729374_))
                                            (if (gx#stx-pair? _tl2924729374_)
                                                (let ((_e2926229333_
                                                       (gx#syntax-e
                                                        _tl2924729374_)))
                                                  (let ((_tl2926029340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2926229333_)))
                                                        (_hd2926129337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2926229333_))))
                                                    (___match4528145282_
                                                     _e2924929367_
                                                     _hd2924829371_
                                                     _tl2924729374_
                                                     _e2926229333_
                                                     _hd2926129337_
                                                     _tl2926029340_)))
                                                (___match4528745288_
                                                 _e2924929367_
                                                 _hd2924829371_
                                                 _tl2924729374_))))
                                      (if (gx#stx-pair? _tl2924729374_)
                                          (let ((_e2926229333_
                                                 (gx#syntax-e _tl2924729374_)))
                                            (let ((_tl2926029340_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2926229333_)))
                                                  (_hd2926129337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2926229333_))))
                                              (___match4528145282_
                                               _e2924929367_
                                               _hd2924829371_
                                               _tl2924729374_
                                               _e2926229333_
                                               _hd2926129337_
                                               _tl2926029340_)))
                                          (___match4528745288_
                                           _e2924929367_
                                           _hd2924829371_
                                           _tl2924729374_)))))
                              (___kont4524745248_)))))))
                 (_parse-vector29059_
                  (lambda (_body29235_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?29060_ _body29235_))
                        (let ((__tmp50200
                               (let ((__tmp50201
                                      (gx#stx-map _parse129056_ _body29235_)))
                                 (declare (not safe))
                                 (cons __tmp50201 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp50200))
                        (let ((__tmp50198
                               (let ((__tmp50199
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list29058_ _body29235_))))
                                 (declare (not safe))
                                 (cons __tmp50199 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp50198)))))
                 (_simple-vector?29060_
                  (lambda (_body29172_)
                    (let* ((___stx4529045291_ _body29172_)
                           (_g2917629188_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4529045291_))))
                      (let ((___kont4529345294_
                             (lambda (_L29216_ _L29218_)
                               (if (let ((__tmp50202 (gx#ellipsis? _L29218_)))
                                     (declare (not safe))
                                     (not __tmp50202))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?29060_ _L29216_))
                                   '#f)))
                            (___kont4529545296_
                             (lambda () (gx#stx-null? _body29172_))))
                        (if (gx#stx-pair? ___stx4529045291_)
                            (let ((_e2918229206_
                                   (gx#syntax-e ___stx4529045291_)))
                              (let ((_tl2918029213_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2918229206_)))
                                    (_hd2918129210_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2918229206_))))
                                (___kont4529345294_
                                 _tl2918029213_
                                 _hd2918129210_)))
                            (___kont4529545296_))))))
                 (_parse-class-body29061_
                  (lambda (_body29081_)
                    (let _recur29084_ ((_rest29087_ _body29081_))
                      (let* ((___stx4530645307_ _rest29087_)
                             (_g2909129107_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4530645307_))))
                        (let ((___kont4530945310_
                               (lambda (_L29145_ _L29147_ _L29148_)
                                 (let ((__tmp50203
                                        (let ((__tmp50205
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse129056_ _L29147_)))
                                              (__tmp50204
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur29084_ _L29145_))))
                                          (declare (not safe))
                                          (cons __tmp50205 __tmp50204))))
                                   (declare (not safe))
                                   (cons _L29148_ __tmp50203))))
                              (___kont4531145312_
                               (lambda ()
                                 (if (gx#stx-null? _rest29087_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error29063_ _rest29087_))))))
                          (let ((___match4532545326_
                                 (lambda (_e2909829125_
                                          _hd2909729129_
                                          _tl2909629132_
                                          _e2910129135_
                                          _hd2910029139_
                                          _tl2909929142_)
                                   (let ((_L29145_ _tl2909929142_)
                                         (_L29147_ _hd2910029139_)
                                         (_L29148_ _hd2909729129_))
                                     (if (gx#stx-keyword? _L29148_)
                                         (___kont4530945310_
                                          _L29145_
                                          _L29147_
                                          _L29148_)
                                         (___kont4531145312_))))))
                            (if (gx#stx-pair? ___stx4530645307_)
                                (let ((_e2909829125_
                                       (gx#syntax-e ___stx4530645307_)))
                                  (let ((_tl2909629132_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2909829125_)))
                                        (_hd2909729129_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2909829125_))))
                                    (if (gx#stx-pair? _tl2909629132_)
                                        (let ((_e2910129135_
                                               (gx#syntax-e _tl2909629132_)))
                                          (let ((_tl2909929142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2910129135_)))
                                                (_hd2910029139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2910129135_))))
                                            (___match4532545326_
                                             _e2909829125_
                                             _hd2909729129_
                                             _tl2909629132_
                                             _e2910129135_
                                             _hd2910029139_
                                             _tl2909929142_)))
                                        (___kont4531145312_))))
                                (___kont4531145312_))))))))
                 (_parse-qq29062_
                  (lambda (_hd29068_)
                    (let ((_g2907029077_
                           (lambda (_g2907129073_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2907129073_))))
                      (declare (not safe))
                      (_g2907029077_ _hd29068_))))
                 (_parse-error29063_
                  (lambda (_hd29065_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx29054_
                               (let ((__tmp50207
                                      (let ((__tmp50208
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd29065_ '()))))
                                        (declare (not safe))
                                        (cons _stx29052_ __tmp50208))))
                                 (declare (not safe))
                                 (cons _match-stx29054_ __tmp50207))
                               (let ((__tmp50206
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd29065_ '()))))
                                 (declare (not safe))
                                 (cons _stx29052_ __tmp50206)))))))
          (let () (declare (not safe)) (_parse129056_ _stx29052_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30736_)
        (let ((_match-stx30739_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30736_
           _match-stx30739_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g50210_
        (let ((_g50209_ (let () (declare (not safe)) (##length _g50210_))))
          (cond ((let () (declare (not safe)) (##fx= _g50209_ 1))
                 (apply (lambda (_stx30736_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30736_)))
                        _g50210_))
                ((let () (declare (not safe)) (##fx= _g50209_ 2))
                 (apply (lambda (_stx30742_ _match-stx30744_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30742_
                             _match-stx30744_)))
                        _g50210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g50210_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx29036_)
        (call-with-current-continuation
         (lambda (_E29040_)
           (with-exception-handler
            (let ((_E!29043_ (current-exception-handler)))
              (lambda (_e29046_)
                (if (syntax-error? _e29046_)
                    (_E29040_ '#f)
                    (_E!29043_ _e29046_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx29036_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27771_)
        (letrec ((_loop27774_
                  (lambda (_ptree28061_ _vars28063_ _K28064_)
                    (let* ((___stx4542445425_ _ptree28061_)
                           (_g2807728187_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4542445425_))))
                      (let ((___kont4542745428_
                             (lambda (_L28817_)
                               (let* ((___stx4534445345_ _L28817_)
                                      (_g2883428868_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4534445345_))))
                                 (let ((___kont4534745348_
                                        (lambda (_L29017_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L29017_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4534945350_
                                        (lambda (_L28986_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28986_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4535145352_
                                        (lambda (_L28934_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28934_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4535345354_
                                        (lambda () (_K28064_ _vars28063_))))
                                   (if (gx#stx-pair? ___stx4534445345_)
                                       (let ((_e2883929007_
                                              (gx#syntax-e ___stx4534445345_)))
                                         (let ((_tl2883729014_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2883929007_)))
                                               (_hd2883829011_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2883929007_))))
                                           (if (gx#stx-null? _tl2883729014_)
                                               (___kont4534745348_
                                                _hd2883829011_)
                                               (if (gx#stx-datum?
                                                    _hd2883829011_)
                                                   (let ((_e2884428972_
                                                          (gx#stx-e
                                                           _hd2883829011_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2884428972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2883729014_)
                     (let ((_e2884728976_ (gx#syntax-e _tl2883729014_)))
                       (let ((_tl2884528983_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2884728976_)))
                             (_hd2884628980_
                              (let ()
                                (declare (not safe))
                                (##car _e2884728976_))))
                         (if (gx#stx-null? _tl2884528983_)
                             (___kont4534945350_ _hd2884628980_)
                             (___kont4535345354_))))
                     (___kont4535345354_))
                 (if (let () (declare (not safe)) (equal? _e2884428972_ '::))
                     (if (gx#stx-pair? _tl2883729014_)
                         (let ((_e2885528900_ (gx#syntax-e _tl2883729014_)))
                           (let ((_tl2885328907_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2885528900_)))
                                 (_hd2885428904_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2885528900_))))
                             (if (gx#stx-pair? _tl2885328907_)
                                 (let ((_e2885828910_
                                        (gx#syntax-e _tl2885328907_)))
                                   (let ((_tl2885628917_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2885828910_)))
                                         (_hd2885728914_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2885828910_))))
                                     (if (gx#stx-datum? _hd2885728914_)
                                         (let ((_e2885928920_
                                                (gx#stx-e _hd2885728914_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2885928920_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2885628917_)
                                                   (let ((_e2886228924_
                                                          (gx#syntax-e
                                                           _tl2885628917_)))
                                                     (let ((_tl2886028931_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2886228924_)))
                                                           (_hd2886128928_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2886228924_))))
                                                       (if (gx#stx-null?
                                                            _tl2886028931_)
                                                           (___kont4535145352_
                                                            _hd2886128928_)
                                                           (___kont4535345354_))))
                                                   (___kont4535345354_))
                                               (___kont4535345354_)))
                                         (___kont4535345354_))))
                                 (___kont4535345354_))))
                         (___kont4535345354_))
                     (___kont4535345354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4535345354_)))))
                                       (___kont4535345354_))))))
                            (___kont4542945430_
                             (lambda (_L28704_ _L28706_)
                               (let* ((___stx4532845329_ _L28704_)
                                      (_g2872228734_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4532845329_))))
                                 (let ((___kont4533145332_
                                        (lambda (_L28762_ _L28764_)
                                          (let ((__tmp50211
                                                 (lambda (_g2877628778_)
                                                   (let ((__tmp50212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27774_
                                                      __tmp50212
                                                      _g2877628778_
                                                      _K28064_)))))
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28764_
                                             _vars28063_
                                             __tmp50211))))
                                       (___kont4533345334_
                                        (lambda () (_K28064_ _vars28063_))))
                                   (if (gx#stx-pair? ___stx4532845329_)
                                       (let ((_e2872828752_
                                              (gx#syntax-e ___stx4532845329_)))
                                         (let ((_tl2872628759_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2872828752_)))
                                               (_hd2872728756_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2872828752_))))
                                           (___kont4533145332_
                                            _tl2872628759_
                                            _hd2872728756_)))
                                       (___kont4533345334_))))))
                            (___kont4543145432_
                             (lambda (_L28673_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28673_ _vars28063_ _K28064_))))
                            (___kont4543345434_
                             (lambda (_L28619_ _L28621_)
                               (let ((__tmp50213
                                      (lambda (_g2863628638_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27774_
                                           _L28619_
                                           _g2863628638_
                                           _K28064_)))))
                                 (declare (not safe))
                                 (_loop27774_
                                  _L28621_
                                  _vars28063_
                                  __tmp50213))))
                            (___kont4543545436_
                             (lambda (_L28555_ _L28557_)
                               (let ((__tmp50214
                                      (lambda (_g2857228574_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27774_
                                           _L28555_
                                           _g2857228574_
                                           _K28064_)))))
                                 (declare (not safe))
                                 (_loop27774_
                                  _L28557_
                                  _vars28063_
                                  __tmp50214))))
                            (___kont4543745438_
                             (lambda (_L28500_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28500_ _vars28063_ _K28064_))))
                            (___kont4543945440_
                             (lambda (_L28450_ _L28452_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27776_
                                  _L28450_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4544145442_
                             (lambda (_L28407_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27776_
                                  _L28407_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4544345444_
                             (lambda (_L28350_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27778_
                                  _L28350_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4544545446_
                             (lambda (_L28291_ _L28293_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28291_ _vars28063_ _K28064_))))
                            (___kont4544745448_
                             (lambda (_L28229_)
                               (if (let ((__tmp50215
                                          (lambda (_g2824428246_)
                                            (gx#bound-identifier=?
                                             _g2824428246_
                                             _L28229_))))
                                     (declare (not safe))
                                     (find __tmp50215 _vars28063_))
                                   (_K28064_ _vars28063_)
                                   (_K28064_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28229_ _vars28063_))))))
                            (___kont4544945450_
                             (lambda () (_K28064_ _vars28063_))))
                        (let* ((___match4558145582_
                                (lambda (_e2813628430_
                                         _hd2813528434_
                                         _tl2813428437_
                                         _e2813928440_
                                         _hd2813828444_
                                         _tl2813728447_)
                                  (let ((_L28450_ _hd2813828444_)
                                        (_L28452_ _hd2813528434_))
                                    (if (or (gx#stx-eq? 'values: _L28452_)
                                            (gx#stx-eq? 'vector: _L28452_))
                                        (___kont4543945440_ _L28450_ _L28452_)
                                        (if (gx#stx-datum? _hd2813528434_)
                                            (let ((_e2814428383_
                                                   (gx#stx-e _hd2813528434_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2814428383_
                                                            'struct:))
                                                  (___kont4544945450_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2814428383_
                                                                'class:))
                                                      (___kont4544945450_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2814428383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4544945450_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2814428383_ 'var:))
                      (___kont4544745448_ _hd2813828444_)
                      (___kont4544945450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4544945450_))))))
                               (___match4547545476_
                                (lambda (_e2809128694_
                                         _hd2809028698_
                                         _tl2808928701_)
                                  (let ((_L28704_ _tl2808928701_)
                                        (_L28706_ _hd2809028698_))
                                    (if (or (gx#stx-eq? 'and: _L28706_)
                                            (gx#stx-eq? 'or: _L28706_))
                                        (___kont4542945430_ _L28704_ _L28706_)
                                        (if (gx#stx-datum? _hd2809028698_)
                                            (let ((_e2809628659_
                                                   (gx#stx-e _hd2809028698_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2809628659_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2808928701_)
                                                      (let ((_e2809928663_
                                                             (gx#syntax-e
                                                              _tl2808928701_)))
                                                        (let ((_tl2809728670_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2809928663_)))
                      (_hd2809828667_
                       (let () (declare (not safe)) (##car _e2809928663_))))
                  (if (gx#stx-null? _tl2809728670_)
                      (___kont4543145432_ _hd2809828667_)
                      (___kont4544945450_))))
              (___kont4544945450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2809628659_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2808928701_)
                                                          (let ((_e2810828599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2808928701_)))
                    (let ((_tl2810628606_
                           (let () (declare (not safe)) (##cdr _e2810828599_)))
                          (_hd2810728603_
                           (let ()
                             (declare (not safe))
                             (##car _e2810828599_))))
                      (if (gx#stx-pair? _tl2810628606_)
                          (let ((_e2811128609_ (gx#syntax-e _tl2810628606_)))
                            (let ((_tl2810928616_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2811128609_)))
                                  (_hd2811028613_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2811128609_))))
                              (if (gx#stx-null? _tl2810928616_)
                                  (___kont4543345434_
                                   _hd2811028613_
                                   _hd2810728603_)
                                  (___kont4544945450_))))
                          (if (gx#stx-null? _tl2810628606_)
                              (___match4558145582_
                               _e2809128694_
                               _hd2809028698_
                               _tl2808928701_
                               _e2810828599_
                               _hd2810728603_
                               _tl2810628606_)
                              (___kont4544945450_)))))
                  (___kont4544945450_))
              (if (let () (declare (not safe)) (equal? _e2809628659_ 'splice:))
                  (if (gx#stx-pair? _tl2808928701_)
                      (let ((_e2812028535_ (gx#syntax-e _tl2808928701_)))
                        (let ((_tl2811828542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2812028535_)))
                              (_hd2811928539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2812028535_))))
                          (if (gx#stx-pair? _tl2811828542_)
                              (let ((_e2812328545_
                                     (gx#syntax-e _tl2811828542_)))
                                (let ((_tl2812128552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2812328545_)))
                                      (_hd2812228549_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2812328545_))))
                                  (if (gx#stx-null? _tl2812128552_)
                                      (___kont4543545436_
                                       _hd2812228549_
                                       _hd2811928539_)
                                      (___kont4544945450_))))
                              (if (gx#stx-null? _tl2811828542_)
                                  (___match4558145582_
                                   _e2809128694_
                                   _hd2809028698_
                                   _tl2808928701_
                                   _e2812028535_
                                   _hd2811928539_
                                   _tl2811828542_)
                                  (___kont4544945450_)))))
                      (___kont4544945450_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2809628659_ 'box:))
                      (if (gx#stx-pair? _tl2808928701_)
                          (let ((_e2813128490_ (gx#syntax-e _tl2808928701_)))
                            (let ((_tl2812928497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2813128490_)))
                                  (_hd2813028494_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2813128490_))))
                              (if (gx#stx-null? _tl2812928497_)
                                  (___kont4543745438_ _hd2813028494_)
                                  (___kont4544945450_))))
                          (___kont4544945450_))
                      (if (gx#stx-pair? _tl2808928701_)
                          (let ((_e2813928440_ (gx#syntax-e _tl2808928701_)))
                            (let ((_tl2813728447_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2813928440_)))
                                  (_hd2813828444_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2813928440_))))
                              (if (gx#stx-null? _tl2813728447_)
                                  (___match4558145582_
                                   _e2809128694_
                                   _hd2809028698_
                                   _tl2808928701_
                                   _e2813928440_
                                   _hd2813828444_
                                   _tl2813728447_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2809628659_ 'struct:))
                                      (if (gx#stx-pair? _tl2813728447_)
                                          (let ((_e2815028397_
                                                 (gx#syntax-e _tl2813728447_)))
                                            (let ((_tl2814828404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2815028397_)))
                                                  (_hd2814928401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2815028397_))))
                                              (if (gx#stx-null? _tl2814828404_)
                                                  (___kont4544145442_
                                                   _hd2814928401_)
                                                  (___kont4544945450_))))
                                          (___kont4544945450_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2809628659_ 'class:))
                                          (if (gx#stx-pair? _tl2813728447_)
                                              (let ((_e2816128340_
                                                     (gx#syntax-e
                                                      _tl2813728447_)))
                                                (let ((_tl2815928347_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2816128340_)))
                                                      (_hd2816028344_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2816128340_))))
                                                  (if (gx#stx-null?
                                                       _tl2815928347_)
                                                      (___kont4544345444_
                                                       _hd2816028344_)
                                                      (___kont4544945450_))))
                                              (___kont4544945450_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2809628659_ 'apply:))
                                              (if (gx#stx-pair? _tl2813728447_)
                                                  (let ((_e2817328281_
                                                         (gx#syntax-e
                                                          _tl2813728447_)))
                                                    (let ((_tl2817128288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2817328281_)))
                                                          (_hd2817228285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2817328281_))))
                                                      (if (gx#stx-null?
                                                           _tl2817128288_)
                                                          (___kont4544545446_
                                                           _hd2817228285_
                                                           _hd2813828444_)
                                                          (___kont4544945450_))))
                                                  (___kont4544945450_))
                                              (___kont4544945450_)))))))
                          (___kont4544945450_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2808928701_)
                                                (let ((_e2813928440_
                                                       (gx#syntax-e
                                                        _tl2808928701_)))
                                                  (let ((_tl2813728447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2813928440_)))
                                                        (_hd2813828444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2813928440_))))
                                                    (if (gx#stx-null?
                                                         _tl2813728447_)
                                                        (___match4558145582_
                                                         _e2809128694_
                                                         _hd2809028698_
                                                         _tl2808928701_
                                                         _e2813928440_
                                                         _hd2813828444_
                                                         _tl2813728447_)
                                                        (___kont4544945450_))))
                                                (___kont4544945450_))))))))
                          (if (gx#stx-pair? ___stx4542445425_)
                              (let ((_e2808228793_
                                     (gx#syntax-e ___stx4542445425_)))
                                (let ((_tl2808028800_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2808228793_)))
                                      (_hd2808128797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2808228793_))))
                                  (if (gx#stx-datum? _hd2808128797_)
                                      (let ((_e2808328803_
                                             (gx#stx-e _hd2808128797_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2808328803_ '?:))
                                            (if (gx#stx-pair? _tl2808028800_)
                                                (let ((_e2808628807_
                                                       (gx#syntax-e
                                                        _tl2808028800_)))
                                                  (let ((_tl2808428814_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2808628807_)))
                                                        (_hd2808528811_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2808628807_))))
                                                    (___kont4542745428_
                                                     _tl2808428814_)))
                                                (___match4547545476_
                                                 _e2808228793_
                                                 _hd2808128797_
                                                 _tl2808028800_))
                                            (___match4547545476_
                                             _e2808228793_
                                             _hd2808128797_
                                             _tl2808028800_)))
                                      (___match4547545476_
                                       _e2808228793_
                                       _hd2808128797_
                                       _tl2808028800_))))
                              (___kont4544945450_)))))))
                 (_loop-vector27776_
                  (lambda (_body27937_ _vars27939_ _K27940_)
                    (let* ((___stx4568245683_ _body27937_)
                           (_g2794327966_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4568245683_))))
                      (let ((___kont4568545686_
                             (lambda (_L28043_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27777_
                                  _L28043_
                                  _vars27939_
                                  _K27940_))))
                            (___kont4568745688_
                             (lambda (_L27997_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_
                                  _L27997_
                                  _vars27939_
                                  _K27940_)))))
                        (if (gx#stx-pair? ___stx4568245683_)
                            (let ((_e2794828019_
                                   (gx#syntax-e ___stx4568245683_)))
                              (let ((_tl2794628026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2794828019_)))
                                    (_hd2794728023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2794828019_))))
                                (if (gx#stx-datum? _hd2794728023_)
                                    (let ((_e2794928029_
                                           (gx#stx-e _hd2794728023_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2794928029_ 'simple:))
                                          (if (gx#stx-pair? _tl2794628026_)
                                              (let ((_e2795228033_
                                                     (gx#syntax-e
                                                      _tl2794628026_)))
                                                (let ((_tl2795028040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2795228033_)))
                                                      (_hd2795128037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2795228033_))))
                                                  (if (gx#stx-null?
                                                       _tl2795028040_)
                                                      (___kont4568545686_
                                                       _hd2795128037_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2794327966_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2794327966_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2794928029_ 'list:))
                                              (if (gx#stx-pair? _tl2794628026_)
                                                  (let ((_e2796027987_
                                                         (gx#syntax-e
                                                          _tl2794628026_)))
                                                    (let ((_tl2795827994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2796027987_)))
                                                          (_hd2795927991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2796027987_))))
                                                      (if (gx#stx-null?
                                                           _tl2795827994_)
                                                          (___kont4568745688_
                                                           _hd2795927991_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2794327966_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2794327966_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2794327966_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2794327966_)))))
                            (let () (declare (not safe)) (_g2794327966_)))))))
                 (_loop-list27777_
                  (lambda (_rest27867_ _vars27869_ _K27870_)
                    (let* ((___stx4573245733_ _rest27867_)
                           (_g2787327885_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4573245733_))))
                      (let ((___kont4573545736_
                             (lambda (_L27913_ _L27915_)
                               (let ((__tmp50216
                                      (lambda (_g2792727929_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27777_
                                           _L27913_
                                           _g2792727929_
                                           _K27870_)))))
                                 (declare (not safe))
                                 (_loop27774_
                                  _L27915_
                                  _vars27869_
                                  __tmp50216))))
                            (___kont4573745738_
                             (lambda () (_K27870_ _vars27869_))))
                        (if (gx#stx-pair? ___stx4573245733_)
                            (let ((_e2787927903_
                                   (gx#syntax-e ___stx4573245733_)))
                              (let ((_tl2787727910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2787927903_)))
                                    (_hd2787827907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2787927903_))))
                                (___kont4573545736_
                                 _tl2787727910_
                                 _hd2787827907_)))
                            (___kont4573745738_))))))
                 (_loop-class-list27778_
                  (lambda (_rest27780_ _vars27782_ _K27783_)
                    (let* ((___stx4574845749_ _rest27780_)
                           (_g2778627801_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4574845749_))))
                      (let ((___kont4575145752_
                             (lambda (_L27839_ _L27841_)
                               (let ((__tmp50217
                                      (lambda (_g2785727859_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27778_
                                           _L27839_
                                           _g2785727859_
                                           _K27783_)))))
                                 (declare (not safe))
                                 (_loop27774_
                                  _L27841_
                                  _vars27782_
                                  __tmp50217))))
                            (___kont4575345754_
                             (lambda () (_K27783_ _vars27782_))))
                        (if (gx#stx-pair? ___stx4574845749_)
                            (let ((_e2779227819_
                                   (gx#syntax-e ___stx4574845749_)))
                              (let ((_tl2779027826_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2779227819_)))
                                    (_hd2779127823_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2779227819_))))
                                (if (gx#stx-pair? _tl2779027826_)
                                    (let ((_e2779527829_
                                           (gx#syntax-e _tl2779027826_)))
                                      (let ((_tl2779327836_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2779527829_)))
                                            (_hd2779427833_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2779527829_))))
                                        (___kont4575145752_
                                         _tl2779327836_
                                         _hd2779427833_)))
                                    (___kont4575345754_))))
                            (___kont4575345754_)))))))
          (let ()
            (declare (not safe))
            (_loop27774_ _ptree27771_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24732_ _tgt24734_ _ptree24735_ _K24736_ _E24737_)
        (letrec ((_generate124739_
                  (lambda (_tgt25984_ _ptree25986_ _K25987_ _E25988_)
                    (let* ((_g2599025998_
                            (lambda (_g2599125994_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2599125994_)))
                           (_g2598927767_
                            (lambda (_g2599126002_)
                              ((lambda (_L26005_)
                                 (let ()
                                   (let* ((___stx4598445985_ _ptree25986_)
                                          (_g2603226174_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4598445985_))))
                                     (let ((___kont4598745988_
                                            (lambda (_L27482_ _L27484_)
                                              (let* ((___stx4590245903_
                                                      _L27482_)
                                                     (_g2750127536_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4590245903_))))
                                                (let ((___kont4590545906_
                                                       (lambda ()
                                                         (let ((__tmp50218
                                                                (let ((__tmp50221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50224 (gx#datum->syntax '#f '?))
                                     (__tmp50222
                                      (let ((__tmp50223
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons _L27484_ __tmp50223))))
                                 (declare (not safe))
                                 (cons __tmp50224 __tmp50222)))
                              (__tmp50219
                               (let ((__tmp50220
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons _K25987_ __tmp50220))))
                          (declare (not safe))
                          (cons __tmp50221 __tmp50219))))
                   (declare (not safe))
                   (cons 'if __tmp50218))))
              (___kont4590745908_
               (lambda (_L27737_)
                 (let ((__tmp50225
                        (let ((__tmp50229
                               (let ((__tmp50232 (gx#datum->syntax '#f '?))
                                     (__tmp50230
                                      (let ((__tmp50231
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons _L27484_ __tmp50231))))
                                 (declare (not safe))
                                 (cons __tmp50232 __tmp50230)))
                              (__tmp50226
                               (let ((__tmp50228
                                      (let ()
                                        (declare (not safe))
                                        (_generate124739_
                                         _tgt25984_
                                         _L27737_
                                         _K25987_
                                         _E25988_)))
                                     (__tmp50227
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50228 __tmp50227))))
                          (declare (not safe))
                          (cons __tmp50229 __tmp50226))))
                   (declare (not safe))
                   (cons 'if __tmp50225))))
              (___kont4590945910_
               (lambda (_L27675_)
                 (let* ((_g2768927697_
                         (lambda (_g2769027693_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2769027693_)))
                        (_g2768827716_
                         (lambda (_g2769027701_)
                           ((lambda (_L27704_)
                              (let ()
                                (let ((__tmp50233
                                       (let ((__tmp50240
                                              (let ((__tmp50241
                                                     (let ((__tmp50242
                                                            (let ((__tmp50243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50244
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons _L27484_ __tmp50244))))
                      (declare (not safe))
                      (cons __tmp50243 '()))))
               (declare (not safe))
               (cons _L27704_ __tmp50242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50241 '())))
                                             (__tmp50234
                                              (let ((__tmp50235
                                                     (let ((__tmp50236
                                                            (let ((__tmp50237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50239
                                  (let ()
                                    (declare (not safe))
                                    (_generate124739_
                                     _L27704_
                                     _L27675_
                                     _K25987_
                                     _E25988_)))
                                 (__tmp50238
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25988_ '()))))
                             (declare (not safe))
                             (cons __tmp50239 __tmp50238))))
                      (declare (not safe))
                      (cons _L27704_ __tmp50237))))
               (declare (not safe))
               (cons 'if __tmp50236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50235 '()))))
                                         (declare (not safe))
                                         (cons __tmp50240 __tmp50234))))
                                  (declare (not safe))
                                  (cons 'let __tmp50233))))
                            _g2769027701_)))
                        (__tmp50245 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2768827716_ __tmp50245))))
              (___kont4591145912_
               (lambda (_L27591_ _L27593_)
                 (let* ((_g2761327621_
                         (lambda (_g2761427617_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2761427617_)))
                        (_g2761227640_
                         (lambda (_g2761427625_)
                           ((lambda (_L27628_)
                              (let ()
                                (let ((__tmp50246
                                       (let ((__tmp50258
                                              (let ((__tmp50261
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp50259
                                                     (let ((__tmp50260
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L26005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27484_ __tmp50260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50261 __tmp50259)))
                                             (__tmp50247
                                              (let ((__tmp50249
                                                     (let ((__tmp50250
                                                            (let ((__tmp50253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50254
                                  (let ((__tmp50255
                                         (let ((__tmp50256
                                                (let ((__tmp50257
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26005_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27593_ __tmp50257))))
                                           (declare (not safe))
                                           (cons __tmp50256 '()))))
                                    (declare (not safe))
                                    (cons _L27628_ __tmp50255))))
                             (declare (not safe))
                             (cons __tmp50254 '())))
                          (__tmp50251
                           (let ((__tmp50252
                                  (let ()
                                    (declare (not safe))
                                    (_generate124739_
                                     _L27628_
                                     _L27591_
                                     _K25987_
                                     _E25988_))))
                             (declare (not safe))
                             (cons __tmp50252 '()))))
                      (declare (not safe))
                      (cons __tmp50253 __tmp50251))))
               (declare (not safe))
               (cons 'let __tmp50250)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50248
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50249 __tmp50248))))
                                         (declare (not safe))
                                         (cons __tmp50258 __tmp50247))))
                                  (declare (not safe))
                                  (cons 'if __tmp50246))))
                            _g2761427625_)))
                        (__tmp50262 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2761227640_ __tmp50262)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2749827748_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4590245903_)
                                                               (let ((_e2750627727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4590245903_)))
                         (let ((_tl2750427734_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2750627727_)))
                               (_hd2750527731_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2750627727_))))
                           (if (gx#stx-null? _tl2750427734_)
                               (___kont4590745908_ _hd2750527731_)
                               (if (gx#stx-datum? _hd2750527731_)
                                   (let ((_e2751127661_
                                          (gx#stx-e _hd2750527731_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2751127661_ '=>:))
                                         (if (gx#stx-pair? _tl2750427734_)
                                             (let ((_e2751427665_
                                                    (gx#syntax-e
                                                     _tl2750427734_)))
                                               (let ((_tl2751227672_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2751427665_)))
                                                     (_hd2751327669_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2751427665_))))
                                                 (if (gx#stx-null?
                                                      _tl2751227672_)
                                                     (___kont4590945910_
                                                      _hd2751327669_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2750127536_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2750127536_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2751127661_ '::))
                                             (if (gx#stx-pair? _tl2750427734_)
                                                 (let ((_e2752327557_
                                                        (gx#syntax-e
                                                         _tl2750427734_)))
                                                   (let ((_tl2752127564_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2752327557_)))
                                                         (_hd2752227561_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2752327557_))))
                                                     (if (gx#stx-pair?
                                                          _tl2752127564_)
                                                         (let ((_e2752627567_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2752127564_)))
                   (let ((_tl2752427574_
                          (let () (declare (not safe)) (##cdr _e2752627567_)))
                         (_hd2752527571_
                          (let () (declare (not safe)) (##car _e2752627567_))))
                     (if (gx#stx-datum? _hd2752527571_)
                         (let ((_e2752727577_ (gx#stx-e _hd2752527571_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2752727577_ '=>:))
                               (if (gx#stx-pair? _tl2752427574_)
                                   (let ((_e2753027581_
                                          (gx#syntax-e _tl2752427574_)))
                                     (let ((_tl2752827588_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2753027581_)))
                                           (_hd2752927585_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2753027581_))))
                                       (if (gx#stx-null? _tl2752827588_)
                                           (___kont4591145912_
                                            _hd2752927585_
                                            _hd2752227561_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2750127536_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2750127536_)))
                               (let () (declare (not safe)) (_g2750127536_))))
                         (let () (declare (not safe)) (_g2750127536_)))))
                 (let () (declare (not safe)) (_g2750127536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2750127536_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2750127536_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2750127536_))))))
                       (let () (declare (not safe)) (_g2750127536_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4590245903_)
                                                        (___kont4590545906_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2749827748_))))))))
                                           (___kont4598945990_
                                            (lambda (_L27379_)
                                              (let* ((___stx4588645887_
                                                      _L27379_)
                                                     (_g2739227404_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4588645887_))))
                                                (let ((___kont4588945890_
                                                       (lambda (_L27432_
                                                                _L27434_)
                                                         (let ((__tmp50263
                                                                (let ((__tmp50264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27432_))))
                          (declare (not safe))
                          (_generate124739_
                           _tgt25984_
                           __tmp50264
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_
                    _tgt25984_
                    _L27434_
                    __tmp50263
                    _E25988_))))
              (___kont4589145892_ (lambda () _K25987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4588645887_)
                                                      (let ((_e2739827422_
                                                             (gx#syntax-e
                                                              ___stx4588645887_)))
                                                        (let ((_tl2739627429_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2739827422_)))
                      (_hd2739727426_
                       (let () (declare (not safe)) (##car _e2739827422_))))
                  (___kont4588945890_ _tl2739627429_ _hd2739727426_)))
              (___kont4589145892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4599145992_
                                            (lambda (_L27286_)
                                              (let* ((___stx4587045871_
                                                      _L27286_)
                                                     (_g2729927311_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4587045871_))))
                                                (let ((___kont4587345874_
                                                       (lambda (_L27339_
                                                                _L27341_)
                                                         (let ((__tmp50265
                                                                (let ((__tmp50266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27339_))))
                          (declare (not safe))
                          (_generate124739_
                           _tgt25984_
                           __tmp50266
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_
                    _tgt25984_
                    _L27341_
                    _K25987_
                    __tmp50265))))
              (___kont4587545876_ (lambda () _E25988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4587045871_)
                                                      (let ((_e2730527329_
                                                             (gx#syntax-e
                                                              ___stx4587045871_)))
                                                        (let ((_tl2730327336_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2730527329_)))
                      (_hd2730427333_
                       (let () (declare (not safe)) (##car _e2730527329_))))
                  (___kont4587345874_ _tl2730327336_ _hd2730427333_)))
              (___kont4587545876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4599345994_
                                            (lambda (_L27251_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124739_
                                                 _tgt25984_
                                                 _L27251_
                                                 _E25988_
                                                 _K25987_))))
                                           (___kont4599545996_
                                            (lambda (_L27133_ _L27135_)
                                              (let* ((_g2715227167_
                                                      (lambda (_g2715327163_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2715327163_)))
                                                     (_g2715127216_
                                                      (lambda (_g2715327171_)
                                                        (if (gx#stx-pair?
                                                             _g2715327171_)
                                                            (let ((_e2715827174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2715327171_)))
                      (let ((_hd2715727178_
                             (let ()
                               (declare (not safe))
                               (##car _e2715827174_)))
                            (_tl2715627181_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2715827174_))))
                        (if (gx#stx-pair? _tl2715627181_)
                            (let ((_e2716127184_ (gx#syntax-e _tl2715627181_)))
                              (let ((_hd2716027188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2716127184_)))
                                    (_tl2715927191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2716127184_))))
                                (if (gx#stx-null? _tl2715927191_)
                                    ((lambda (_L27194_ _L27196_)
                                       (let ()
                                         (let ((__tmp50267
                                                (let ((__tmp50305
                                                       (let ((__tmp50307
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp50306
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L26005_ '()))))
                 (declare (not safe))
                 (cons __tmp50307 __tmp50306)))
              (__tmp50268
               (let ((__tmp50270
                      (let ((_hd-pat27212_ (gx#stx-e _L27135_))
                            (_tl-pat27214_ (gx#stx-e _L27133_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27212_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27214_ '(any:))))
                            _K25987_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27214_ '(any:)))
                                (let ((__tmp50296
                                       (let ((__tmp50299
                                              (let ((__tmp50300
                                                     (let ((__tmp50301
                                                            (let ((__tmp50302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50304 (gx#datum->syntax '#f '##car))
                                 (__tmp50303
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons __tmp50304 __tmp50303))))
                      (declare (not safe))
                      (cons __tmp50302 '()))))
               (declare (not safe))
               (cons _L27196_ __tmp50301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50300 '())))
                                             (__tmp50297
                                              (let ((__tmp50298
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124739_
                                                        _L27196_
                                                        _L27135_
                                                        _K25987_
                                                        _E25988_))))
                                                (declare (not safe))
                                                (cons __tmp50298 '()))))
                                         (declare (not safe))
                                         (cons __tmp50299 __tmp50297))))
                                  (declare (not safe))
                                  (cons 'let __tmp50296))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27212_ '(any:)))
                                    (let ((__tmp50287
                                           (let ((__tmp50290
                                                  (let ((__tmp50291
                                                         (let ((__tmp50292
                                                                (let ((__tmp50293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50295 (gx#datum->syntax '#f '##cdr))
                                     (__tmp50294
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50295 __tmp50294))))
                          (declare (not safe))
                          (cons __tmp50293 '()))))
                   (declare (not safe))
                   (cons _L27194_ __tmp50292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50291 '())))
                                                 (__tmp50288
                                                  (let ((__tmp50289
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124739_
                                                            _L27194_
                                                            _L27133_
                                                            _K25987_
                                                            _E25988_))))
                                                    (declare (not safe))
                                                    (cons __tmp50289 '()))))
                                             (declare (not safe))
                                             (cons __tmp50290 __tmp50288))))
                                      (declare (not safe))
                                      (cons 'let __tmp50287))
                                    (let ((__tmp50271
                                           (let ((__tmp50275
                                                  (let ((__tmp50282
                                                         (let ((__tmp50283
                                                                (let ((__tmp50284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50286 (gx#datum->syntax '#f '##car))
                                     (__tmp50285
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50286 __tmp50285))))
                          (declare (not safe))
                          (cons __tmp50284 '()))))
                   (declare (not safe))
                   (cons _L27196_ __tmp50283)))
                (__tmp50276
                 (let ((__tmp50277
                        (let ((__tmp50278
                               (let ((__tmp50279
                                      (let ((__tmp50281
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp50280
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50281 __tmp50280))))
                                 (declare (not safe))
                                 (cons __tmp50279 '()))))
                          (declare (not safe))
                          (cons _L27194_ __tmp50278))))
                   (declare (not safe))
                   (cons __tmp50277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50282
                                                          __tmp50276)))
                                                 (__tmp50272
                                                  (let ((__tmp50273
                                                         (let ((__tmp50274
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124739_
                           _L27194_
                           _L27133_
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_ _L27196_ _L27135_ __tmp50274 _E25988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50273 '()))))
                                             (declare (not safe))
                                             (cons __tmp50275 __tmp50272))))
                                      (declare (not safe))
                                      (cons 'let __tmp50271)))))))
                     (__tmp50269
                      (let () (declare (not safe)) (cons _E25988_ '()))))
                 (declare (not safe))
                 (cons __tmp50270 __tmp50269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50305
                                                        __tmp50268))))
                                           (declare (not safe))
                                           (cons 'if __tmp50267))))
                                     _hd2716027188_
                                     _hd2715727178_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2715227167_ _g2715327171_)))))
                            (let ()
                              (declare (not safe))
                              (_g2715227167_ _g2715327171_)))))
                    (let ()
                      (declare (not safe))
                      (_g2715227167_ _g2715327171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50308
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2715127216_ __tmp50308))))
                                           (___kont4599745998_
                                            (lambda ()
                                              (let ((__tmp50309
                                                     (let ((__tmp50312
                                                            (let ((__tmp50314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp50313
                           (let () (declare (not safe)) (cons _L26005_ '()))))
                      (declare (not safe))
                      (cons __tmp50314 __tmp50313)))
                   (__tmp50310
                    (let ((__tmp50311
                           (let () (declare (not safe)) (cons _E25988_ '()))))
                      (declare (not safe))
                      (cons _K25987_ __tmp50311))))
               (declare (not safe))
               (cons __tmp50312 __tmp50310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp50309))))
                                           (___kont4599946000_
                                            (lambda (_L27049_ _L27051_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24741_
                                                 _tgt25984_
                                                 _L27051_
                                                 _L27049_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4600146002_
                                            (lambda (_L26963_)
                                              (let* ((_g2697726985_
                                                      (lambda (_g2697826981_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2697826981_)))
                                                     (_g2697627004_
                                                      (lambda (_g2697826989_)
                                                        ((lambda (_L26992_)
                                                           (let ()
                                                             (let ((__tmp50315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50328
                                   (let ((__tmp50330
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp50329
                                          (let ()
                                            (declare (not safe))
                                            (cons _L26005_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50330 __tmp50329)))
                                  (__tmp50316
                                   (let ((__tmp50318
                                          (let ((__tmp50319
                                                 (let ((__tmp50322
                                                        (let ((__tmp50323
                                                               (let ((__tmp50324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50325
                                     (let ((__tmp50327
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp50326
                                            (let ()
                                              (declare (not safe))
                                              (cons _L26005_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50327 __tmp50326))))
                                (declare (not safe))
                                (cons __tmp50325 '()))))
                         (declare (not safe))
                         (cons _L26992_ __tmp50324))))
                  (declare (not safe))
                  (cons __tmp50323 '())))
               (__tmp50320
                (let ((__tmp50321
                       (let ()
                         (declare (not safe))
                         (_generate124739_
                          _L26992_
                          _L26963_
                          _K25987_
                          _E25988_))))
                  (declare (not safe))
                  (cons __tmp50321 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50322
                                                         __tmp50320))))
                                            (declare (not safe))
                                            (cons 'let __tmp50319)))
                                         (__tmp50317
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25988_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50318 __tmp50317))))
                              (declare (not safe))
                              (cons __tmp50328 __tmp50316))))
                       (declare (not safe))
                       (cons 'if __tmp50315))))
                 _g2697826989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50331
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2697627004_ __tmp50331))))
                                           (___kont4600346004_
                                            (lambda (_L26768_)
                                              (let* ((___stx4582045821_
                                                      _L26768_)
                                                     (_g2678326806_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4582045821_))))
                                                (let ((___kont4582345824_
                                                       (lambda (_L26883_)
                                                         (let* ((_g2689726905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2689826901_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2689826901_)))
                        (_g2689626924_
                         (lambda (_g2689826909_)
                           ((lambda (_L26912_)
                              (let ()
                                (let ((__tmp50332
                                       (let ((__tmp50336
                                              (let ((__tmp50342
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp50337
                                                     (let ((__tmp50339
                                                            (let ((__tmp50341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp50340
                           (let () (declare (not safe)) (cons _L26005_ '()))))
                      (declare (not safe))
                      (cons __tmp50341 __tmp50340)))
                   (__tmp50338
                    (let () (declare (not safe)) (cons _L26912_ '()))))
               (declare (not safe))
               (cons __tmp50339 __tmp50338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50342 __tmp50337)))
                                             (__tmp50333
                                              (let ((__tmp50335
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24742_
                                                        _tgt25984_
                                                        _L26883_
                                                        '0
                                                        _K25987_
                                                        _E25988_)))
                                                    (__tmp50334
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50335 __tmp50334))))
                                         (declare (not safe))
                                         (cons __tmp50336 __tmp50333))))
                                  (declare (not safe))
                                  (cons 'if __tmp50332))))
                            _g2689826909_)))
                        (__tmp50343 (gx#stx-length _L26883_)))
                   (declare (not safe))
                   (_g2689626924_ __tmp50343))))
              (___kont4582545826_
               (lambda (_L26837_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24743_
                    _tgt25984_
                    _L26837_
                    'values->list
                    _K25987_
                    _E25988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4582045821_)
                                                      (let ((_e2678826859_
                                                             (gx#syntax-e
                                                              ___stx4582045821_)))
                                                        (let ((_tl2678626866_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2678826859_)))
                      (_hd2678726863_
                       (let () (declare (not safe)) (##car _e2678826859_))))
                  (if (gx#stx-datum? _hd2678726863_)
                      (let ((_e2678926869_ (gx#stx-e _hd2678726863_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2678926869_ 'simple:))
                            (if (gx#stx-pair? _tl2678626866_)
                                (let ((_e2679226873_
                                       (gx#syntax-e _tl2678626866_)))
                                  (let ((_tl2679026880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2679226873_)))
                                        (_hd2679126877_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2679226873_))))
                                    (if (gx#stx-null? _tl2679026880_)
                                        (___kont4582345824_ _hd2679126877_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2678326806_)))))
                                (let () (declare (not safe)) (_g2678326806_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2678926869_ 'list:))
                                (if (gx#stx-pair? _tl2678626866_)
                                    (let ((_e2680026827_
                                           (gx#syntax-e _tl2678626866_)))
                                      (let ((_tl2679826834_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2680026827_)))
                                            (_hd2679926831_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2680026827_))))
                                        (if (gx#stx-null? _tl2679826834_)
                                            (___kont4582545826_ _hd2679926831_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2678326806_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2678326806_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2678326806_)))))
                      (let () (declare (not safe)) (_g2678326806_)))))
              (let () (declare (not safe)) (_g2678326806_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4600546006_
                                            (lambda (_L26573_)
                                              (let* ((___stx4577045771_
                                                      _L26573_)
                                                     (_g2658826611_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4577045771_))))
                                                (let ((___kont4577345774_
                                                       (lambda (_L26688_)
                                                         (let* ((_g2670226710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2670326706_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2670326706_)))
                        (_g2670126729_
                         (lambda (_g2670326714_)
                           ((lambda (_L26717_)
                              (let ()
                                (let ((__tmp50344
                                       (let ((__tmp50359
                                              (let ((__tmp50361
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp50360
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L26005_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50361 __tmp50360)))
                                             (__tmp50345
                                              (let ((__tmp50347
                                                     (let ((__tmp50348
                                                            (let ((__tmp50352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50358 (gx#datum->syntax '#f '##fx=))
                                 (__tmp50353
                                  (let ((__tmp50355
                                         (let ((__tmp50357
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp50356
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L26005_ '()))))
                                           (declare (not safe))
                                           (cons __tmp50357 __tmp50356)))
                                        (__tmp50354
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26717_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50355 __tmp50354))))
                             (declare (not safe))
                             (cons __tmp50358 __tmp50353)))
                          (__tmp50349
                           (let ((__tmp50351
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24742_
                                     _tgt25984_
                                     _L26688_
                                     '0
                                     _K25987_
                                     _E25988_)))
                                 (__tmp50350
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25988_ '()))))
                             (declare (not safe))
                             (cons __tmp50351 __tmp50350))))
                      (declare (not safe))
                      (cons __tmp50352 __tmp50349))))
               (declare (not safe))
               (cons 'if __tmp50348)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50346
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50347 __tmp50346))))
                                         (declare (not safe))
                                         (cons __tmp50359 __tmp50345))))
                                  (declare (not safe))
                                  (cons 'if __tmp50344))))
                            _g2670326714_)))
                        (__tmp50362 (gx#stx-length _L26688_)))
                   (declare (not safe))
                   (_g2670126729_ __tmp50362))))
              (___kont4577545776_
               (lambda (_L26642_)
                 (let ((__tmp50363
                        (let ((__tmp50367
                               (let ((__tmp50369
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp50368
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50369 __tmp50368)))
                              (__tmp50364
                               (let ((__tmp50366
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24743_
                                         _tgt25984_
                                         _L26642_
                                         'vector->list
                                         _K25987_
                                         _E25988_)))
                                     (__tmp50365
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50366 __tmp50365))))
                          (declare (not safe))
                          (cons __tmp50367 __tmp50364))))
                   (declare (not safe))
                   (cons 'if __tmp50363)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4577045771_)
                                                      (let ((_e2659326664_
                                                             (gx#syntax-e
                                                              ___stx4577045771_)))
                                                        (let ((_tl2659126671_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2659326664_)))
                      (_hd2659226668_
                       (let () (declare (not safe)) (##car _e2659326664_))))
                  (if (gx#stx-datum? _hd2659226668_)
                      (let ((_e2659426674_ (gx#stx-e _hd2659226668_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2659426674_ 'simple:))
                            (if (gx#stx-pair? _tl2659126671_)
                                (let ((_e2659726678_
                                       (gx#syntax-e _tl2659126671_)))
                                  (let ((_tl2659526685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2659726678_)))
                                        (_hd2659626682_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2659726678_))))
                                    (if (gx#stx-null? _tl2659526685_)
                                        (___kont4577345774_ _hd2659626682_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2658826611_)))))
                                (let () (declare (not safe)) (_g2658826611_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2659426674_ 'list:))
                                (if (gx#stx-pair? _tl2659126671_)
                                    (let ((_e2660526632_
                                           (gx#syntax-e _tl2659126671_)))
                                      (let ((_tl2660326639_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2660526632_)))
                                            (_hd2660426636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2660526632_))))
                                        (if (gx#stx-null? _tl2660326639_)
                                            (___kont4577545776_ _hd2660426636_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2658826611_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2658826611_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2658826611_)))))
                      (let () (declare (not safe)) (_g2658826611_)))))
              (let () (declare (not safe)) (_g2658826611_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4600746008_
                                            (lambda (_L26524_ _L26526_)
                                              (let ((__tmp50370
                                                     (gx#stx-e _L26526_)))
                                                (declare (not safe))
                                                (_generate-struct24744_
                                                 __tmp50370
                                                 _tgt25984_
                                                 _L26524_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4600946010_
                                            (lambda (_L26465_ _L26467_)
                                              (let ((__tmp50371
                                                     (gx#stx-e _L26467_)))
                                                (declare (not safe))
                                                (_generate-class24747_
                                                 __tmp50371
                                                 _tgt25984_
                                                 _L26465_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4601146012_
                                            (lambda (_L26368_)
                                              (let* ((_g2638226390_
                                                      (lambda (_g2638326386_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2638326386_)))
                                                     (_g2638126409_
                                                      (lambda (_g2638326394_)
                                                        ((lambda (_L26397_)
                                                           (let ()
                                                             (let ((__tmp50372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50375
                                   (let ((__tmp50376
                                          (let ((__tmp50377
                                                 (let ((__tmp50378
                                                        (let ((__tmp50380
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp50379
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26368_ '()))))
                  (declare (not safe))
                  (cons __tmp50380 __tmp50379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50378 '()))))
                                            (declare (not safe))
                                            (cons _L26005_ __tmp50377))))
                                     (declare (not safe))
                                     (cons _L26397_ __tmp50376)))
                                  (__tmp50373
                                   (let ((__tmp50374
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25988_ '()))))
                                     (declare (not safe))
                                     (cons _K25987_ __tmp50374))))
                              (declare (not safe))
                              (cons __tmp50375 __tmp50373))))
                       (declare (not safe))
                       (cons 'if __tmp50372))))
                 _g2638326394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50381
                                                      (let ((_e26413_
                                                             (gx#stx-e
                                                              _L26368_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26413_))
                        (keyword? _e26413_)
                        (let () (declare (not safe)) (immediate? _e26413_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26413_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2638126409_ __tmp50381))))
                                           (___kont4601346014_
                                            (lambda (_L26288_ _L26290_)
                                              (let* ((_g2630626314_
                                                      (lambda (_g2630726310_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2630726310_)))
                                                     (_g2630526333_
                                                      (lambda (_g2630726318_)
                                                        ((lambda (_L26321_)
                                                           (let ()
                                                             (let ((__tmp50382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50385
                                   (let ((__tmp50386
                                          (let ((__tmp50387
                                                 (let ((__tmp50388
                                                        (let ((__tmp50389
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26005_ '()))))
                  (declare (not safe))
                  (cons _L26290_ __tmp50389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50388 '()))))
                                            (declare (not safe))
                                            (cons _L26321_ __tmp50387))))
                                     (declare (not safe))
                                     (cons __tmp50386 '())))
                                  (__tmp50383
                                   (let ((__tmp50384
                                          (let ()
                                            (declare (not safe))
                                            (_generate124739_
                                             _L26321_
                                             _L26288_
                                             _K25987_
                                             _E25988_))))
                                     (declare (not safe))
                                     (cons __tmp50384 '()))))
                              (declare (not safe))
                              (cons __tmp50385 __tmp50383))))
                       (declare (not safe))
                       (cons 'let __tmp50382))))
                 _g2630726318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50390
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2630526333_ __tmp50390))))
                                           (___kont4601546016_
                                            (lambda (_L26230_)
                                              (let ((__tmp50391
                                                     (let ((__tmp50393
                                                            (let ((__tmp50394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50395
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons _L26230_ __tmp50395))))
                      (declare (not safe))
                      (cons __tmp50394 '())))
                   (__tmp50392
                    (let () (declare (not safe)) (cons _K25987_ '()))))
               (declare (not safe))
               (cons __tmp50393 __tmp50392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp50391))))
                                           (___kont4601746018_
                                            (lambda () _K25987_)))
                                       (if (gx#stx-pair? ___stx4598445985_)
                                           (let ((_e2603827458_
                                                  (gx#syntax-e
                                                   ___stx4598445985_)))
                                             (let ((_tl2603627465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2603827458_)))
                                                   (_hd2603727462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2603827458_))))
                                               (if (gx#stx-datum?
                                                    _hd2603727462_)
                                                   (let ((_e2603927468_
                                                          (gx#stx-e
                                                           _hd2603727462_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2603927468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2603627465_)
                     (let ((_e2604227472_ (gx#syntax-e _tl2603627465_)))
                       (let ((_tl2604027479_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2604227472_)))
                             (_hd2604127476_
                              (let ()
                                (declare (not safe))
                                (##car _e2604227472_))))
                         (___kont4598745988_ _tl2604027479_ _hd2604127476_)))
                     (let () (declare (not safe)) (_g2603226174_)))
                 (if (let () (declare (not safe)) (equal? _e2603927468_ 'and:))
                     (___kont4598945990_ _tl2603627465_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2603927468_ 'or:))
                         (___kont4599145992_ _tl2603627465_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2603927468_ 'not:))
                             (if (gx#stx-pair? _tl2603627465_)
                                 (let ((_e2606027241_
                                        (gx#syntax-e _tl2603627465_)))
                                   (let ((_tl2605827248_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2606027241_)))
                                         (_hd2605927245_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2606027241_))))
                                     (if (gx#stx-null? _tl2605827248_)
                                         (___kont4599345994_ _hd2605927245_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2603226174_)))))
                                 (let () (declare (not safe)) (_g2603226174_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2603927468_ 'cons:))
                                 (if (gx#stx-pair? _tl2603627465_)
                                     (let ((_e2606927113_
                                            (gx#syntax-e _tl2603627465_)))
                                       (let ((_tl2606727120_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2606927113_)))
                                             (_hd2606827117_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2606927113_))))
                                         (if (gx#stx-pair? _tl2606727120_)
                                             (let ((_e2607227123_
                                                    (gx#syntax-e
                                                     _tl2606727120_)))
                                               (let ((_tl2607027130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2607227123_)))
                                                     (_hd2607127127_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2607227123_))))
                                                 (if (gx#stx-null?
                                                      _tl2607027130_)
                                                     (___kont4599545996_
                                                      _hd2607127127_
                                                      _hd2606827117_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2603226174_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2603226174_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2603226174_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2603927468_ 'null:))
                                     (if (gx#stx-null? _tl2603627465_)
                                         (___kont4599745998_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2603226174_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2603927468_ 'splice:))
                                         (if (gx#stx-pair? _tl2603627465_)
                                             (let ((_e2608527029_
                                                    (gx#syntax-e
                                                     _tl2603627465_)))
                                               (let ((_tl2608327036_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2608527029_)))
                                                     (_hd2608427033_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2608527029_))))
                                                 (if (gx#stx-pair?
                                                      _tl2608327036_)
                                                     (let ((_e2608827039_
                                                            (gx#syntax-e
                                                             _tl2608327036_)))
                                                       (let ((_tl2608627046_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2608827039_)))
                     (_hd2608727043_
                      (let () (declare (not safe)) (##car _e2608827039_))))
                 (if (gx#stx-null? _tl2608627046_)
                     (___kont4599946000_ _hd2608727043_ _hd2608427033_)
                     (let () (declare (not safe)) (_g2603226174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2603226174_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2603226174_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2603927468_ 'box:))
                                             (if (gx#stx-pair? _tl2603627465_)
                                                 (let ((_e2609626953_
                                                        (gx#syntax-e
                                                         _tl2603627465_)))
                                                   (let ((_tl2609426960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2609626953_)))
                                                         (_hd2609526957_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2609626953_))))
                                                     (if (gx#stx-null?
                                                          _tl2609426960_)
                                                         (___kont4600146002_
                                                          _hd2609526957_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2603226174_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2603226174_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2603927468_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2603627465_)
                                                     (let ((_e2610426758_
                                                            (gx#syntax-e
                                                             _tl2603627465_)))
                                                       (let ((_tl2610226765_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2610426758_)))
                     (_hd2610326762_
                      (let () (declare (not safe)) (##car _e2610426758_))))
                 (if (gx#stx-null? _tl2610226765_)
                     (___kont4600346004_ _hd2610326762_)
                     (let () (declare (not safe)) (_g2603226174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2603226174_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2603927468_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2603627465_)
                                                         (let ((_e2611226563_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2603627465_)))
                   (let ((_tl2611026570_
                          (let () (declare (not safe)) (##cdr _e2611226563_)))
                         (_hd2611126567_
                          (let () (declare (not safe)) (##car _e2611226563_))))
                     (if (gx#stx-null? _tl2611026570_)
                         (___kont4600546006_ _hd2611126567_)
                         (let () (declare (not safe)) (_g2603226174_)))))
                 (let () (declare (not safe)) (_g2603226174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2603927468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2603627465_)
                     (let ((_e2612126504_ (gx#syntax-e _tl2603627465_)))
                       (let ((_tl2611926511_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2612126504_)))
                             (_hd2612026508_
                              (let ()
                                (declare (not safe))
                                (##car _e2612126504_))))
                         (if (gx#stx-pair? _tl2611926511_)
                             (let ((_e2612426514_
                                    (gx#syntax-e _tl2611926511_)))
                               (let ((_tl2612226521_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2612426514_)))
                                     (_hd2612326518_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2612426514_))))
                                 (if (gx#stx-null? _tl2612226521_)
                                     (___kont4600746008_
                                      _hd2612326518_
                                      _hd2612026508_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2603226174_)))))
                             (let () (declare (not safe)) (_g2603226174_)))))
                     (let () (declare (not safe)) (_g2603226174_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2603927468_ 'class:))
                     (if (gx#stx-pair? _tl2603627465_)
                         (let ((_e2613326445_ (gx#syntax-e _tl2603627465_)))
                           (let ((_tl2613126452_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2613326445_)))
                                 (_hd2613226449_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2613326445_))))
                             (if (gx#stx-pair? _tl2613126452_)
                                 (let ((_e2613626455_
                                        (gx#syntax-e _tl2613126452_)))
                                   (let ((_tl2613426462_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2613626455_)))
                                         (_hd2613526459_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2613626455_))))
                                     (if (gx#stx-null? _tl2613426462_)
                                         (___kont4600946010_
                                          _hd2613526459_
                                          _hd2613226449_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2603226174_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2603226174_)))))
                         (let () (declare (not safe)) (_g2603226174_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2603927468_ 'datum:))
                         (if (gx#stx-pair? _tl2603627465_)
                             (let ((_e2614426358_
                                    (gx#syntax-e _tl2603627465_)))
                               (let ((_tl2614226365_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2614426358_)))
                                     (_hd2614326362_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2614426358_))))
                                 (if (gx#stx-null? _tl2614226365_)
                                     (___kont4601146012_ _hd2614326362_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2603226174_)))))
                             (let () (declare (not safe)) (_g2603226174_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2603927468_ 'apply:))
                             (if (gx#stx-pair? _tl2603627465_)
                                 (let ((_e2615326268_
                                        (gx#syntax-e _tl2603627465_)))
                                   (let ((_tl2615126275_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2615326268_)))
                                         (_hd2615226272_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2615326268_))))
                                     (if (gx#stx-pair? _tl2615126275_)
                                         (let ((_e2615626278_
                                                (gx#syntax-e _tl2615126275_)))
                                           (let ((_tl2615426285_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2615626278_)))
                                                 (_hd2615526282_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2615626278_))))
                                             (if (gx#stx-null? _tl2615426285_)
                                                 (___kont4601346014_
                                                  _hd2615526282_
                                                  _hd2615226272_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2603226174_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2603226174_)))))
                                 (let () (declare (not safe)) (_g2603226174_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2603927468_ 'var:))
                                 (if (gx#stx-pair? _tl2603627465_)
                                     (let ((_e2616426220_
                                            (gx#syntax-e _tl2603627465_)))
                                       (let ((_tl2616226227_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2616426220_)))
                                             (_hd2616326224_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2616426220_))))
                                         (if (gx#stx-null? _tl2616226227_)
                                             (___kont4601546016_
                                              _hd2616326224_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2603226174_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2603226174_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2603927468_ 'any:))
                                     (if (gx#stx-null? _tl2603627465_)
                                         (___kont4601746018_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2603226174_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2603226174_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2603226174_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2603226174_)))))))
                               _g2599126002_))))
                      (declare (not safe))
                      (_g2598927767_ _tgt25984_))))
                 (_generate-splice24741_
                  (lambda (_tgt25356_ _hd25358_ _rest25359_ _K25360_ _E25361_)
                    (let* ((_g2536325380_
                            (lambda (_g2536425376_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2536425376_)))
                           (_g2536225980_
                            (lambda (_g2536425384_)
                              (if (gx#stx-pair/null? _g2536425384_)
                                  (let ((_g50396_
                                         (gx#syntax-split-splice
                                          _g2536425384_
                                          '0)))
                                    (begin
                                      (let ((_g50397_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g50396_)
                                                   (##vector-length _g50396_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g50397_ 2)))
                                            (error "Context expects 2 values"
                                                   _g50397_)))
                                      (let ((_target2536625387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50396_ 0)))
                                            (_tl2536825390_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50396_ 1))))
                                        (if (gx#stx-null? _tl2536825390_)
                                            (letrec ((_loop2536925393_
                                                      (lambda (_hd2536725397_
                                                               _var2537325400_)
                                                        (if (gx#stx-pair?
                                                             _hd2536725397_)
                                                            (let ((_e2537025403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2536725397_)))
                      (let ((_lp-hd2537125407_
                             (let ()
                               (declare (not safe))
                               (##car _e2537025403_)))
                            (_lp-tl2537225410_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2537025403_))))
                        (let ((__tmp50488
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2537125407_ _var2537325400_))))
                          (declare (not safe))
                          (_loop2536925393_ _lp-tl2537225410_ __tmp50488))))
                    (let ((_var2537425413_ (reverse _var2537325400_)))
                      ((lambda (_L25417_)
                         (let ()
                           (let* ((_g2543325450_
                                   (lambda (_g2543425446_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2543425446_)))
                                  (_g2543225968_
                                   (lambda (_g2543425454_)
                                     (if (gx#stx-pair/null? _g2543425454_)
                                         (let ((_g50398_
                                                (gx#syntax-split-splice
                                                 _g2543425454_
                                                 '0)))
                                           (begin
                                             (let ((_g50399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g50398_)
                                                          (##vector-length
                                                           _g50398_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g50399_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g50399_)))
                                             (let ((_target2543625457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50398_
                                                       0)))
                                                   (_tl2543825460_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50398_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2543825460_)
                                                   (letrec ((_loop2543925463_
                                                             (lambda (_hd2543725467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2544325470_)
                       (if (gx#stx-pair? _hd2543725467_)
                           (let ((_e2544025473_ (gx#syntax-e _hd2543725467_)))
                             (let ((_lp-hd2544125477_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2544025473_)))
                                   (_lp-tl2544225480_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2544025473_))))
                               (let ((__tmp50485
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2544125477_
                                              _var-r2544325470_))))
                                 (declare (not safe))
                                 (_loop2543925463_
                                  _lp-tl2544225480_
                                  __tmp50485))))
                           (let ((_var-r2544425483_
                                  (reverse _var-r2544325470_)))
                             ((lambda (_L25487_)
                                (let ()
                                  (let* ((_g2550425521_
                                          (lambda (_g2550525517_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2550525517_)))
                                         (_g2550325956_
                                          (lambda (_g2550525525_)
                                            (if (gx#stx-pair/null?
                                                 _g2550525525_)
                                                (let ((_g50400_
                                                       (gx#syntax-split-splice
                                                        _g2550525525_
                                                        '0)))
                                                  (begin
                                                    (let ((_g50401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50400_)
                         (##vector-length _g50400_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g50401_ 2)))
                  (error "Context expects 2 values" _g50401_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2550725528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50400_
                                                              0)))
                                                          (_tl2550925531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50400_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2550925531_)
                                                          (letrec ((_loop2551025534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2550825538_ _init2551425541_)
                              (if (gx#stx-pair? _hd2550825538_)
                                  (let ((_e2551125544_
                                         (gx#syntax-e _hd2550825538_)))
                                    (let ((_lp-hd2551225548_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2551125544_)))
                                          (_lp-tl2551325551_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2551125544_))))
                                      (let ((__tmp50481
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2551225548_
                                                     _init2551425541_))))
                                        (declare (not safe))
                                        (_loop2551025534_
                                         _lp-tl2551325551_
                                         __tmp50481))))
                                  (let ((_init2551525554_
                                         (reverse _init2551425541_)))
                                    ((lambda (_L25558_)
                                       (let ()
                                         (let* ((_g2557525583_
                                                 (lambda (_g2557625579_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2557625579_)))
                                                (_g2557425952_
                                                 (lambda (_g2557625587_)
                                                   ((lambda (_L25590_)
                                                      (let ()
                                                        (let* ((_g2560325611_
                                                                (lambda (_g2560425607_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2560425607_)))
                       (_g2560225948_
                        (lambda (_g2560425615_)
                          ((lambda (_L25618_)
                             (let ()
                               (let* ((_g2563125639_
                                       (lambda (_g2563225635_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2563225635_)))
                                      (_g2563025944_
                                       (lambda (_g2563225643_)
                                         ((lambda (_L25646_)
                                            (let ()
                                              (let* ((_g2565925667_
                                                      (lambda (_g2566025663_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2566025663_)))
                                                     (_g2565825940_
                                                      (lambda (_g2566025671_)
                                                        ((lambda (_L25674_)
                                                           (let ()
                                                             (let* ((_g2568725695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2568825691_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2568825691_)))
                            (_g2568625936_
                             (lambda (_g2568825699_)
                               ((lambda (_L25702_)
                                  (let ()
                                    (let* ((_g2571525723_
                                            (lambda (_g2571625719_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2571625719_)))
                                           (_g2571425932_
                                            (lambda (_g2571625727_)
                                              ((lambda (_L25730_)
                                                 (let ()
                                                   (let* ((_g2574325751_
                                                           (lambda (_g2574425747_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2574425747_)))
                                                          (_g2574225928_
                                                           (lambda (_g2574425755_)
                                                             ((lambda (_L25758_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2577125779_
                                  (lambda (_g2577225775_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2577225775_)))
                                 (_g2577025913_
                                  (lambda (_g2577225783_)
                                    ((lambda (_L25786_)
                                       (let ()
                                         (let* ((_g2579925807_
                                                 (lambda (_g2580025803_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2580025803_)))
                                                (_g2579825901_
                                                 (lambda (_g2580025811_)
                                                   ((lambda (_L25814_)
                                                      (let ()
                                                        (let* ((_g2582725835_
                                                                (lambda (_g2582825831_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2582825831_)))
                       (_g2582625897_
                        (lambda (_g2582825839_)
                          ((lambda (_L25842_)
                             (let ()
                               (let ()
                                 (let ((__tmp50455
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp50402
                                        (let ((__tmp50408
                                               (let ((__tmp50446
                                                      (let ((__tmp50447
                                                             (let ((__tmp50448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50454 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50449
                                   (let ((__tmp50451
                                          (let ((__tmp50452
                                                 (let ((__tmp50453
                                                        (lambda (_g2586425867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2586525870_)
                  (let ()
                    (declare (not safe))
                    (cons _g2586425867_ _g2586525870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp50453
                                                           '()
                                                           _L25417_))))
                                            (declare (not safe))
                                            (cons _L25730_ __tmp50452)))
                                         (__tmp50450
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25758_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50451 __tmp50450))))
                              (declare (not safe))
                              (cons __tmp50454 __tmp50449))))
                       (declare (not safe))
                       (cons __tmp50448 '()))))
                (declare (not safe))
                (cons _L25618_ __tmp50447)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50409
                                                      (let ((__tmp50436
                                                             (let ((__tmp50437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50438
                                   (let ((__tmp50445
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp50439
                                          (let ((__tmp50441
                                                 (let ((__tmp50442
                                                        (let ((__tmp50443
                                                               (let ((__tmp50444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2586225873_ _g2586325876_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2586225873_ _g2586325876_)))))
                         (declare (not safe))
                         (foldr1 __tmp50444 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25702_ __tmp50442)))
                                                (__tmp50440
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25842_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50441 __tmp50440))))
                                     (declare (not safe))
                                     (cons __tmp50445 __tmp50439))))
                              (declare (not safe))
                              (cons __tmp50438 '()))))
                       (declare (not safe))
                       (cons _L25674_ __tmp50437)))
                    (__tmp50410
                     (let ((__tmp50411
                            (let ((__tmp50412
                                   (let ((__tmp50413
                                          (let ((__tmp50435
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50414
                                                 (let ((__tmp50432
                                                        (let ((__tmp50433
                                                               (let ((__tmp50434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2586025879_ _g2586125882_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2586025879_ _g2586125882_)))))
                         (declare (not safe))
                         (foldr1 __tmp50434 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50433)))
               (__tmp50415
                (let ((__tmp50416
                       (let ((__tmp50431 (gx#datum->syntax '#f 'if))
                             (__tmp50417
                              (let ((__tmp50428
                                     (let ((__tmp50430
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp50429
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25730_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50430 __tmp50429)))
                                    (__tmp50418
                                     (let ((__tmp50420
                                            (let ((__tmp50421
                                                   (let ((__tmp50425
                                                          (let ((__tmp50427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp50426
                         (let () (declare (not safe)) (cons _L25730_ '()))))
                    (declare (not safe))
                    (cons __tmp50427 __tmp50426)))
                 (__tmp50422
                  (let ((__tmp50423
                         (let ((__tmp50424
                                (lambda (_g2585825885_ _g2585925888_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2585825885_ _g2585925888_)))))
                           (declare (not safe))
                           (foldr1 __tmp50424 '() _L25487_))))
                    (declare (not safe))
                    (cons _L25730_ __tmp50423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50425
                                                           __tmp50422))))
                                              (declare (not safe))
                                              (cons _L25674_ __tmp50421)))
                                           (__tmp50419
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25814_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50420 __tmp50419))))
                                (declare (not safe))
                                (cons __tmp50428 __tmp50418))))
                         (declare (not safe))
                         (cons __tmp50431 __tmp50417))))
                  (declare (not safe))
                  (cons __tmp50416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50432
                                                         __tmp50415))))
                                            (declare (not safe))
                                            (cons __tmp50435 __tmp50414))))
                                     (declare (not safe))
                                     (cons __tmp50413 '()))))
                              (declare (not safe))
                              (cons _L25646_ __tmp50412))))
                       (declare (not safe))
                       (cons __tmp50411 '()))))
                (declare (not safe))
                (cons __tmp50436 __tmp50410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50446 __tmp50409)))
                                              (__tmp50403
                                               (let ((__tmp50404
                                                      (let ((__tmp50405
                                                             (let ((__tmp50406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50407
                                   (lambda (_g2585625891_ _g2585725894_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2585625891_ _g2585725894_)))))
                              (declare (not safe))
                              (foldr1 __tmp50407 '() _L25558_))))
                       (declare (not safe))
                       (cons _L25590_ __tmp50406))))
                (declare (not safe))
                (cons _L25646_ __tmp50405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50404 '()))))
                                          (declare (not safe))
                                          (cons __tmp50408 __tmp50403))))
                                   (declare (not safe))
                                   (cons __tmp50455 __tmp50402)))))
                           _g2582825839_)))
                       (__tmp50456
                        (let ()
                          (declare (not safe))
                          (_generate124739_
                           _L25702_
                           _hd25358_
                           _L25786_
                           _L25814_))))
                  (declare (not safe))
                  (_g2582625897_ __tmp50456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2580025811_)))
                                                (__tmp50457
                                                 (let ((__tmp50458
                                                        (let ((__tmp50459
                                                               (let ((__tmp50460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2590425907_ _g2590525910_)
                                (let ((__tmp50461
                                       (let ((__tmp50463
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp50462
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2590425907_ '()))))
                                         (declare (not safe))
                                         (cons __tmp50463 __tmp50462))))
                                  (declare (not safe))
                                  (cons __tmp50461 _g2590525910_)))))
                         (declare (not safe))
                         (foldr1 __tmp50460 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25618_
                                                         __tmp50458))))
                                           (declare (not safe))
                                           (_g2579825901_ __tmp50457))))
                                     _g2577225783_)))
                                 (__tmp50464
                                  (let ((__tmp50465
                                         (let ((__tmp50472
                                                (let ((__tmp50474
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp50473
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25730_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp50474
                                                        __tmp50473)))
                                               (__tmp50466
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25487_
                                                   _L25417_)
                                                  (let ((__tmp50467
                                                         (lambda (_g2591625920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2591725923_
                          _g2591825925_)
                   (let ((__tmp50468
                          (let ((__tmp50471 (gx#datum->syntax '#f 'cons))
                                (__tmp50469
                                 (let ((__tmp50470
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2591625920_ '()))))
                                   (declare (not safe))
                                   (cons _g2591725923_ __tmp50470))))
                            (declare (not safe))
                            (cons __tmp50471 __tmp50469))))
                     (declare (not safe))
                     (cons __tmp50468 _g2591825925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp50467
                                                            '()
                                                            _L25487_
                                                            _L25417_)))))
                                           (declare (not safe))
                                           (cons __tmp50472 __tmp50466))))
                                    (declare (not safe))
                                    (cons _L25646_ __tmp50465))))
                            (declare (not safe))
                            (_g2577025913_ __tmp50464))))
                      _g2574425755_)))
                  (__tmp50475
                   (let ()
                     (declare (not safe))
                     (_generate124739_
                      _L25730_
                      _rest25359_
                      _K25360_
                      _E25361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2574225928_
                                                      __tmp50475))))
                                               _g2571625727_)))
                                           (__tmp50476 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2571425932_ __tmp50476))))
                                _g2568825699_)))
                            (__tmp50477 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2568625936_ __tmp50477))))
                 _g2566025671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50478
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2565825940_ __tmp50478))))
                                          _g2563225643_)))
                                      (__tmp50479 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2563025944_ __tmp50479))))
                           _g2560425615_)))
                       (__tmp50480 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2560225948_ __tmp50480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2557625587_))))
                                           (declare (not safe))
                                           (_g2557425952_ _tgt25356_))))
                                     _init2551525554_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2551025534_ _target2550725528_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2550425521_ _g2550525525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2550425521_
                                                   _g2550525525_)))))
                                         (__tmp50482
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp50483
                                                   (lambda (_g2595925962_
                                                            _g2596025965_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2595925962_
                                                             _g2596025965_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp50483
                                                      '()
                                                      _L25417_)))
                                           (let ((__tmp50484
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp50484 '())))))
                                    (declare (not safe))
                                    (_g2550325956_ __tmp50482))))
                              _var-r2544425483_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2543925463_
                                                        _target2543625457_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2543325450_
                                                      _g2543425454_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2543325450_ _g2543425454_)))))
                                  (__tmp50486
                                   (gx#gentemps
                                    (let ((__tmp50487
                                           (lambda (_g2597125974_
                                                    _g2597225977_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2597125974_
                                                     _g2597225977_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp50487 '() _L25417_)))))
                             (declare (not safe))
                             (_g2543225968_ __tmp50486))))
                       _var2537425413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2536925393_
                                                 _target2536625387_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2536325380_
                                               _g2536425384_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2536325380_ _g2536425384_)))))
                           (__tmp50489
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25358_))))
                      (declare (not safe))
                      (_g2536225980_ __tmp50489))))
                 (_generate-simple-vector24742_
                  (lambda (_tgt25198_
                           _body25200_
                           _start25201_
                           _K25202_
                           _E25203_)
                    (let _recur25205_ ((_rest25208_ _body25200_)
                                       (_off25210_ _start25201_))
                      (let* ((___stx4634246343_ _rest25208_)
                             (_g2521325225_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4634246343_))))
                        (let ((___kont4634546346_
                               (lambda (_L25253_ _L25255_)
                                 (let* ((_g2527025289_
                                         (lambda (_g2527125285_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2527125285_)))
                                        (_g2526925348_
                                         (lambda (_g2527125293_)
                                           (if (gx#stx-pair? _g2527125293_)
                                               (let ((_e2527725296_
                                                      (gx#syntax-e
                                                       _g2527125293_)))
                                                 (let ((_hd2527625300_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2527725296_)))
                                                       (_tl2527525303_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2527725296_))))
                                                   (if (gx#stx-pair?
                                                        _tl2527525303_)
                                                       (let ((_e2528025306_
                                                              (gx#syntax-e
                                                               _tl2527525303_)))
                                                         (let ((_hd2527925310_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2528025306_)))
                       (_tl2527825313_
                        (let () (declare (not safe)) (##cdr _e2528025306_))))
                   (if (gx#stx-pair? _tl2527825313_)
                       (let ((_e2528325316_ (gx#syntax-e _tl2527825313_)))
                         (let ((_hd2528225320_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2528325316_)))
                               (_tl2528125323_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2528325316_))))
                           (if (gx#stx-null? _tl2528125323_)
                               ((lambda (_L25326_ _L25328_ _L25329_)
                                  (let ()
                                    (let ((__tmp50490
                                           (let ((__tmp50495
                                                  (let ((__tmp50496
                                                         (let ((__tmp50497
                                                                (let ((__tmp50498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50501
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp50499
                                      (let ((__tmp50500
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25326_ '()))))
                                        (declare (not safe))
                                        (cons _L25328_ __tmp50500))))
                                 (declare (not safe))
                                 (cons __tmp50501 __tmp50499))))
                          (declare (not safe))
                          (cons __tmp50498 '()))))
                   (declare (not safe))
                   (cons _L25329_ __tmp50497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50496 '())))
                                                 (__tmp50491
                                                  (let ((__tmp50492
                                                         (let ((__tmp50493
                                                                (let ((__tmp50494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25210_ '1))))
                          (declare (not safe))
                          (_recur25205_ _L25253_ __tmp50494))))
                   (declare (not safe))
                   (_generate124739_ _L25329_ _L25255_ __tmp50493 _E25203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50492 '()))))
                                             (declare (not safe))
                                             (cons __tmp50495 __tmp50491))))
                                      (declare (not safe))
                                      (cons 'let __tmp50490))))
                                _hd2528225320_
                                _hd2527925310_
                                _hd2527625300_)
                               (let ()
                                 (declare (not safe))
                                 (_g2527025289_ _g2527125293_)))))
                       (let ()
                         (declare (not safe))
                         (_g2527025289_ _g2527125293_)))))
               (let () (declare (not safe)) (_g2527025289_ _g2527125293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2527025289_
                                                  _g2527125293_)))))
                                        (__tmp50502
                                         (list (gx#genident 'e)
                                               _tgt25198_
                                               _off25210_)))
                                   (declare (not safe))
                                   (_g2526925348_ __tmp50502))))
                              (___kont4634746348_ (lambda () _K25202_)))
                          (if (gx#stx-pair? ___stx4634246343_)
                              (let ((_e2521925243_
                                     (gx#syntax-e ___stx4634246343_)))
                                (let ((_tl2521725250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2521925243_)))
                                      (_hd2521825247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2521925243_))))
                                  (___kont4634546346_
                                   _tl2521725250_
                                   _hd2521825247_)))
                              (___kont4634746348_)))))))
                 (_generate-list-vector24743_
                  (lambda (_tgt25090_
                           _body25092_
                           _->list25093_
                           _K25094_
                           _E25095_)
                    (let* ((_g2509725105_
                            (lambda (_g2509825101_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2509825101_)))
                           (_g2509625194_
                            (lambda (_g2509825109_)
                              ((lambda (_L25112_)
                                 (let ()
                                   (let* ((_g2512425132_
                                           (lambda (_g2512525128_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2512525128_)))
                                          (_g2512325190_
                                           (lambda (_g2512525136_)
                                             ((lambda (_L25139_)
                                                (let ()
                                                  (let* ((_g2515225160_
                                                          (lambda (_g2515325156_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2515325156_)))
                                                         (_g2515125182_
                                                          (lambda (_g2515325164_)
                                                            ((lambda (_L25167_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp50503
                                  (let ((__tmp50506
                                         (let ((__tmp50507
                                                (let ((__tmp50508
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25167_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25112_ __tmp50508))))
                                           (declare (not safe))
                                           (cons __tmp50507 '())))
                                        (__tmp50504
                                         (let ((__tmp50505
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124739_
                                                   _L25112_
                                                   _body25092_
                                                   _K25094_
                                                   _E25095_))))
                                           (declare (not safe))
                                           (cons __tmp50505 '()))))
                                    (declare (not safe))
                                    (cons __tmp50506 __tmp50504))))
                             (declare (not safe))
                             (cons 'let __tmp50503)))))
                     _g2515325164_)))
                 (__tmp50509
                  (let ((_$e25186_ _->list25093_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25186_))
                        (let ((__tmp50518 (gx#datum->syntax '#f 'values->list))
                              (__tmp50517
                               (let ()
                                 (declare (not safe))
                                 (cons _L25139_ '()))))
                          (declare (not safe))
                          (cons __tmp50518 __tmp50517))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25186_))
                            (let ((__tmp50516
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50515
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25139_ '()))))
                              (declare (not safe))
                              (cons __tmp50516 __tmp50515))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25186_))
                                (let ((__tmp50514
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50510
                                       (let ((__tmp50511
                                              (let ((__tmp50513
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50512
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25139_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50513 __tmp50512))))
                                         (declare (not safe))
                                         (cons __tmp50511 '()))))
                                  (declare (not safe))
                                  (cons __tmp50514 __tmp50510))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24732_
                                 _->list25093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2515125182_
                                                     __tmp50509))))
                                              _g2512525136_))))
                                     (declare (not safe))
                                     (_g2512325190_ _tgt25090_))))
                               _g2509825109_)))
                           (__tmp50519 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2509625194_ __tmp50519))))
                 (_generate-struct24744_
                  (lambda (_info24961_
                           _tgt24963_
                           _body24964_
                           _K24965_
                           _E24966_)
                    (let* ((___stx4635846359_ _body24964_)
                           (_g2496924992_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4635846359_))))
                      (let ((___kont4636146362_
                             (lambda (_L25069_)
                               (let* ((_fields25083_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24746_
                                          _info24961_)))
                                      (__tmp50520
                                       (let ((__tmp50524
                                              (let ((__tmp50526
                                                     (let ((__obj47562
                                                            _info24961_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47562
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47562
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47562
                                                            'predicate))))
                                                    (__tmp50525
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24963_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50526 __tmp50525)))
                                             (__tmp50521
                                              (let ((__tmp50523
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24745_
                                                        _info24961_
                                                        _tgt24963_
                                                        _L25069_
                                                        _K24965_
                                                        _E24966_)))
                                                    (__tmp50522
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24966_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50523 __tmp50522))))
                                         (declare (not safe))
                                         (cons __tmp50524 __tmp50521))))
                                 (declare (not safe))
                                 (cons 'if __tmp50520))))
                            (___kont4636346364_
                             (lambda (_L25023_)
                               (let ((__tmp50527
                                      (let ((__tmp50531
                                             (let ((__tmp50533
                                                    (let ((__obj47563
                                                           _info24961_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47563
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47563
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47563
                                                           'predicate))))
                                                   (__tmp50532
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24963_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50533 __tmp50532)))
                                            (__tmp50528
                                             (let ((__tmp50530
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24743_
                                                       _tgt24963_
                                                       _L25023_
                                                       'struct->list
                                                       _K24965_
                                                       _E24966_)))
                                                   (__tmp50529
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24966_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50530 __tmp50529))))
                                        (declare (not safe))
                                        (cons __tmp50531 __tmp50528))))
                                 (declare (not safe))
                                 (cons 'if __tmp50527)))))
                        (if (gx#stx-pair? ___stx4635846359_)
                            (let ((_e2497425045_
                                   (gx#syntax-e ___stx4635846359_)))
                              (let ((_tl2497225052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2497425045_)))
                                    (_hd2497325049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2497425045_))))
                                (if (gx#stx-datum? _hd2497325049_)
                                    (let ((_e2497525055_
                                           (gx#stx-e _hd2497325049_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2497525055_ 'simple:))
                                          (if (gx#stx-pair? _tl2497225052_)
                                              (let ((_e2497825059_
                                                     (gx#syntax-e
                                                      _tl2497225052_)))
                                                (let ((_tl2497625066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2497825059_)))
                                                      (_hd2497725063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2497825059_))))
                                                  (if (gx#stx-null?
                                                       _tl2497625066_)
                                                      (___kont4636146362_
                                                       _hd2497725063_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2496924992_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2496924992_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2497525055_ 'list:))
                                              (if (gx#stx-pair? _tl2497225052_)
                                                  (let ((_e2498625013_
                                                         (gx#syntax-e
                                                          _tl2497225052_)))
                                                    (let ((_tl2498425020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2498625013_)))
                                                          (_hd2498525017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2498625013_))))
                                                      (if (gx#stx-null?
                                                           _tl2498425020_)
                                                          (___kont4636346364_
                                                           _hd2498525017_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2496924992_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2496924992_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2496924992_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2496924992_)))))
                            (let () (declare (not safe)) (_g2496924992_)))))))
                 (_generate-simple-struct-body24745_
                  (lambda (_info24881_
                           _tgt24883_
                           _body24884_
                           _K24885_
                           _E24886_)
                    (let _recur24888_ ((_rest24891_ _body24884_)
                                       (_fields24893_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24746_
                                           _info24881_))))
                      (let* ((___stx4640846409_ _rest24891_)
                             (_g2489624908_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4640846409_))))
                        (let ((___kont4641146412_
                               (lambda (_L24936_ _L24938_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24893_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24732_
                                      _info24881_
                                      (let ((__obj47564 _info24881_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47564
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47564
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47564
                                             'name))))
                                     (let ((_$tgt24953_ (gx#genident 'e))
                                           (_getf24955_ (car _fields24893_)))
                                       (let ((__tmp50534
                                              (let ((__tmp50539
                                                     (let ((__tmp50540
                                                            (let ((__tmp50541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50542
                                  (let ((__tmp50543
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24883_ '()))))
                                    (declare (not safe))
                                    (cons _getf24955_ __tmp50543))))
                             (declare (not safe))
                             (cons __tmp50542 '()))))
                      (declare (not safe))
                      (cons _$tgt24953_ __tmp50541))))
               (declare (not safe))
               (cons __tmp50540 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50535
                                                     (let ((__tmp50536
                                                            (let ((__tmp50537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50538 (cdr _fields24893_)))
                             (declare (not safe))
                             (_recur24888_ _L24936_ __tmp50538))))
                      (declare (not safe))
                      (_generate124739_
                       _$tgt24953_
                       _L24938_
                       __tmp50537
                       _E24886_))))
               (declare (not safe))
               (cons __tmp50536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50539 __tmp50535))))
                                         (declare (not safe))
                                         (cons 'let __tmp50534))))))
                              (___kont4641346414_ (lambda () _K24885_)))
                          (if (gx#stx-pair? ___stx4640846409_)
                              (let ((_e2490224926_
                                     (gx#syntax-e ___stx4640846409_)))
                                (let ((_tl2490024933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2490224926_)))
                                      (_hd2490124930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2490224926_))))
                                  (___kont4641146412_
                                   _tl2490024933_
                                   _hd2490124930_)))
                              (___kont4641346414_)))))))
                 (_struct-field-accessors24746_
                  (lambda (_info24862_)
                    (let _recur24865_ ((_next24868_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24862_ '()))))
                      (if (let () (declare (not safe)) (null? _next24868_))
                          '()
                          (let ((_ti24871_ (car _next24868_)))
                            (append (let ((__tmp50544
                                           (map gx#syntax-local-value
                                                (let ((__obj47565 _ti24871_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47565
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47565
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47565
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24865_ __tmp50544))
                                    (map (lambda (_slot24874_)
                                           (let ((_$e24877_
                                                  (let ((__tmp50545
                                                         (let ((__obj47566
                                                                _ti24871_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47566
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47566
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47566
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24874_
                                                             __tmp50545))))
                                             (if _$e24877_
                                                 _$e24877_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24732_
                                                  _info24862_
                                                  _slot24874_))))
                                         (let ((__obj47567 _ti24871_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47567
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47567
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47567
                                                'slots))))))))))
                 (_generate-class24747_
                  (lambda (_info24855_
                           _tgt24857_
                           _body24858_
                           _K24859_
                           _E24860_)
                    (let ((__tmp50546
                           (let ((__tmp50550
                                  (let ((__tmp50552
                                         (let ((__obj47568 _info24855_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47568
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47568
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47568
                                                'predicate))))
                                        (__tmp50551
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24857_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50552 __tmp50551)))
                                 (__tmp50547
                                  (let ((__tmp50549
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24748_
                                            _info24855_
                                            _tgt24857_
                                            _body24858_
                                            _K24859_
                                            _E24860_)))
                                        (__tmp50548
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24860_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50549 __tmp50548))))
                             (declare (not safe))
                             (cons __tmp50550 __tmp50547))))
                      (declare (not safe))
                      (cons 'if __tmp50546))))
                 (_generate-class-body24748_
                  (lambda (_info24750_
                           _tgt24752_
                           _body24753_
                           _K24754_
                           _E24755_)
                    (let _recur24757_ ((_rest24760_ _body24753_))
                      (let* ((___stx4642446425_ _rest24760_)
                             (_g2476424780_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4642446425_))))
                        (let ((___kont4642746428_
                               (lambda (_L24818_ _L24820_ _L24821_)
                                 (let ((_$e24841_
                                        (let ((__tmp50554
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24821_))))
                                              (__tmp50553
                                               (let ((__obj47569 _info24750_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47569
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47569
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47569
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50554 __tmp50553))))
                                   (if _$e24841_
                                       ((lambda (_getf24845_)
                                          (let* ((_$tgt24848_ (gx#genident 'e))
                                                 (__tmp50555
                                                  (let ((__tmp50559
                                                         (let ((__tmp50560
                                                                (let ((__tmp50561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50562
                                      (let ((__tmp50563
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24752_ '()))))
                                        (declare (not safe))
                                        (cons _getf24845_ __tmp50563))))
                                 (declare (not safe))
                                 (cons __tmp50562 '()))))
                          (declare (not safe))
                          (cons _$tgt24848_ __tmp50561))))
                   (declare (not safe))
                   (cons __tmp50560 '())))
                (__tmp50556
                 (let ((__tmp50557
                        (let ((__tmp50558
                               (let ()
                                 (declare (not safe))
                                 (_recur24757_ _L24818_))))
                          (declare (not safe))
                          (_generate124739_
                           _$tgt24848_
                           _L24820_
                           __tmp50558
                           _E24755_))))
                   (declare (not safe))
                   (cons __tmp50557 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50559
                                                          __tmp50556))))
                                            (declare (not safe))
                                            (cons 'let __tmp50555)))
                                        _$e24841_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24732_
                                        _info24750_
                                        _L24821_)))))
                              (___kont4642946430_ (lambda () _K24754_)))
                          (if (gx#stx-pair? ___stx4642446425_)
                              (let ((_e2477124798_
                                     (gx#syntax-e ___stx4642446425_)))
                                (let ((_tl2476924805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2477124798_)))
                                      (_hd2477024802_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2477124798_))))
                                  (if (gx#stx-pair? _tl2476924805_)
                                      (let ((_e2477424808_
                                             (gx#syntax-e _tl2476924805_)))
                                        (let ((_tl2477224815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2477424808_)))
                                              (_hd2477324812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2477424808_))))
                                          (___kont4642746428_
                                           _tl2477224815_
                                           _hd2477324812_
                                           _hd2477024802_)))
                                      (___kont4642946430_))))
                              (___kont4642946430_))))))))
          (let ()
            (declare (not safe))
            (_generate124739_ _tgt24734_ _ptree24735_ _K24736_ _E24737_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23628_ _tgt-lst23630_ _clauses23631_)
        (letrec ((_parse-body23633_
                  (lambda (_hd-len24554_)
                    (let _lp24557_ ((_rest24560_ _clauses23631_)
                                    (_r24562_ '()))
                      (let* ((___stx4647446475_ _rest24560_)
                             (_g2456524577_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4647446475_))))
                        (let ((___kont4647746478_
                               (lambda (_L24605_ _L24607_)
                                 (let* ((___stx4644646447_ _L24607_)
                                        (_g2462424640_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4644646447_))))
                                   (let ((___kont4644946450_
                                          (lambda (_L24709_)
                                            (if (gx#stx-null? _L24605_)
                                                (let ((__tmp50564
                                                       (let ((__tmp50569
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50565
                                                              (let ((__tmp50566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50567
                                    (gx#stx-wrap-source
                                     (let ((__tmp50568
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50568 _L24709_))
                                     (let ((_$e24720_
                                            (gx#stx-source _L24607_)))
                                       (if _$e24720_
                                           _$e24720_
                                           (gx#stx-source _stx23628_))))))
                               (declare (not safe))
                               (cons __tmp50567 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50566))))
                 (declare (not safe))
                 (cons __tmp50569 __tmp50565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50564 _r24562_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23628_
                                                 _L24607_))))
                                         (___kont4645146452_
                                          (lambda (_L24668_ _L24670_)
                                            (let ((__tmp50570
                                                   (let ((__tmp50571
                                                          (let ((__tmp50577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50572
                         (let ((__tmp50576
                                (gx#stx-map
                                 (lambda (_g2468224684_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2468224684_
                                      _stx23628_)))
                                 _L24670_))
                               (__tmp50573
                                (let ((__tmp50574
                                       (gx#stx-wrap-source
                                        (let ((__tmp50575
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50575 _L24668_))
                                        (let ((_$e24688_
                                               (gx#stx-source _L24607_)))
                                          (if _$e24688_
                                              _$e24688_
                                              (gx#stx-source _stx23628_))))))
                                  (declare (not safe))
                                  (cons __tmp50574 '()))))
                           (declare (not safe))
                           (cons __tmp50576 __tmp50573))))
                    (declare (not safe))
                    (cons __tmp50577 __tmp50572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50571
                                                           _r24562_))))
                                              (declare (not safe))
                                              (_lp24557_
                                               _L24605_
                                               __tmp50570))))
                                         (___kont4645346454_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23628_
                                             _L24607_))))
                                     (let* ((___match4647146472_
                                             (lambda (_e2463424658_
                                                      _hd2463324662_
                                                      _tl2463224665_)
                                               (let ((_L24668_ _tl2463224665_)
                                                     (_L24670_ _hd2463324662_))
                                                 (if (and (gx#stx-list?
                                                           _L24670_)
                                                          (fx= (gx#stx-length
                                                                _L24670_)
                                                               _hd-len24554_)
                                                          (gx#stx-list?
                                                           _L24668_)
                                                          (let ((__tmp50578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24668_)))
                    (declare (not safe))
                    (not __tmp50578)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4645146452_
                                                      _L24668_
                                                      _L24670_)
                                                     (___kont4645346454_)))))
                                            (___match4646546466_
                                             (lambda (_e2462924699_
                                                      _hd2462824703_
                                                      _tl2462724706_)
                                               (let ((_L24709_ _tl2462724706_))
                                                 (if (and (gx#stx-list?
                                                           _L24709_)
                                                          (let ((__tmp50579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24709_)))
                    (declare (not safe))
                    (not __tmp50579)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4644946450_
                                                      _L24709_)
                                                     (___match4647146472_
                                                      _e2462924699_
                                                      _hd2462824703_
                                                      _tl2462724706_))))))
                                       (if (gx#stx-pair? ___stx4644646447_)
                                           (let ((_e2462924699_
                                                  (gx#syntax-e
                                                   ___stx4644646447_)))
                                             (let ((_tl2462724706_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2462924699_)))
                                                   (_hd2462824703_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2462924699_))))
                                               (if (gx#identifier?
                                                    _hd2462824703_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50580_|
                                                        _hd2462824703_)
                                                       (___match4646546466_
                                                        _e2462924699_
                                                        _hd2462824703_
                                                        _tl2462724706_)
                                                       (___match4647146472_
                                                        _e2462924699_
                                                        _hd2462824703_
                                                        _tl2462724706_))
                                                   (___match4647146472_
                                                    _e2462924699_
                                                    _hd2462824703_
                                                    _tl2462724706_))))
                                           (___kont4645346454_)))))))
                              (___kont4647946480_ (lambda () _r24562_)))
                          (if (gx#stx-pair? ___stx4647446475_)
                              (let ((_e2457124595_
                                     (gx#syntax-e ___stx4647446475_)))
                                (let ((_tl2456924602_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2457124595_)))
                                      (_hd2457024599_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2457124595_))))
                                  (___kont4647746478_
                                   _tl2456924602_
                                   _hd2457024599_)))
                              (___kont4647946480_)))))))
                 (_generate-body23635_
                  (lambda (_body24339_)
                    (let* ((_g2434224350_
                            (lambda (_g2434324346_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2434324346_)))
                           (_g2434124550_
                            (lambda (_g2434324354_)
                              ((lambda (_L24357_)
                                 (let ()
                                   (let* ((_g2436924386_
                                           (lambda (_g2437024382_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2437024382_)))
                                          (_g2436824546_
                                           (lambda (_g2437024390_)
                                             (if (gx#stx-pair/null?
                                                  _g2437024390_)
                                                 (let ((_g50581_
                                                        (gx#syntax-split-splice
                                                         _g2437024390_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50582_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50581_)
                          (##vector-length _g50581_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50582_ 2)))
                   (error "Context expects 2 values" _g50582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2437224393_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50581_
                                                               0)))
                                                           (_tl2437424396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50581_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2437424396_)
                                                           (letrec ((_loop2437524399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2437324403_ _target2437924406_)
                               (if (gx#stx-pair? _hd2437324403_)
                                   (let ((_e2437624409_
                                          (gx#syntax-e _hd2437324403_)))
                                     (let ((_lp-hd2437724413_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2437624409_)))
                                           (_lp-tl2437824416_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2437624409_))))
                                       (let ((__tmp50605
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2437724413_
                                                      _target2437924406_))))
                                         (declare (not safe))
                                         (_loop2437524399_
                                          _lp-tl2437824416_
                                          __tmp50605))))
                                   (let ((_target2438024419_
                                          (reverse _target2437924406_)))
                                     ((lambda (_L24423_)
                                        (let ()
                                          (let* ((_g2444024448_
                                                  (lambda (_g2444124444_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2444124444_)))
                                                 (_g2443924534_
                                                  (lambda (_g2444124452_)
                                                    ((lambda (_L24455_)
                                                       (let ()
                                                         (let* ((_g2446824476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2446924472_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2446924472_)))
                        (_g2446724530_
                         (lambda (_g2446924480_)
                           ((lambda (_L24483_)
                              (let ()
                                (let* ((_g2449624504_
                                        (lambda (_g2449724500_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2449724500_)))
                                       (_g2449524526_
                                        (lambda (_g2449724508_)
                                          ((lambda (_L24511_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50586
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50583
                                                        (let ((__tmp50585
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50584
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24511_ '()))))
                  (declare (not safe))
                  (cons __tmp50585 __tmp50584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50586
                                                         __tmp50583)))))
                                           _g2449724508_)))
                                       (__tmp50587
                                        (gx#stx-wrap-source
                                         (let ((__tmp50593
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50588
                                                (let ((__tmp50590
                                                       (let ((__tmp50591
                                                              (let ((__tmp50592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24455_ '()))))
                        (declare (not safe))
                        (cons _L24357_ __tmp50592))))
                 (declare (not safe))
                 (cons __tmp50591 '())))
              (__tmp50589 (let () (declare (not safe)) (cons _L24483_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50590
                                                        __tmp50589))))
                                           (declare (not safe))
                                           (cons __tmp50593 __tmp50588))
                                         (gx#stx-source _stx23628_))))
                                  (declare (not safe))
                                  (_g2449524526_ __tmp50587))))
                            _g2446924480_)))
                        (__tmp50594
                         (let ((__tmp50595
                                (let ()
                                  (declare (not safe))
                                  (cons _L24357_ '()))))
                           (declare (not safe))
                           (_generate-clauses23636_ _body24339_ __tmp50595))))
                   (declare (not safe))
                   (_g2446724530_ __tmp50594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2444124452_)))
                                                 (__tmp50596
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50604
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50597
                                                          (let ((__tmp50598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50599
                                (let ((__tmp50603
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50600
                                       (let ((__tmp50601
                                              (let ((__tmp50602
                                                     (lambda (_g2453724540_
                                                              _g2453824543_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2453724540_
                                                               _g2453824543_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50602
                                                        '()
                                                        _L24423_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50601))))
                                  (declare (not safe))
                                  (cons __tmp50603 __tmp50600))))
                           (declare (not safe))
                           (cons __tmp50599 '()))))
                    (declare (not safe))
                    (cons '() __tmp50598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50604
                                                           __tmp50597))
                                                   (gx#stx-source
                                                    _stx23628_))))
                                            (declare (not safe))
                                            (_g2443924534_ __tmp50596))))
                                      _target2438024419_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2437524399_ _target2437224393_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2436924386_ _g2437024390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2436924386_
                                                    _g2437024390_))))))
                                     (declare (not safe))
                                     (_g2436824546_ _tgt-lst23630_))))
                               _g2434324354_)))
                           (__tmp50606 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2434124550_ __tmp50606))))
                 (_generate-clauses23636_
                  (lambda (_rest23991_ _E23993_)
                    (let* ((___stx4649046491_ _rest23991_)
                           (_g2399724013_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4649046491_))))
                      (let ((___kont4649346494_
                             (lambda (_L24247_)
                               (let* ((_g2425824276_
                                       (lambda (_g2425924272_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2425924272_)))
                                      (_g2425724331_
                                       (lambda (_g2425924280_)
                                         (if (gx#stx-pair? _g2425924280_)
                                             (let ((_e2426424283_
                                                    (gx#syntax-e
                                                     _g2425924280_)))
                                               (let ((_hd2426324287_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2426424283_)))
                                                     (_tl2426224290_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2426424283_))))
                                                 (if (gx#stx-pair?
                                                      _tl2426224290_)
                                                     (let ((_e2426724293_
                                                            (gx#syntax-e
                                                             _tl2426224290_)))
                                                       (let ((_hd2426624297_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2426724293_)))
                     (_tl2426524300_
                      (let () (declare (not safe)) (##cdr _e2426724293_))))
                 (if (gx#stx-pair? _tl2426524300_)
                     (let ((_e2427024303_ (gx#syntax-e _tl2426524300_)))
                       (let ((_hd2426924307_
                              (let ()
                                (declare (not safe))
                                (##car _e2427024303_)))
                             (_tl2426824310_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2427024303_))))
                         (if (gx#stx-null? _tl2426824310_)
                             ((lambda (_L24313_ _L24315_)
                                (let ((__tmp50607
                                       (let ((__tmp50608
                                              (let ((__tmp50609
                                                     (if (gx#stx-e _L24315_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123637_
                                                            _L24315_
                                                            _L24313_
                                                            _E23993_))
                                                         _L24313_)))
                                                (declare (not safe))
                                                (cons __tmp50609 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50608))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50607)))
                              _hd2426924307_
                              _hd2426624297_)
                             (let ()
                               (declare (not safe))
                               (_g2425824276_ _g2425924280_)))))
                     (let ()
                       (declare (not safe))
                       (_g2425824276_ _g2425924280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2425824276_
                                                        _g2425924280_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2425824276_
                                                _g2425924280_))))))
                                 (declare (not safe))
                                 (_g2425724331_ _L24247_))))
                            (___kont4649546496_
                             (lambda (_L24041_ _L24043_)
                               (let* ((_g2405624075_
                                       (lambda (_g2405724071_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2405724071_)))
                                      (_g2405524226_
                                       (lambda (_g2405724079_)
                                         (if (gx#stx-pair? _g2405724079_)
                                             (let ((_e2406324082_
                                                    (gx#syntax-e
                                                     _g2405724079_)))
                                               (let ((_hd2406224086_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2406324082_)))
                                                     (_tl2406124089_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2406324082_))))
                                                 (if (gx#stx-pair?
                                                      _tl2406124089_)
                                                     (let ((_e2406624092_
                                                            (gx#syntax-e
                                                             _tl2406124089_)))
                                                       (let ((_hd2406524096_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2406624092_)))
                     (_tl2406424099_
                      (let () (declare (not safe)) (##cdr _e2406624092_))))
                 (if (gx#stx-pair? _tl2406424099_)
                     (let ((_e2406924102_ (gx#syntax-e _tl2406424099_)))
                       (let ((_hd2406824106_
                              (let ()
                                (declare (not safe))
                                (##car _e2406924102_)))
                             (_tl2406724109_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2406924102_))))
                         (if (gx#stx-null? _tl2406724109_)
                             ((lambda (_L24112_ _L24114_ _L24115_)
                                (if (gx#stx-e _L24114_)
                                    (let* ((_g2413224147_
                                            (lambda (_g2413324143_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2413324143_)))
                                           (_g2413124192_
                                            (lambda (_g2413324151_)
                                              (if (gx#stx-pair? _g2413324151_)
                                                  (let ((_e2413824154_
                                                         (gx#syntax-e
                                                          _g2413324151_)))
                                                    (let ((_hd2413724158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2413824154_)))
                                                          (_tl2413624161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2413824154_))))
                                                      (if (gx#stx-pair?
                                                           _tl2413624161_)
                                                          (let ((_e2414124164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2413624161_)))
                    (let ((_hd2414024168_
                           (let () (declare (not safe)) (##car _e2414124164_)))
                          (_tl2413924171_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2414124164_))))
                      (if (gx#stx-null? _tl2413924171_)
                          ((lambda (_L24174_ _L24176_)
                             (let ()
                               (let ((__tmp50636 (gx#datum->syntax '#f 'let))
                                     (__tmp50627
                                      (let ((__tmp50629
                                             (let ((__tmp50630
                                                    (let ((__tmp50631
                                                           (let ((__tmp50632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50635 (gx#datum->syntax '#f 'lambda))
                                (__tmp50633
                                 (let ((__tmp50634
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24176_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50634))))
                            (declare (not safe))
                            (cons __tmp50635 __tmp50633))))
                     (declare (not safe))
                     (cons __tmp50632 '()))))
              (declare (not safe))
              (cons _L24115_ __tmp50631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50630 '())))
                                            (__tmp50628
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50629 __tmp50628))))
                                 (declare (not safe))
                                 (cons __tmp50636 __tmp50627))))
                           _hd2414024168_
                           _hd2413724158_)
                          (let ()
                            (declare (not safe))
                            (_g2413224147_ _g2413324151_)))))
                  (let ()
                    (declare (not safe))
                    (_g2413224147_ _g2413324151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2413224147_
                                                     _g2413324151_)))))
                                           (__tmp50637
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123637_
                                                     _L24114_
                                                     _L24112_
                                                     _E23993_))
                                                  (let ((__tmp50638
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23636_
                                                     _L24041_
                                                     __tmp50638)))))
                                      (declare (not safe))
                                      (_g2413124192_ __tmp50637))
                                    (let* ((_g2419624204_
                                            (lambda (_g2419724200_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2419724200_)))
                                           (_g2419524222_
                                            (lambda (_g2419724208_)
                                              ((lambda (_L24211_)
                                                 (let ()
                                                   (let ((__tmp50624
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50610
                                                          (let ((__tmp50612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50613
                                (let ((__tmp50614
                                       (let ((__tmp50615
                                              (let ((__tmp50623
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50616
                                                     (let ((__tmp50622
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50617
                                                            (let ((__tmp50618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50621 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50619
                                  (let ((__tmp50620
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24112_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50620))))
                             (declare (not safe))
                             (cons __tmp50621 __tmp50619))))
                      (declare (not safe))
                      (cons __tmp50618 '()))))
               (declare (not safe))
               (cons __tmp50622 __tmp50617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50623 __tmp50616))))
                                         (declare (not safe))
                                         (cons __tmp50615 '()))))
                                  (declare (not safe))
                                  (cons _L24115_ __tmp50614))))
                           (declare (not safe))
                           (cons __tmp50613 '())))
                        (__tmp50611
                         (let () (declare (not safe)) (cons _L24211_ '()))))
                    (declare (not safe))
                    (cons __tmp50612 __tmp50611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50624
                                                           __tmp50610))))
                                               _g2419724208_)))
                                           (__tmp50625
                                            (let ((__tmp50626
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24115_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23636_
                                               _L24041_
                                               __tmp50626))))
                                      (declare (not safe))
                                      (_g2419524222_ __tmp50625))))
                              _hd2406824106_
                              _hd2406524096_
                              _hd2406224086_)
                             (let ()
                               (declare (not safe))
                               (_g2405624075_ _g2405724079_)))))
                     (let ()
                       (declare (not safe))
                       (_g2405624075_ _g2405724079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2405624075_
                                                        _g2405724079_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2405624075_
                                                _g2405724079_))))))
                                 (declare (not safe))
                                 (_g2405524226_ _L24043_))))
                            (___kont4649746498_
                             (lambda ()
                               (let ((__tmp50639
                                      (let ((__tmp50640
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23993_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50640))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50639)))))
                        (if (gx#stx-pair? ___stx4649046491_)
                            (let ((_e2400224237_
                                   (gx#syntax-e ___stx4649046491_)))
                              (let ((_tl2400024244_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2400224237_)))
                                    (_hd2400124241_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2400224237_))))
                                (if (gx#stx-null? _tl2400024244_)
                                    (___kont4649346494_ _hd2400124241_)
                                    (___kont4649546496_
                                     _tl2400024244_
                                     _hd2400124241_))))
                            (___kont4649746498_))))))
                 (_generate123637_
                  (lambda (_clause23639_ _body23641_ _E23642_)
                    (let* ((_g2364423668_
                            (lambda (_g2364523664_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2364523664_)))
                           (_g2364323987_
                            (lambda (_g2364523672_)
                              (if (gx#stx-pair? _g2364523672_)
                                  (let ((_e2365023675_
                                         (gx#syntax-e _g2364523672_)))
                                    (let ((_hd2364923679_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2365023675_)))
                                          (_tl2364823682_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2365023675_))))
                                      (if (gx#stx-pair? _tl2364823682_)
                                          (let ((_e2365323685_
                                                 (gx#syntax-e _tl2364823682_)))
                                            (let ((_hd2365223689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2365323685_)))
                                                  (_tl2365123692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2365323685_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2365223689_)
                                                  (let ((_g50641_
                                                         (gx#syntax-split-splice
                                                          _hd2365223689_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50641_)
                           (##vector-length _g50641_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50642_ 2)))
                    (error "Context expects 2 values" _g50642_)))
              (let ((_target2365423695_
                     (let () (declare (not safe)) (##vector-ref _g50641_ 0)))
                    (_tl2365623698_
                     (let () (declare (not safe)) (##vector-ref _g50641_ 1))))
                (if (gx#stx-null? _tl2365623698_)
                    (letrec ((_loop2365723701_
                              (lambda (_hd2365523705_ _var2366123708_)
                                (if (gx#stx-pair? _hd2365523705_)
                                    (let ((_e2365823711_
                                           (gx#syntax-e _hd2365523705_)))
                                      (let ((_lp-hd2365923715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2365823711_)))
                                            (_lp-tl2366023718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2365823711_))))
                                        (let ((__tmp50659
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2365923715_
                                                       _var2366123708_))))
                                          (declare (not safe))
                                          (_loop2365723701_
                                           _lp-tl2366023718_
                                           __tmp50659))))
                                    (let ((_var2366223721_
                                           (reverse _var2366123708_)))
                                      (if (gx#stx-null? _tl2365123692_)
                                          ((lambda (_L23725_ _L23727_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50643
                                                       (lambda (_g2374823751_
                                                                _g2374923754_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2374823751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2374923754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50643
                                                          '()
                                                          _L23725_))
                                                _stx23628_)
                                               (let* ((_g2375723765_
                                                       (lambda (_g2375823761_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2375823761_)))
                                                      (_g2375623859_
                                                       (lambda (_g2375823769_)
                                                         ((lambda (_L23772_)
                                                            (let ()
                                                              (let* ((_g2378523793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2378623789_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2378623789_)))
                             (_g2378423855_
                              (lambda (_g2378623797_)
                                ((lambda (_L23800_)
                                   (let ()
                                     (let* ((_g2381323821_
                                             (lambda (_g2381423817_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2381423817_)))
                                            (_g2381223843_
                                             (lambda (_g2381423825_)
                                               ((lambda (_L23828_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50648
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50644
                                                              (let ((__tmp50646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50647
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23828_ '()))))
                               (declare (not safe))
                               (cons _L23727_ __tmp50647)))
                            (__tmp50645
                             (let ()
                               (declare (not safe))
                               (cons _L23772_ '()))))
                        (declare (not safe))
                        (cons __tmp50646 __tmp50645))))
                 (declare (not safe))
                 (cons __tmp50648 __tmp50644))
               (gx#stx-source _stx23628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2381423825_)))
                                            (__tmp50649
                                             (gx#stx-wrap-source
                                              (let ((__tmp50654
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50650
                                                     (let ((__tmp50652
                                                            (let ((__tmp50653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2384623849_ _g2384723852_)
                             (let ()
                               (declare (not safe))
                               (cons _g2384623849_ _g2384723852_)))))
                      (declare (not safe))
                      (foldr1 __tmp50653 '() _L23725_)))
                   (__tmp50651
                    (let () (declare (not safe)) (cons _L23800_ '()))))
               (declare (not safe))
               (cons __tmp50652 __tmp50651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50654 __tmp50650))
                                              (gx#stx-source _stx23628_))))
                                       (declare (not safe))
                                       (_g2381223843_ __tmp50649))))
                                 _g2378623797_))))
                        (declare (not safe))
                        (_g2378423855_ _body23641_))))
                  _g2375823769_)))
              (__tmp50655
               (let _recur23863_ ((_rest23866_ _clause23639_)
                                  (_rest-targets23868_ _tgt-lst23630_))
                 (let* ((___stx4651646517_ _rest23866_)
                        (_g2387123883_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4651646517_))))
                   (let ((___kont4651946520_
                          (lambda (_L23919_ _L23921_)
                            (let* ((_g2393623948_
                                    (lambda (_g2393723944_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2393723944_)))
                                   (_g2393523979_
                                    (lambda (_g2393723952_)
                                      (if (gx#stx-pair? _g2393723952_)
                                          (let ((_e2394223955_
                                                 (gx#syntax-e _g2393723952_)))
                                            (let ((_hd2394123959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2394223955_)))
                                                  (_tl2394023962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2394223955_))))
                                              ((lambda (_L23965_ _L23967_)
                                                 (let ((__tmp50656
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23863_
                                                           _L23919_
                                                           _L23965_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23628_
                                                    _L23967_
                                                    _L23921_
                                                    __tmp50656
                                                    _E23642_)))
                                               _tl2394023962_
                                               _hd2394123959_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2393623948_ _g2393723952_))))))
                              (declare (not safe))
                              (_g2393523979_ _rest-targets23868_))))
                         (___kont4652146522_
                          (lambda ()
                            (let ((__tmp50657
                                   (let ((__tmp50658
                                          (lambda (_g2389323896_ _g2389423899_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2389323896_
                                                    _g2389423899_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50658 '() _L23725_))))
                              (declare (not safe))
                              (cons _L23727_ __tmp50657)))))
                     (if (gx#stx-pair? ___stx4651646517_)
                         (let ((_e2387723909_ (gx#syntax-e ___stx4651646517_)))
                           (let ((_tl2387523916_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2387723909_)))
                                 (_hd2387623913_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2387723909_))))
                             (___kont4651946520_
                              _tl2387523916_
                              _hd2387623913_)))
                         (___kont4652146522_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2375623859_ __tmp50655))))
                                           _var2366223721_
                                           _hd2364923679_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2364423668_
                                             _g2364523672_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2365723701_ _target2365423695_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2364423668_ _g2364523672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2364423668_
                                                     _g2364523672_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2364423668_ _g2364523672_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2364423668_ _g2364523672_)))))
                           (__tmp50660
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23639_)))))
                      (declare (not safe))
                      (_g2364323987_ __tmp50660)))))
          (let ((__tmp50661
                 (let ((__tmp50662 (gx#stx-length _tgt-lst23630_)))
                   (declare (not safe))
                   (_parse-body23633_ __tmp50662))))
            (declare (not safe))
            (_generate-body23635_ __tmp50661)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23530_ _tgt23532_ _clauses23533_)
        (letrec ((_reclause23535_
                  (lambda (_clause23538_)
                    (let* ((___stx4653246533_ _clause23538_)
                           (_g2354323558_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4653246533_))))
                      (let ((___kont4653546536_ (lambda () _clause23538_))
                            (___kont4653746538_
                             (lambda (_L23586_ _L23588_)
                               (gx#stx-wrap-source
                                (let ((__tmp50663
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23588_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50663 _L23586_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4653946540_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23530_
                                _clause23538_))))
                        (if (gx#stx-pair? ___stx4653246533_)
                            (let ((_e2354723610_
                                   (gx#syntax-e ___stx4653246533_)))
                              (let ((_tl2354523617_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2354723610_)))
                                    (_hd2354623614_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2354723610_))))
                                (if (gx#identifier? _hd2354623614_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50664_|
                                         _hd2354623614_)
                                        (___kont4653546536_)
                                        (___kont4653746538_
                                         _tl2354523617_
                                         _hd2354623614_))
                                    (___kont4653746538_
                                     _tl2354523617_
                                     _hd2354623614_))))
                            (___kont4653946540_)))))))
          (let ((__tmp50666
                 (let () (declare (not safe)) (cons _tgt23532_ '())))
                (__tmp50665 (gx#stx-map _reclause23535_ _clauses23533_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23530_
             __tmp50666
             __tmp50665)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30761_)
        (let* ((___stx4656046561_ _stx30761_)
               (_g3076630795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4656046561_))))
          (let ((___kont4656346564_
                 (lambda (_L31035_)
                   (let* ((_g3104831056_
                           (lambda (_g3104931052_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3104931052_)))
                          (_g3104731109_
                           (lambda (_g3104931060_)
                             ((lambda (_L31063_)
                                (let ()
                                  (let* ((_g3107531083_
                                          (lambda (_g3107631079_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3107631079_)))
                                         (_g3107431105_
                                          (lambda (_g3107631087_)
                                            ((lambda (_L31090_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50670
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50667
                                                          (let ((__tmp50669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L31063_ '())))
                        (__tmp50668
                         (let () (declare (not safe)) (cons _L31090_ '()))))
                    (declare (not safe))
                    (cons __tmp50669 __tmp50668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50670
                                                           __tmp50667)))))
                                             _g3107631087_))))
                                    (_g3107431105_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50672
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50671
                                             (let ()
                                               (declare (not safe))
                                               (cons _L31063_ _L31035_))))
                                        (declare (not safe))
                                        (cons __tmp50672 __tmp50671))
                                      (gx#stx-source _stx30761_))))))
                              _g3104931060_))))
                     (_g3104731109_ (gx#genident 'e)))))
                (___kont4656546566_
                 (lambda (_L30930_)
                   (let* ((_g3094330951_
                           (lambda (_g3094430947_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3094430947_)))
                          (_g3094231004_
                           (lambda (_g3094430955_)
                             ((lambda (_L30958_)
                                (let ()
                                  (let* ((_g3097030978_
                                          (lambda (_g3097130974_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3097130974_)))
                                         (_g3096931000_
                                          (lambda (_g3097130982_)
                                            ((lambda (_L30985_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50675
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50673
                                                          (let ((__tmp50674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30985_ '()))))
                    (declare (not safe))
                    (cons _L30958_ __tmp50674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50675
                                                           __tmp50673)))))
                                             _g3097130982_))))
                                    (_g3096931000_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50677
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50676
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30958_ _L30930_))))
                                        (declare (not safe))
                                        (cons __tmp50677 __tmp50676))
                                      (gx#stx-source _stx30761_))))))
                              _g3094430955_))))
                     (_g3094231004_ (gx#genident 'args)))))
                (___kont4656746568_
                 (lambda (_L30822_ _L30824_)
                   (let* ((_g3083830846_
                           (lambda (_g3083930842_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3083930842_)))
                          (_g3083730899_
                           (lambda (_g3083930850_)
                             ((lambda (_L30853_)
                                (let ()
                                  (let* ((_g3086530873_
                                          (lambda (_g3086630869_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3086630869_)))
                                         (_g3086430895_
                                          (lambda (_g3086630877_)
                                            ((lambda (_L30880_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50683
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50678
                                                          (let ((__tmp50680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50681
                                (let ((__tmp50682
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30824_ '()))))
                                  (declare (not safe))
                                  (cons _L30853_ __tmp50682))))
                           (declare (not safe))
                           (cons __tmp50681 '())))
                        (__tmp50679
                         (let () (declare (not safe)) (cons _L30880_ '()))))
                    (declare (not safe))
                    (cons __tmp50680 __tmp50679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50683
                                                           __tmp50678)))))
                                             _g3086630877_))))
                                    (_g3086430895_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30761_
                                        _L30853_
                                        _L30822_))))))
                              _g3083930850_))))
                     (_g3083730899_ (gx#genident _L30824_))))))
            (let* ((___match4661346614_
                    (lambda (_e3078630802_
                             _hd3078530806_
                             _tl3078430809_
                             _e3078930812_
                             _hd3078830816_
                             _tl3078730819_)
                      (let ((_L30822_ _tl3078730819_)
                            (_L30824_ _hd3078830816_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4656746568_ _L30822_ _L30824_)
                            (let () (declare (not safe)) (_g3076630795_))))))
                   (___match4660146602_
                    (lambda (_e3077830910_
                             _hd3077730914_
                             _tl3077630917_
                             _e3078130920_
                             _hd3078030924_
                             _tl3077930927_)
                      (let ((_L30930_ _tl3077930927_))
                        (if (gx#stx-list? _L30930_)
                            (___kont4656546566_ _L30930_)
                            (___match4661346614_
                             _e3077830910_
                             _hd3077730914_
                             _tl3077630917_
                             _e3078130920_
                             _hd3078030924_
                             _tl3077930927_)))))
                   (___match4658546586_
                    (lambda (_e3077131015_
                             _hd3077031019_
                             _tl3076931022_
                             _e3077431025_
                             _hd3077331029_
                             _tl3077231032_)
                      (let ((_L31035_ _tl3077231032_))
                        (if (gx#stx-list? _L31035_)
                            (___kont4656346564_ _L31035_)
                            (___match4661346614_
                             _e3077131015_
                             _hd3077031019_
                             _tl3076931022_
                             _e3077431025_
                             _hd3077331029_
                             _tl3077231032_))))))
              (if (gx#stx-pair? ___stx4656046561_)
                  (let ((_e3077131015_ (gx#syntax-e ___stx4656046561_)))
                    (let ((_tl3076931022_
                           (let () (declare (not safe)) (##cdr _e3077131015_)))
                          (_hd3077031019_
                           (let ()
                             (declare (not safe))
                             (##car _e3077131015_))))
                      (if (gx#stx-pair? _tl3076931022_)
                          (let ((_e3077431025_ (gx#syntax-e _tl3076931022_)))
                            (let ((_tl3077231032_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3077431025_)))
                                  (_hd3077331029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3077431025_))))
                              (if (gx#identifier? _hd3077331029_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50685_|
                                       _hd3077331029_)
                                      (___match4658546586_
                                       _e3077131015_
                                       _hd3077031019_
                                       _tl3076931022_
                                       _e3077431025_
                                       _hd3077331029_
                                       _tl3077231032_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50684_|
                                           _hd3077331029_)
                                          (___match4660146602_
                                           _e3077131015_
                                           _hd3077031019_
                                           _tl3076931022_
                                           _e3077431025_
                                           _hd3077331029_
                                           _tl3077231032_)
                                          (___match4661346614_
                                           _e3077131015_
                                           _hd3077031019_
                                           _tl3076931022_
                                           _e3077431025_
                                           _hd3077331029_
                                           _tl3077231032_)))
                                  (___match4661346614_
                                   _e3077131015_
                                   _hd3077031019_
                                   _tl3076931022_
                                   _e3077431025_
                                   _hd3077331029_
                                   _tl3077231032_))))
                          (let () (declare (not safe)) (_g3076630795_)))))
                  (let () (declare (not safe)) (_g3076630795_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx31117_)
        (let* ((_g3112031144_
                (lambda (_g3112131140_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3112131140_)))
               (_g3111931356_
                (lambda (_g3112131148_)
                  (if (gx#stx-pair? _g3112131148_)
                      (let ((_e3112631151_ (gx#syntax-e _g3112131148_)))
                        (let ((_hd3112531155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3112631151_)))
                              (_tl3112431158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3112631151_))))
                          (if (gx#stx-pair? _tl3112431158_)
                              (let ((_e3112931161_
                                     (gx#syntax-e _tl3112431158_)))
                                (let ((_hd3112831165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3112931161_)))
                                      (_tl3112731168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3112931161_))))
                                  (if (gx#stx-pair/null? _hd3112831165_)
                                      (let ((_g50686_
                                             (gx#syntax-split-splice
                                              _hd3112831165_
                                              '0)))
                                        (begin
                                          (let ((_g50687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50686_)
                                                       (##vector-length
                                                        _g50686_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50687_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50687_)))
                                          (let ((_target3113031171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50686_ 0)))
                                                (_tl3113231174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50686_ 1))))
                                            (if (gx#stx-null? _tl3113231174_)
                                                (letrec ((_loop3113331177_
                                                          (lambda (_hd3113131181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3113731184_)
                    (if (gx#stx-pair? _hd3113131181_)
                        (let ((_e3113431187_ (gx#syntax-e _hd3113131181_)))
                          (let ((_lp-hd3113531191_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3113431187_)))
                                (_lp-tl3113631194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3113431187_))))
                            (_loop3113331177_
                             _lp-tl3113631194_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3113531191_ _e3113731184_)))))
                        (let ((_e3113831197_ (reverse _e3113731184_)))
                          ((lambda (_L31201_ _L31203_)
                             (if (gx#stx-list? _L31201_)
                                 (let* ((_g3122131238_
                                         (lambda (_g3122231234_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3122231234_)))
                                        (_g3122031344_
                                         (lambda (_g3122231242_)
                                           (if (gx#stx-pair/null?
                                                _g3122231242_)
                                               (let ((_g50688_
                                                      (gx#syntax-split-splice
                                                       _g3122231242_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50689_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50688_)
                        (##vector-length _g50688_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50689_ 2)))
                 (error "Context expects 2 values" _g50689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3122431245_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50688_
                                                             0)))
                                                         (_tl3122631248_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50688_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3122631248_)
                                                         (letrec ((_loop3122731251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3122531255_ _$e3123131258_)
                             (if (gx#stx-pair? _hd3122531255_)
                                 (let ((_e3122831261_
                                        (gx#syntax-e _hd3122531255_)))
                                   (let ((_lp-hd3122931265_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3122831261_)))
                                         (_lp-tl3123031268_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3122831261_))))
                                     (_loop3122731251_
                                      _lp-tl3123031268_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3122931265_
                                              _$e3123131258_)))))
                                 (let ((_$e3123231271_
                                        (reverse _$e3123131258_)))
                                   ((lambda (_L31275_)
                                      (let ()
                                        (let* ((_g3129131299_
                                                (lambda (_g3129231295_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3129231295_)))
                                               (_g3129031332_
                                                (lambda (_g3129231303_)
                                                  ((lambda (_L31306_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50696
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50690
                        (let ((__tmp50692
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31203_
                                  _L31275_)
                                 (let ((__tmp50693
                                        (lambda (_g3132031324_
                                                 _g3132131327_
                                                 _g3132231329_)
                                          (let ((__tmp50694
                                                 (let ((__tmp50695
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3132031324_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3132131327_
                                                         __tmp50695))))
                                            (declare (not safe))
                                            (cons __tmp50694 _g3132231329_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50693 '() _L31203_ _L31275_))))
                              (__tmp50691
                               (let ()
                                 (declare (not safe))
                                 (cons _L31306_ '()))))
                          (declare (not safe))
                          (cons __tmp50692 __tmp50691))))
                   (declare (not safe))
                   (cons __tmp50696 __tmp50690)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3129231303_))))
                                          (_g3129031332_
                                           (let ((__tmp50697
                                                  (let ((__tmp50698
                                                         (lambda (_g3133531338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3133631341_)
                   (let ()
                     (declare (not safe))
                     (cons _g3133531338_ _g3133631341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50698
                                                            '()
                                                            _L31275_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31117_
                                              __tmp50697
                                              _L31201_))))))
                                    _$e3123231271_))))))
                   (_loop3122731251_ _target3122431245_ '()))
                 (_g3122131238_ _g3122231242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3122131238_
                                                _g3122231242_)))))
                                   (_g3122031344_
                                    (gx#gentemps
                                     (let ((__tmp50699
                                            (lambda (_g3134731350_
                                                     _g3134831353_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3134731350_
                                                      _g3134831353_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50699 '() _L31203_)))))
                                 (_g3112031144_ _g3112131148_)))
                           _tl3112731168_
                           _e3113831197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3113331177_
                                                   _target3113031171_
                                                   '()))
                                                (_g3112031144_
                                                 _g3112131148_)))))
                                      (_g3112031144_ _g3112131148_))))
                              (_g3112031144_ _g3112131148_))))
                      (_g3112031144_ _g3112131148_)))))
          (_g3111931356_ _stx31117_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31362_)
        (let* ((___stx4661646617_ _$stx31362_)
               (_g3136831451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4661646617_))))
          (let ((___kont4661946620_
                 (lambda (_L31781_)
                   (let ((__tmp50703 (gx#datum->syntax '#f 'let))
                         (__tmp50700
                          (let ((__tmp50701
                                 (let ((__tmp50702
                                        (lambda (_g3179731800_ _g3179831803_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3179731800_
                                                  _g3179831803_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50702 '() _L31781_))))
                            (declare (not safe))
                            (cons '() __tmp50701))))
                     (declare (not safe))
                     (cons __tmp50703 __tmp50700))))
                (___kont4662346624_
                 (lambda (_L31689_ _L31691_ _L31692_ _L31693_)
                   (let ((__tmp50704
                          (let ((__tmp50707
                                 (let ((__tmp50708
                                        (let ((__tmp50709
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31691_ '()))))
                                          (declare (not safe))
                                          (cons _L31692_ __tmp50709))))
                                   (declare (not safe))
                                   (cons __tmp50708 '())))
                                (__tmp50705
                                 (let ((__tmp50706
                                        (lambda (_g3171531718_ _g3171631721_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3171531718_
                                                  _g3171631721_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50706 '() _L31689_))))
                            (declare (not safe))
                            (cons __tmp50707 __tmp50705))))
                     (declare (not safe))
                     (cons _L31693_ __tmp50704))))
                (___kont4662746628_
                 (lambda (_L31562_ _L31564_ _L31565_)
                   (let ((__tmp50719 (gx#datum->syntax '#f 'match*))
                         (__tmp50710
                          (let ((__tmp50717
                                 (let ((__tmp50718
                                        (lambda (_g3159131594_ _g3159231597_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3159131594_
                                                  _g3159231597_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50718 '() _L31564_)))
                                (__tmp50711
                                 (let ((__tmp50712
                                        (let ((__tmp50715
                                               (let ((__tmp50716
                                                      (lambda (_g3158931600_
                                                               _g3159031603_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3158931600_
                                                                _g3159031603_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50716
                                                         '()
                                                         _L31565_)))
                                              (__tmp50713
                                               (let ((__tmp50714
                                                      (lambda (_g3158731606_
                                                               _g3158831609_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3158731606_
                                                                _g3158831609_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50714
                                                         '()
                                                         _L31562_))))
                                          (declare (not safe))
                                          (cons __tmp50715 __tmp50713))))
                                   (declare (not safe))
                                   (cons __tmp50712 '()))))
                            (declare (not safe))
                            (cons __tmp50717 __tmp50711))))
                     (declare (not safe))
                     (cons __tmp50719 __tmp50710)))))
            (let* ((___match4670946710_
                    (lambda (_e3141631458_
                             _hd3141531462_
                             _tl3141431465_
                             _e3141931468_
                             _hd3141831472_
                             _tl3141731475_
                             ___splice4662946630_
                             _target3142031478_
                             _tl3142231481_)
                      (letrec ((_loop3142331484_
                                (lambda (_hd3142131488_
                                         _expr3142731491_
                                         _hd3142831493_)
                                  (if (gx#stx-pair? _hd3142131488_)
                                      (let ((_e3142431496_
                                             (gx#syntax-e _hd3142131488_)))
                                        (let ((_lp-tl3142631503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3142431496_)))
                                              (_lp-hd3142531500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3142431496_))))
                                          (if (gx#stx-pair? _lp-hd3142531500_)
                                              (let ((_e3143331506_
                                                     (gx#syntax-e
                                                      _lp-hd3142531500_)))
                                                (let ((_tl3143131513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3143331506_)))
                                                      (_hd3143231510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3143331506_))))
                                                  (if (gx#stx-pair?
                                                       _tl3143131513_)
                                                      (let ((_e3143631516_
                                                             (gx#syntax-e
                                                              _tl3143131513_)))
                                                        (let ((_tl3143431523_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3143631516_)))
                      (_hd3143531520_
                       (let () (declare (not safe)) (##car _e3143631516_))))
                  (if (gx#stx-null? _tl3143431523_)
                      (_loop3142331484_
                       _lp-tl3142631503_
                       (let ()
                         (declare (not safe))
                         (cons _hd3143531520_ _expr3142731491_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3143231510_ _hd3142831493_)))
                      (let () (declare (not safe)) (_g3136831451_)))))
              (let () (declare (not safe)) (_g3136831451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3136831451_)))))
                                      (let ((_hd3143031529_
                                             (reverse _hd3142831493_))
                                            (_expr3142931526_
                                             (reverse _expr3142731491_)))
                                        (if (gx#stx-pair/null? _tl3141731475_)
                                            (let ((___splice4663146632_
                                                   (gx#syntax-split-splice
                                                    _tl3141731475_
                                                    '0)))
                                              (let ((_tl3143931535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4663146632_
                                                        '1)))
                                                    (_target3143731532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4663146632_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3143931535_)
                                                    (letrec ((_loop3144031538_
                                                              (lambda (_hd3143831542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3144431545_)
                        (if (gx#stx-pair? _hd3143831542_)
                            (let ((_e3144131548_ (gx#syntax-e _hd3143831542_)))
                              (let ((_lp-tl3144331555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3144131548_)))
                                    (_lp-hd3144231552_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3144131548_))))
                                (_loop3144031538_
                                 _lp-tl3144331555_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3144231552_
                                         _body3144431545_)))))
                            (let ((_body3144531558_
                                   (reverse _body3144431545_)))
                              (___kont4662746628_
                               _body3144531558_
                               _expr3142931526_
                               _hd3143031529_))))))
              (_loop3144031538_ _target3143731532_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3136831451_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3136831451_))))))))
                        (_loop3142331484_ _target3142031478_ '() '()))))
                   (___match4670146702_
                    (lambda (_e3141631458_
                             _hd3141531462_
                             _tl3141431465_
                             _e3141931468_
                             _hd3141831472_
                             _tl3141731475_)
                      (if (gx#stx-pair/null? _hd3141831472_)
                          (let ((___splice4662946630_
                                 (gx#syntax-split-splice _hd3141831472_ '0)))
                            (let ((_tl3142231481_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4662946630_ '1)))
                                  (_target3142031478_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4662946630_ '0))))
                              (if (gx#stx-null? _tl3142231481_)
                                  (___match4670946710_
                                   _e3141631458_
                                   _hd3141531462_
                                   _tl3141431465_
                                   _e3141931468_
                                   _hd3141831472_
                                   _tl3141731475_
                                   ___splice4662946630_
                                   _target3142031478_
                                   _tl3142231481_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3136831451_)))))
                          (let () (declare (not safe)) (_g3136831451_)))))
                   (___match4668946690_
                    (lambda (_e3139231619_
                             _hd3139131623_
                             _tl3139031626_
                             _e3139531629_
                             _hd3139431633_
                             _tl3139331636_
                             _e3139831639_
                             _hd3139731643_
                             _tl3139631646_
                             _e3140131649_
                             _hd3140031653_
                             _tl3139931656_
                             ___splice4662546626_
                             _target3140231659_
                             _tl3140431662_)
                      (letrec ((_loop3140531665_
                                (lambda (_hd3140331669_ _body3140931672_)
                                  (if (gx#stx-pair? _hd3140331669_)
                                      (let ((_e3140631675_
                                             (gx#syntax-e _hd3140331669_)))
                                        (let ((_lp-tl3140831682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3140631675_)))
                                              (_lp-hd3140731679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3140631675_))))
                                          (_loop3140531665_
                                           _lp-tl3140831682_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3140731679_
                                                   _body3140931672_)))))
                                      (let ((_body3141031685_
                                             (reverse _body3140931672_)))
                                        (let ((_L31689_ _body3141031685_)
                                              (_L31691_ _hd3140031653_)
                                              (_L31692_ _hd3139731643_)
                                              (_L31693_ _hd3139131623_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31692_))
                                              (___kont4662346624_
                                               _L31689_
                                               _L31691_
                                               _L31692_
                                               _L31693_)
                                              (___match4670146702_
                                               _e3139231619_
                                               _hd3139131623_
                                               _tl3139031626_
                                               _e3139531629_
                                               _hd3139431633_
                                               _tl3139331636_))))))))
                        (_loop3140531665_ _target3140231659_ '()))))
                   (___match4665546656_
                    (lambda (_e3137331731_
                             _hd3137231735_
                             _tl3137131738_
                             _e3137631741_
                             _hd3137531745_
                             _tl3137431748_
                             ___splice4662146622_
                             _target3137731751_
                             _tl3137931754_)
                      (letrec ((_loop3138031757_
                                (lambda (_hd3137831761_ _body3138431764_)
                                  (if (gx#stx-pair? _hd3137831761_)
                                      (let ((_e3138131767_
                                             (gx#syntax-e _hd3137831761_)))
                                        (let ((_lp-tl3138331774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3138131767_)))
                                              (_lp-hd3138231771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3138131767_))))
                                          (_loop3138031757_
                                           _lp-tl3138331774_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3138231771_
                                                   _body3138431764_)))))
                                      (let ((_body3138531777_
                                             (reverse _body3138431764_)))
                                        (___kont4661946620_
                                         _body3138531777_))))))
                        (_loop3138031757_ _target3137731751_ '())))))
              (if (gx#stx-pair? ___stx4661646617_)
                  (let ((_e3137331731_ (gx#syntax-e ___stx4661646617_)))
                    (let ((_tl3137131738_
                           (let () (declare (not safe)) (##cdr _e3137331731_)))
                          (_hd3137231735_
                           (let ()
                             (declare (not safe))
                             (##car _e3137331731_))))
                      (if (gx#stx-pair? _tl3137131738_)
                          (let ((_e3137631741_ (gx#syntax-e _tl3137131738_)))
                            (let ((_tl3137431748_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3137631741_)))
                                  (_hd3137531745_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3137631741_))))
                              (if (gx#stx-null? _hd3137531745_)
                                  (if (gx#stx-pair/null? _tl3137431748_)
                                      (let ((___splice4662146622_
                                             (gx#syntax-split-splice
                                              _tl3137431748_
                                              '0)))
                                        (let ((_tl3137931754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4662146622_
                                                  '1)))
                                              (_target3137731751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4662146622_
                                                  '0))))
                                          (if (gx#stx-null? _tl3137931754_)
                                              (___match4665546656_
                                               _e3137331731_
                                               _hd3137231735_
                                               _tl3137131738_
                                               _e3137631741_
                                               _hd3137531745_
                                               _tl3137431748_
                                               ___splice4662146622_
                                               _target3137731751_
                                               _tl3137931754_)
                                              (if (gx#stx-pair/null?
                                                   _hd3137531745_)
                                                  (let ((___splice4662946630_
                                                         (gx#syntax-split-splice
                                                          _hd3137531745_
                                                          '0)))
                                                    (let ((_tl3142231481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4662946630_
                                                              '1)))
                                                          (_target3142031478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4662946630_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3142231481_)
                                                          (___match4670946710_
                                                           _e3137331731_
                                                           _hd3137231735_
                                                           _tl3137131738_
                                                           _e3137631741_
                                                           _hd3137531745_
                                                           _tl3137431748_
                                                           ___splice4662946630_
                                                           _target3142031478_
                                                           _tl3142231481_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3136831451_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3136831451_))))))
                                      (if (gx#stx-pair/null? _hd3137531745_)
                                          (let ((___splice4662946630_
                                                 (gx#syntax-split-splice
                                                  _hd3137531745_
                                                  '0)))
                                            (let ((_tl3142231481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4662946630_
                                                      '1)))
                                                  (_target3142031478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4662946630_
                                                      '0))))
                                              (if (gx#stx-null? _tl3142231481_)
                                                  (___match4670946710_
                                                   _e3137331731_
                                                   _hd3137231735_
                                                   _tl3137131738_
                                                   _e3137631741_
                                                   _hd3137531745_
                                                   _tl3137431748_
                                                   ___splice4662946630_
                                                   _target3142031478_
                                                   _tl3142231481_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3136831451_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3136831451_))))
                                  (if (gx#stx-pair? _hd3137531745_)
                                      (let ((_e3139831639_
                                             (gx#syntax-e _hd3137531745_)))
                                        (let ((_tl3139631646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3139831639_)))
                                              (_hd3139731643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3139831639_))))
                                          (if (gx#stx-pair? _tl3139631646_)
                                              (let ((_e3140131649_
                                                     (gx#syntax-e
                                                      _tl3139631646_)))
                                                (let ((_tl3139931656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3140131649_)))
                                                      (_hd3140031653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3140131649_))))
                                                  (if (gx#stx-null?
                                                       _tl3139931656_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3137431748_)
                                                          (let ((___splice4662546626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3137431748_ '0)))
                    (let ((_tl3140431662_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4662546626_ '1)))
                          (_target3140231659_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4662546626_ '0))))
                      (if (gx#stx-null? _tl3140431662_)
                          (___match4668946690_
                           _e3137331731_
                           _hd3137231735_
                           _tl3137131738_
                           _e3137631741_
                           _hd3137531745_
                           _tl3137431748_
                           _e3139831639_
                           _hd3139731643_
                           _tl3139631646_
                           _e3140131649_
                           _hd3140031653_
                           _tl3139931656_
                           ___splice4662546626_
                           _target3140231659_
                           _tl3140431662_)
                          (if (gx#stx-pair/null? _hd3137531745_)
                              (let ((___splice4662946630_
                                     (gx#syntax-split-splice
                                      _hd3137531745_
                                      '0)))
                                (let ((_tl3142231481_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4662946630_
                                          '1)))
                                      (_target3142031478_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4662946630_
                                          '0))))
                                  (if (gx#stx-null? _tl3142231481_)
                                      (___match4670946710_
                                       _e3137331731_
                                       _hd3137231735_
                                       _tl3137131738_
                                       _e3137631741_
                                       _hd3137531745_
                                       _tl3137431748_
                                       ___splice4662946630_
                                       _target3142031478_
                                       _tl3142231481_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3136831451_)))))
                              (let () (declare (not safe)) (_g3136831451_))))))
                  (if (gx#stx-pair/null? _hd3137531745_)
                      (let ((___splice4662946630_
                             (gx#syntax-split-splice _hd3137531745_ '0)))
                        (let ((_tl3142231481_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4662946630_ '1)))
                              (_target3142031478_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4662946630_ '0))))
                          (if (gx#stx-null? _tl3142231481_)
                              (___match4670946710_
                               _e3137331731_
                               _hd3137231735_
                               _tl3137131738_
                               _e3137631741_
                               _hd3137531745_
                               _tl3137431748_
                               ___splice4662946630_
                               _target3142031478_
                               _tl3142231481_)
                              (let () (declare (not safe)) (_g3136831451_)))))
                      (let () (declare (not safe)) (_g3136831451_))))
              (if (gx#stx-pair/null? _hd3137531745_)
                  (let ((___splice4662946630_
                         (gx#syntax-split-splice _hd3137531745_ '0)))
                    (let ((_tl3142231481_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4662946630_ '1)))
                          (_target3142031478_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4662946630_ '0))))
                      (if (gx#stx-null? _tl3142231481_)
                          (___match4670946710_
                           _e3137331731_
                           _hd3137231735_
                           _tl3137131738_
                           _e3137631741_
                           _hd3137531745_
                           _tl3137431748_
                           ___splice4662946630_
                           _target3142031478_
                           _tl3142231481_)
                          (let () (declare (not safe)) (_g3136831451_)))))
                  (let () (declare (not safe)) (_g3136831451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3137531745_)
                                                  (let ((___splice4662946630_
                                                         (gx#syntax-split-splice
                                                          _hd3137531745_
                                                          '0)))
                                                    (let ((_tl3142231481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4662946630_
                                                              '1)))
                                                          (_target3142031478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4662946630_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3142231481_)
                                                          (___match4670946710_
                                                           _e3137331731_
                                                           _hd3137231735_
                                                           _tl3137131738_
                                                           _e3137631741_
                                                           _hd3137531745_
                                                           _tl3137431748_
                                                           ___splice4662946630_
                                                           _target3142031478_
                                                           _tl3142231481_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3136831451_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3136831451_))))))
                                      (if (gx#stx-pair/null? _hd3137531745_)
                                          (let ((___splice4662946630_
                                                 (gx#syntax-split-splice
                                                  _hd3137531745_
                                                  '0)))
                                            (let ((_tl3142231481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4662946630_
                                                      '1)))
                                                  (_target3142031478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4662946630_
                                                      '0))))
                                              (if (gx#stx-null? _tl3142231481_)
                                                  (___match4670946710_
                                                   _e3137331731_
                                                   _hd3137231735_
                                                   _tl3137131738_
                                                   _e3137631741_
                                                   _hd3137531745_
                                                   _tl3137431748_
                                                   ___splice4662946630_
                                                   _target3142031478_
                                                   _tl3142231481_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3136831451_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3136831451_)))))))
                          (let () (declare (not safe)) (_g3136831451_)))))
                  (let () (declare (not safe)) (_g3136831451_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31814_)
        (let* ((___stx4671246713_ _$stx31814_)
               (_g3181931871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4671246713_))))
          (let ((___kont4671546716_
                 (lambda (_L32041_ _L32043_ _L32044_ _L32045_ _L32046_)
                   (let ((__tmp50729 (gx#datum->syntax '#f 'with))
                         (__tmp50720
                          (let ((__tmp50726
                                 (let ((__tmp50727
                                        (let ((__tmp50728
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32044_ '()))))
                                          (declare (not safe))
                                          (cons _L32045_ __tmp50728))))
                                   (declare (not safe))
                                   (cons __tmp50727 '())))
                                (__tmp50721
                                 (let ((__tmp50722
                                        (let ((__tmp50723
                                               (let ((__tmp50724
                                                      (let ((__tmp50725
                                                             (lambda (_g3207132074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3207232077_)
                       (let ()
                         (declare (not safe))
                         (cons _g3207132074_ _g3207232077_)))))
                (declare (not safe))
                (foldr1 __tmp50725 '() _L32041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L32043_ __tmp50724))))
                                          (declare (not safe))
                                          (cons _L32046_ __tmp50723))))
                                   (declare (not safe))
                                   (cons __tmp50722 '()))))
                            (declare (not safe))
                            (cons __tmp50726 __tmp50721))))
                     (declare (not safe))
                     (cons __tmp50729 __tmp50720))))
                (___kont4671946720_
                 (lambda (_L31928_)
                   (let ((__tmp50733 (gx#datum->syntax '#f 'let))
                         (__tmp50730
                          (let ((__tmp50731
                                 (let ((__tmp50732
                                        (lambda (_g3194531948_ _g3194631951_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3194531948_
                                                  _g3194631951_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50732 '() _L31928_))))
                            (declare (not safe))
                            (cons '() __tmp50731))))
                     (declare (not safe))
                     (cons __tmp50733 __tmp50730)))))
            (let* ((___match4678546786_
                    (lambda (_e3185331878_
                             _hd3185231882_
                             _tl3185131885_
                             _e3185631888_
                             _hd3185531892_
                             _tl3185431895_
                             ___splice4672146722_
                             _target3185731898_
                             _tl3185931901_)
                      (letrec ((_loop3186031904_
                                (lambda (_hd3185831908_ _body3186431911_)
                                  (if (gx#stx-pair? _hd3185831908_)
                                      (let ((_e3186131914_
                                             (gx#syntax-e _hd3185831908_)))
                                        (let ((_lp-tl3186331921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3186131914_)))
                                              (_lp-hd3186231918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3186131914_))))
                                          (_loop3186031904_
                                           _lp-tl3186331921_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3186231918_
                                                   _body3186431911_)))))
                                      (let ((_body3186531924_
                                             (reverse _body3186431911_)))
                                        (___kont4671946720_
                                         _body3186531924_))))))
                        (_loop3186031904_ _target3185731898_ '()))))
                   (___match4676346764_
                    (lambda (_e3182831961_
                             _hd3182731965_
                             _tl3182631968_
                             _e3183131971_
                             _hd3183031975_
                             _tl3182931978_
                             _e3183431981_
                             _hd3183331985_
                             _tl3183231988_
                             _e3183731991_
                             _hd3183631995_
                             _tl3183531998_
                             _e3184032001_
                             _hd3183932005_
                             _tl3183832008_
                             ___splice4671746718_
                             _target3184132011_
                             _tl3184332014_)
                      (letrec ((_loop3184432017_
                                (lambda (_hd3184232021_ _body3184832024_)
                                  (if (gx#stx-pair? _hd3184232021_)
                                      (let ((_e3184532027_
                                             (gx#syntax-e _hd3184232021_)))
                                        (let ((_lp-tl3184732034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3184532027_)))
                                              (_lp-hd3184632031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3184532027_))))
                                          (_loop3184432017_
                                           _lp-tl3184732034_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3184632031_
                                                   _body3184832024_)))))
                                      (let ((_body3184932037_
                                             (reverse _body3184832024_)))
                                        (___kont4671546716_
                                         _body3184932037_
                                         _tl3183231988_
                                         _hd3183932005_
                                         _hd3183631995_
                                         _hd3182731965_))))))
                        (_loop3184432017_ _target3184132011_ '())))))
              (if (gx#stx-pair? ___stx4671246713_)
                  (let ((_e3182831961_ (gx#syntax-e ___stx4671246713_)))
                    (let ((_tl3182631968_
                           (let () (declare (not safe)) (##cdr _e3182831961_)))
                          (_hd3182731965_
                           (let ()
                             (declare (not safe))
                             (##car _e3182831961_))))
                      (if (gx#stx-pair? _tl3182631968_)
                          (let ((_e3183131971_ (gx#syntax-e _tl3182631968_)))
                            (let ((_tl3182931978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3183131971_)))
                                  (_hd3183031975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3183131971_))))
                              (if (gx#stx-pair? _hd3183031975_)
                                  (let ((_e3183431981_
                                         (gx#syntax-e _hd3183031975_)))
                                    (let ((_tl3183231988_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3183431981_)))
                                          (_hd3183331985_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3183431981_))))
                                      (if (gx#stx-pair? _hd3183331985_)
                                          (let ((_e3183731991_
                                                 (gx#syntax-e _hd3183331985_)))
                                            (let ((_tl3183531998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3183731991_)))
                                                  (_hd3183631995_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3183731991_))))
                                              (if (gx#stx-pair? _tl3183531998_)
                                                  (let ((_e3184032001_
                                                         (gx#syntax-e
                                                          _tl3183531998_)))
                                                    (let ((_tl3183832008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3184032001_)))
                                                          (_hd3183932005_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3184032001_))))
                                                      (if (gx#stx-null?
                                                           _tl3183832008_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3182931978_)
                                                              (let ((___splice4671746718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3182931978_ '0)))
                        (let ((_tl3184332014_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4671746718_ '1)))
                              (_target3184132011_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4671746718_ '0))))
                          (if (gx#stx-null? _tl3184332014_)
                              (___match4676346764_
                               _e3182831961_
                               _hd3182731965_
                               _tl3182631968_
                               _e3183131971_
                               _hd3183031975_
                               _tl3182931978_
                               _e3183431981_
                               _hd3183331985_
                               _tl3183231988_
                               _e3183731991_
                               _hd3183631995_
                               _tl3183531998_
                               _e3184032001_
                               _hd3183932005_
                               _tl3183832008_
                               ___splice4671746718_
                               _target3184132011_
                               _tl3184332014_)
                              (let () (declare (not safe)) (_g3181931871_)))))
                      (let () (declare (not safe)) (_g3181931871_)))
                  (let () (declare (not safe)) (_g3181931871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181931871_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181931871_)))))
                                  (if (gx#stx-null? _hd3183031975_)
                                      (if (gx#stx-pair/null? _tl3182931978_)
                                          (let ((___splice4672146722_
                                                 (gx#syntax-split-splice
                                                  _tl3182931978_
                                                  '0)))
                                            (let ((_tl3185931901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4672146722_
                                                      '1)))
                                                  (_target3185731898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4672146722_
                                                      '0))))
                                              (if (gx#stx-null? _tl3185931901_)
                                                  (___match4678546786_
                                                   _e3182831961_
                                                   _hd3182731965_
                                                   _tl3182631968_
                                                   _e3183131971_
                                                   _hd3183031975_
                                                   _tl3182931978_
                                                   ___splice4672146722_
                                                   _target3185731898_
                                                   _tl3185931901_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181931871_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181931871_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181931871_))))))
                          (let () (declare (not safe)) (_g3181931871_)))))
                  (let () (declare (not safe)) (_g3181931871_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx32086_)
        (let* ((___stx4678846789_ _$stx32086_)
               (_g3209732243_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4678846789_))))
          (let ((___kont4679146792_
                 (lambda (_L32847_ _L32849_ _L32850_)
                   (let ((__tmp50739 (gx#datum->syntax '#f 'and))
                         (__tmp50734
                          (let ((__tmp50735
                                 (lambda (_g3287132874_ _g3287232877_)
                                   (let ((__tmp50736
                                          (let ((__tmp50737
                                                 (let ((__tmp50738
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32847_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3287132874_
                                                         __tmp50738))))
                                            (declare (not safe))
                                            (cons _L32850_ __tmp50737))))
                                     (declare (not safe))
                                     (cons __tmp50736 _g3287232877_)))))
                            (declare (not safe))
                            (foldr1 __tmp50735 '() _L32849_))))
                     (declare (not safe))
                     (cons __tmp50739 __tmp50734))))
                (___kont4679546796_
                 (lambda (_L32737_ _L32739_ _L32740_)
                   (let ((__tmp50745 (gx#datum->syntax '#f 'or))
                         (__tmp50740
                          (let ((__tmp50741
                                 (lambda (_g3276132764_ _g3276232767_)
                                   (let ((__tmp50742
                                          (let ((__tmp50743
                                                 (let ((__tmp50744
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32737_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276132764_
                                                         __tmp50744))))
                                            (declare (not safe))
                                            (cons _L32740_ __tmp50743))))
                                     (declare (not safe))
                                     (cons __tmp50742 _g3276232767_)))))
                            (declare (not safe))
                            (foldr1 __tmp50741 '() _L32739_))))
                     (declare (not safe))
                     (cons __tmp50745 __tmp50740))))
                (___kont4679946800_
                 (lambda (_L32637_ _L32639_ _L32640_)
                   (let ((__tmp50750 (gx#datum->syntax '#f 'not))
                         (__tmp50746
                          (let ((__tmp50747
                                 (let ((__tmp50748
                                        (let ((__tmp50749
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32637_ '()))))
                                          (declare (not safe))
                                          (cons _L32639_ __tmp50749))))
                                   (declare (not safe))
                                   (cons _L32640_ __tmp50748))))
                            (declare (not safe))
                            (cons __tmp50747 '()))))
                     (declare (not safe))
                     (cons __tmp50750 __tmp50746))))
                (___kont4680146802_
                 (lambda (_L32563_ _L32565_)
                   (let ((__tmp50751
                          (let () (declare (not safe)) (cons _L32563_ '()))))
                     (declare (not safe))
                     (cons _L32565_ __tmp50751))))
                (___kont4680346804_
                 (lambda (_L32511_ _L32513_)
                   (let ((__tmp50760 (gx#datum->syntax '#f 'lambda))
                         (__tmp50752
                          (let ((__tmp50758
                                 (let ((__tmp50759
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50759 '())))
                                (__tmp50753
                                 (let ((__tmp50754
                                        (let ((__tmp50755
                                               (let ((__tmp50756
                                                      (let ((__tmp50757
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50757
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32511_ __tmp50756))))
                                          (declare (not safe))
                                          (cons _L32513_ __tmp50755))))
                                   (declare (not safe))
                                   (cons __tmp50754 '()))))
                            (declare (not safe))
                            (cons __tmp50758 __tmp50753))))
                     (declare (not safe))
                     (cons __tmp50760 __tmp50752))))
                (___kont4680546806_
                 (lambda (_L32463_ _L32465_ _L32466_)
                   (let ((__tmp50779 (gx#datum->syntax '#f 'lambda))
                         (__tmp50761
                          (let ((__tmp50777
                                 (let ((__tmp50778
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50778 '())))
                                (__tmp50762
                                 (let ((__tmp50763
                                        (let ((__tmp50776
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50764
                                               (let ((__tmp50769
                                                      (let ((__tmp50775
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50770
                                                             (let ((__tmp50771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50772
                                   (let ((__tmp50773
                                          (let ((__tmp50774
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50774 '()))))
                                     (declare (not safe))
                                     (cons _L32465_ __tmp50773))))
                              (declare (not safe))
                              (cons _L32466_ __tmp50772))))
                       (declare (not safe))
                       (cons __tmp50771 '()))))
                (declare (not safe))
                (cons __tmp50775 __tmp50770)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50765
                                                      (let ((__tmp50766
                                                             (let ((__tmp50767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50768 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50768 '()))))
                       (declare (not safe))
                       (cons _L32463_ __tmp50767))))
                (declare (not safe))
                (cons __tmp50766 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50769
                                                       __tmp50765))))
                                          (declare (not safe))
                                          (cons __tmp50776 __tmp50764))))
                                   (declare (not safe))
                                   (cons __tmp50763 '()))))
                            (declare (not safe))
                            (cons __tmp50777 __tmp50762))))
                     (declare (not safe))
                     (cons __tmp50779 __tmp50761))))
                (___kont4680746808_
                 (lambda (_L32394_ _L32396_ _L32397_)
                   (let ((__tmp50795 (gx#datum->syntax '#f 'lambda))
                         (__tmp50780
                          (let ((__tmp50793
                                 (let ((__tmp50794
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50794 '())))
                                (__tmp50781
                                 (let ((__tmp50782
                                        (let ((__tmp50792
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50783
                                               (let ((__tmp50788
                                                      (let ((__tmp50789
                                                             (let ((__tmp50790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50791 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50791 '()))))
                       (declare (not safe))
                       (cons _L32396_ __tmp50790))))
                (declare (not safe))
                (cons _L32397_ __tmp50789)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50784
                                                      (let ((__tmp50785
                                                             (let ((__tmp50786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50787 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50787 '()))))
                       (declare (not safe))
                       (cons _L32394_ __tmp50786))))
                (declare (not safe))
                (cons __tmp50785 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50788
                                                       __tmp50784))))
                                          (declare (not safe))
                                          (cons __tmp50792 __tmp50783))))
                                   (declare (not safe))
                                   (cons __tmp50782 '()))))
                            (declare (not safe))
                            (cons __tmp50793 __tmp50781))))
                     (declare (not safe))
                     (cons __tmp50795 __tmp50780))))
                (___kont4680946810_
                 (lambda (_L32314_ _L32316_ _L32317_ _L32318_)
                   (let ((__tmp50813 (gx#datum->syntax '#f 'lambda))
                         (__tmp50796
                          (let ((__tmp50811
                                 (let ((__tmp50812
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50812 '())))
                                (__tmp50797
                                 (let ((__tmp50798
                                        (let ((__tmp50810
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50799
                                               (let ((__tmp50806
                                                      (let ((__tmp50807
                                                             (let ((__tmp50808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50809 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50809 '()))))
                       (declare (not safe))
                       (cons _L32317_ __tmp50808))))
                (declare (not safe))
                (cons _L32318_ __tmp50807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50800
                                                      (let ((__tmp50801
                                                             (let ((__tmp50802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50803
                                   (let ((__tmp50804
                                          (let ((__tmp50805
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50805 '()))))
                                     (declare (not safe))
                                     (cons _L32316_ __tmp50804))))
                              (declare (not safe))
                              (cons __tmp50803 '()))))
                       (declare (not safe))
                       (cons _L32314_ __tmp50802))))
                (declare (not safe))
                (cons __tmp50801 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50806
                                                       __tmp50800))))
                                          (declare (not safe))
                                          (cons __tmp50810 __tmp50799))))
                                   (declare (not safe))
                                   (cons __tmp50798 '()))))
                            (declare (not safe))
                            (cons __tmp50811 __tmp50797))))
                     (declare (not safe))
                     (cons __tmp50813 __tmp50796)))))
            (let* ((___match4696146962_
                    (lambda (_e3218932423_
                             _hd3218832427_
                             _tl3218732430_
                             _e3219232433_
                             _hd3219132437_
                             _tl3219032440_
                             _e3219532443_
                             _hd3219432447_
                             _tl3219332450_)
                      (if (gx#identifier? _hd3219432447_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50815_|
                               _hd3219432447_)
                              (if (gx#stx-pair? _tl3219332450_)
                                  (let ((_e3219832453_
                                         (gx#syntax-e _tl3219332450_)))
                                    (let ((_tl3219632460_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3219832453_)))
                                          (_hd3219732457_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3219832453_))))
                                      (if (gx#stx-null? _tl3219632460_)
                                          (___kont4680546806_
                                           _hd3219732457_
                                           _hd3219132437_
                                           _hd3218832427_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))
                              (let () (declare (not safe)) (_g3209732243_)))
                          (if (gx#stx-datum? _hd3219432447_)
                              (let ((_e3221132380_ (gx#stx-e _hd3219432447_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3221132380_ '::))
                                    (if (gx#stx-pair? _tl3219332450_)
                                        (let ((_e3221432384_
                                               (gx#syntax-e _tl3219332450_)))
                                          (let ((_tl3221232391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3221432384_)))
                                                (_hd3221332388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3221432384_))))
                                            (if (gx#stx-null? _tl3221232391_)
                                                (___kont4680746808_
                                                 _hd3221332388_
                                                 _hd3219132437_
                                                 _hd3218832427_)
                                                (if (gx#stx-pair?
                                                     _tl3221232391_)
                                                    (let ((_e3223432294_
                                                           (gx#syntax-e
                                                            _tl3221232391_)))
                                                      (let ((_tl3223232301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3223432294_)))
                    (_hd3223332298_
                     (let () (declare (not safe)) (##car _e3223432294_))))
                (if (gx#identifier? _hd3223332298_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50814_|
                         _hd3223332298_)
                        (if (gx#stx-pair? _tl3223232301_)
                            (let ((_e3223732304_ (gx#syntax-e _tl3223232301_)))
                              (let ((_tl3223532311_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3223732304_)))
                                    (_hd3223632308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3223732304_))))
                                (if (gx#stx-null? _tl3223532311_)
                                    (___kont4680946810_
                                     _hd3223632308_
                                     _hd3221332388_
                                     _hd3219132437_
                                     _hd3218832427_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))))
                            (let () (declare (not safe)) (_g3209732243_)))
                        (let () (declare (not safe)) (_g3209732243_)))
                    (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_))))
                              (let () (declare (not safe)) (_g3209732243_))))))
                   (___match4694146942_
                    (lambda (_e3218032491_
                             _hd3217932495_
                             _tl3217832498_
                             _e3218332501_
                             _hd3218232505_
                             _tl3218132508_)
                      (if (gx#stx-null? _tl3218132508_)
                          (___kont4680346804_ _hd3218232505_ _hd3217932495_)
                          (if (gx#stx-pair? _tl3218132508_)
                              (let ((_e3219532443_
                                     (gx#syntax-e _tl3218132508_)))
                                (let ((_tl3219332450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3219532443_)))
                                      (_hd3219432447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3219532443_))))
                                  (if (gx#identifier? _hd3219432447_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50815_|
                                           _hd3219432447_)
                                          (if (gx#stx-pair? _tl3219332450_)
                                              (let ((_e3219832453_
                                                     (gx#syntax-e
                                                      _tl3219332450_)))
                                                (let ((_tl3219632460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3219832453_)))
                                                      (_hd3219732457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3219832453_))))
                                                  (if (gx#stx-null?
                                                       _tl3219632460_)
                                                      (___kont4680546806_
                                                       _hd3219732457_
                                                       _hd3218232505_
                                                       _hd3217932495_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3209732243_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))
                                      (if (gx#stx-datum? _hd3219432447_)
                                          (let ((_e3221132380_
                                                 (gx#stx-e _hd3219432447_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3221132380_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3219332450_)
                                                    (let ((_e3221432384_
                                                           (gx#syntax-e
                                                            _tl3219332450_)))
                                                      (let ((_tl3221232391_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3221432384_)))
                    (_hd3221332388_
                     (let () (declare (not safe)) (##car _e3221432384_))))
                (if (gx#stx-null? _tl3221232391_)
                    (___kont4680746808_
                     _hd3221332388_
                     _hd3218232505_
                     _hd3217932495_)
                    (if (gx#stx-pair? _tl3221232391_)
                        (let ((_e3223432294_ (gx#syntax-e _tl3221232391_)))
                          (let ((_tl3223232301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3223432294_)))
                                (_hd3223332298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3223432294_))))
                            (if (gx#identifier? _hd3223332298_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50814_|
                                     _hd3223332298_)
                                    (if (gx#stx-pair? _tl3223232301_)
                                        (let ((_e3223732304_
                                               (gx#syntax-e _tl3223232301_)))
                                          (let ((_tl3223532311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3223732304_)))
                                                (_hd3223632308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3223732304_))))
                                            (if (gx#stx-null? _tl3223532311_)
                                                (___kont4680946810_
                                                 _hd3223632308_
                                                 _hd3221332388_
                                                 _hd3218232505_
                                                 _hd3217932495_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3209732243_)))))
                        (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_))))))
                              (let () (declare (not safe)) (_g3209732243_))))))
                   (___match4687146872_
                    (lambda (_e3212832667_
                             _hd3212732671_
                             _tl3212632674_
                             _e3213132677_
                             _hd3213032681_
                             _tl3212932684_
                             _e3213432687_
                             _hd3213332691_
                             _tl3213232694_
                             ___splice4679746798_
                             _target3213532697_
                             _tl3213732700_)
                      (letrec ((_loop3213832703_
                                (lambda (_hd3213632707_ _pred3214232710_)
                                  (if (gx#stx-pair? _hd3213632707_)
                                      (let ((_e3213932713_
                                             (gx#syntax-e _hd3213632707_)))
                                        (let ((_lp-tl3214132720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3213932713_)))
                                              (_lp-hd3214032717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3213932713_))))
                                          (_loop3213832703_
                                           _lp-tl3214132720_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3214032717_
                                                   _pred3214232710_)))))
                                      (let ((_pred3214332723_
                                             (reverse _pred3214232710_)))
                                        (if (gx#stx-pair? _tl3212932684_)
                                            (let ((_e3214632727_
                                                   (gx#syntax-e
                                                    _tl3212932684_)))
                                              (let ((_tl3214432734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3214632727_)))
                                                    (_hd3214532731_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3214632727_))))
                                                (if (gx#stx-null?
                                                     _tl3214432734_)
                                                    (___kont4679546796_
                                                     _hd3214532731_
                                                     _pred3214332723_
                                                     _hd3212732671_)
                                                    (___match4696146962_
                                                     _e3212832667_
                                                     _hd3212732671_
                                                     _tl3212632674_
                                                     _e3213132677_
                                                     _hd3213032681_
                                                     _tl3212932684_
                                                     _e3214632727_
                                                     _hd3214532731_
                                                     _tl3214432734_))))
                                            (___match4694146942_
                                             _e3212832667_
                                             _hd3212732671_
                                             _tl3212632674_
                                             _e3213132677_
                                             _hd3213032681_
                                             _tl3212932684_)))))))
                        (_loop3213832703_ _target3213532697_ '()))))
                   (___match4684146842_
                    (lambda (_e3210432777_
                             _hd3210332781_
                             _tl3210232784_
                             _e3210732787_
                             _hd3210632791_
                             _tl3210532794_
                             _e3211032797_
                             _hd3210932801_
                             _tl3210832804_
                             ___splice4679346794_
                             _target3211132807_
                             _tl3211332810_)
                      (letrec ((_loop3211432813_
                                (lambda (_hd3211232817_ _pred3211832820_)
                                  (if (gx#stx-pair? _hd3211232817_)
                                      (let ((_e3211532823_
                                             (gx#syntax-e _hd3211232817_)))
                                        (let ((_lp-tl3211732830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3211532823_)))
                                              (_lp-hd3211632827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3211532823_))))
                                          (_loop3211432813_
                                           _lp-tl3211732830_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3211632827_
                                                   _pred3211832820_)))))
                                      (let ((_pred3211932833_
                                             (reverse _pred3211832820_)))
                                        (if (gx#stx-pair? _tl3210532794_)
                                            (let ((_e3212232837_
                                                   (gx#syntax-e
                                                    _tl3210532794_)))
                                              (let ((_tl3212032844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212232837_)))
                                                    (_hd3212132841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212232837_))))
                                                (if (gx#stx-null?
                                                     _tl3212032844_)
                                                    (___kont4679146792_
                                                     _hd3212132841_
                                                     _pred3211932833_
                                                     _hd3210332781_)
                                                    (___match4696146962_
                                                     _e3210432777_
                                                     _hd3210332781_
                                                     _tl3210232784_
                                                     _e3210732787_
                                                     _hd3210632791_
                                                     _tl3210532794_
                                                     _e3212232837_
                                                     _hd3212132841_
                                                     _tl3212032844_))))
                                            (___match4694146942_
                                             _e3210432777_
                                             _hd3210332781_
                                             _tl3210232784_
                                             _e3210732787_
                                             _hd3210632791_
                                             _tl3210532794_)))))))
                        (_loop3211432813_ _target3211132807_ '())))))
              (if (gx#stx-pair? ___stx4678846789_)
                  (let ((_e3210432777_ (gx#syntax-e ___stx4678846789_)))
                    (let ((_tl3210232784_
                           (let () (declare (not safe)) (##cdr _e3210432777_)))
                          (_hd3210332781_
                           (let ()
                             (declare (not safe))
                             (##car _e3210432777_))))
                      (if (gx#stx-pair? _tl3210232784_)
                          (let ((_e3210732787_ (gx#syntax-e _tl3210232784_)))
                            (let ((_tl3210532794_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3210732787_)))
                                  (_hd3210632791_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3210732787_))))
                              (if (gx#stx-pair? _hd3210632791_)
                                  (let ((_e3211032797_
                                         (gx#syntax-e _hd3210632791_)))
                                    (let ((_tl3210832804_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3211032797_)))
                                          (_hd3210932801_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3211032797_))))
                                      (if (gx#identifier? _hd3210932801_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50818_|
                                               _hd3210932801_)
                                              (if (gx#stx-pair/null?
                                                   _tl3210832804_)
                                                  (let ((___splice4679346794_
                                                         (gx#syntax-split-splice
                                                          _tl3210832804_
                                                          '0)))
                                                    (let ((_tl3211332810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679346794_
                                                              '1)))
                                                          (_target3211132807_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4679346794_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3211332810_)
                                                          (___match4684146842_
                                                           _e3210432777_
                                                           _hd3210332781_
                                                           _tl3210232784_
                                                           _e3210732787_
                                                           _hd3210632791_
                                                           _tl3210532794_
                                                           _e3211032797_
                                                           _hd3210932801_
                                                           _tl3210832804_
                                                           ___splice4679346794_
                                                           _target3211132807_
                                                           _tl3211332810_)
                                                          (if (gx#stx-pair?
                                                               _tl3210532794_)
                                                              (let ((_e3217532553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3210532794_)))
                        (let ((_tl3217332560_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3217532553_)))
                              (_hd3217432557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3217532553_))))
                          (if (gx#stx-null? _tl3217332560_)
                              (___kont4680146802_
                               _hd3217432557_
                               _hd3210632791_)
                              (if (gx#identifier? _hd3217432557_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50815_|
                                       _hd3217432557_)
                                      (if (gx#stx-pair? _tl3217332560_)
                                          (let ((_e3219832453_
                                                 (gx#syntax-e _tl3217332560_)))
                                            (let ((_tl3219632460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3219832453_)))
                                                  (_hd3219732457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3219832453_))))
                                              (if (gx#stx-null? _tl3219632460_)
                                                  (___kont4680546806_
                                                   _hd3219732457_
                                                   _hd3210632791_
                                                   _hd3210332781_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3209732243_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))
                                  (if (gx#stx-datum? _hd3217432557_)
                                      (let ((_e3221132380_
                                             (gx#stx-e _hd3217432557_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3221132380_ '::))
                                            (if (gx#stx-pair? _tl3217332560_)
                                                (let ((_e3221432384_
                                                       (gx#syntax-e
                                                        _tl3217332560_)))
                                                  (let ((_tl3221232391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3221432384_)))
                                                        (_hd3221332388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3221432384_))))
                                                    (if (gx#stx-null?
                                                         _tl3221232391_)
                                                        (___kont4680746808_
                                                         _hd3221332388_
                                                         _hd3210632791_
                                                         _hd3210332781_)
                                                        (if (gx#stx-pair?
                                                             _tl3221232391_)
                                                            (let ((_e3223432294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3221232391_)))
                      (let ((_tl3223232301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3223432294_)))
                            (_hd3223332298_
                             (let ()
                               (declare (not safe))
                               (##car _e3223432294_))))
                        (if (gx#identifier? _hd3223332298_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50814_|
                                 _hd3223332298_)
                                (if (gx#stx-pair? _tl3223232301_)
                                    (let ((_e3223732304_
                                           (gx#syntax-e _tl3223232301_)))
                                      (let ((_tl3223532311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3223732304_)))
                                            (_hd3223632308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3223732304_))))
                                        (if (gx#stx-null? _tl3223532311_)
                                            (___kont4680946810_
                                             _hd3223632308_
                                             _hd3221332388_
                                             _hd3210632791_
                                             _hd3210332781_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))
                                (let () (declare (not safe)) (_g3209732243_)))
                            (let () (declare (not safe)) (_g3209732243_)))))
                    (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))))))
                      (if (gx#stx-null? _tl3210532794_)
                          (___kont4680346804_ _hd3210632791_ _hd3210332781_)
                          (let () (declare (not safe)) (_g3209732243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3210532794_)
                                                      (let ((_e3217532553_
                                                             (gx#syntax-e
                                                              _tl3210532794_)))
                                                        (let ((_tl3217332560_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3217532553_)))
                      (_hd3217432557_
                       (let () (declare (not safe)) (##car _e3217532553_))))
                  (if (gx#stx-null? _tl3217332560_)
                      (___kont4680146802_ _hd3217432557_ _hd3210632791_)
                      (if (gx#identifier? _hd3217432557_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50815_|
                               _hd3217432557_)
                              (if (gx#stx-pair? _tl3217332560_)
                                  (let ((_e3219832453_
                                         (gx#syntax-e _tl3217332560_)))
                                    (let ((_tl3219632460_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3219832453_)))
                                          (_hd3219732457_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3219832453_))))
                                      (if (gx#stx-null? _tl3219632460_)
                                          (___kont4680546806_
                                           _hd3219732457_
                                           _hd3210632791_
                                           _hd3210332781_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))
                              (let () (declare (not safe)) (_g3209732243_)))
                          (if (gx#stx-datum? _hd3217432557_)
                              (let ((_e3221132380_ (gx#stx-e _hd3217432557_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3221132380_ '::))
                                    (if (gx#stx-pair? _tl3217332560_)
                                        (let ((_e3221432384_
                                               (gx#syntax-e _tl3217332560_)))
                                          (let ((_tl3221232391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3221432384_)))
                                                (_hd3221332388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3221432384_))))
                                            (if (gx#stx-null? _tl3221232391_)
                                                (___kont4680746808_
                                                 _hd3221332388_
                                                 _hd3210632791_
                                                 _hd3210332781_)
                                                (if (gx#stx-pair?
                                                     _tl3221232391_)
                                                    (let ((_e3223432294_
                                                           (gx#syntax-e
                                                            _tl3221232391_)))
                                                      (let ((_tl3223232301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3223432294_)))
                    (_hd3223332298_
                     (let () (declare (not safe)) (##car _e3223432294_))))
                (if (gx#identifier? _hd3223332298_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50814_|
                         _hd3223332298_)
                        (if (gx#stx-pair? _tl3223232301_)
                            (let ((_e3223732304_ (gx#syntax-e _tl3223232301_)))
                              (let ((_tl3223532311_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3223732304_)))
                                    (_hd3223632308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3223732304_))))
                                (if (gx#stx-null? _tl3223532311_)
                                    (___kont4680946810_
                                     _hd3223632308_
                                     _hd3221332388_
                                     _hd3210632791_
                                     _hd3210332781_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))))
                            (let () (declare (not safe)) (_g3209732243_)))
                        (let () (declare (not safe)) (_g3209732243_)))
                    (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_))))
                              (let ()
                                (declare (not safe))
                                (_g3209732243_)))))))
              (if (gx#stx-null? _tl3210532794_)
                  (___kont4680346804_ _hd3210632791_ _hd3210332781_)
                  (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50817_|
                                                   _hd3210932801_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3210832804_)
                                                      (let ((___splice4679746798_
                                                             (gx#syntax-split-splice
                                                              _tl3210832804_
                                                              '0)))
                                                        (let ((_tl3213732700_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4679746798_ '1)))
                      (_target3213532697_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4679746798_ '0))))
                  (if (gx#stx-null? _tl3213732700_)
                      (___match4687146872_
                       _e3210432777_
                       _hd3210332781_
                       _tl3210232784_
                       _e3210732787_
                       _hd3210632791_
                       _tl3210532794_
                       _e3211032797_
                       _hd3210932801_
                       _tl3210832804_
                       ___splice4679746798_
                       _target3213532697_
                       _tl3213732700_)
                      (if (gx#stx-pair? _tl3210532794_)
                          (let ((_e3217532553_ (gx#syntax-e _tl3210532794_)))
                            (let ((_tl3217332560_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3217532553_)))
                                  (_hd3217432557_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3217532553_))))
                              (if (gx#stx-null? _tl3217332560_)
                                  (___kont4680146802_
                                   _hd3217432557_
                                   _hd3210632791_)
                                  (if (gx#identifier? _hd3217432557_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50815_|
                                           _hd3217432557_)
                                          (if (gx#stx-pair? _tl3217332560_)
                                              (let ((_e3219832453_
                                                     (gx#syntax-e
                                                      _tl3217332560_)))
                                                (let ((_tl3219632460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3219832453_)))
                                                      (_hd3219732457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3219832453_))))
                                                  (if (gx#stx-null?
                                                       _tl3219632460_)
                                                      (___kont4680546806_
                                                       _hd3219732457_
                                                       _hd3210632791_
                                                       _hd3210332781_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3209732243_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))
                                      (if (gx#stx-datum? _hd3217432557_)
                                          (let ((_e3221132380_
                                                 (gx#stx-e _hd3217432557_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3221132380_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3217332560_)
                                                    (let ((_e3221432384_
                                                           (gx#syntax-e
                                                            _tl3217332560_)))
                                                      (let ((_tl3221232391_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3221432384_)))
                    (_hd3221332388_
                     (let () (declare (not safe)) (##car _e3221432384_))))
                (if (gx#stx-null? _tl3221232391_)
                    (___kont4680746808_
                     _hd3221332388_
                     _hd3210632791_
                     _hd3210332781_)
                    (if (gx#stx-pair? _tl3221232391_)
                        (let ((_e3223432294_ (gx#syntax-e _tl3221232391_)))
                          (let ((_tl3223232301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3223432294_)))
                                (_hd3223332298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3223432294_))))
                            (if (gx#identifier? _hd3223332298_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50814_|
                                     _hd3223332298_)
                                    (if (gx#stx-pair? _tl3223232301_)
                                        (let ((_e3223732304_
                                               (gx#syntax-e _tl3223232301_)))
                                          (let ((_tl3223532311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3223732304_)))
                                                (_hd3223632308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3223732304_))))
                                            (if (gx#stx-null? _tl3223532311_)
                                                (___kont4680946810_
                                                 _hd3223632308_
                                                 _hd3221332388_
                                                 _hd3210632791_
                                                 _hd3210332781_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3209732243_)))))
                        (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))))))
                          (if (gx#stx-null? _tl3210532794_)
                              (___kont4680346804_
                               _hd3210632791_
                               _hd3210332781_)
                              (let ()
                                (declare (not safe))
                                (_g3209732243_)))))))
              (if (gx#stx-pair? _tl3210532794_)
                  (let ((_e3217532553_ (gx#syntax-e _tl3210532794_)))
                    (let ((_tl3217332560_
                           (let () (declare (not safe)) (##cdr _e3217532553_)))
                          (_hd3217432557_
                           (let ()
                             (declare (not safe))
                             (##car _e3217532553_))))
                      (if (gx#stx-null? _tl3217332560_)
                          (___kont4680146802_ _hd3217432557_ _hd3210632791_)
                          (if (gx#identifier? _hd3217432557_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50815_|
                                   _hd3217432557_)
                                  (if (gx#stx-pair? _tl3217332560_)
                                      (let ((_e3219832453_
                                             (gx#syntax-e _tl3217332560_)))
                                        (let ((_tl3219632460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3219832453_)))
                                              (_hd3219732457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3219832453_))))
                                          (if (gx#stx-null? _tl3219632460_)
                                              (___kont4680546806_
                                               _hd3219732457_
                                               _hd3210632791_
                                               _hd3210332781_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))
                              (if (gx#stx-datum? _hd3217432557_)
                                  (let ((_e3221132380_
                                         (gx#stx-e _hd3217432557_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3221132380_ '::))
                                        (if (gx#stx-pair? _tl3217332560_)
                                            (let ((_e3221432384_
                                                   (gx#syntax-e
                                                    _tl3217332560_)))
                                              (let ((_tl3221232391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3221432384_)))
                                                    (_hd3221332388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3221432384_))))
                                                (if (gx#stx-null?
                                                     _tl3221232391_)
                                                    (___kont4680746808_
                                                     _hd3221332388_
                                                     _hd3210632791_
                                                     _hd3210332781_)
                                                    (if (gx#stx-pair?
                                                         _tl3221232391_)
                                                        (let ((_e3223432294_
                                                               (gx#syntax-e
                                                                _tl3221232391_)))
                                                          (let ((_tl3223232301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3223432294_)))
                        (_hd3223332298_
                         (let () (declare (not safe)) (##car _e3223432294_))))
                    (if (gx#identifier? _hd3223332298_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50814_|
                             _hd3223332298_)
                            (if (gx#stx-pair? _tl3223232301_)
                                (let ((_e3223732304_
                                       (gx#syntax-e _tl3223232301_)))
                                  (let ((_tl3223532311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3223732304_)))
                                        (_hd3223632308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3223732304_))))
                                    (if (gx#stx-null? _tl3223532311_)
                                        (___kont4680946810_
                                         _hd3223632308_
                                         _hd3221332388_
                                         _hd3210632791_
                                         _hd3210332781_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))))
                                (let () (declare (not safe)) (_g3209732243_)))
                            (let () (declare (not safe)) (_g3209732243_)))
                        (let () (declare (not safe)) (_g3209732243_)))))
                (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))))))
                  (if (gx#stx-null? _tl3210532794_)
                      (___kont4680346804_ _hd3210632791_ _hd3210332781_)
                      (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50816_|
                                                       _hd3210932801_)
                                                      (if (gx#stx-pair?
                                                           _tl3210832804_)
                                                          (let ((_e3216132617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3210832804_)))
                    (let ((_tl3215932624_
                           (let () (declare (not safe)) (##cdr _e3216132617_)))
                          (_hd3216032621_
                           (let ()
                             (declare (not safe))
                             (##car _e3216132617_))))
                      (if (gx#stx-null? _tl3215932624_)
                          (if (gx#stx-pair? _tl3210532794_)
                              (let ((_e3216432627_
                                     (gx#syntax-e _tl3210532794_)))
                                (let ((_tl3216232634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3216432627_)))
                                      (_hd3216332631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3216432627_))))
                                  (if (gx#stx-null? _tl3216232634_)
                                      (___kont4679946800_
                                       _hd3216332631_
                                       _hd3216032621_
                                       _hd3210332781_)
                                      (if (gx#identifier? _hd3216332631_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50815_|
                                               _hd3216332631_)
                                              (if (gx#stx-pair? _tl3216232634_)
                                                  (let ((_e3219832453_
                                                         (gx#syntax-e
                                                          _tl3216232634_)))
                                                    (let ((_tl3219632460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3219832453_)))
                                                          (_hd3219732457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3219832453_))))
                                                      (if (gx#stx-null?
                                                           _tl3219632460_)
                                                          (___kont4680546806_
                                                           _hd3219732457_
                                                           _hd3210632791_
                                                           _hd3210332781_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3209732243_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3209732243_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))
                                          (if (gx#stx-datum? _hd3216332631_)
                                              (let ((_e3221132380_
                                                     (gx#stx-e
                                                      _hd3216332631_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3221132380_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3216232634_)
                                                        (let ((_e3221432384_
                                                               (gx#syntax-e
                                                                _tl3216232634_)))
                                                          (let ((_tl3221232391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3221432384_)))
                        (_hd3221332388_
                         (let () (declare (not safe)) (##car _e3221432384_))))
                    (if (gx#stx-null? _tl3221232391_)
                        (___kont4680746808_
                         _hd3221332388_
                         _hd3210632791_
                         _hd3210332781_)
                        (if (gx#stx-pair? _tl3221232391_)
                            (let ((_e3223432294_ (gx#syntax-e _tl3221232391_)))
                              (let ((_tl3223232301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3223432294_)))
                                    (_hd3223332298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3223432294_))))
                                (if (gx#identifier? _hd3223332298_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50814_|
                                         _hd3223332298_)
                                        (if (gx#stx-pair? _tl3223232301_)
                                            (let ((_e3223732304_
                                                   (gx#syntax-e
                                                    _tl3223232301_)))
                                              (let ((_tl3223532311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3223732304_)))
                                                    (_hd3223632308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3223732304_))))
                                                (if (gx#stx-null?
                                                     _tl3223532311_)
                                                    (___kont4680946810_
                                                     _hd3223632308_
                                                     _hd3221332388_
                                                     _hd3210632791_
                                                     _hd3210332781_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))))
                            (let () (declare (not safe)) (_g3209732243_))))))
                (let () (declare (not safe)) (_g3209732243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))))))
                              (if (gx#stx-null? _tl3210532794_)
                                  (___kont4680346804_
                                   _hd3210632791_
                                   _hd3210332781_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_))))
                          (if (gx#stx-pair? _tl3210532794_)
                              (let ((_e3217532553_
                                     (gx#syntax-e _tl3210532794_)))
                                (let ((_tl3217332560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3217532553_)))
                                      (_hd3217432557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3217532553_))))
                                  (if (gx#stx-null? _tl3217332560_)
                                      (___kont4680146802_
                                       _hd3217432557_
                                       _hd3210632791_)
                                      (if (gx#identifier? _hd3217432557_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50815_|
                                               _hd3217432557_)
                                              (if (gx#stx-pair? _tl3217332560_)
                                                  (let ((_e3219832453_
                                                         (gx#syntax-e
                                                          _tl3217332560_)))
                                                    (let ((_tl3219632460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3219832453_)))
                                                          (_hd3219732457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3219832453_))))
                                                      (if (gx#stx-null?
                                                           _tl3219632460_)
                                                          (___kont4680546806_
                                                           _hd3219732457_
                                                           _hd3210632791_
                                                           _hd3210332781_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3209732243_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3209732243_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))
                                          (if (gx#stx-datum? _hd3217432557_)
                                              (let ((_e3221132380_
                                                     (gx#stx-e
                                                      _hd3217432557_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3221132380_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3217332560_)
                                                        (let ((_e3221432384_
                                                               (gx#syntax-e
                                                                _tl3217332560_)))
                                                          (let ((_tl3221232391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3221432384_)))
                        (_hd3221332388_
                         (let () (declare (not safe)) (##car _e3221432384_))))
                    (if (gx#stx-null? _tl3221232391_)
                        (___kont4680746808_
                         _hd3221332388_
                         _hd3210632791_
                         _hd3210332781_)
                        (if (gx#stx-pair? _tl3221232391_)
                            (let ((_e3223432294_ (gx#syntax-e _tl3221232391_)))
                              (let ((_tl3223232301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3223432294_)))
                                    (_hd3223332298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3223432294_))))
                                (if (gx#identifier? _hd3223332298_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50814_|
                                         _hd3223332298_)
                                        (if (gx#stx-pair? _tl3223232301_)
                                            (let ((_e3223732304_
                                                   (gx#syntax-e
                                                    _tl3223232301_)))
                                              (let ((_tl3223532311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3223732304_)))
                                                    (_hd3223632308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3223732304_))))
                                                (if (gx#stx-null?
                                                     _tl3223532311_)
                                                    (___kont4680946810_
                                                     _hd3223632308_
                                                     _hd3221332388_
                                                     _hd3210632791_
                                                     _hd3210332781_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))))
                            (let () (declare (not safe)) (_g3209732243_))))))
                (let () (declare (not safe)) (_g3209732243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))))))
                              (if (gx#stx-null? _tl3210532794_)
                                  (___kont4680346804_
                                   _hd3210632791_
                                   _hd3210332781_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))))))
                  (if (gx#stx-pair? _tl3210532794_)
                      (let ((_e3217532553_ (gx#syntax-e _tl3210532794_)))
                        (let ((_tl3217332560_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3217532553_)))
                              (_hd3217432557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3217532553_))))
                          (if (gx#stx-null? _tl3217332560_)
                              (___kont4680146802_
                               _hd3217432557_
                               _hd3210632791_)
                              (if (gx#identifier? _hd3217432557_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50815_|
                                       _hd3217432557_)
                                      (if (gx#stx-pair? _tl3217332560_)
                                          (let ((_e3219832453_
                                                 (gx#syntax-e _tl3217332560_)))
                                            (let ((_tl3219632460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3219832453_)))
                                                  (_hd3219732457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3219832453_))))
                                              (if (gx#stx-null? _tl3219632460_)
                                                  (___kont4680546806_
                                                   _hd3219732457_
                                                   _hd3210632791_
                                                   _hd3210332781_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3209732243_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))
                                  (if (gx#stx-datum? _hd3217432557_)
                                      (let ((_e3221132380_
                                             (gx#stx-e _hd3217432557_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3221132380_ '::))
                                            (if (gx#stx-pair? _tl3217332560_)
                                                (let ((_e3221432384_
                                                       (gx#syntax-e
                                                        _tl3217332560_)))
                                                  (let ((_tl3221232391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3221432384_)))
                                                        (_hd3221332388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3221432384_))))
                                                    (if (gx#stx-null?
                                                         _tl3221232391_)
                                                        (___kont4680746808_
                                                         _hd3221332388_
                                                         _hd3210632791_
                                                         _hd3210332781_)
                                                        (if (gx#stx-pair?
                                                             _tl3221232391_)
                                                            (let ((_e3223432294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3221232391_)))
                      (let ((_tl3223232301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3223432294_)))
                            (_hd3223332298_
                             (let ()
                               (declare (not safe))
                               (##car _e3223432294_))))
                        (if (gx#identifier? _hd3223332298_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50814_|
                                 _hd3223332298_)
                                (if (gx#stx-pair? _tl3223232301_)
                                    (let ((_e3223732304_
                                           (gx#syntax-e _tl3223232301_)))
                                      (let ((_tl3223532311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3223732304_)))
                                            (_hd3223632308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3223732304_))))
                                        (if (gx#stx-null? _tl3223532311_)
                                            (___kont4680946810_
                                             _hd3223632308_
                                             _hd3221332388_
                                             _hd3210632791_
                                             _hd3210332781_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_)))
                                (let () (declare (not safe)) (_g3209732243_)))
                            (let () (declare (not safe)) (_g3209732243_)))))
                    (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))))))
                      (if (gx#stx-null? _tl3210532794_)
                          (___kont4680346804_ _hd3210632791_ _hd3210332781_)
                          (let () (declare (not safe)) (_g3209732243_)))))
              (if (gx#stx-pair? _tl3210532794_)
                  (let ((_e3217532553_ (gx#syntax-e _tl3210532794_)))
                    (let ((_tl3217332560_
                           (let () (declare (not safe)) (##cdr _e3217532553_)))
                          (_hd3217432557_
                           (let ()
                             (declare (not safe))
                             (##car _e3217532553_))))
                      (if (gx#stx-null? _tl3217332560_)
                          (___kont4680146802_ _hd3217432557_ _hd3210632791_)
                          (if (gx#identifier? _hd3217432557_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50815_|
                                   _hd3217432557_)
                                  (if (gx#stx-pair? _tl3217332560_)
                                      (let ((_e3219832453_
                                             (gx#syntax-e _tl3217332560_)))
                                        (let ((_tl3219632460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3219832453_)))
                                              (_hd3219732457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3219832453_))))
                                          (if (gx#stx-null? _tl3219632460_)
                                              (___kont4680546806_
                                               _hd3219732457_
                                               _hd3210632791_
                                               _hd3210332781_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3209732243_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3209732243_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))
                              (if (gx#stx-datum? _hd3217432557_)
                                  (let ((_e3221132380_
                                         (gx#stx-e _hd3217432557_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3221132380_ '::))
                                        (if (gx#stx-pair? _tl3217332560_)
                                            (let ((_e3221432384_
                                                   (gx#syntax-e
                                                    _tl3217332560_)))
                                              (let ((_tl3221232391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3221432384_)))
                                                    (_hd3221332388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3221432384_))))
                                                (if (gx#stx-null?
                                                     _tl3221232391_)
                                                    (___kont4680746808_
                                                     _hd3221332388_
                                                     _hd3210632791_
                                                     _hd3210332781_)
                                                    (if (gx#stx-pair?
                                                         _tl3221232391_)
                                                        (let ((_e3223432294_
                                                               (gx#syntax-e
                                                                _tl3221232391_)))
                                                          (let ((_tl3223232301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3223432294_)))
                        (_hd3223332298_
                         (let () (declare (not safe)) (##car _e3223432294_))))
                    (if (gx#identifier? _hd3223332298_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50814_|
                             _hd3223332298_)
                            (if (gx#stx-pair? _tl3223232301_)
                                (let ((_e3223732304_
                                       (gx#syntax-e _tl3223232301_)))
                                  (let ((_tl3223532311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3223732304_)))
                                        (_hd3223632308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3223732304_))))
                                    (if (gx#stx-null? _tl3223532311_)
                                        (___kont4680946810_
                                         _hd3223632308_
                                         _hd3221332388_
                                         _hd3210632791_
                                         _hd3210332781_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_)))))
                                (let () (declare (not safe)) (_g3209732243_)))
                            (let () (declare (not safe)) (_g3209732243_)))
                        (let () (declare (not safe)) (_g3209732243_)))))
                (let () (declare (not safe)) (_g3209732243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3209732243_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))))))
                  (if (gx#stx-null? _tl3210532794_)
                      (___kont4680346804_ _hd3210632791_ _hd3210332781_)
                      (let () (declare (not safe)) (_g3209732243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3210532794_)
                                              (let ((_e3217532553_
                                                     (gx#syntax-e
                                                      _tl3210532794_)))
                                                (let ((_tl3217332560_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3217532553_)))
                                                      (_hd3217432557_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3217532553_))))
                                                  (if (gx#stx-null?
                                                       _tl3217332560_)
                                                      (___kont4680146802_
                                                       _hd3217432557_
                                                       _hd3210632791_)
                                                      (if (gx#identifier?
                                                           _hd3217432557_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50815_|
                                                               _hd3217432557_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3217332560_)
                          (let ((_e3219832453_ (gx#syntax-e _tl3217332560_)))
                            (let ((_tl3219632460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3219832453_)))
                                  (_hd3219732457_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3219832453_))))
                              (if (gx#stx-null? _tl3219632460_)
                                  (___kont4680546806_
                                   _hd3219732457_
                                   _hd3210632791_
                                   _hd3210332781_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3209732243_)))))
                          (let () (declare (not safe)) (_g3209732243_)))
                      (let () (declare (not safe)) (_g3209732243_)))
                  (if (gx#stx-datum? _hd3217432557_)
                      (let ((_e3221132380_ (gx#stx-e _hd3217432557_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3221132380_ '::))
                            (if (gx#stx-pair? _tl3217332560_)
                                (let ((_e3221432384_
                                       (gx#syntax-e _tl3217332560_)))
                                  (let ((_tl3221232391_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3221432384_)))
                                        (_hd3221332388_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3221432384_))))
                                    (if (gx#stx-null? _tl3221232391_)
                                        (___kont4680746808_
                                         _hd3221332388_
                                         _hd3210632791_
                                         _hd3210332781_)
                                        (if (gx#stx-pair? _tl3221232391_)
                                            (let ((_e3223432294_
                                                   (gx#syntax-e
                                                    _tl3221232391_)))
                                              (let ((_tl3223232301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3223432294_)))
                                                    (_hd3223332298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3223432294_))))
                                                (if (gx#identifier?
                                                     _hd3223332298_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50814_|
                                                         _hd3223332298_)
                                                        (if (gx#stx-pair?
                                                             _tl3223232301_)
                                                            (let ((_e3223732304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3223232301_)))
                      (let ((_tl3223532311_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3223732304_)))
                            (_hd3223632308_
                             (let ()
                               (declare (not safe))
                               (##car _e3223732304_))))
                        (if (gx#stx-null? _tl3223532311_)
                            (___kont4680946810_
                             _hd3223632308_
                             _hd3221332388_
                             _hd3210632791_
                             _hd3210332781_)
                            (let () (declare (not safe)) (_g3209732243_)))))
                    (let () (declare (not safe)) (_g3209732243_)))
                (let () (declare (not safe)) (_g3209732243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_))))))
                                (let () (declare (not safe)) (_g3209732243_)))
                            (let () (declare (not safe)) (_g3209732243_))))
                      (let () (declare (not safe)) (_g3209732243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3210532794_)
                                                  (___kont4680346804_
                                                   _hd3210632791_
                                                   _hd3210332781_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3209732243_)))))))
                                  (if (gx#stx-pair? _tl3210532794_)
                                      (let ((_e3217532553_
                                             (gx#syntax-e _tl3210532794_)))
                                        (let ((_tl3217332560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3217532553_)))
                                              (_hd3217432557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3217532553_))))
                                          (if (gx#stx-null? _tl3217332560_)
                                              (___kont4680146802_
                                               _hd3217432557_
                                               _hd3210632791_)
                                              (if (gx#identifier?
                                                   _hd3217432557_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50815_|
                                                       _hd3217432557_)
                                                      (if (gx#stx-pair?
                                                           _tl3217332560_)
                                                          (let ((_e3219832453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3217332560_)))
                    (let ((_tl3219632460_
                           (let () (declare (not safe)) (##cdr _e3219832453_)))
                          (_hd3219732457_
                           (let ()
                             (declare (not safe))
                             (##car _e3219832453_))))
                      (if (gx#stx-null? _tl3219632460_)
                          (___kont4680546806_
                           _hd3219732457_
                           _hd3210632791_
                           _hd3210332781_)
                          (let () (declare (not safe)) (_g3209732243_)))))
                  (let () (declare (not safe)) (_g3209732243_)))
              (let () (declare (not safe)) (_g3209732243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3217432557_)
                                                      (let ((_e3221132380_
                                                             (gx#stx-e
                                                              _hd3217432557_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3221132380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3217332560_)
                        (let ((_e3221432384_ (gx#syntax-e _tl3217332560_)))
                          (let ((_tl3221232391_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3221432384_)))
                                (_hd3221332388_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3221432384_))))
                            (if (gx#stx-null? _tl3221232391_)
                                (___kont4680746808_
                                 _hd3221332388_
                                 _hd3210632791_
                                 _hd3210332781_)
                                (if (gx#stx-pair? _tl3221232391_)
                                    (let ((_e3223432294_
                                           (gx#syntax-e _tl3221232391_)))
                                      (let ((_tl3223232301_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3223432294_)))
                                            (_hd3223332298_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3223432294_))))
                                        (if (gx#identifier? _hd3223332298_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50814_|
                                                 _hd3223332298_)
                                                (if (gx#stx-pair?
                                                     _tl3223232301_)
                                                    (let ((_e3223732304_
                                                           (gx#syntax-e
                                                            _tl3223232301_)))
                                                      (let ((_tl3223532311_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3223732304_)))
                    (_hd3223632308_
                     (let () (declare (not safe)) (##car _e3223732304_))))
                (if (gx#stx-null? _tl3223532311_)
                    (___kont4680946810_
                     _hd3223632308_
                     _hd3221332388_
                     _hd3210632791_
                     _hd3210332781_)
                    (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3209732243_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3209732243_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3209732243_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3209732243_))))))
                        (let () (declare (not safe)) (_g3209732243_)))
                    (let () (declare (not safe)) (_g3209732243_))))
              (let () (declare (not safe)) (_g3209732243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3210532794_)
                                          (___kont4680346804_
                                           _hd3210632791_
                                           _hd3210332781_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))))))
                          (let () (declare (not safe)) (_g3209732243_)))))
                  (let () (declare (not safe)) (_g3209732243_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32886_)
        (let* ((___stx4705647057_ _$stx32886_)
               (_g3289132925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4705647057_))))
          (let ((___kont4705947060_
                 (lambda (_L33029_ _L33031_ _L33032_)
                   (let ((__tmp50880 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50819
                          (let ((__tmp50820
                                 (let ((__tmp50821
                                        (let ((__tmp50879
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50822
                                               (let ((__tmp50823
                                                      (let ((__tmp50824
                                                             (let ((__tmp50878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50825
                            (let ((__tmp50870
                                   (let ((__tmp50875
                                          (let ((__tmp50877
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50876
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L33031_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50877 __tmp50876)))
                                         (__tmp50871
                                          (let ((__tmp50872
                                                 (let ((__tmp50874
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50873
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L33029_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50874
                                                         __tmp50873))))
                                            (declare (not safe))
                                            (cons __tmp50872 '()))))
                                     (declare (not safe))
                                     (cons __tmp50875 __tmp50871)))
                                  (__tmp50826
                                   (let ((__tmp50827
                                          (let ((__tmp50869
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50828
                                                 (let ((__tmp50867
                                                        (let ((__tmp50868
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50868
                                                                '())))
                                                       (__tmp50829
                                                        (let ((__tmp50830
                                                               (let ((__tmp50866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50831
                              (let ((__tmp50865 (gx#datum->syntax '#f '$stx))
                                    (__tmp50832
                                     (let ((__tmp50833
                                            (let ((__tmp50844
                                                   (let ((__tmp50863
                                                          (let ((__tmp50864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50864)))
                 (__tmp50845
                  (let ((__tmp50846
                         (let ((__tmp50862
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50847
                                (let ((__tmp50861
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50848
                                       (let ((__tmp50849
                                              (let ((__tmp50860
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50850
                                                     (let ((__tmp50856
                                                            (let ((__tmp50859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50857
                           (let ((__tmp50858 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50858 '()))))
                      (declare (not safe))
                      (cons __tmp50859 __tmp50857)))
                   (__tmp50851
                    (let ((__tmp50852
                           (let ((__tmp50855
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50853
                                  (let ((__tmp50854
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50854 '()))))
                             (declare (not safe))
                             (cons __tmp50855 __tmp50853))))
                      (declare (not safe))
                      (cons __tmp50852 '()))))
               (declare (not safe))
               (cons __tmp50856 __tmp50851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50860 __tmp50850))))
                                         (declare (not safe))
                                         (cons __tmp50849 '()))))
                                  (declare (not safe))
                                  (cons __tmp50861 __tmp50848))))
                           (declare (not safe))
                           (cons __tmp50862 __tmp50847))))
                    (declare (not safe))
                    (cons __tmp50846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50863
                                                           __tmp50845)))
                                                  (__tmp50834
                                                   (let ((__tmp50835
                                                          (let ((__tmp50843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50836
                         (let ((__tmp50837
                                (let ((__tmp50842
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50838
                                       (let ((__tmp50841
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50839
                                              (let ((__tmp50840
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50840 '()))))
                                         (declare (not safe))
                                         (cons __tmp50841 __tmp50839))))
                                  (declare (not safe))
                                  (cons __tmp50842 __tmp50838))))
                           (declare (not safe))
                           (cons __tmp50837 '()))))
                    (declare (not safe))
                    (cons __tmp50843 __tmp50836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50835 '()))))
                                              (declare (not safe))
                                              (cons __tmp50844 __tmp50834))))
                                       (declare (not safe))
                                       (cons '() __tmp50833))))
                                (declare (not safe))
                                (cons __tmp50865 __tmp50832))))
                         (declare (not safe))
                         (cons __tmp50866 __tmp50831))))
                  (declare (not safe))
                  (cons __tmp50830 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50867
                                                         __tmp50829))))
                                            (declare (not safe))
                                            (cons __tmp50869 __tmp50828))))
                                     (declare (not safe))
                                     (cons __tmp50827 '()))))
                              (declare (not safe))
                              (cons __tmp50870 __tmp50826))))
                       (declare (not safe))
                       (cons __tmp50878 __tmp50825))))
                (declare (not safe))
                (cons __tmp50824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50823))))
                                          (declare (not safe))
                                          (cons __tmp50879 __tmp50822))))
                                   (declare (not safe))
                                   (cons __tmp50821 '()))))
                            (declare (not safe))
                            (cons _L33032_ __tmp50820))))
                     (declare (not safe))
                     (cons __tmp50880 __tmp50819))))
                (___kont4706147062_
                 (lambda (_L32962_ _L32964_ _L32965_)
                   (let ((__tmp50881
                          (let ((__tmp50882
                                 (let ((__tmp50883
                                        (let ((__tmp50884
                                               (let ((__tmp50895
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50885
                                                      (let ((__tmp50893
                                                             (let ((__tmp50894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50894 '())))
                    (__tmp50886
                     (let ((__tmp50887
                            (let ((__tmp50892
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50888
                                   (let ((__tmp50889
                                          (let ((__tmp50890
                                                 (let ((__tmp50891
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50891 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50890))))
                                     (declare (not safe))
                                     (cons '#f __tmp50889))))
                              (declare (not safe))
                              (cons __tmp50892 __tmp50888))))
                       (declare (not safe))
                       (cons __tmp50887 '()))))
                (declare (not safe))
                (cons __tmp50893 __tmp50886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50895
                                                       __tmp50885))))
                                          (declare (not safe))
                                          (cons __tmp50884 '()))))
                                   (declare (not safe))
                                   (cons _L32962_ __tmp50883))))
                            (declare (not safe))
                            (cons _L32964_ __tmp50882))))
                     (declare (not safe))
                     (cons _L32965_ __tmp50881)))))
            (let ((___match4708947090_
                   (lambda (_e3289832989_
                            _hd3289732993_
                            _tl3289632996_
                            _e3290132999_
                            _hd3290033003_
                            _tl3289933006_
                            _e3290433009_
                            _hd3290333013_
                            _tl3290233016_
                            _e3290733019_
                            _hd3290633023_
                            _tl3290533026_)
                     (let ((_L33029_ _hd3290633023_)
                           (_L33031_ _hd3290333013_)
                           (_L33032_ _hd3290033003_))
                       (if (gx#identifier? _L33032_)
                           (___kont4705947060_ _L33029_ _L33031_ _L33032_)
                           (let () (declare (not safe)) (_g3289132925_)))))))
              (if (gx#stx-pair? ___stx4705647057_)
                  (let ((_e3289832989_ (gx#syntax-e ___stx4705647057_)))
                    (let ((_tl3289632996_
                           (let () (declare (not safe)) (##cdr _e3289832989_)))
                          (_hd3289732993_
                           (let ()
                             (declare (not safe))
                             (##car _e3289832989_))))
                      (if (gx#stx-pair? _tl3289632996_)
                          (let ((_e3290132999_ (gx#syntax-e _tl3289632996_)))
                            (let ((_tl3289933006_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3290132999_)))
                                  (_hd3290033003_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3290132999_))))
                              (if (gx#stx-pair? _tl3289933006_)
                                  (let ((_e3290433009_
                                         (gx#syntax-e _tl3289933006_)))
                                    (let ((_tl3290233016_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3290433009_)))
                                          (_hd3290333013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3290433009_))))
                                      (if (gx#stx-pair? _tl3290233016_)
                                          (let ((_e3290733019_
                                                 (gx#syntax-e _tl3290233016_)))
                                            (let ((_tl3290533026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3290733019_)))
                                                  (_hd3290633023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3290733019_))))
                                              (if (gx#stx-null? _tl3290533026_)
                                                  (___match4708947090_
                                                   _e3289832989_
                                                   _hd3289732993_
                                                   _tl3289632996_
                                                   _e3290132999_
                                                   _hd3290033003_
                                                   _tl3289933006_
                                                   _e3290433009_
                                                   _hd3290333013_
                                                   _tl3290233016_
                                                   _e3290733019_
                                                   _hd3290633023_
                                                   _tl3290533026_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3289132925_)))))
                                          (if (gx#stx-null? _tl3290233016_)
                                              (___kont4706147062_
                                               _hd3290333013_
                                               _hd3290033003_
                                               _hd3289732993_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3289132925_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3289132925_)))))
                          (let () (declare (not safe)) (_g3289132925_)))))
                  (let () (declare (not safe)) (_g3289132925_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx33054_)
        (let* ((_g3305833073_
                (lambda (_g3305933069_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3305933069_)))
               (_g3305733116_
                (lambda (_g3305933077_)
                  (if (gx#stx-pair? _g3305933077_)
                      (let ((_e3306433080_ (gx#syntax-e _g3305933077_)))
                        (let ((_hd3306333084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3306433080_)))
                              (_tl3306233087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3306433080_))))
                          (if (gx#stx-pair? _tl3306233087_)
                              (let ((_e3306733090_
                                     (gx#syntax-e _tl3306233087_)))
                                (let ((_hd3306633094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3306733090_)))
                                      (_tl3306533097_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3306733090_))))
                                  ((lambda (_L33100_ _L33102_)
                                     (let ((__tmp50900
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50896
                                            (let ((__tmp50897
                                                   (let ((__tmp50898
                                                          (let ((__tmp50899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50899 _L33100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50898 '()))))
                                              (declare (not safe))
                                              (cons _L33102_ __tmp50897))))
                                       (declare (not safe))
                                       (cons __tmp50900 __tmp50896)))
                                   _tl3306533097_
                                   _hd3306633094_)))
                              (_g3305833073_ _g3305933077_))))
                      (_g3305833073_ _g3305933077_)))))
          (_g3305733116_ _$stx33054_))))))
