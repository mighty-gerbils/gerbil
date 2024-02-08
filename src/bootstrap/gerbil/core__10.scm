(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49752_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49753_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49810_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49811_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49812_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49814_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49815_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49816_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49817_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49818_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49819_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49820_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49821_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49822_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49823_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50216_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50300_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50320_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50321_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50450_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50451_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50452_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50453_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50454_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type*
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core$<macro-object>#macro-object::t)
       '()
       '()
       '#f))
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
            (let ((__tmp49737 (gx#syntax-local-value _stx30746_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49737))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx29052_ _match-stx29054_)
        (letrec ((_parse129056_
                  (lambda (_hd29409_)
                    (let* ((___stx4463444635_ _hd29409_)
                           (_g2943529577_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4463444635_))))
                      (let ((___kont4463744638_
                             (lambda (_L30509_ _L30511_)
                               (let* ((___stx4455444555_ _L30509_)
                                      (_g3052830561_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4455444555_))))
                                 (let ((___kont4455744558_
                                        (lambda ()
                                          (let ((__tmp49738
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30511_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49738))))
                                       (___kont4455944560_
                                        (lambda (_L30702_)
                                          (let ((__tmp49739
                                                 (let ((__tmp49740
                                                        (let ((__tmp49741
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse129056_ _L30702_))))
                  (declare (not safe))
                  (cons __tmp49741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp49740))))
                                            (declare (not safe))
                                            (cons '?: __tmp49739))))
                                       (___kont4456144562_
                                        (lambda (_L30672_)
                                          (let ((__tmp49742
                                                 (let ((__tmp49743
                                                        (let ((__tmp49744
                                                               (let ((__tmp49745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse129056_ _L30672_))))
                         (declare (not safe))
                         (cons __tmp49745 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp49743))))
                                            (declare (not safe))
                                            (cons '?: __tmp49742))))
                                       (___kont4456344564_
                                        (lambda (_L30623_ _L30625_)
                                          (let ((__tmp49746
                                                 (let ((__tmp49747
                                                        (let ((__tmp49748
                                                               (let ((__tmp49749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49750
                                     (let ((__tmp49751
                                            (let ()
                                              (declare (not safe))
                                              (_parse129056_ _L30623_))))
                                       (declare (not safe))
                                       (cons __tmp49751 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49750))))
                         (declare (not safe))
                         (cons _L30625_ __tmp49749))))
                  (declare (not safe))
                  (cons ':: __tmp49748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30511_
                                                         __tmp49747))))
                                            (declare (not safe))
                                            (cons '?: __tmp49746))))
                                       (___kont4456544566_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error29063_ _hd29409_)))))
                                   (let ((_g3052430713_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4455444555_)
                                                (let ((_e3053330692_
                                                       (gx#syntax-e
                                                        ___stx4455444555_)))
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
                                                        (___kont4455944560_
                                                         _hd3053230696_)
                                                        (if (gx#identifier?
                                                             _hd3053230696_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49753_|
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
                                    (___kont4456144562_ _hd3053930666_)
                                    (___kont4456544566_))))
                            (___kont4456544566_))
                        (___kont4456544566_))
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
                                                       |gerbil/core$<match>[1]#_g49752_|
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
                          (___kont4456344564_ _hd3055430617_ _hd3054830597_)
                          (___kont4456544566_))))
                  (___kont4456544566_))
              (___kont4456544566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4456544566_))))
                                          (___kont4456544566_))))
                                  (___kont4456544566_))
                              (___kont4456544566_)))
                        (___kont4456544566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4456544566_)))))
                                     (if (gx#stx-null? ___stx4455444555_)
                                         (___kont4455744558_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3052430713_))))))))
                            (___kont4463944640_
                             (lambda (_L30414_)
                               (let* ((___stx4453644537_ _L30414_)
                                      (_g3042630437_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4453644537_))))
                                 (let ((___kont4453944540_
                                        (lambda (_L30465_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse129056_ _L30465_))))
                                       (___kont4454144542_
                                        (lambda ()
                                          (let ((__tmp49754
                                                 (gx#stx-map
                                                  _parse129056_
                                                  _L30414_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49754)))))
                                   (if (gx#stx-pair? ___stx4453644537_)
                                       (let ((_e3043130455_
                                              (gx#syntax-e ___stx4453644537_)))
                                         (let ((_tl3042930462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3043130455_)))
                                               (_hd3043030459_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3043130455_))))
                                           (if (gx#stx-null? _tl3042930462_)
                                               (___kont4453944540_
                                                _hd3043030459_)
                                               (___kont4454144542_))))
                                       (___kont4454144542_))))))
                            (___kont4464144642_
                             (lambda (_L30329_)
                               (let* ((___stx4451844519_ _L30329_)
                                      (_g3034130352_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4451844519_))))
                                 (let ((___kont4452144522_
                                        (lambda (_L30380_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse129056_ _L30380_))))
                                       (___kont4452344524_
                                        (lambda ()
                                          (let ((__tmp49755
                                                 (gx#stx-map
                                                  _parse129056_
                                                  _L30329_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49755)))))
                                   (if (gx#stx-pair? ___stx4451844519_)
                                       (let ((_e3034630370_
                                              (gx#syntax-e ___stx4451844519_)))
                                         (let ((_tl3034430377_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3034630370_)))
                                               (_hd3034530374_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3034630370_))))
                                           (if (gx#stx-null? _tl3034430377_)
                                               (___kont4452144522_
                                                _hd3034530374_)
                                               (___kont4452344524_))))
                                       (___kont4452344524_))))))
                            (___kont4464344644_
                             (lambda (_L30299_)
                               (let ((__tmp49756
                                      (let ((__tmp49757
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30299_))))
                                        (declare (not safe))
                                        (cons __tmp49757 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49756))))
                            (___kont4464544646_
                             (lambda (_L30255_ _L30257_)
                               (let ((__tmp49758
                                      (let ((__tmp49761
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30257_)))
                                            (__tmp49759
                                             (let ((__tmp49760
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse129056_
                                                       _L30255_))))
                                               (declare (not safe))
                                               (cons __tmp49760 '()))))
                                        (declare (not safe))
                                        (cons __tmp49761 __tmp49759))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49758))))
                            (___kont4464744648_
                             (lambda (_L30199_ _L30201_ _L30202_)
                               (if (gx#stx-null? _L30199_)
                                   (let ((__tmp49769
                                          (let ((__tmp49772
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse129056_ _L30202_)))
                                                (__tmp49770
                                                 (let ((__tmp49771
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse129056_
                                                           _L30201_))))
                                                   (declare (not safe))
                                                   (cons __tmp49771 '()))))
                                            (declare (not safe))
                                            (cons __tmp49772 __tmp49770))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49769))
                                   (let ((__tmp49762
                                          (let ((__tmp49768
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse129056_ _L30202_)))
                                                (__tmp49763
                                                 (let ((__tmp49764
                                                        (let ((__tmp49765
                                                               (let ((__tmp49767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49766
                              (let ()
                                (declare (not safe))
                                (cons _L30201_ _L30199_))))
                         (declare (not safe))
                         (cons __tmp49767 __tmp49766))))
                  (declare (not safe))
                  (_parse129056_ __tmp49765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49764 '()))))
                                            (declare (not safe))
                                            (cons __tmp49768 __tmp49763))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49762)))))
                            (___kont4464944650_
                             (lambda (_L30151_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list29058_ _L30151_))))
                            (___kont4465144652_
                             (lambda (_L30121_)
                               (let ((__tmp49773
                                      (let ((__tmp49774
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30121_))))
                                        (declare (not safe))
                                        (cons __tmp49774 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49773))))
                            (___kont4465344654_
                             (lambda (_L30084_)
                               (let ((__tmp49775
                                      (let ((__tmp49776
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L30084_))))
                                        (declare (not safe))
                                        (cons __tmp49776 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49775))))
                            (___kont4465544656_
                             (lambda (_L30060_)
                               (let ()
                                 (declare (not safe))
                                 (_parse129056_ _L30060_))))
                            (___kont4465744658_
                             (lambda (_L30022_)
                               (let ((__tmp49777
                                      (let ((__tmp49778
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                _L30022_))))
                                        (declare (not safe))
                                        (cons __tmp49778 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49777))))
                            (___kont4465944660_
                             (lambda (_L29994_)
                               (let ((__tmp49779
                                      (let ((__tmp49780
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                _L29994_))))
                                        (declare (not safe))
                                        (cons __tmp49780 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49779))))
                            (___kont4466144662_
                             (lambda (_L29955_)
                               (let ((__tmp49781
                                      (let ((__tmp49782
                                             (let ((__tmp49783
                                                    (let ((__tmp49784
                                                           (lambda (_g2996829971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2996929974_)
                     (let ()
                       (declare (not safe))
                       (cons _g2996829971_ _g2996929974_)))))
              (declare (not safe))
              (foldr1 __tmp49784 '() _L29955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector29059_
                                                __tmp49783))))
                                        (declare (not safe))
                                        (cons __tmp49782 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49781))))
                            (___kont4466544666_
                             (lambda (_L29901_ _L29903_)
                               (let ((__tmp49785
                                      (let ((__tmp49788
                                             (gx#syntax-local-value _L29903_))
                                            (__tmp49786
                                             (let ((__tmp49787
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector29059_
                                                       _L29901_))))
                                               (declare (not safe))
                                               (cons __tmp49787 '()))))
                                        (declare (not safe))
                                        (cons __tmp49788 __tmp49786))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49785))))
                            (___kont4466744668_
                             (lambda (_L29871_ _L29873_)
                               (let ((__tmp49789
                                      (let ((__tmp49792
                                             (gx#syntax-local-value _L29873_))
                                            (__tmp49790
                                             (let ((__tmp49791
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body29061_
                                                       _L29871_))))
                                               (declare (not safe))
                                               (cons __tmp49791 '()))))
                                        (declare (not safe))
                                        (cons __tmp49792 __tmp49790))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49789))))
                            (___kont4466944670_
                             (lambda (_L29831_ _L29833_)
                               (let ((__tmp49793
                                      (let ((__tmp49794
                                             (let ((__tmp49799
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49795
                                                    (let ((__tmp49796
                                                           (let ((__tmp49798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49797
                          (let () (declare (not safe)) (cons _L29831_ '()))))
                     (declare (not safe))
                     (cons __tmp49798 __tmp49797))))
              (declare (not safe))
              (cons _L29833_ __tmp49796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49799 __tmp49795))))
                                        (declare (not safe))
                                        (cons __tmp49794 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49793))))
                            (___kont4467144672_
                             (lambda (_L29791_)
                               (let ((__tmp49800
                                      (let ((__tmp49801 (gx#stx-e _L29791_)))
                                        (declare (not safe))
                                        (cons __tmp49801 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49800))))
                            (___kont4467344674_
                             (lambda (_L29751_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq29062_ _L29751_))))
                            (___kont4467544676_
                             (lambda (_L29707_ _L29709_)
                               (let ((__tmp49802
                                      (let ((__tmp49803
                                             (let ((__tmp49804
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse129056_
                                                       _L29707_))))
                                               (declare (not safe))
                                               (cons __tmp49804 '()))))
                                        (declare (not safe))
                                        (cons _L29709_ __tmp49803))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49802))))
                            (___kont4467744678_
                             (lambda (_L29655_)
                               (let ((__tmp49805
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
                                 (_parse129056_ __tmp49805))))
                            (___kont4467944680_
                             (lambda (_L29629_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4468144682_
                             (lambda (_L29613_)
                               (let ((__tmp49806
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29613_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49806))))
                            (___kont4468344684_
                             (lambda (_L29595_)
                               (let ((__tmp49807
                                      (let ((__tmp49808 (gx#stx-e _L29595_)))
                                        (declare (not safe))
                                        (cons __tmp49808 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49807))))
                            (___kont4468544686_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error29063_ _hd29409_)))))
                        (let* ((_g2943329606_
                                (lambda ()
                                  (let ((_L29595_ ___stx4463444635_))
                                    (if (gx#stx-datum? _L29595_)
                                        (___kont4468344684_ _L29595_)
                                        (___kont4468544686_)))))
                               (_g2943229622_
                                (lambda ()
                                  (let ((_L29613_ ___stx4463444635_))
                                    (if (and (gx#identifier? _L29613_)
                                             (let ((__tmp49809
                                                    (gx#ellipsis? _L29613_)))
                                               (declare (not safe))
                                               (not __tmp49809)))
                                        (___kont4468144682_ _L29613_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943329606_))))))
                               (_g2943129638_
                                (lambda ()
                                  (let ((_L29629_ ___stx4463444635_))
                                    (if (gx#underscore? _L29629_)
                                        (___kont4467944680_ _L29629_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943229622_))))))
                               (___match4496144962_
                                (lambda (_e2956829645_
                                         _hd2956729649_
                                         _tl2956629652_)
                                  (let ((_L29655_ _hd2956729649_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29655_))
                                        (___kont4467744678_ _L29655_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2943129638_))))))
                               (___match4489544896_
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
                                        (___kont4466944670_ _L29831_ _L29833_)
                                        (if (gx#identifier? _hd2953529815_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49811_|
                                                 _hd2953529815_)
                                                (___kont4467144672_
                                                 _hd2953829825_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49810_|
                                                     _hd2953529815_)
                                                    (___kont4467344674_
                                                     _hd2953829825_)
                                                    (___match4496144962_
                                                     _e2953629811_
                                                     _hd2953529815_
                                                     _tl2953429818_)))
                                            (___match4496144962_
                                             _e2953629811_
                                             _hd2953529815_
                                             _tl2953429818_))))))
                               (___match4488144882_
                                (lambda (_e2953129861_
                                         _hd2953029865_
                                         _tl2952929868_)
                                  (let ((_L29871_ _tl2952929868_)
                                        (_L29873_ _hd2953029865_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29873_))
                                        (___kont4466744668_ _L29871_ _L29873_)
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
                                                    (___match4489544896_
                                                     _e2953129861_
                                                     _hd2953029865_
                                                     _tl2952929868_
                                                     _e2953929821_
                                                     _hd2953829825_
                                                     _tl2953729828_)
                                                    (if (gx#identifier?
                                                         _hd2953029865_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49811_|
                                                             _hd2953029865_)
                                                            (___match4496144962_
                                                             _e2953129861_
                                                             _hd2953029865_
                                                             _tl2952929868_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49810_|
                         _hd2953029865_)
                        (___match4496144962_
                         _e2953129861_
                         _hd2953029865_
                         _tl2952929868_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49812_|
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
                                        (___kont4467544676_
                                         _hd2956329701_
                                         _hd2953829825_)
                                        (___match4496144962_
                                         _e2953129861_
                                         _hd2953029865_
                                         _tl2952929868_))))
                                (___match4496144962_
                                 _e2953129861_
                                 _hd2953029865_
                                 _tl2952929868_))
                            (___match4496144962_
                             _e2953129861_
                             _hd2953029865_
                             _tl2952929868_))))
                (___match4496144962_
                 _e2953129861_
                 _hd2953029865_
                 _tl2952929868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4496144962_
                                             _e2953129861_
                                             _hd2953029865_
                                             _tl2952929868_))))))
                               (___match4487544876_
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
                                        (___kont4466544666_ _L29901_ _L29903_)
                                        (___match4488144882_
                                         _e2952629891_
                                         _hd2952529895_
                                         _tl2952429898_)))))
                               (___match4486944870_
                                (lambda (_e2951229921_
                                         ___splice4466344664_
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
                                                      (let ((__tmp49813
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2951829945_ _body2952029938_))))
                (declare (not safe))
                (_loop2951629931_ _lp-tl2951929948_ __tmp49813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2952129951_
                                                         (reverse _body2952029938_)))
                                                    (___kont4466144662_
                                                     _body2952129951_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2951629931_
                                       _target2951329925_
                                       '())))))
                               (_g2942329977_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4463444635_)
                                      (let ((_e2951229921_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4463444635_))))
                                        (if (gx#stx-pair/null? _e2951229921_)
                                            (let ((___splice4466344664_
                                                   (gx#syntax-split-splice
                                                    _e2951229921_
                                                    '0)))
                                              (let ((_tl2951529928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4466344664_
                                                        '1)))
                                                    (_target2951329925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4466344664_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2951529928_)
                                                    (___match4486944870_
                                                     _e2951229921_
                                                     ___splice4466344664_
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
                                  (if (gx#stx-box? ___stx4463444635_)
                                      (let ((_e2949530080_
                                             (unbox (gx#syntax-e
                                                     ___stx4463444635_))))
                                        (___kont4465344654_ _e2949530080_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2942329977_)))))
                               (___match4472344724_
                                (lambda (_e2945230319_
                                         _hd2945130323_
                                         _tl2945030326_)
                                  (let ((_L30329_ _tl2945030326_))
                                    (if (gx#stx-list? _L30329_)
                                        (___kont4464144642_ _L30329_)
                                        (___match4487544876_
                                         _e2945230319_
                                         _hd2945130323_
                                         _tl2945030326_)))))
                               (___match4471344714_
                                (lambda (_e2944830404_
                                         _hd2944730408_
                                         _tl2944630411_)
                                  (let ((_L30414_ _tl2944630411_))
                                    (if (gx#stx-list? _L30414_)
                                        (___kont4463944640_ _L30414_)
                                        (___match4487544876_
                                         _e2944830404_
                                         _hd2944730408_
                                         _tl2944630411_))))))
                          (if (gx#stx-pair? ___stx4463444635_)
                              (let ((_e2944130489_
                                     (gx#syntax-e ___stx4463444635_)))
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
                                           |gerbil/core$<match>[1]#_g49823_|
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
                                                  (___kont4463744638_
                                                   _tl2944230506_
                                                   _hd2944330503_)))
                                              (___match4487544876_
                                               _e2944130489_
                                               _hd2944030493_
                                               _tl2943930496_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49822_|
                                               _hd2944030493_)
                                              (___match4471344714_
                                               _e2944130489_
                                               _hd2944030493_
                                               _tl2943930496_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49821_|
                                                   _hd2944030493_)
                                                  (___match4472344724_
                                                   _e2944130489_
                                                   _hd2944030493_
                                                   _tl2943930496_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49820_|
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
                          (___kont4464344644_ _hd2945830293_)
                          (___match4487544876_
                           _e2944130489_
                           _hd2944030493_
                           _tl2943930496_))))
                  (___match4487544876_
                   _e2944130489_
                   _hd2944030493_
                   _tl2943930496_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49819_|
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
                                      (___kont4464544646_
                                       _hd2946930249_
                                       _hd2946630239_)
                                      (___match4487544876_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_))))
                              (___match4487544876_
                               _e2944130489_
                               _hd2944030493_
                               _tl2943930496_))))
                      (___match4487544876_
                       _e2944130489_
                       _hd2944030493_
                       _tl2943930496_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49818_|
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
                                      (___kont4464744648_
                                       _tl2948030196_
                                       _hd2948130193_
                                       _hd2947830183_)))
                                  (___match4487544876_
                                   _e2944130489_
                                   _hd2944030493_
                                   _tl2943930496_))))
                          (___match4487544876_
                           _e2944130489_
                           _hd2944030493_
                           _tl2943930496_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49817_|
                           _hd2944030493_)
                          (___kont4464944650_ _tl2943930496_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49816_|
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
                                          (___kont4465144652_ _hd2949230115_)
                                          (___match4487544876_
                                           _e2944130489_
                                           _hd2944030493_
                                           _tl2943930496_))))
                                  (___match4487544876_
                                   _e2944130489_
                                   _hd2944030493_
                                   _tl2943930496_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49815_|
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
                                              (___kont4465544656_
                                               _hd2950130054_)
                                              (___kont4465744658_
                                               _tl2943930496_))))
                                      (___kont4465744658_ _tl2943930496_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49814_|
                                       _hd2944030493_)
                                      (___kont4465944660_ _tl2943930496_)
                                      (___match4487544876_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4487544876_
                                       _e2944130489_
                                       _hd2944030493_
                                       _tl2943930496_))))
                              (let ()
                                (declare (not safe))
                                (_g2941930094_))))))))
                 (_parse-list29058_
                  (lambda (_body29238_)
                    (let* ((___stx4496444965_ _body29238_)
                           (_g2924429273_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4496444965_))))
                      (let ((___kont4496744968_
                             (lambda (_L29391_)
                               (let ()
                                 (declare (not safe))
                                 (_parse129056_ _L29391_))))
                            (___kont4496944970_
                             (lambda (_L29343_ _L29345_ _L29346_)
                               (let ((__tmp49824
                                      (let ((__tmp49827
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L29346_)))
                                            (__tmp49825
                                             (let ((__tmp49826
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list29058_
                                                       _L29343_))))
                                               (declare (not safe))
                                               (cons __tmp49826 '()))))
                                        (declare (not safe))
                                        (cons __tmp49827 __tmp49825))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49824))))
                            (___kont4497144972_
                             (lambda (_L29301_ _L29303_)
                               (let ((__tmp49828
                                      (let ((__tmp49831
                                             (let ()
                                               (declare (not safe))
                                               (_parse129056_ _L29303_)))
                                            (__tmp49829
                                             (let ((__tmp49830
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list29058_
                                                       _L29301_))))
                                               (declare (not safe))
                                               (cons __tmp49830 '()))))
                                        (declare (not safe))
                                        (cons __tmp49831 __tmp49829))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49828))))
                            (___kont4497344974_
                             (lambda ()
                               (if (gx#stx-null? _body29238_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49832
                                              (gx#stx-pair? _body29238_)))
                                         (declare (not safe))
                                         (not __tmp49832))
                                       (let ()
                                         (declare (not safe))
                                         (_parse129056_ _body29238_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error29063_ _body29238_)))))))
                        (let* ((___match4501345014_
                                (lambda (_e2926729291_
                                         _hd2926629295_
                                         _tl2926529298_)
                                  (let ((_L29301_ _tl2926529298_)
                                        (_L29303_ _hd2926629295_))
                                    (if (let ((__tmp49833
                                               (gx#ellipsis? _L29303_)))
                                          (declare (not safe))
                                          (not __tmp49833))
                                        (___kont4497144972_ _L29301_ _L29303_)
                                        (___kont4497344974_)))))
                               (___match4500745008_
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
                                        (___kont4496944970_
                                         _L29343_
                                         _L29345_
                                         _L29346_)
                                        (___match4501345014_
                                         _e2925929323_
                                         _hd2925829327_
                                         _tl2925729330_))))))
                          (if (gx#stx-pair? ___stx4496444965_)
                              (let ((_e2924929367_
                                     (gx#syntax-e ___stx4496444965_)))
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
                                                        (___kont4496744968_
                                                         _hd2925229385_)
                                                        (___match4500745008_
                                                         _e2924929367_
                                                         _hd2924829371_
                                                         _tl2924729374_
                                                         _e2925329381_
                                                         _hd2925229385_
                                                         _tl2925129388_))))
                                                (___match4501345014_
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
                                                    (___match4500745008_
                                                     _e2924929367_
                                                     _hd2924829371_
                                                     _tl2924729374_
                                                     _e2926229333_
                                                     _hd2926129337_
                                                     _tl2926029340_)))
                                                (___match4501345014_
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
                                              (___match4500745008_
                                               _e2924929367_
                                               _hd2924829371_
                                               _tl2924729374_
                                               _e2926229333_
                                               _hd2926129337_
                                               _tl2926029340_)))
                                          (___match4501345014_
                                           _e2924929367_
                                           _hd2924829371_
                                           _tl2924729374_)))))
                              (___kont4497344974_)))))))
                 (_parse-vector29059_
                  (lambda (_body29235_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?29060_ _body29235_))
                        (let ((__tmp49836
                               (let ((__tmp49837
                                      (gx#stx-map _parse129056_ _body29235_)))
                                 (declare (not safe))
                                 (cons __tmp49837 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49836))
                        (let ((__tmp49834
                               (let ((__tmp49835
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list29058_ _body29235_))))
                                 (declare (not safe))
                                 (cons __tmp49835 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49834)))))
                 (_simple-vector?29060_
                  (lambda (_body29172_)
                    (let* ((___stx4501645017_ _body29172_)
                           (_g2917629188_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4501645017_))))
                      (let ((___kont4501945020_
                             (lambda (_L29216_ _L29218_)
                               (if (let ((__tmp49838 (gx#ellipsis? _L29218_)))
                                     (declare (not safe))
                                     (not __tmp49838))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?29060_ _L29216_))
                                   '#f)))
                            (___kont4502145022_
                             (lambda () (gx#stx-null? _body29172_))))
                        (if (gx#stx-pair? ___stx4501645017_)
                            (let ((_e2918229206_
                                   (gx#syntax-e ___stx4501645017_)))
                              (let ((_tl2918029213_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2918229206_)))
                                    (_hd2918129210_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2918229206_))))
                                (___kont4501945020_
                                 _tl2918029213_
                                 _hd2918129210_)))
                            (___kont4502145022_))))))
                 (_parse-class-body29061_
                  (lambda (_body29081_)
                    (let _recur29084_ ((_rest29087_ _body29081_))
                      (let* ((___stx4503245033_ _rest29087_)
                             (_g2909129107_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4503245033_))))
                        (let ((___kont4503545036_
                               (lambda (_L29145_ _L29147_ _L29148_)
                                 (let ((__tmp49839
                                        (let ((__tmp49841
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse129056_ _L29147_)))
                                              (__tmp49840
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur29084_ _L29145_))))
                                          (declare (not safe))
                                          (cons __tmp49841 __tmp49840))))
                                   (declare (not safe))
                                   (cons _L29148_ __tmp49839))))
                              (___kont4503745038_
                               (lambda ()
                                 (if (gx#stx-null? _rest29087_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error29063_ _rest29087_))))))
                          (let ((___match4505145052_
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
                                         (___kont4503545036_
                                          _L29145_
                                          _L29147_
                                          _L29148_)
                                         (___kont4503745038_))))))
                            (if (gx#stx-pair? ___stx4503245033_)
                                (let ((_e2909829125_
                                       (gx#syntax-e ___stx4503245033_)))
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
                                            (___match4505145052_
                                             _e2909829125_
                                             _hd2909729129_
                                             _tl2909629132_
                                             _e2910129135_
                                             _hd2910029139_
                                             _tl2909929142_)))
                                        (___kont4503745038_))))
                                (___kont4503745038_))))))))
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
                               (let ((__tmp49843
                                      (let ((__tmp49844
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd29065_ '()))))
                                        (declare (not safe))
                                        (cons _stx29052_ __tmp49844))))
                                 (declare (not safe))
                                 (cons _match-stx29054_ __tmp49843))
                               (let ((__tmp49842
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd29065_ '()))))
                                 (declare (not safe))
                                 (cons _stx29052_ __tmp49842)))))))
          (let () (declare (not safe)) (_parse129056_ _stx29052_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30736_)
        (let ((_match-stx30739_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30736_
           _match-stx30739_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49846_
        (let ((_g49845_ (let () (declare (not safe)) (##length _g49846_))))
          (cond ((let () (declare (not safe)) (##fx= _g49845_ 1))
                 (apply (lambda (_stx30736_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30736_)))
                        _g49846_))
                ((let () (declare (not safe)) (##fx= _g49845_ 2))
                 (apply (lambda (_stx30742_ _match-stx30744_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30742_
                             _match-stx30744_)))
                        _g49846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49846_))))))
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
                    (let* ((___stx4515045151_ _ptree28061_)
                           (_g2807728187_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4515045151_))))
                      (let ((___kont4515345154_
                             (lambda (_L28817_)
                               (let* ((___stx4507045071_ _L28817_)
                                      (_g2883428868_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4507045071_))))
                                 (let ((___kont4507345074_
                                        (lambda (_L29017_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L29017_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4507545076_
                                        (lambda (_L28986_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28986_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4507745078_
                                        (lambda (_L28934_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28934_
                                             _vars28063_
                                             _K28064_))))
                                       (___kont4507945080_
                                        (lambda () (_K28064_ _vars28063_))))
                                   (if (gx#stx-pair? ___stx4507045071_)
                                       (let ((_e2883929007_
                                              (gx#syntax-e ___stx4507045071_)))
                                         (let ((_tl2883729014_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2883929007_)))
                                               (_hd2883829011_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2883929007_))))
                                           (if (gx#stx-null? _tl2883729014_)
                                               (___kont4507345074_
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
                             (___kont4507545076_ _hd2884628980_)
                             (___kont4507945080_))))
                     (___kont4507945080_))
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
                                                           (___kont4507745078_
                                                            _hd2886128928_)
                                                           (___kont4507945080_))))
                                                   (___kont4507945080_))
                                               (___kont4507945080_)))
                                         (___kont4507945080_))))
                                 (___kont4507945080_))))
                         (___kont4507945080_))
                     (___kont4507945080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4507945080_)))))
                                       (___kont4507945080_))))))
                            (___kont4515545156_
                             (lambda (_L28704_ _L28706_)
                               (let* ((___stx4505445055_ _L28704_)
                                      (_g2872228734_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4505445055_))))
                                 (let ((___kont4505745058_
                                        (lambda (_L28762_ _L28764_)
                                          (let ((__tmp49847
                                                 (lambda (_g2877628778_)
                                                   (let ((__tmp49848
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27774_
                                                      __tmp49848
                                                      _g2877628778_
                                                      _K28064_)))))
                                            (declare (not safe))
                                            (_loop27774_
                                             _L28764_
                                             _vars28063_
                                             __tmp49847))))
                                       (___kont4505945060_
                                        (lambda () (_K28064_ _vars28063_))))
                                   (if (gx#stx-pair? ___stx4505445055_)
                                       (let ((_e2872828752_
                                              (gx#syntax-e ___stx4505445055_)))
                                         (let ((_tl2872628759_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2872828752_)))
                                               (_hd2872728756_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2872828752_))))
                                           (___kont4505745058_
                                            _tl2872628759_
                                            _hd2872728756_)))
                                       (___kont4505945060_))))))
                            (___kont4515745158_
                             (lambda (_L28673_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28673_ _vars28063_ _K28064_))))
                            (___kont4515945160_
                             (lambda (_L28619_ _L28621_)
                               (let ((__tmp49849
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
                                  __tmp49849))))
                            (___kont4516145162_
                             (lambda (_L28555_ _L28557_)
                               (let ((__tmp49850
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
                                  __tmp49850))))
                            (___kont4516345164_
                             (lambda (_L28500_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28500_ _vars28063_ _K28064_))))
                            (___kont4516545166_
                             (lambda (_L28450_ _L28452_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27776_
                                  _L28450_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4516745168_
                             (lambda (_L28407_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27776_
                                  _L28407_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4516945170_
                             (lambda (_L28350_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27778_
                                  _L28350_
                                  _vars28063_
                                  _K28064_))))
                            (___kont4517145172_
                             (lambda (_L28291_ _L28293_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_ _L28291_ _vars28063_ _K28064_))))
                            (___kont4517345174_
                             (lambda (_L28229_)
                               (if (let ((__tmp49851
                                          (lambda (_g2824428246_)
                                            (gx#bound-identifier=?
                                             _g2824428246_
                                             _L28229_))))
                                     (declare (not safe))
                                     (find __tmp49851 _vars28063_))
                                   (_K28064_ _vars28063_)
                                   (_K28064_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28229_ _vars28063_))))))
                            (___kont4517545176_
                             (lambda () (_K28064_ _vars28063_))))
                        (let* ((___match4530745308_
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
                                        (___kont4516545166_ _L28450_ _L28452_)
                                        (if (gx#stx-datum? _hd2813528434_)
                                            (let ((_e2814428383_
                                                   (gx#stx-e _hd2813528434_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2814428383_
                                                            'struct:))
                                                  (___kont4517545176_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2814428383_
                                                                'class:))
                                                      (___kont4517545176_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2814428383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4517545176_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2814428383_ 'var:))
                      (___kont4517345174_ _hd2813828444_)
                      (___kont4517545176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4517545176_))))))
                               (___match4520145202_
                                (lambda (_e2809128694_
                                         _hd2809028698_
                                         _tl2808928701_)
                                  (let ((_L28704_ _tl2808928701_)
                                        (_L28706_ _hd2809028698_))
                                    (if (or (gx#stx-eq? 'and: _L28706_)
                                            (gx#stx-eq? 'or: _L28706_))
                                        (___kont4515545156_ _L28704_ _L28706_)
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
                      (___kont4515745158_ _hd2809828667_)
                      (___kont4517545176_))))
              (___kont4517545176_))
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
                                  (___kont4515945160_
                                   _hd2811028613_
                                   _hd2810728603_)
                                  (___kont4517545176_))))
                          (if (gx#stx-null? _tl2810628606_)
                              (___match4530745308_
                               _e2809128694_
                               _hd2809028698_
                               _tl2808928701_
                               _e2810828599_
                               _hd2810728603_
                               _tl2810628606_)
                              (___kont4517545176_)))))
                  (___kont4517545176_))
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
                                      (___kont4516145162_
                                       _hd2812228549_
                                       _hd2811928539_)
                                      (___kont4517545176_))))
                              (if (gx#stx-null? _tl2811828542_)
                                  (___match4530745308_
                                   _e2809128694_
                                   _hd2809028698_
                                   _tl2808928701_
                                   _e2812028535_
                                   _hd2811928539_
                                   _tl2811828542_)
                                  (___kont4517545176_)))))
                      (___kont4517545176_))
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
                                  (___kont4516345164_ _hd2813028494_)
                                  (___kont4517545176_))))
                          (___kont4517545176_))
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
                                  (___match4530745308_
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
                                                  (___kont4516745168_
                                                   _hd2814928401_)
                                                  (___kont4517545176_))))
                                          (___kont4517545176_))
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
                                                      (___kont4516945170_
                                                       _hd2816028344_)
                                                      (___kont4517545176_))))
                                              (___kont4517545176_))
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
                                                          (___kont4517145172_
                                                           _hd2817228285_
                                                           _hd2813828444_)
                                                          (___kont4517545176_))))
                                                  (___kont4517545176_))
                                              (___kont4517545176_)))))))
                          (___kont4517545176_)))))))
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
                                                        (___match4530745308_
                                                         _e2809128694_
                                                         _hd2809028698_
                                                         _tl2808928701_
                                                         _e2813928440_
                                                         _hd2813828444_
                                                         _tl2813728447_)
                                                        (___kont4517545176_))))
                                                (___kont4517545176_))))))))
                          (if (gx#stx-pair? ___stx4515045151_)
                              (let ((_e2808228793_
                                     (gx#syntax-e ___stx4515045151_)))
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
                                                    (___kont4515345154_
                                                     _tl2808428814_)))
                                                (___match4520145202_
                                                 _e2808228793_
                                                 _hd2808128797_
                                                 _tl2808028800_))
                                            (___match4520145202_
                                             _e2808228793_
                                             _hd2808128797_
                                             _tl2808028800_)))
                                      (___match4520145202_
                                       _e2808228793_
                                       _hd2808128797_
                                       _tl2808028800_))))
                              (___kont4517545176_)))))))
                 (_loop-vector27776_
                  (lambda (_body27937_ _vars27939_ _K27940_)
                    (let* ((___stx4540845409_ _body27937_)
                           (_g2794327966_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4540845409_))))
                      (let ((___kont4541145412_
                             (lambda (_L28043_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27777_
                                  _L28043_
                                  _vars27939_
                                  _K27940_))))
                            (___kont4541345414_
                             (lambda (_L27997_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27774_
                                  _L27997_
                                  _vars27939_
                                  _K27940_)))))
                        (if (gx#stx-pair? ___stx4540845409_)
                            (let ((_e2794828019_
                                   (gx#syntax-e ___stx4540845409_)))
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
                                                      (___kont4541145412_
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
                                                          (___kont4541345414_
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
                    (let* ((___stx4545845459_ _rest27867_)
                           (_g2787327885_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4545845459_))))
                      (let ((___kont4546145462_
                             (lambda (_L27913_ _L27915_)
                               (let ((__tmp49852
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
                                  __tmp49852))))
                            (___kont4546345464_
                             (lambda () (_K27870_ _vars27869_))))
                        (if (gx#stx-pair? ___stx4545845459_)
                            (let ((_e2787927903_
                                   (gx#syntax-e ___stx4545845459_)))
                              (let ((_tl2787727910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2787927903_)))
                                    (_hd2787827907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2787927903_))))
                                (___kont4546145462_
                                 _tl2787727910_
                                 _hd2787827907_)))
                            (___kont4546345464_))))))
                 (_loop-class-list27778_
                  (lambda (_rest27780_ _vars27782_ _K27783_)
                    (let* ((___stx4547445475_ _rest27780_)
                           (_g2778627801_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4547445475_))))
                      (let ((___kont4547745478_
                             (lambda (_L27839_ _L27841_)
                               (let ((__tmp49853
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
                                  __tmp49853))))
                            (___kont4547945480_
                             (lambda () (_K27783_ _vars27782_))))
                        (if (gx#stx-pair? ___stx4547445475_)
                            (let ((_e2779227819_
                                   (gx#syntax-e ___stx4547445475_)))
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
                                        (___kont4547745478_
                                         _tl2779327836_
                                         _hd2779427833_)))
                                    (___kont4547945480_))))
                            (___kont4547945480_)))))))
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
                                   (let* ((___stx4571045711_ _ptree25986_)
                                          (_g2603226174_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4571045711_))))
                                     (let ((___kont4571345714_
                                            (lambda (_L27482_ _L27484_)
                                              (let* ((___stx4562845629_
                                                      _L27482_)
                                                     (_g2750127536_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4562845629_))))
                                                (let ((___kont4563145632_
                                                       (lambda ()
                                                         (let ((__tmp49854
                                                                (let ((__tmp49857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49860 (gx#datum->syntax '#f '?))
                                     (__tmp49858
                                      (let ((__tmp49859
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons _L27484_ __tmp49859))))
                                 (declare (not safe))
                                 (cons __tmp49860 __tmp49858)))
                              (__tmp49855
                               (let ((__tmp49856
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons _K25987_ __tmp49856))))
                          (declare (not safe))
                          (cons __tmp49857 __tmp49855))))
                   (declare (not safe))
                   (cons 'if __tmp49854))))
              (___kont4563345634_
               (lambda (_L27737_)
                 (let ((__tmp49861
                        (let ((__tmp49865
                               (let ((__tmp49868 (gx#datum->syntax '#f '?))
                                     (__tmp49866
                                      (let ((__tmp49867
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons _L27484_ __tmp49867))))
                                 (declare (not safe))
                                 (cons __tmp49868 __tmp49866)))
                              (__tmp49862
                               (let ((__tmp49864
                                      (let ()
                                        (declare (not safe))
                                        (_generate124739_
                                         _tgt25984_
                                         _L27737_
                                         _K25987_
                                         _E25988_)))
                                     (__tmp49863
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49864 __tmp49863))))
                          (declare (not safe))
                          (cons __tmp49865 __tmp49862))))
                   (declare (not safe))
                   (cons 'if __tmp49861))))
              (___kont4563545636_
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
                                (let ((__tmp49869
                                       (let ((__tmp49876
                                              (let ((__tmp49877
                                                     (let ((__tmp49878
                                                            (let ((__tmp49879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49880
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons _L27484_ __tmp49880))))
                      (declare (not safe))
                      (cons __tmp49879 '()))))
               (declare (not safe))
               (cons _L27704_ __tmp49878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49877 '())))
                                             (__tmp49870
                                              (let ((__tmp49871
                                                     (let ((__tmp49872
                                                            (let ((__tmp49873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49875
                                  (let ()
                                    (declare (not safe))
                                    (_generate124739_
                                     _L27704_
                                     _L27675_
                                     _K25987_
                                     _E25988_)))
                                 (__tmp49874
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25988_ '()))))
                             (declare (not safe))
                             (cons __tmp49875 __tmp49874))))
                      (declare (not safe))
                      (cons _L27704_ __tmp49873))))
               (declare (not safe))
               (cons 'if __tmp49872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49871 '()))))
                                         (declare (not safe))
                                         (cons __tmp49876 __tmp49870))))
                                  (declare (not safe))
                                  (cons 'let __tmp49869))))
                            _g2769027701_)))
                        (__tmp49881 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2768827716_ __tmp49881))))
              (___kont4563745638_
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
                                (let ((__tmp49882
                                       (let ((__tmp49894
                                              (let ((__tmp49897
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49895
                                                     (let ((__tmp49896
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L26005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27484_ __tmp49896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49897 __tmp49895)))
                                             (__tmp49883
                                              (let ((__tmp49885
                                                     (let ((__tmp49886
                                                            (let ((__tmp49889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49890
                                  (let ((__tmp49891
                                         (let ((__tmp49892
                                                (let ((__tmp49893
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26005_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27593_ __tmp49893))))
                                           (declare (not safe))
                                           (cons __tmp49892 '()))))
                                    (declare (not safe))
                                    (cons _L27628_ __tmp49891))))
                             (declare (not safe))
                             (cons __tmp49890 '())))
                          (__tmp49887
                           (let ((__tmp49888
                                  (let ()
                                    (declare (not safe))
                                    (_generate124739_
                                     _L27628_
                                     _L27591_
                                     _K25987_
                                     _E25988_))))
                             (declare (not safe))
                             (cons __tmp49888 '()))))
                      (declare (not safe))
                      (cons __tmp49889 __tmp49887))))
               (declare (not safe))
               (cons 'let __tmp49886)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49884
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49885 __tmp49884))))
                                         (declare (not safe))
                                         (cons __tmp49894 __tmp49883))))
                                  (declare (not safe))
                                  (cons 'if __tmp49882))))
                            _g2761427625_)))
                        (__tmp49898 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2761227640_ __tmp49898)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2749827748_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4562845629_)
                                                               (let ((_e2750627727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4562845629_)))
                         (let ((_tl2750427734_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2750627727_)))
                               (_hd2750527731_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2750627727_))))
                           (if (gx#stx-null? _tl2750427734_)
                               (___kont4563345634_ _hd2750527731_)
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
                                                     (___kont4563545636_
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
                                           (___kont4563745638_
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
                                                         ___stx4562845629_)
                                                        (___kont4563145632_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2749827748_))))))))
                                           (___kont4571545716_
                                            (lambda (_L27379_)
                                              (let* ((___stx4561245613_
                                                      _L27379_)
                                                     (_g2739227404_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4561245613_))))
                                                (let ((___kont4561545616_
                                                       (lambda (_L27432_
                                                                _L27434_)
                                                         (let ((__tmp49899
                                                                (let ((__tmp49900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27432_))))
                          (declare (not safe))
                          (_generate124739_
                           _tgt25984_
                           __tmp49900
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_
                    _tgt25984_
                    _L27434_
                    __tmp49899
                    _E25988_))))
              (___kont4561745618_ (lambda () _K25987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4561245613_)
                                                      (let ((_e2739827422_
                                                             (gx#syntax-e
                                                              ___stx4561245613_)))
                                                        (let ((_tl2739627429_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2739827422_)))
                      (_hd2739727426_
                       (let () (declare (not safe)) (##car _e2739827422_))))
                  (___kont4561545616_ _tl2739627429_ _hd2739727426_)))
              (___kont4561745618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4571745718_
                                            (lambda (_L27286_)
                                              (let* ((___stx4559645597_
                                                      _L27286_)
                                                     (_g2729927311_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4559645597_))))
                                                (let ((___kont4559945600_
                                                       (lambda (_L27339_
                                                                _L27341_)
                                                         (let ((__tmp49901
                                                                (let ((__tmp49902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27339_))))
                          (declare (not safe))
                          (_generate124739_
                           _tgt25984_
                           __tmp49902
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_
                    _tgt25984_
                    _L27341_
                    _K25987_
                    __tmp49901))))
              (___kont4560145602_ (lambda () _E25988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4559645597_)
                                                      (let ((_e2730527329_
                                                             (gx#syntax-e
                                                              ___stx4559645597_)))
                                                        (let ((_tl2730327336_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2730527329_)))
                      (_hd2730427333_
                       (let () (declare (not safe)) (##car _e2730527329_))))
                  (___kont4559945600_ _tl2730327336_ _hd2730427333_)))
              (___kont4560145602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4571945720_
                                            (lambda (_L27251_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124739_
                                                 _tgt25984_
                                                 _L27251_
                                                 _E25988_
                                                 _K25987_))))
                                           (___kont4572145722_
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
                                         (let ((__tmp49903
                                                (let ((__tmp49941
                                                       (let ((__tmp49943
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49942
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L26005_ '()))))
                 (declare (not safe))
                 (cons __tmp49943 __tmp49942)))
              (__tmp49904
               (let ((__tmp49906
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
                                (let ((__tmp49932
                                       (let ((__tmp49935
                                              (let ((__tmp49936
                                                     (let ((__tmp49937
                                                            (let ((__tmp49938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49940 (gx#datum->syntax '#f '##car))
                                 (__tmp49939
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons __tmp49940 __tmp49939))))
                      (declare (not safe))
                      (cons __tmp49938 '()))))
               (declare (not safe))
               (cons _L27196_ __tmp49937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49936 '())))
                                             (__tmp49933
                                              (let ((__tmp49934
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124739_
                                                        _L27196_
                                                        _L27135_
                                                        _K25987_
                                                        _E25988_))))
                                                (declare (not safe))
                                                (cons __tmp49934 '()))))
                                         (declare (not safe))
                                         (cons __tmp49935 __tmp49933))))
                                  (declare (not safe))
                                  (cons 'let __tmp49932))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27212_ '(any:)))
                                    (let ((__tmp49923
                                           (let ((__tmp49926
                                                  (let ((__tmp49927
                                                         (let ((__tmp49928
                                                                (let ((__tmp49929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49931 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49930
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49931 __tmp49930))))
                          (declare (not safe))
                          (cons __tmp49929 '()))))
                   (declare (not safe))
                   (cons _L27194_ __tmp49928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49927 '())))
                                                 (__tmp49924
                                                  (let ((__tmp49925
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124739_
                                                            _L27194_
                                                            _L27133_
                                                            _K25987_
                                                            _E25988_))))
                                                    (declare (not safe))
                                                    (cons __tmp49925 '()))))
                                             (declare (not safe))
                                             (cons __tmp49926 __tmp49924))))
                                      (declare (not safe))
                                      (cons 'let __tmp49923))
                                    (let ((__tmp49907
                                           (let ((__tmp49911
                                                  (let ((__tmp49918
                                                         (let ((__tmp49919
                                                                (let ((__tmp49920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49922 (gx#datum->syntax '#f '##car))
                                     (__tmp49921
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49922 __tmp49921))))
                          (declare (not safe))
                          (cons __tmp49920 '()))))
                   (declare (not safe))
                   (cons _L27196_ __tmp49919)))
                (__tmp49912
                 (let ((__tmp49913
                        (let ((__tmp49914
                               (let ((__tmp49915
                                      (let ((__tmp49917
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49916
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26005_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49917 __tmp49916))))
                                 (declare (not safe))
                                 (cons __tmp49915 '()))))
                          (declare (not safe))
                          (cons _L27194_ __tmp49914))))
                   (declare (not safe))
                   (cons __tmp49913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49918
                                                          __tmp49912)))
                                                 (__tmp49908
                                                  (let ((__tmp49909
                                                         (let ((__tmp49910
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124739_
                           _L27194_
                           _L27133_
                           _K25987_
                           _E25988_))))
                   (declare (not safe))
                   (_generate124739_ _L27196_ _L27135_ __tmp49910 _E25988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49909 '()))))
                                             (declare (not safe))
                                             (cons __tmp49911 __tmp49908))))
                                      (declare (not safe))
                                      (cons 'let __tmp49907)))))))
                     (__tmp49905
                      (let () (declare (not safe)) (cons _E25988_ '()))))
                 (declare (not safe))
                 (cons __tmp49906 __tmp49905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49941
                                                        __tmp49904))))
                                           (declare (not safe))
                                           (cons 'if __tmp49903))))
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
                                                     (__tmp49944
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2715127216_ __tmp49944))))
                                           (___kont4572345724_
                                            (lambda ()
                                              (let ((__tmp49945
                                                     (let ((__tmp49948
                                                            (let ((__tmp49950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49949
                           (let () (declare (not safe)) (cons _L26005_ '()))))
                      (declare (not safe))
                      (cons __tmp49950 __tmp49949)))
                   (__tmp49946
                    (let ((__tmp49947
                           (let () (declare (not safe)) (cons _E25988_ '()))))
                      (declare (not safe))
                      (cons _K25987_ __tmp49947))))
               (declare (not safe))
               (cons __tmp49948 __tmp49946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49945))))
                                           (___kont4572545726_
                                            (lambda (_L27049_ _L27051_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24741_
                                                 _tgt25984_
                                                 _L27051_
                                                 _L27049_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4572745728_
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
                                                             (let ((__tmp49951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49964
                                   (let ((__tmp49966
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49965
                                          (let ()
                                            (declare (not safe))
                                            (cons _L26005_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49966 __tmp49965)))
                                  (__tmp49952
                                   (let ((__tmp49954
                                          (let ((__tmp49955
                                                 (let ((__tmp49958
                                                        (let ((__tmp49959
                                                               (let ((__tmp49960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49961
                                     (let ((__tmp49963
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49962
                                            (let ()
                                              (declare (not safe))
                                              (cons _L26005_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49963 __tmp49962))))
                                (declare (not safe))
                                (cons __tmp49961 '()))))
                         (declare (not safe))
                         (cons _L26992_ __tmp49960))))
                  (declare (not safe))
                  (cons __tmp49959 '())))
               (__tmp49956
                (let ((__tmp49957
                       (let ()
                         (declare (not safe))
                         (_generate124739_
                          _L26992_
                          _L26963_
                          _K25987_
                          _E25988_))))
                  (declare (not safe))
                  (cons __tmp49957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49958
                                                         __tmp49956))))
                                            (declare (not safe))
                                            (cons 'let __tmp49955)))
                                         (__tmp49953
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25988_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49954 __tmp49953))))
                              (declare (not safe))
                              (cons __tmp49964 __tmp49952))))
                       (declare (not safe))
                       (cons 'if __tmp49951))))
                 _g2697826989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49967
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2697627004_ __tmp49967))))
                                           (___kont4572945730_
                                            (lambda (_L26768_)
                                              (let* ((___stx4554645547_
                                                      _L26768_)
                                                     (_g2678326806_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4554645547_))))
                                                (let ((___kont4554945550_
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
                                (let ((__tmp49968
                                       (let ((__tmp49972
                                              (let ((__tmp49978
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49973
                                                     (let ((__tmp49975
                                                            (let ((__tmp49977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49976
                           (let () (declare (not safe)) (cons _L26005_ '()))))
                      (declare (not safe))
                      (cons __tmp49977 __tmp49976)))
                   (__tmp49974
                    (let () (declare (not safe)) (cons _L26912_ '()))))
               (declare (not safe))
               (cons __tmp49975 __tmp49974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49978 __tmp49973)))
                                             (__tmp49969
                                              (let ((__tmp49971
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24742_
                                                        _tgt25984_
                                                        _L26883_
                                                        '0
                                                        _K25987_
                                                        _E25988_)))
                                                    (__tmp49970
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49971 __tmp49970))))
                                         (declare (not safe))
                                         (cons __tmp49972 __tmp49969))))
                                  (declare (not safe))
                                  (cons 'if __tmp49968))))
                            _g2689826909_)))
                        (__tmp49979 (gx#stx-length _L26883_)))
                   (declare (not safe))
                   (_g2689626924_ __tmp49979))))
              (___kont4555145552_
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
                                                       ___stx4554645547_)
                                                      (let ((_e2678826859_
                                                             (gx#syntax-e
                                                              ___stx4554645547_)))
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
                                        (___kont4554945550_ _hd2679126877_)
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
                                            (___kont4555145552_ _hd2679926831_)
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
                                           (___kont4573145732_
                                            (lambda (_L26573_)
                                              (let* ((___stx4549645497_
                                                      _L26573_)
                                                     (_g2658826611_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4549645497_))))
                                                (let ((___kont4549945500_
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
                                (let ((__tmp49980
                                       (let ((__tmp49995
                                              (let ((__tmp49997
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49996
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L26005_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49997 __tmp49996)))
                                             (__tmp49981
                                              (let ((__tmp49983
                                                     (let ((__tmp49984
                                                            (let ((__tmp49988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49994 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49989
                                  (let ((__tmp49991
                                         (let ((__tmp49993
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49992
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L26005_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49993 __tmp49992)))
                                        (__tmp49990
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26717_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49991 __tmp49990))))
                             (declare (not safe))
                             (cons __tmp49994 __tmp49989)))
                          (__tmp49985
                           (let ((__tmp49987
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24742_
                                     _tgt25984_
                                     _L26688_
                                     '0
                                     _K25987_
                                     _E25988_)))
                                 (__tmp49986
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25988_ '()))))
                             (declare (not safe))
                             (cons __tmp49987 __tmp49986))))
                      (declare (not safe))
                      (cons __tmp49988 __tmp49985))))
               (declare (not safe))
               (cons 'if __tmp49984)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49982
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25988_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49983 __tmp49982))))
                                         (declare (not safe))
                                         (cons __tmp49995 __tmp49981))))
                                  (declare (not safe))
                                  (cons 'if __tmp49980))))
                            _g2670326714_)))
                        (__tmp49998 (gx#stx-length _L26688_)))
                   (declare (not safe))
                   (_g2670126729_ __tmp49998))))
              (___kont4550145502_
               (lambda (_L26642_)
                 (let ((__tmp49999
                        (let ((__tmp50003
                               (let ((__tmp50005
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp50004
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26005_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50005 __tmp50004)))
                              (__tmp50000
                               (let ((__tmp50002
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24743_
                                         _tgt25984_
                                         _L26642_
                                         'vector->list
                                         _K25987_
                                         _E25988_)))
                                     (__tmp50001
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25988_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50002 __tmp50001))))
                          (declare (not safe))
                          (cons __tmp50003 __tmp50000))))
                   (declare (not safe))
                   (cons 'if __tmp49999)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4549645497_)
                                                      (let ((_e2659326664_
                                                             (gx#syntax-e
                                                              ___stx4549645497_)))
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
                                        (___kont4549945500_ _hd2659626682_)
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
                                            (___kont4550145502_ _hd2660426636_)
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
                                           (___kont4573345734_
                                            (lambda (_L26524_ _L26526_)
                                              (let ((__tmp50006
                                                     (gx#stx-e _L26526_)))
                                                (declare (not safe))
                                                (_generate-struct24744_
                                                 __tmp50006
                                                 _tgt25984_
                                                 _L26524_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4573545736_
                                            (lambda (_L26465_ _L26467_)
                                              (let ((__tmp50007
                                                     (gx#stx-e _L26467_)))
                                                (declare (not safe))
                                                (_generate-class24747_
                                                 __tmp50007
                                                 _tgt25984_
                                                 _L26465_
                                                 _K25987_
                                                 _E25988_))))
                                           (___kont4573745738_
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
                                                             (let ((__tmp50008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50011
                                   (let ((__tmp50012
                                          (let ((__tmp50013
                                                 (let ((__tmp50014
                                                        (let ((__tmp50016
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp50015
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26368_ '()))))
                  (declare (not safe))
                  (cons __tmp50016 __tmp50015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50014 '()))))
                                            (declare (not safe))
                                            (cons _L26005_ __tmp50013))))
                                     (declare (not safe))
                                     (cons _L26397_ __tmp50012)))
                                  (__tmp50009
                                   (let ((__tmp50010
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25988_ '()))))
                                     (declare (not safe))
                                     (cons _K25987_ __tmp50010))))
                              (declare (not safe))
                              (cons __tmp50011 __tmp50009))))
                       (declare (not safe))
                       (cons 'if __tmp50008))))
                 _g2638326394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50017
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
                                                (_g2638126409_ __tmp50017))))
                                           (___kont4573945740_
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
                                                             (let ((__tmp50018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50021
                                   (let ((__tmp50022
                                          (let ((__tmp50023
                                                 (let ((__tmp50024
                                                        (let ((__tmp50025
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26005_ '()))))
                  (declare (not safe))
                  (cons _L26290_ __tmp50025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50024 '()))))
                                            (declare (not safe))
                                            (cons _L26321_ __tmp50023))))
                                     (declare (not safe))
                                     (cons __tmp50022 '())))
                                  (__tmp50019
                                   (let ((__tmp50020
                                          (let ()
                                            (declare (not safe))
                                            (_generate124739_
                                             _L26321_
                                             _L26288_
                                             _K25987_
                                             _E25988_))))
                                     (declare (not safe))
                                     (cons __tmp50020 '()))))
                              (declare (not safe))
                              (cons __tmp50021 __tmp50019))))
                       (declare (not safe))
                       (cons 'let __tmp50018))))
                 _g2630726318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50026
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2630526333_ __tmp50026))))
                                           (___kont4574145742_
                                            (lambda (_L26230_)
                                              (let ((__tmp50027
                                                     (let ((__tmp50029
                                                            (let ((__tmp50030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50031
                                  (let ()
                                    (declare (not safe))
                                    (cons _L26005_ '()))))
                             (declare (not safe))
                             (cons _L26230_ __tmp50031))))
                      (declare (not safe))
                      (cons __tmp50030 '())))
                   (__tmp50028
                    (let () (declare (not safe)) (cons _K25987_ '()))))
               (declare (not safe))
               (cons __tmp50029 __tmp50028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp50027))))
                                           (___kont4574345744_
                                            (lambda () _K25987_)))
                                       (if (gx#stx-pair? ___stx4571045711_)
                                           (let ((_e2603827458_
                                                  (gx#syntax-e
                                                   ___stx4571045711_)))
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
                         (___kont4571345714_ _tl2604027479_ _hd2604127476_)))
                     (let () (declare (not safe)) (_g2603226174_)))
                 (if (let () (declare (not safe)) (equal? _e2603927468_ 'and:))
                     (___kont4571545716_ _tl2603627465_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2603927468_ 'or:))
                         (___kont4571745718_ _tl2603627465_)
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
                                         (___kont4571945720_ _hd2605927245_)
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
                                                     (___kont4572145722_
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
                                         (___kont4572345724_)
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
                     (___kont4572545726_ _hd2608727043_ _hd2608427033_)
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
                                                         (___kont4572745728_
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
                     (___kont4572945730_ _hd2610326762_)
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
                         (___kont4573145732_ _hd2611126567_)
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
                                     (___kont4573345734_
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
                                         (___kont4573545736_
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
                                     (___kont4573745738_ _hd2614326362_)
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
                                                 (___kont4573945740_
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
                                             (___kont4574145742_
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
                                         (___kont4574345744_)
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
                                  (let ((_g50032_
                                         (gx#syntax-split-splice
                                          _g2536425384_
                                          '0)))
                                    (begin
                                      (let ((_g50033_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g50032_)
                                                   (##vector-length _g50032_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g50033_ 2)))
                                            (error "Context expects 2 values"
                                                   _g50033_)))
                                      (let ((_target2536625387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50032_ 0)))
                                            (_tl2536825390_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50032_ 1))))
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
                        (let ((__tmp50124
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2537125407_ _var2537325400_))))
                          (declare (not safe))
                          (_loop2536925393_ _lp-tl2537225410_ __tmp50124))))
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
                                         (let ((_g50034_
                                                (gx#syntax-split-splice
                                                 _g2543425454_
                                                 '0)))
                                           (begin
                                             (let ((_g50035_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g50034_)
                                                          (##vector-length
                                                           _g50034_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g50035_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g50035_)))
                                             (let ((_target2543625457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50034_
                                                       0)))
                                                   (_tl2543825460_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50034_
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
                               (let ((__tmp50121
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2544125477_
                                              _var-r2544325470_))))
                                 (declare (not safe))
                                 (_loop2543925463_
                                  _lp-tl2544225480_
                                  __tmp50121))))
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
                                                (let ((_g50036_
                                                       (gx#syntax-split-splice
                                                        _g2550525525_
                                                        '0)))
                                                  (begin
                                                    (let ((_g50037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50036_)
                         (##vector-length _g50036_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g50037_ 2)))
                  (error "Context expects 2 values" _g50037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2550725528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50036_
                                                              0)))
                                                          (_tl2550925531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50036_
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
                                      (let ((__tmp50117
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2551225548_
                                                     _init2551425541_))))
                                        (declare (not safe))
                                        (_loop2551025534_
                                         _lp-tl2551325551_
                                         __tmp50117))))
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
                                 (let ((__tmp50091
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp50038
                                        (let ((__tmp50044
                                               (let ((__tmp50082
                                                      (let ((__tmp50083
                                                             (let ((__tmp50084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50090 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50085
                                   (let ((__tmp50087
                                          (let ((__tmp50088
                                                 (let ((__tmp50089
                                                        (lambda (_g2586425867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2586525870_)
                  (let ()
                    (declare (not safe))
                    (cons _g2586425867_ _g2586525870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp50089
                                                           '()
                                                           _L25417_))))
                                            (declare (not safe))
                                            (cons _L25730_ __tmp50088)))
                                         (__tmp50086
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25758_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50087 __tmp50086))))
                              (declare (not safe))
                              (cons __tmp50090 __tmp50085))))
                       (declare (not safe))
                       (cons __tmp50084 '()))))
                (declare (not safe))
                (cons _L25618_ __tmp50083)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50045
                                                      (let ((__tmp50072
                                                             (let ((__tmp50073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50074
                                   (let ((__tmp50081
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp50075
                                          (let ((__tmp50077
                                                 (let ((__tmp50078
                                                        (let ((__tmp50079
                                                               (let ((__tmp50080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2586225873_ _g2586325876_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2586225873_ _g2586325876_)))))
                         (declare (not safe))
                         (foldr1 __tmp50080 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25702_ __tmp50078)))
                                                (__tmp50076
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25842_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50077 __tmp50076))))
                                     (declare (not safe))
                                     (cons __tmp50081 __tmp50075))))
                              (declare (not safe))
                              (cons __tmp50074 '()))))
                       (declare (not safe))
                       (cons _L25674_ __tmp50073)))
                    (__tmp50046
                     (let ((__tmp50047
                            (let ((__tmp50048
                                   (let ((__tmp50049
                                          (let ((__tmp50071
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50050
                                                 (let ((__tmp50068
                                                        (let ((__tmp50069
                                                               (let ((__tmp50070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2586025879_ _g2586125882_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2586025879_ _g2586125882_)))))
                         (declare (not safe))
                         (foldr1 __tmp50070 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50069)))
               (__tmp50051
                (let ((__tmp50052
                       (let ((__tmp50067 (gx#datum->syntax '#f 'if))
                             (__tmp50053
                              (let ((__tmp50064
                                     (let ((__tmp50066
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp50065
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25730_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50066 __tmp50065)))
                                    (__tmp50054
                                     (let ((__tmp50056
                                            (let ((__tmp50057
                                                   (let ((__tmp50061
                                                          (let ((__tmp50063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp50062
                         (let () (declare (not safe)) (cons _L25730_ '()))))
                    (declare (not safe))
                    (cons __tmp50063 __tmp50062)))
                 (__tmp50058
                  (let ((__tmp50059
                         (let ((__tmp50060
                                (lambda (_g2585825885_ _g2585925888_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2585825885_ _g2585925888_)))))
                           (declare (not safe))
                           (foldr1 __tmp50060 '() _L25487_))))
                    (declare (not safe))
                    (cons _L25730_ __tmp50059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50061
                                                           __tmp50058))))
                                              (declare (not safe))
                                              (cons _L25674_ __tmp50057)))
                                           (__tmp50055
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25814_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50056 __tmp50055))))
                                (declare (not safe))
                                (cons __tmp50064 __tmp50054))))
                         (declare (not safe))
                         (cons __tmp50067 __tmp50053))))
                  (declare (not safe))
                  (cons __tmp50052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50068
                                                         __tmp50051))))
                                            (declare (not safe))
                                            (cons __tmp50071 __tmp50050))))
                                     (declare (not safe))
                                     (cons __tmp50049 '()))))
                              (declare (not safe))
                              (cons _L25646_ __tmp50048))))
                       (declare (not safe))
                       (cons __tmp50047 '()))))
                (declare (not safe))
                (cons __tmp50072 __tmp50046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50082 __tmp50045)))
                                              (__tmp50039
                                               (let ((__tmp50040
                                                      (let ((__tmp50041
                                                             (let ((__tmp50042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50043
                                   (lambda (_g2585625891_ _g2585725894_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2585625891_ _g2585725894_)))))
                              (declare (not safe))
                              (foldr1 __tmp50043 '() _L25558_))))
                       (declare (not safe))
                       (cons _L25590_ __tmp50042))))
                (declare (not safe))
                (cons _L25646_ __tmp50041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50040 '()))))
                                          (declare (not safe))
                                          (cons __tmp50044 __tmp50039))))
                                   (declare (not safe))
                                   (cons __tmp50091 __tmp50038)))))
                           _g2582825839_)))
                       (__tmp50092
                        (let ()
                          (declare (not safe))
                          (_generate124739_
                           _L25702_
                           _hd25358_
                           _L25786_
                           _L25814_))))
                  (declare (not safe))
                  (_g2582625897_ __tmp50092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2580025811_)))
                                                (__tmp50093
                                                 (let ((__tmp50094
                                                        (let ((__tmp50095
                                                               (let ((__tmp50096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2590425907_ _g2590525910_)
                                (let ((__tmp50097
                                       (let ((__tmp50099
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp50098
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2590425907_ '()))))
                                         (declare (not safe))
                                         (cons __tmp50099 __tmp50098))))
                                  (declare (not safe))
                                  (cons __tmp50097 _g2590525910_)))))
                         (declare (not safe))
                         (foldr1 __tmp50096 '() _L25487_))))
                  (declare (not safe))
                  (cons _L25730_ __tmp50095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25618_
                                                         __tmp50094))))
                                           (declare (not safe))
                                           (_g2579825901_ __tmp50093))))
                                     _g2577225783_)))
                                 (__tmp50100
                                  (let ((__tmp50101
                                         (let ((__tmp50108
                                                (let ((__tmp50110
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp50109
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25730_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp50110
                                                        __tmp50109)))
                                               (__tmp50102
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25487_
                                                   _L25417_)
                                                  (let ((__tmp50103
                                                         (lambda (_g2591625920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2591725923_
                          _g2591825925_)
                   (let ((__tmp50104
                          (let ((__tmp50107 (gx#datum->syntax '#f 'cons))
                                (__tmp50105
                                 (let ((__tmp50106
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2591625920_ '()))))
                                   (declare (not safe))
                                   (cons _g2591725923_ __tmp50106))))
                            (declare (not safe))
                            (cons __tmp50107 __tmp50105))))
                     (declare (not safe))
                     (cons __tmp50104 _g2591825925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp50103
                                                            '()
                                                            _L25487_
                                                            _L25417_)))))
                                           (declare (not safe))
                                           (cons __tmp50108 __tmp50102))))
                                    (declare (not safe))
                                    (cons _L25646_ __tmp50101))))
                            (declare (not safe))
                            (_g2577025913_ __tmp50100))))
                      _g2574425755_)))
                  (__tmp50111
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
                                                      __tmp50111))))
                                               _g2571625727_)))
                                           (__tmp50112 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2571425932_ __tmp50112))))
                                _g2568825699_)))
                            (__tmp50113 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2568625936_ __tmp50113))))
                 _g2566025671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50114
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2565825940_ __tmp50114))))
                                          _g2563225643_)))
                                      (__tmp50115 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2563025944_ __tmp50115))))
                           _g2560425615_)))
                       (__tmp50116 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2560225948_ __tmp50116))))
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
                                         (__tmp50118
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp50119
                                                   (lambda (_g2595925962_
                                                            _g2596025965_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2595925962_
                                                             _g2596025965_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp50119
                                                      '()
                                                      _L25417_)))
                                           (let ((__tmp50120
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp50120 '())))))
                                    (declare (not safe))
                                    (_g2550325956_ __tmp50118))))
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
                                  (__tmp50122
                                   (gx#gentemps
                                    (let ((__tmp50123
                                           (lambda (_g2597125974_
                                                    _g2597225977_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2597125974_
                                                     _g2597225977_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp50123 '() _L25417_)))))
                             (declare (not safe))
                             (_g2543225968_ __tmp50122))))
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
                           (__tmp50125
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25358_))))
                      (declare (not safe))
                      (_g2536225980_ __tmp50125))))
                 (_generate-simple-vector24742_
                  (lambda (_tgt25198_
                           _body25200_
                           _start25201_
                           _K25202_
                           _E25203_)
                    (let _recur25205_ ((_rest25208_ _body25200_)
                                       (_off25210_ _start25201_))
                      (let* ((___stx4606846069_ _rest25208_)
                             (_g2521325225_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4606846069_))))
                        (let ((___kont4607146072_
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
                                    (let ((__tmp50126
                                           (let ((__tmp50131
                                                  (let ((__tmp50132
                                                         (let ((__tmp50133
                                                                (let ((__tmp50134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50137
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp50135
                                      (let ((__tmp50136
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25326_ '()))))
                                        (declare (not safe))
                                        (cons _L25328_ __tmp50136))))
                                 (declare (not safe))
                                 (cons __tmp50137 __tmp50135))))
                          (declare (not safe))
                          (cons __tmp50134 '()))))
                   (declare (not safe))
                   (cons _L25329_ __tmp50133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50132 '())))
                                                 (__tmp50127
                                                  (let ((__tmp50128
                                                         (let ((__tmp50129
                                                                (let ((__tmp50130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25210_ '1))))
                          (declare (not safe))
                          (_recur25205_ _L25253_ __tmp50130))))
                   (declare (not safe))
                   (_generate124739_ _L25329_ _L25255_ __tmp50129 _E25203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50128 '()))))
                                             (declare (not safe))
                                             (cons __tmp50131 __tmp50127))))
                                      (declare (not safe))
                                      (cons 'let __tmp50126))))
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
                                        (__tmp50138
                                         (list (gx#genident 'e)
                                               _tgt25198_
                                               _off25210_)))
                                   (declare (not safe))
                                   (_g2526925348_ __tmp50138))))
                              (___kont4607346074_ (lambda () _K25202_)))
                          (if (gx#stx-pair? ___stx4606846069_)
                              (let ((_e2521925243_
                                     (gx#syntax-e ___stx4606846069_)))
                                (let ((_tl2521725250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2521925243_)))
                                      (_hd2521825247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2521925243_))))
                                  (___kont4607146072_
                                   _tl2521725250_
                                   _hd2521825247_)))
                              (___kont4607346074_)))))))
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
                           (let ((__tmp50139
                                  (let ((__tmp50142
                                         (let ((__tmp50143
                                                (let ((__tmp50144
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25167_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25112_ __tmp50144))))
                                           (declare (not safe))
                                           (cons __tmp50143 '())))
                                        (__tmp50140
                                         (let ((__tmp50141
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124739_
                                                   _L25112_
                                                   _body25092_
                                                   _K25094_
                                                   _E25095_))))
                                           (declare (not safe))
                                           (cons __tmp50141 '()))))
                                    (declare (not safe))
                                    (cons __tmp50142 __tmp50140))))
                             (declare (not safe))
                             (cons 'let __tmp50139)))))
                     _g2515325164_)))
                 (__tmp50145
                  (let ((_$e25186_ _->list25093_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25186_))
                        (let ((__tmp50154 (gx#datum->syntax '#f 'values->list))
                              (__tmp50153
                               (let ()
                                 (declare (not safe))
                                 (cons _L25139_ '()))))
                          (declare (not safe))
                          (cons __tmp50154 __tmp50153))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25186_))
                            (let ((__tmp50152
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50151
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25139_ '()))))
                              (declare (not safe))
                              (cons __tmp50152 __tmp50151))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25186_))
                                (let ((__tmp50150
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50146
                                       (let ((__tmp50147
                                              (let ((__tmp50149
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50148
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25139_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50149 __tmp50148))))
                                         (declare (not safe))
                                         (cons __tmp50147 '()))))
                                  (declare (not safe))
                                  (cons __tmp50150 __tmp50146))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24732_
                                 _->list25093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2515125182_
                                                     __tmp50145))))
                                              _g2512525136_))))
                                     (declare (not safe))
                                     (_g2512325190_ _tgt25090_))))
                               _g2509825109_)))
                           (__tmp50155 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2509625194_ __tmp50155))))
                 (_generate-struct24744_
                  (lambda (_info24961_
                           _tgt24963_
                           _body24964_
                           _K24965_
                           _E24966_)
                    (let* ((___stx4608446085_ _body24964_)
                           (_g2496924992_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4608446085_))))
                      (let ((___kont4608746088_
                             (lambda (_L25069_)
                               (let* ((_fields25083_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24746_
                                          _info24961_)))
                                      (__tmp50156
                                       (let ((__tmp50160
                                              (let ((__tmp50162
                                                     (let ((__obj47288
                                                            _info24961_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47288
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47288
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47288
                                                            'predicate))))
                                                    (__tmp50161
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24963_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50162 __tmp50161)))
                                             (__tmp50157
                                              (let ((__tmp50159
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24745_
                                                        _info24961_
                                                        _tgt24963_
                                                        _L25069_
                                                        _K24965_
                                                        _E24966_)))
                                                    (__tmp50158
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24966_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50159 __tmp50158))))
                                         (declare (not safe))
                                         (cons __tmp50160 __tmp50157))))
                                 (declare (not safe))
                                 (cons 'if __tmp50156))))
                            (___kont4608946090_
                             (lambda (_L25023_)
                               (let ((__tmp50163
                                      (let ((__tmp50167
                                             (let ((__tmp50169
                                                    (let ((__obj47289
                                                           _info24961_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47289
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47289
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47289
                                                           'predicate))))
                                                   (__tmp50168
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24963_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50169 __tmp50168)))
                                            (__tmp50164
                                             (let ((__tmp50166
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24743_
                                                       _tgt24963_
                                                       _L25023_
                                                       'struct->list
                                                       _K24965_
                                                       _E24966_)))
                                                   (__tmp50165
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24966_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50166 __tmp50165))))
                                        (declare (not safe))
                                        (cons __tmp50167 __tmp50164))))
                                 (declare (not safe))
                                 (cons 'if __tmp50163)))))
                        (if (gx#stx-pair? ___stx4608446085_)
                            (let ((_e2497425045_
                                   (gx#syntax-e ___stx4608446085_)))
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
                                                      (___kont4608746088_
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
                                                          (___kont4608946090_
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
                      (let* ((___stx4613446135_ _rest24891_)
                             (_g2489624908_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4613446135_))))
                        (let ((___kont4613746138_
                               (lambda (_L24936_ _L24938_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24893_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24732_
                                      _info24881_
                                      (let ((__obj47290 _info24881_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47290
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47290
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47290
                                             'name))))
                                     (let ((_$tgt24953_ (gx#genident 'e))
                                           (_getf24955_ (car _fields24893_)))
                                       (let ((__tmp50170
                                              (let ((__tmp50175
                                                     (let ((__tmp50176
                                                            (let ((__tmp50177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50178
                                  (let ((__tmp50179
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24883_ '()))))
                                    (declare (not safe))
                                    (cons _getf24955_ __tmp50179))))
                             (declare (not safe))
                             (cons __tmp50178 '()))))
                      (declare (not safe))
                      (cons _$tgt24953_ __tmp50177))))
               (declare (not safe))
               (cons __tmp50176 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50171
                                                     (let ((__tmp50172
                                                            (let ((__tmp50173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50174 (cdr _fields24893_)))
                             (declare (not safe))
                             (_recur24888_ _L24936_ __tmp50174))))
                      (declare (not safe))
                      (_generate124739_
                       _$tgt24953_
                       _L24938_
                       __tmp50173
                       _E24886_))))
               (declare (not safe))
               (cons __tmp50172 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50175 __tmp50171))))
                                         (declare (not safe))
                                         (cons 'let __tmp50170))))))
                              (___kont4613946140_ (lambda () _K24885_)))
                          (if (gx#stx-pair? ___stx4613446135_)
                              (let ((_e2490224926_
                                     (gx#syntax-e ___stx4613446135_)))
                                (let ((_tl2490024933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2490224926_)))
                                      (_hd2490124930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2490224926_))))
                                  (___kont4613746138_
                                   _tl2490024933_
                                   _hd2490124930_)))
                              (___kont4613946140_)))))))
                 (_struct-field-accessors24746_
                  (lambda (_info24862_)
                    (let _recur24865_ ((_next24868_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24862_ '()))))
                      (if (let () (declare (not safe)) (null? _next24868_))
                          '()
                          (let ((_ti24871_ (car _next24868_)))
                            (append (let ((__tmp50180
                                           (map gx#syntax-local-value
                                                (let ((__obj47291 _ti24871_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47291
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47291
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47291
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24865_ __tmp50180))
                                    (map (lambda (_slot24874_)
                                           (let ((_$e24877_
                                                  (let ((__tmp50181
                                                         (let ((__obj47292
                                                                _ti24871_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47292
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47292
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47292
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24874_
                                                             __tmp50181))))
                                             (if _$e24877_
                                                 _$e24877_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24732_
                                                  _info24862_
                                                  _slot24874_))))
                                         (let ((__obj47293 _ti24871_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47293
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47293
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47293
                                                'slots))))))))))
                 (_generate-class24747_
                  (lambda (_info24855_
                           _tgt24857_
                           _body24858_
                           _K24859_
                           _E24860_)
                    (let ((__tmp50182
                           (let ((__tmp50186
                                  (let ((__tmp50188
                                         (let ((__obj47294 _info24855_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47294
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47294
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47294
                                                'predicate))))
                                        (__tmp50187
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24857_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50188 __tmp50187)))
                                 (__tmp50183
                                  (let ((__tmp50185
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24748_
                                            _info24855_
                                            _tgt24857_
                                            _body24858_
                                            _K24859_
                                            _E24860_)))
                                        (__tmp50184
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24860_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50185 __tmp50184))))
                             (declare (not safe))
                             (cons __tmp50186 __tmp50183))))
                      (declare (not safe))
                      (cons 'if __tmp50182))))
                 (_generate-class-body24748_
                  (lambda (_info24750_
                           _tgt24752_
                           _body24753_
                           _K24754_
                           _E24755_)
                    (let _recur24757_ ((_rest24760_ _body24753_))
                      (let* ((___stx4615046151_ _rest24760_)
                             (_g2476424780_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4615046151_))))
                        (let ((___kont4615346154_
                               (lambda (_L24818_ _L24820_ _L24821_)
                                 (let ((_$e24841_
                                        (let ((__tmp50190
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24821_))))
                                              (__tmp50189
                                               (let ((__obj47295 _info24750_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47295
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47295
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47295
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50190 __tmp50189))))
                                   (if _$e24841_
                                       ((lambda (_getf24845_)
                                          (let* ((_$tgt24848_ (gx#genident 'e))
                                                 (__tmp50191
                                                  (let ((__tmp50195
                                                         (let ((__tmp50196
                                                                (let ((__tmp50197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50198
                                      (let ((__tmp50199
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24752_ '()))))
                                        (declare (not safe))
                                        (cons _getf24845_ __tmp50199))))
                                 (declare (not safe))
                                 (cons __tmp50198 '()))))
                          (declare (not safe))
                          (cons _$tgt24848_ __tmp50197))))
                   (declare (not safe))
                   (cons __tmp50196 '())))
                (__tmp50192
                 (let ((__tmp50193
                        (let ((__tmp50194
                               (let ()
                                 (declare (not safe))
                                 (_recur24757_ _L24818_))))
                          (declare (not safe))
                          (_generate124739_
                           _$tgt24848_
                           _L24820_
                           __tmp50194
                           _E24755_))))
                   (declare (not safe))
                   (cons __tmp50193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50195
                                                          __tmp50192))))
                                            (declare (not safe))
                                            (cons 'let __tmp50191)))
                                        _$e24841_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24732_
                                        _info24750_
                                        _L24821_)))))
                              (___kont4615546156_ (lambda () _K24754_)))
                          (if (gx#stx-pair? ___stx4615046151_)
                              (let ((_e2477124798_
                                     (gx#syntax-e ___stx4615046151_)))
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
                                          (___kont4615346154_
                                           _tl2477224815_
                                           _hd2477324812_
                                           _hd2477024802_)))
                                      (___kont4615546156_))))
                              (___kont4615546156_))))))))
          (let ()
            (declare (not safe))
            (_generate124739_ _tgt24734_ _ptree24735_ _K24736_ _E24737_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23628_ _tgt-lst23630_ _clauses23631_)
        (letrec ((_parse-body23633_
                  (lambda (_hd-len24554_)
                    (let _lp24557_ ((_rest24560_ _clauses23631_)
                                    (_r24562_ '()))
                      (let* ((___stx4620046201_ _rest24560_)
                             (_g2456524577_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4620046201_))))
                        (let ((___kont4620346204_
                               (lambda (_L24605_ _L24607_)
                                 (let* ((___stx4617246173_ _L24607_)
                                        (_g2462424640_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4617246173_))))
                                   (let ((___kont4617546176_
                                          (lambda (_L24709_)
                                            (if (gx#stx-null? _L24605_)
                                                (let ((__tmp50200
                                                       (let ((__tmp50205
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50201
                                                              (let ((__tmp50202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50203
                                    (gx#stx-wrap-source
                                     (let ((__tmp50204
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50204 _L24709_))
                                     (let ((_$e24720_
                                            (gx#stx-source _L24607_)))
                                       (if _$e24720_
                                           _$e24720_
                                           (gx#stx-source _stx23628_))))))
                               (declare (not safe))
                               (cons __tmp50203 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50202))))
                 (declare (not safe))
                 (cons __tmp50205 __tmp50201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50200 _r24562_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23628_
                                                 _L24607_))))
                                         (___kont4617746178_
                                          (lambda (_L24668_ _L24670_)
                                            (let ((__tmp50206
                                                   (let ((__tmp50207
                                                          (let ((__tmp50213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50208
                         (let ((__tmp50212
                                (gx#stx-map
                                 (lambda (_g2468224684_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2468224684_
                                      _stx23628_)))
                                 _L24670_))
                               (__tmp50209
                                (let ((__tmp50210
                                       (gx#stx-wrap-source
                                        (let ((__tmp50211
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50211 _L24668_))
                                        (let ((_$e24688_
                                               (gx#stx-source _L24607_)))
                                          (if _$e24688_
                                              _$e24688_
                                              (gx#stx-source _stx23628_))))))
                                  (declare (not safe))
                                  (cons __tmp50210 '()))))
                           (declare (not safe))
                           (cons __tmp50212 __tmp50209))))
                    (declare (not safe))
                    (cons __tmp50213 __tmp50208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50207
                                                           _r24562_))))
                                              (declare (not safe))
                                              (_lp24557_
                                               _L24605_
                                               __tmp50206))))
                                         (___kont4617946180_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23628_
                                             _L24607_))))
                                     (let* ((___match4619746198_
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
                                                          (let ((__tmp50214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24668_)))
                    (declare (not safe))
                    (not __tmp50214)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4617746178_
                                                      _L24668_
                                                      _L24670_)
                                                     (___kont4617946180_)))))
                                            (___match4619146192_
                                             (lambda (_e2462924699_
                                                      _hd2462824703_
                                                      _tl2462724706_)
                                               (let ((_L24709_ _tl2462724706_))
                                                 (if (and (gx#stx-list?
                                                           _L24709_)
                                                          (let ((__tmp50215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24709_)))
                    (declare (not safe))
                    (not __tmp50215)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4617546176_
                                                      _L24709_)
                                                     (___match4619746198_
                                                      _e2462924699_
                                                      _hd2462824703_
                                                      _tl2462724706_))))))
                                       (if (gx#stx-pair? ___stx4617246173_)
                                           (let ((_e2462924699_
                                                  (gx#syntax-e
                                                   ___stx4617246173_)))
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
                                                        |gerbil/core$<match>[1]#_g50216_|
                                                        _hd2462824703_)
                                                       (___match4619146192_
                                                        _e2462924699_
                                                        _hd2462824703_
                                                        _tl2462724706_)
                                                       (___match4619746198_
                                                        _e2462924699_
                                                        _hd2462824703_
                                                        _tl2462724706_))
                                                   (___match4619746198_
                                                    _e2462924699_
                                                    _hd2462824703_
                                                    _tl2462724706_))))
                                           (___kont4617946180_)))))))
                              (___kont4620546206_ (lambda () _r24562_)))
                          (if (gx#stx-pair? ___stx4620046201_)
                              (let ((_e2457124595_
                                     (gx#syntax-e ___stx4620046201_)))
                                (let ((_tl2456924602_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2457124595_)))
                                      (_hd2457024599_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2457124595_))))
                                  (___kont4620346204_
                                   _tl2456924602_
                                   _hd2457024599_)))
                              (___kont4620546206_)))))))
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
                                                 (let ((_g50217_
                                                        (gx#syntax-split-splice
                                                         _g2437024390_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50218_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50217_)
                          (##vector-length _g50217_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50218_ 2)))
                   (error "Context expects 2 values" _g50218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2437224393_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50217_
                                                               0)))
                                                           (_tl2437424396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50217_
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
                                       (let ((__tmp50241
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2437724413_
                                                      _target2437924406_))))
                                         (declare (not safe))
                                         (_loop2437524399_
                                          _lp-tl2437824416_
                                          __tmp50241))))
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
                                                 (let ((__tmp50222
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50219
                                                        (let ((__tmp50221
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50220
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24511_ '()))))
                  (declare (not safe))
                  (cons __tmp50221 __tmp50220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50222
                                                         __tmp50219)))))
                                           _g2449724508_)))
                                       (__tmp50223
                                        (gx#stx-wrap-source
                                         (let ((__tmp50229
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50224
                                                (let ((__tmp50226
                                                       (let ((__tmp50227
                                                              (let ((__tmp50228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24455_ '()))))
                        (declare (not safe))
                        (cons _L24357_ __tmp50228))))
                 (declare (not safe))
                 (cons __tmp50227 '())))
              (__tmp50225 (let () (declare (not safe)) (cons _L24483_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50226
                                                        __tmp50225))))
                                           (declare (not safe))
                                           (cons __tmp50229 __tmp50224))
                                         (gx#stx-source _stx23628_))))
                                  (declare (not safe))
                                  (_g2449524526_ __tmp50223))))
                            _g2446924480_)))
                        (__tmp50230
                         (let ((__tmp50231
                                (let ()
                                  (declare (not safe))
                                  (cons _L24357_ '()))))
                           (declare (not safe))
                           (_generate-clauses23636_ _body24339_ __tmp50231))))
                   (declare (not safe))
                   (_g2446724530_ __tmp50230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2444124452_)))
                                                 (__tmp50232
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50240
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50233
                                                          (let ((__tmp50234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50235
                                (let ((__tmp50239
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50236
                                       (let ((__tmp50237
                                              (let ((__tmp50238
                                                     (lambda (_g2453724540_
                                                              _g2453824543_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2453724540_
                                                               _g2453824543_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50238
                                                        '()
                                                        _L24423_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50237))))
                                  (declare (not safe))
                                  (cons __tmp50239 __tmp50236))))
                           (declare (not safe))
                           (cons __tmp50235 '()))))
                    (declare (not safe))
                    (cons '() __tmp50234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50240
                                                           __tmp50233))
                                                   (gx#stx-source
                                                    _stx23628_))))
                                            (declare (not safe))
                                            (_g2443924534_ __tmp50232))))
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
                           (__tmp50242 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2434124550_ __tmp50242))))
                 (_generate-clauses23636_
                  (lambda (_rest23991_ _E23993_)
                    (let* ((___stx4621646217_ _rest23991_)
                           (_g2399724013_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4621646217_))))
                      (let ((___kont4621946220_
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
                                (let ((__tmp50243
                                       (let ((__tmp50244
                                              (let ((__tmp50245
                                                     (if (gx#stx-e _L24315_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123637_
                                                            _L24315_
                                                            _L24313_
                                                            _E23993_))
                                                         _L24313_)))
                                                (declare (not safe))
                                                (cons __tmp50245 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50244))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50243)))
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
                            (___kont4622146222_
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
                               (let ((__tmp50272 (gx#datum->syntax '#f 'let))
                                     (__tmp50263
                                      (let ((__tmp50265
                                             (let ((__tmp50266
                                                    (let ((__tmp50267
                                                           (let ((__tmp50268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50271 (gx#datum->syntax '#f 'lambda))
                                (__tmp50269
                                 (let ((__tmp50270
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24176_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50270))))
                            (declare (not safe))
                            (cons __tmp50271 __tmp50269))))
                     (declare (not safe))
                     (cons __tmp50268 '()))))
              (declare (not safe))
              (cons _L24115_ __tmp50267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50266 '())))
                                            (__tmp50264
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50265 __tmp50264))))
                                 (declare (not safe))
                                 (cons __tmp50272 __tmp50263))))
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
                                           (__tmp50273
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123637_
                                                     _L24114_
                                                     _L24112_
                                                     _E23993_))
                                                  (let ((__tmp50274
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23636_
                                                     _L24041_
                                                     __tmp50274)))))
                                      (declare (not safe))
                                      (_g2413124192_ __tmp50273))
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
                                                   (let ((__tmp50260
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50246
                                                          (let ((__tmp50248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50249
                                (let ((__tmp50250
                                       (let ((__tmp50251
                                              (let ((__tmp50259
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50252
                                                     (let ((__tmp50258
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50253
                                                            (let ((__tmp50254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50257 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50255
                                  (let ((__tmp50256
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24112_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50256))))
                             (declare (not safe))
                             (cons __tmp50257 __tmp50255))))
                      (declare (not safe))
                      (cons __tmp50254 '()))))
               (declare (not safe))
               (cons __tmp50258 __tmp50253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50259 __tmp50252))))
                                         (declare (not safe))
                                         (cons __tmp50251 '()))))
                                  (declare (not safe))
                                  (cons _L24115_ __tmp50250))))
                           (declare (not safe))
                           (cons __tmp50249 '())))
                        (__tmp50247
                         (let () (declare (not safe)) (cons _L24211_ '()))))
                    (declare (not safe))
                    (cons __tmp50248 __tmp50247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50260
                                                           __tmp50246))))
                                               _g2419724208_)))
                                           (__tmp50261
                                            (let ((__tmp50262
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24115_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23636_
                                               _L24041_
                                               __tmp50262))))
                                      (declare (not safe))
                                      (_g2419524222_ __tmp50261))))
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
                            (___kont4622346224_
                             (lambda ()
                               (let ((__tmp50275
                                      (let ((__tmp50276
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23993_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50276))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50275)))))
                        (if (gx#stx-pair? ___stx4621646217_)
                            (let ((_e2400224237_
                                   (gx#syntax-e ___stx4621646217_)))
                              (let ((_tl2400024244_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2400224237_)))
                                    (_hd2400124241_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2400224237_))))
                                (if (gx#stx-null? _tl2400024244_)
                                    (___kont4621946220_ _hd2400124241_)
                                    (___kont4622146222_
                                     _tl2400024244_
                                     _hd2400124241_))))
                            (___kont4622346224_))))))
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
                                                  (let ((_g50277_
                                                         (gx#syntax-split-splice
                                                          _hd2365223689_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50278_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50277_)
                           (##vector-length _g50277_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50278_ 2)))
                    (error "Context expects 2 values" _g50278_)))
              (let ((_target2365423695_
                     (let () (declare (not safe)) (##vector-ref _g50277_ 0)))
                    (_tl2365623698_
                     (let () (declare (not safe)) (##vector-ref _g50277_ 1))))
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
                                        (let ((__tmp50295
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2365923715_
                                                       _var2366123708_))))
                                          (declare (not safe))
                                          (_loop2365723701_
                                           _lp-tl2366023718_
                                           __tmp50295))))
                                    (let ((_var2366223721_
                                           (reverse _var2366123708_)))
                                      (if (gx#stx-null? _tl2365123692_)
                                          ((lambda (_L23725_ _L23727_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50279
                                                       (lambda (_g2374823751_
                                                                _g2374923754_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2374823751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2374923754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50279
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
                                                       (let ((__tmp50284
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50280
                                                              (let ((__tmp50282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50283
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23828_ '()))))
                               (declare (not safe))
                               (cons _L23727_ __tmp50283)))
                            (__tmp50281
                             (let ()
                               (declare (not safe))
                               (cons _L23772_ '()))))
                        (declare (not safe))
                        (cons __tmp50282 __tmp50281))))
                 (declare (not safe))
                 (cons __tmp50284 __tmp50280))
               (gx#stx-source _stx23628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2381423825_)))
                                            (__tmp50285
                                             (gx#stx-wrap-source
                                              (let ((__tmp50290
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50286
                                                     (let ((__tmp50288
                                                            (let ((__tmp50289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2384623849_ _g2384723852_)
                             (let ()
                               (declare (not safe))
                               (cons _g2384623849_ _g2384723852_)))))
                      (declare (not safe))
                      (foldr1 __tmp50289 '() _L23725_)))
                   (__tmp50287
                    (let () (declare (not safe)) (cons _L23800_ '()))))
               (declare (not safe))
               (cons __tmp50288 __tmp50287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50290 __tmp50286))
                                              (gx#stx-source _stx23628_))))
                                       (declare (not safe))
                                       (_g2381223843_ __tmp50285))))
                                 _g2378623797_))))
                        (declare (not safe))
                        (_g2378423855_ _body23641_))))
                  _g2375823769_)))
              (__tmp50291
               (let _recur23863_ ((_rest23866_ _clause23639_)
                                  (_rest-targets23868_ _tgt-lst23630_))
                 (let* ((___stx4624246243_ _rest23866_)
                        (_g2387123883_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4624246243_))))
                   (let ((___kont4624546246_
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
                                                 (let ((__tmp50292
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
                                                    __tmp50292
                                                    _E23642_)))
                                               _tl2394023962_
                                               _hd2394123959_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2393623948_ _g2393723952_))))))
                              (declare (not safe))
                              (_g2393523979_ _rest-targets23868_))))
                         (___kont4624746248_
                          (lambda ()
                            (let ((__tmp50293
                                   (let ((__tmp50294
                                          (lambda (_g2389323896_ _g2389423899_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2389323896_
                                                    _g2389423899_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50294 '() _L23725_))))
                              (declare (not safe))
                              (cons _L23727_ __tmp50293)))))
                     (if (gx#stx-pair? ___stx4624246243_)
                         (let ((_e2387723909_ (gx#syntax-e ___stx4624246243_)))
                           (let ((_tl2387523916_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2387723909_)))
                                 (_hd2387623913_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2387723909_))))
                             (___kont4624546246_
                              _tl2387523916_
                              _hd2387623913_)))
                         (___kont4624746248_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2375623859_ __tmp50291))))
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
                           (__tmp50296
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23639_)))))
                      (declare (not safe))
                      (_g2364323987_ __tmp50296)))))
          (let ((__tmp50297
                 (let ((__tmp50298 (gx#stx-length _tgt-lst23630_)))
                   (declare (not safe))
                   (_parse-body23633_ __tmp50298))))
            (declare (not safe))
            (_generate-body23635_ __tmp50297)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23530_ _tgt23532_ _clauses23533_)
        (letrec ((_reclause23535_
                  (lambda (_clause23538_)
                    (let* ((___stx4625846259_ _clause23538_)
                           (_g2354323558_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4625846259_))))
                      (let ((___kont4626146262_ (lambda () _clause23538_))
                            (___kont4626346264_
                             (lambda (_L23586_ _L23588_)
                               (gx#stx-wrap-source
                                (let ((__tmp50299
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23588_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50299 _L23586_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4626546266_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23530_
                                _clause23538_))))
                        (if (gx#stx-pair? ___stx4625846259_)
                            (let ((_e2354723610_
                                   (gx#syntax-e ___stx4625846259_)))
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
                                         |gerbil/core$<match>[1]#_g50300_|
                                         _hd2354623614_)
                                        (___kont4626146262_)
                                        (___kont4626346264_
                                         _tl2354523617_
                                         _hd2354623614_))
                                    (___kont4626346264_
                                     _tl2354523617_
                                     _hd2354623614_))))
                            (___kont4626546266_)))))))
          (let ((__tmp50302
                 (let () (declare (not safe)) (cons _tgt23532_ '())))
                (__tmp50301 (gx#stx-map _reclause23535_ _clauses23533_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23530_
             __tmp50302
             __tmp50301)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30761_)
        (let* ((___stx4628646287_ _stx30761_)
               (_g3076630795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4628646287_))))
          (let ((___kont4628946290_
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
                                                   (let ((__tmp50306
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50303
                                                          (let ((__tmp50305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L31063_ '())))
                        (__tmp50304
                         (let () (declare (not safe)) (cons _L31090_ '()))))
                    (declare (not safe))
                    (cons __tmp50305 __tmp50304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50306
                                                           __tmp50303)))))
                                             _g3107631087_))))
                                    (_g3107431105_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50308
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50307
                                             (let ()
                                               (declare (not safe))
                                               (cons _L31063_ _L31035_))))
                                        (declare (not safe))
                                        (cons __tmp50308 __tmp50307))
                                      (gx#stx-source _stx30761_))))))
                              _g3104931060_))))
                     (_g3104731109_ (gx#genident 'e)))))
                (___kont4629146292_
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
                                                   (let ((__tmp50311
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50309
                                                          (let ((__tmp50310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30985_ '()))))
                    (declare (not safe))
                    (cons _L30958_ __tmp50310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50311
                                                           __tmp50309)))))
                                             _g3097130982_))))
                                    (_g3096931000_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50313
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50312
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30958_ _L30930_))))
                                        (declare (not safe))
                                        (cons __tmp50313 __tmp50312))
                                      (gx#stx-source _stx30761_))))))
                              _g3094430955_))))
                     (_g3094231004_ (gx#genident 'args)))))
                (___kont4629346294_
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
                                                   (let ((__tmp50319
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50314
                                                          (let ((__tmp50316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50317
                                (let ((__tmp50318
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30824_ '()))))
                                  (declare (not safe))
                                  (cons _L30853_ __tmp50318))))
                           (declare (not safe))
                           (cons __tmp50317 '())))
                        (__tmp50315
                         (let () (declare (not safe)) (cons _L30880_ '()))))
                    (declare (not safe))
                    (cons __tmp50316 __tmp50315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50319
                                                           __tmp50314)))))
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
            (let* ((___match4633946340_
                    (lambda (_e3078630802_
                             _hd3078530806_
                             _tl3078430809_
                             _e3078930812_
                             _hd3078830816_
                             _tl3078730819_)
                      (let ((_L30822_ _tl3078730819_)
                            (_L30824_ _hd3078830816_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4629346294_ _L30822_ _L30824_)
                            (let () (declare (not safe)) (_g3076630795_))))))
                   (___match4632746328_
                    (lambda (_e3077830910_
                             _hd3077730914_
                             _tl3077630917_
                             _e3078130920_
                             _hd3078030924_
                             _tl3077930927_)
                      (let ((_L30930_ _tl3077930927_))
                        (if (gx#stx-list? _L30930_)
                            (___kont4629146292_ _L30930_)
                            (___match4633946340_
                             _e3077830910_
                             _hd3077730914_
                             _tl3077630917_
                             _e3078130920_
                             _hd3078030924_
                             _tl3077930927_)))))
                   (___match4631146312_
                    (lambda (_e3077131015_
                             _hd3077031019_
                             _tl3076931022_
                             _e3077431025_
                             _hd3077331029_
                             _tl3077231032_)
                      (let ((_L31035_ _tl3077231032_))
                        (if (gx#stx-list? _L31035_)
                            (___kont4628946290_ _L31035_)
                            (___match4633946340_
                             _e3077131015_
                             _hd3077031019_
                             _tl3076931022_
                             _e3077431025_
                             _hd3077331029_
                             _tl3077231032_))))))
              (if (gx#stx-pair? ___stx4628646287_)
                  (let ((_e3077131015_ (gx#syntax-e ___stx4628646287_)))
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
                                       |gerbil/core$<match>[1]#_g50321_|
                                       _hd3077331029_)
                                      (___match4631146312_
                                       _e3077131015_
                                       _hd3077031019_
                                       _tl3076931022_
                                       _e3077431025_
                                       _hd3077331029_
                                       _tl3077231032_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50320_|
                                           _hd3077331029_)
                                          (___match4632746328_
                                           _e3077131015_
                                           _hd3077031019_
                                           _tl3076931022_
                                           _e3077431025_
                                           _hd3077331029_
                                           _tl3077231032_)
                                          (___match4633946340_
                                           _e3077131015_
                                           _hd3077031019_
                                           _tl3076931022_
                                           _e3077431025_
                                           _hd3077331029_
                                           _tl3077231032_)))
                                  (___match4633946340_
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
                                      (let ((_g50322_
                                             (gx#syntax-split-splice
                                              _hd3112831165_
                                              '0)))
                                        (begin
                                          (let ((_g50323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50322_)
                                                       (##vector-length
                                                        _g50322_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50323_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50323_)))
                                          (let ((_target3113031171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50322_ 0)))
                                                (_tl3113231174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50322_ 1))))
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
                                               (let ((_g50324_
                                                      (gx#syntax-split-splice
                                                       _g3122231242_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50325_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50324_)
                        (##vector-length _g50324_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50325_ 2)))
                 (error "Context expects 2 values" _g50325_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3122431245_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50324_
                                                             0)))
                                                         (_tl3122631248_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50324_
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
                                                         (let ((__tmp50332
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50326
                        (let ((__tmp50328
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31203_
                                  _L31275_)
                                 (let ((__tmp50329
                                        (lambda (_g3132031324_
                                                 _g3132131327_
                                                 _g3132231329_)
                                          (let ((__tmp50330
                                                 (let ((__tmp50331
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3132031324_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3132131327_
                                                         __tmp50331))))
                                            (declare (not safe))
                                            (cons __tmp50330 _g3132231329_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50329 '() _L31203_ _L31275_))))
                              (__tmp50327
                               (let ()
                                 (declare (not safe))
                                 (cons _L31306_ '()))))
                          (declare (not safe))
                          (cons __tmp50328 __tmp50327))))
                   (declare (not safe))
                   (cons __tmp50332 __tmp50326)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3129231303_))))
                                          (_g3129031332_
                                           (let ((__tmp50333
                                                  (let ((__tmp50334
                                                         (lambda (_g3133531338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3133631341_)
                   (let ()
                     (declare (not safe))
                     (cons _g3133531338_ _g3133631341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50334
                                                            '()
                                                            _L31275_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31117_
                                              __tmp50333
                                              _L31201_))))))
                                    _$e3123231271_))))))
                   (_loop3122731251_ _target3122431245_ '()))
                 (_g3122131238_ _g3122231242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3122131238_
                                                _g3122231242_)))))
                                   (_g3122031344_
                                    (gx#gentemps
                                     (let ((__tmp50335
                                            (lambda (_g3134731350_
                                                     _g3134831353_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3134731350_
                                                      _g3134831353_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50335 '() _L31203_)))))
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
        (let* ((___stx4634246343_ _$stx31362_)
               (_g3136831451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4634246343_))))
          (let ((___kont4634546346_
                 (lambda (_L31781_)
                   (let ((__tmp50339 (gx#datum->syntax '#f 'let))
                         (__tmp50336
                          (let ((__tmp50337
                                 (let ((__tmp50338
                                        (lambda (_g3179731800_ _g3179831803_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3179731800_
                                                  _g3179831803_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50338 '() _L31781_))))
                            (declare (not safe))
                            (cons '() __tmp50337))))
                     (declare (not safe))
                     (cons __tmp50339 __tmp50336))))
                (___kont4634946350_
                 (lambda (_L31689_ _L31691_ _L31692_ _L31693_)
                   (let ((__tmp50340
                          (let ((__tmp50343
                                 (let ((__tmp50344
                                        (let ((__tmp50345
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31691_ '()))))
                                          (declare (not safe))
                                          (cons _L31692_ __tmp50345))))
                                   (declare (not safe))
                                   (cons __tmp50344 '())))
                                (__tmp50341
                                 (let ((__tmp50342
                                        (lambda (_g3171531718_ _g3171631721_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3171531718_
                                                  _g3171631721_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50342 '() _L31689_))))
                            (declare (not safe))
                            (cons __tmp50343 __tmp50341))))
                     (declare (not safe))
                     (cons _L31693_ __tmp50340))))
                (___kont4635346354_
                 (lambda (_L31562_ _L31564_ _L31565_)
                   (let ((__tmp50355 (gx#datum->syntax '#f 'match*))
                         (__tmp50346
                          (let ((__tmp50353
                                 (let ((__tmp50354
                                        (lambda (_g3159131594_ _g3159231597_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3159131594_
                                                  _g3159231597_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50354 '() _L31564_)))
                                (__tmp50347
                                 (let ((__tmp50348
                                        (let ((__tmp50351
                                               (let ((__tmp50352
                                                      (lambda (_g3158931600_
                                                               _g3159031603_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3158931600_
                                                                _g3159031603_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50352
                                                         '()
                                                         _L31565_)))
                                              (__tmp50349
                                               (let ((__tmp50350
                                                      (lambda (_g3158731606_
                                                               _g3158831609_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3158731606_
                                                                _g3158831609_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50350
                                                         '()
                                                         _L31562_))))
                                          (declare (not safe))
                                          (cons __tmp50351 __tmp50349))))
                                   (declare (not safe))
                                   (cons __tmp50348 '()))))
                            (declare (not safe))
                            (cons __tmp50353 __tmp50347))))
                     (declare (not safe))
                     (cons __tmp50355 __tmp50346)))))
            (let* ((___match4643546436_
                    (lambda (_e3141631458_
                             _hd3141531462_
                             _tl3141431465_
                             _e3141931468_
                             _hd3141831472_
                             _tl3141731475_
                             ___splice4635546356_
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
                                            (let ((___splice4635746358_
                                                   (gx#syntax-split-splice
                                                    _tl3141731475_
                                                    '0)))
                                              (let ((_tl3143931535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4635746358_
                                                        '1)))
                                                    (_target3143731532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4635746358_
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
                              (___kont4635346354_
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
                   (___match4642746428_
                    (lambda (_e3141631458_
                             _hd3141531462_
                             _tl3141431465_
                             _e3141931468_
                             _hd3141831472_
                             _tl3141731475_)
                      (if (gx#stx-pair/null? _hd3141831472_)
                          (let ((___splice4635546356_
                                 (gx#syntax-split-splice _hd3141831472_ '0)))
                            (let ((_tl3142231481_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4635546356_ '1)))
                                  (_target3142031478_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4635546356_ '0))))
                              (if (gx#stx-null? _tl3142231481_)
                                  (___match4643546436_
                                   _e3141631458_
                                   _hd3141531462_
                                   _tl3141431465_
                                   _e3141931468_
                                   _hd3141831472_
                                   _tl3141731475_
                                   ___splice4635546356_
                                   _target3142031478_
                                   _tl3142231481_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3136831451_)))))
                          (let () (declare (not safe)) (_g3136831451_)))))
                   (___match4641546416_
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
                             ___splice4635146352_
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
                                              (___kont4634946350_
                                               _L31689_
                                               _L31691_
                                               _L31692_
                                               _L31693_)
                                              (___match4642746428_
                                               _e3139231619_
                                               _hd3139131623_
                                               _tl3139031626_
                                               _e3139531629_
                                               _hd3139431633_
                                               _tl3139331636_))))))))
                        (_loop3140531665_ _target3140231659_ '()))))
                   (___match4638146382_
                    (lambda (_e3137331731_
                             _hd3137231735_
                             _tl3137131738_
                             _e3137631741_
                             _hd3137531745_
                             _tl3137431748_
                             ___splice4634746348_
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
                                        (___kont4634546346_
                                         _body3138531777_))))))
                        (_loop3138031757_ _target3137731751_ '())))))
              (if (gx#stx-pair? ___stx4634246343_)
                  (let ((_e3137331731_ (gx#syntax-e ___stx4634246343_)))
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
                                      (let ((___splice4634746348_
                                             (gx#syntax-split-splice
                                              _tl3137431748_
                                              '0)))
                                        (let ((_tl3137931754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4634746348_
                                                  '1)))
                                              (_target3137731751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4634746348_
                                                  '0))))
                                          (if (gx#stx-null? _tl3137931754_)
                                              (___match4638146382_
                                               _e3137331731_
                                               _hd3137231735_
                                               _tl3137131738_
                                               _e3137631741_
                                               _hd3137531745_
                                               _tl3137431748_
                                               ___splice4634746348_
                                               _target3137731751_
                                               _tl3137931754_)
                                              (if (gx#stx-pair/null?
                                                   _hd3137531745_)
                                                  (let ((___splice4635546356_
                                                         (gx#syntax-split-splice
                                                          _hd3137531745_
                                                          '0)))
                                                    (let ((_tl3142231481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4635546356_
                                                              '1)))
                                                          (_target3142031478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4635546356_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3142231481_)
                                                          (___match4643546436_
                                                           _e3137331731_
                                                           _hd3137231735_
                                                           _tl3137131738_
                                                           _e3137631741_
                                                           _hd3137531745_
                                                           _tl3137431748_
                                                           ___splice4635546356_
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
                                          (let ((___splice4635546356_
                                                 (gx#syntax-split-splice
                                                  _hd3137531745_
                                                  '0)))
                                            (let ((_tl3142231481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4635546356_
                                                      '1)))
                                                  (_target3142031478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4635546356_
                                                      '0))))
                                              (if (gx#stx-null? _tl3142231481_)
                                                  (___match4643546436_
                                                   _e3137331731_
                                                   _hd3137231735_
                                                   _tl3137131738_
                                                   _e3137631741_
                                                   _hd3137531745_
                                                   _tl3137431748_
                                                   ___splice4635546356_
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
                                                          (let ((___splice4635146352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3137431748_ '0)))
                    (let ((_tl3140431662_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4635146352_ '1)))
                          (_target3140231659_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4635146352_ '0))))
                      (if (gx#stx-null? _tl3140431662_)
                          (___match4641546416_
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
                           ___splice4635146352_
                           _target3140231659_
                           _tl3140431662_)
                          (if (gx#stx-pair/null? _hd3137531745_)
                              (let ((___splice4635546356_
                                     (gx#syntax-split-splice
                                      _hd3137531745_
                                      '0)))
                                (let ((_tl3142231481_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4635546356_
                                          '1)))
                                      (_target3142031478_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4635546356_
                                          '0))))
                                  (if (gx#stx-null? _tl3142231481_)
                                      (___match4643546436_
                                       _e3137331731_
                                       _hd3137231735_
                                       _tl3137131738_
                                       _e3137631741_
                                       _hd3137531745_
                                       _tl3137431748_
                                       ___splice4635546356_
                                       _target3142031478_
                                       _tl3142231481_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3136831451_)))))
                              (let () (declare (not safe)) (_g3136831451_))))))
                  (if (gx#stx-pair/null? _hd3137531745_)
                      (let ((___splice4635546356_
                             (gx#syntax-split-splice _hd3137531745_ '0)))
                        (let ((_tl3142231481_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4635546356_ '1)))
                              (_target3142031478_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4635546356_ '0))))
                          (if (gx#stx-null? _tl3142231481_)
                              (___match4643546436_
                               _e3137331731_
                               _hd3137231735_
                               _tl3137131738_
                               _e3137631741_
                               _hd3137531745_
                               _tl3137431748_
                               ___splice4635546356_
                               _target3142031478_
                               _tl3142231481_)
                              (let () (declare (not safe)) (_g3136831451_)))))
                      (let () (declare (not safe)) (_g3136831451_))))
              (if (gx#stx-pair/null? _hd3137531745_)
                  (let ((___splice4635546356_
                         (gx#syntax-split-splice _hd3137531745_ '0)))
                    (let ((_tl3142231481_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4635546356_ '1)))
                          (_target3142031478_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4635546356_ '0))))
                      (if (gx#stx-null? _tl3142231481_)
                          (___match4643546436_
                           _e3137331731_
                           _hd3137231735_
                           _tl3137131738_
                           _e3137631741_
                           _hd3137531745_
                           _tl3137431748_
                           ___splice4635546356_
                           _target3142031478_
                           _tl3142231481_)
                          (let () (declare (not safe)) (_g3136831451_)))))
                  (let () (declare (not safe)) (_g3136831451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3137531745_)
                                                  (let ((___splice4635546356_
                                                         (gx#syntax-split-splice
                                                          _hd3137531745_
                                                          '0)))
                                                    (let ((_tl3142231481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4635546356_
                                                              '1)))
                                                          (_target3142031478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4635546356_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3142231481_)
                                                          (___match4643546436_
                                                           _e3137331731_
                                                           _hd3137231735_
                                                           _tl3137131738_
                                                           _e3137631741_
                                                           _hd3137531745_
                                                           _tl3137431748_
                                                           ___splice4635546356_
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
                                          (let ((___splice4635546356_
                                                 (gx#syntax-split-splice
                                                  _hd3137531745_
                                                  '0)))
                                            (let ((_tl3142231481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4635546356_
                                                      '1)))
                                                  (_target3142031478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4635546356_
                                                      '0))))
                                              (if (gx#stx-null? _tl3142231481_)
                                                  (___match4643546436_
                                                   _e3137331731_
                                                   _hd3137231735_
                                                   _tl3137131738_
                                                   _e3137631741_
                                                   _hd3137531745_
                                                   _tl3137431748_
                                                   ___splice4635546356_
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
        (let* ((___stx4643846439_ _$stx31814_)
               (_g3181931871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4643846439_))))
          (let ((___kont4644146442_
                 (lambda (_L32041_ _L32043_ _L32044_ _L32045_ _L32046_)
                   (let ((__tmp50365 (gx#datum->syntax '#f 'with))
                         (__tmp50356
                          (let ((__tmp50362
                                 (let ((__tmp50363
                                        (let ((__tmp50364
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32044_ '()))))
                                          (declare (not safe))
                                          (cons _L32045_ __tmp50364))))
                                   (declare (not safe))
                                   (cons __tmp50363 '())))
                                (__tmp50357
                                 (let ((__tmp50358
                                        (let ((__tmp50359
                                               (let ((__tmp50360
                                                      (let ((__tmp50361
                                                             (lambda (_g3207132074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3207232077_)
                       (let ()
                         (declare (not safe))
                         (cons _g3207132074_ _g3207232077_)))))
                (declare (not safe))
                (foldr1 __tmp50361 '() _L32041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L32043_ __tmp50360))))
                                          (declare (not safe))
                                          (cons _L32046_ __tmp50359))))
                                   (declare (not safe))
                                   (cons __tmp50358 '()))))
                            (declare (not safe))
                            (cons __tmp50362 __tmp50357))))
                     (declare (not safe))
                     (cons __tmp50365 __tmp50356))))
                (___kont4644546446_
                 (lambda (_L31928_)
                   (let ((__tmp50369 (gx#datum->syntax '#f 'let))
                         (__tmp50366
                          (let ((__tmp50367
                                 (let ((__tmp50368
                                        (lambda (_g3194531948_ _g3194631951_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3194531948_
                                                  _g3194631951_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50368 '() _L31928_))))
                            (declare (not safe))
                            (cons '() __tmp50367))))
                     (declare (not safe))
                     (cons __tmp50369 __tmp50366)))))
            (let* ((___match4651146512_
                    (lambda (_e3185331878_
                             _hd3185231882_
                             _tl3185131885_
                             _e3185631888_
                             _hd3185531892_
                             _tl3185431895_
                             ___splice4644746448_
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
                                        (___kont4644546446_
                                         _body3186531924_))))))
                        (_loop3186031904_ _target3185731898_ '()))))
                   (___match4648946490_
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
                             ___splice4644346444_
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
                                        (___kont4644146442_
                                         _body3184932037_
                                         _tl3183231988_
                                         _hd3183932005_
                                         _hd3183631995_
                                         _hd3182731965_))))))
                        (_loop3184432017_ _target3184132011_ '())))))
              (if (gx#stx-pair? ___stx4643846439_)
                  (let ((_e3182831961_ (gx#syntax-e ___stx4643846439_)))
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
                                                              (let ((___splice4644346444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3182931978_ '0)))
                        (let ((_tl3184332014_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4644346444_ '1)))
                              (_target3184132011_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4644346444_ '0))))
                          (if (gx#stx-null? _tl3184332014_)
                              (___match4648946490_
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
                               ___splice4644346444_
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
                                          (let ((___splice4644746448_
                                                 (gx#syntax-split-splice
                                                  _tl3182931978_
                                                  '0)))
                                            (let ((_tl3185931901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4644746448_
                                                      '1)))
                                                  (_target3185731898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4644746448_
                                                      '0))))
                                              (if (gx#stx-null? _tl3185931901_)
                                                  (___match4651146512_
                                                   _e3182831961_
                                                   _hd3182731965_
                                                   _tl3182631968_
                                                   _e3183131971_
                                                   _hd3183031975_
                                                   _tl3182931978_
                                                   ___splice4644746448_
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
        (let* ((___stx4651446515_ _$stx32086_)
               (_g3209732243_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4651446515_))))
          (let ((___kont4651746518_
                 (lambda (_L32847_ _L32849_ _L32850_)
                   (let ((__tmp50375 (gx#datum->syntax '#f 'and))
                         (__tmp50370
                          (let ((__tmp50371
                                 (lambda (_g3287132874_ _g3287232877_)
                                   (let ((__tmp50372
                                          (let ((__tmp50373
                                                 (let ((__tmp50374
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32847_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3287132874_
                                                         __tmp50374))))
                                            (declare (not safe))
                                            (cons _L32850_ __tmp50373))))
                                     (declare (not safe))
                                     (cons __tmp50372 _g3287232877_)))))
                            (declare (not safe))
                            (foldr1 __tmp50371 '() _L32849_))))
                     (declare (not safe))
                     (cons __tmp50375 __tmp50370))))
                (___kont4652146522_
                 (lambda (_L32737_ _L32739_ _L32740_)
                   (let ((__tmp50381 (gx#datum->syntax '#f 'or))
                         (__tmp50376
                          (let ((__tmp50377
                                 (lambda (_g3276132764_ _g3276232767_)
                                   (let ((__tmp50378
                                          (let ((__tmp50379
                                                 (let ((__tmp50380
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32737_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276132764_
                                                         __tmp50380))))
                                            (declare (not safe))
                                            (cons _L32740_ __tmp50379))))
                                     (declare (not safe))
                                     (cons __tmp50378 _g3276232767_)))))
                            (declare (not safe))
                            (foldr1 __tmp50377 '() _L32739_))))
                     (declare (not safe))
                     (cons __tmp50381 __tmp50376))))
                (___kont4652546526_
                 (lambda (_L32637_ _L32639_ _L32640_)
                   (let ((__tmp50386 (gx#datum->syntax '#f 'not))
                         (__tmp50382
                          (let ((__tmp50383
                                 (let ((__tmp50384
                                        (let ((__tmp50385
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32637_ '()))))
                                          (declare (not safe))
                                          (cons _L32639_ __tmp50385))))
                                   (declare (not safe))
                                   (cons _L32640_ __tmp50384))))
                            (declare (not safe))
                            (cons __tmp50383 '()))))
                     (declare (not safe))
                     (cons __tmp50386 __tmp50382))))
                (___kont4652746528_
                 (lambda (_L32563_ _L32565_)
                   (let ((__tmp50387
                          (let () (declare (not safe)) (cons _L32563_ '()))))
                     (declare (not safe))
                     (cons _L32565_ __tmp50387))))
                (___kont4652946530_
                 (lambda (_L32511_ _L32513_)
                   (let ((__tmp50396 (gx#datum->syntax '#f 'lambda))
                         (__tmp50388
                          (let ((__tmp50394
                                 (let ((__tmp50395
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50395 '())))
                                (__tmp50389
                                 (let ((__tmp50390
                                        (let ((__tmp50391
                                               (let ((__tmp50392
                                                      (let ((__tmp50393
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50393
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32511_ __tmp50392))))
                                          (declare (not safe))
                                          (cons _L32513_ __tmp50391))))
                                   (declare (not safe))
                                   (cons __tmp50390 '()))))
                            (declare (not safe))
                            (cons __tmp50394 __tmp50389))))
                     (declare (not safe))
                     (cons __tmp50396 __tmp50388))))
                (___kont4653146532_
                 (lambda (_L32463_ _L32465_ _L32466_)
                   (let ((__tmp50415 (gx#datum->syntax '#f 'lambda))
                         (__tmp50397
                          (let ((__tmp50413
                                 (let ((__tmp50414
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50414 '())))
                                (__tmp50398
                                 (let ((__tmp50399
                                        (let ((__tmp50412
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50400
                                               (let ((__tmp50405
                                                      (let ((__tmp50411
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50406
                                                             (let ((__tmp50407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50408
                                   (let ((__tmp50409
                                          (let ((__tmp50410
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50410 '()))))
                                     (declare (not safe))
                                     (cons _L32465_ __tmp50409))))
                              (declare (not safe))
                              (cons _L32466_ __tmp50408))))
                       (declare (not safe))
                       (cons __tmp50407 '()))))
                (declare (not safe))
                (cons __tmp50411 __tmp50406)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50401
                                                      (let ((__tmp50402
                                                             (let ((__tmp50403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50404 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50404 '()))))
                       (declare (not safe))
                       (cons _L32463_ __tmp50403))))
                (declare (not safe))
                (cons __tmp50402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50405
                                                       __tmp50401))))
                                          (declare (not safe))
                                          (cons __tmp50412 __tmp50400))))
                                   (declare (not safe))
                                   (cons __tmp50399 '()))))
                            (declare (not safe))
                            (cons __tmp50413 __tmp50398))))
                     (declare (not safe))
                     (cons __tmp50415 __tmp50397))))
                (___kont4653346534_
                 (lambda (_L32394_ _L32396_ _L32397_)
                   (let ((__tmp50431 (gx#datum->syntax '#f 'lambda))
                         (__tmp50416
                          (let ((__tmp50429
                                 (let ((__tmp50430
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50430 '())))
                                (__tmp50417
                                 (let ((__tmp50418
                                        (let ((__tmp50428
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50419
                                               (let ((__tmp50424
                                                      (let ((__tmp50425
                                                             (let ((__tmp50426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50427 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50427 '()))))
                       (declare (not safe))
                       (cons _L32396_ __tmp50426))))
                (declare (not safe))
                (cons _L32397_ __tmp50425)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50420
                                                      (let ((__tmp50421
                                                             (let ((__tmp50422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50423 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50423 '()))))
                       (declare (not safe))
                       (cons _L32394_ __tmp50422))))
                (declare (not safe))
                (cons __tmp50421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50424
                                                       __tmp50420))))
                                          (declare (not safe))
                                          (cons __tmp50428 __tmp50419))))
                                   (declare (not safe))
                                   (cons __tmp50418 '()))))
                            (declare (not safe))
                            (cons __tmp50429 __tmp50417))))
                     (declare (not safe))
                     (cons __tmp50431 __tmp50416))))
                (___kont4653546536_
                 (lambda (_L32314_ _L32316_ _L32317_ _L32318_)
                   (let ((__tmp50449 (gx#datum->syntax '#f 'lambda))
                         (__tmp50432
                          (let ((__tmp50447
                                 (let ((__tmp50448
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50448 '())))
                                (__tmp50433
                                 (let ((__tmp50434
                                        (let ((__tmp50446
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50435
                                               (let ((__tmp50442
                                                      (let ((__tmp50443
                                                             (let ((__tmp50444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50445 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50445 '()))))
                       (declare (not safe))
                       (cons _L32317_ __tmp50444))))
                (declare (not safe))
                (cons _L32318_ __tmp50443)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50436
                                                      (let ((__tmp50437
                                                             (let ((__tmp50438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50439
                                   (let ((__tmp50440
                                          (let ((__tmp50441
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50441 '()))))
                                     (declare (not safe))
                                     (cons _L32316_ __tmp50440))))
                              (declare (not safe))
                              (cons __tmp50439 '()))))
                       (declare (not safe))
                       (cons _L32314_ __tmp50438))))
                (declare (not safe))
                (cons __tmp50437 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50442
                                                       __tmp50436))))
                                          (declare (not safe))
                                          (cons __tmp50446 __tmp50435))))
                                   (declare (not safe))
                                   (cons __tmp50434 '()))))
                            (declare (not safe))
                            (cons __tmp50447 __tmp50433))))
                     (declare (not safe))
                     (cons __tmp50449 __tmp50432)))))
            (let* ((___match4668746688_
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
                               |gerbil/core$<match>[1]#_g50451_|
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
                                          (___kont4653146532_
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
                                                (___kont4653346534_
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
                         |gerbil/core$<match>[1]#_g50450_|
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
                                    (___kont4653546536_
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
                   (___match4666746668_
                    (lambda (_e3218032491_
                             _hd3217932495_
                             _tl3217832498_
                             _e3218332501_
                             _hd3218232505_
                             _tl3218132508_)
                      (if (gx#stx-null? _tl3218132508_)
                          (___kont4652946530_ _hd3218232505_ _hd3217932495_)
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
                                           |gerbil/core$<match>[1]#_g50451_|
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
                                                      (___kont4653146532_
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
                    (___kont4653346534_
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
                                     |gerbil/core$<match>[1]#_g50450_|
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
                                                (___kont4653546536_
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
                   (___match4659746598_
                    (lambda (_e3212832667_
                             _hd3212732671_
                             _tl3212632674_
                             _e3213132677_
                             _hd3213032681_
                             _tl3212932684_
                             _e3213432687_
                             _hd3213332691_
                             _tl3213232694_
                             ___splice4652346524_
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
                                                    (___kont4652146522_
                                                     _hd3214532731_
                                                     _pred3214332723_
                                                     _hd3212732671_)
                                                    (___match4668746688_
                                                     _e3212832667_
                                                     _hd3212732671_
                                                     _tl3212632674_
                                                     _e3213132677_
                                                     _hd3213032681_
                                                     _tl3212932684_
                                                     _e3214632727_
                                                     _hd3214532731_
                                                     _tl3214432734_))))
                                            (___match4666746668_
                                             _e3212832667_
                                             _hd3212732671_
                                             _tl3212632674_
                                             _e3213132677_
                                             _hd3213032681_
                                             _tl3212932684_)))))))
                        (_loop3213832703_ _target3213532697_ '()))))
                   (___match4656746568_
                    (lambda (_e3210432777_
                             _hd3210332781_
                             _tl3210232784_
                             _e3210732787_
                             _hd3210632791_
                             _tl3210532794_
                             _e3211032797_
                             _hd3210932801_
                             _tl3210832804_
                             ___splice4651946520_
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
                                                    (___kont4651746518_
                                                     _hd3212132841_
                                                     _pred3211932833_
                                                     _hd3210332781_)
                                                    (___match4668746688_
                                                     _e3210432777_
                                                     _hd3210332781_
                                                     _tl3210232784_
                                                     _e3210732787_
                                                     _hd3210632791_
                                                     _tl3210532794_
                                                     _e3212232837_
                                                     _hd3212132841_
                                                     _tl3212032844_))))
                                            (___match4666746668_
                                             _e3210432777_
                                             _hd3210332781_
                                             _tl3210232784_
                                             _e3210732787_
                                             _hd3210632791_
                                             _tl3210532794_)))))))
                        (_loop3211432813_ _target3211132807_ '())))))
              (if (gx#stx-pair? ___stx4651446515_)
                  (let ((_e3210432777_ (gx#syntax-e ___stx4651446515_)))
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
                                               |gerbil/core$<match>[1]#_g50454_|
                                               _hd3210932801_)
                                              (if (gx#stx-pair/null?
                                                   _tl3210832804_)
                                                  (let ((___splice4651946520_
                                                         (gx#syntax-split-splice
                                                          _tl3210832804_
                                                          '0)))
                                                    (let ((_tl3211332810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4651946520_
                                                              '1)))
                                                          (_target3211132807_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4651946520_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3211332810_)
                                                          (___match4656746568_
                                                           _e3210432777_
                                                           _hd3210332781_
                                                           _tl3210232784_
                                                           _e3210732787_
                                                           _hd3210632791_
                                                           _tl3210532794_
                                                           _e3211032797_
                                                           _hd3210932801_
                                                           _tl3210832804_
                                                           ___splice4651946520_
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
                              (___kont4652746528_
                               _hd3217432557_
                               _hd3210632791_)
                              (if (gx#identifier? _hd3217432557_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50451_|
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
                                                  (___kont4653146532_
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
                                                        (___kont4653346534_
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
                                 |gerbil/core$<match>[1]#_g50450_|
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
                                            (___kont4653546536_
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
                          (___kont4652946530_ _hd3210632791_ _hd3210332781_)
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
                      (___kont4652746528_ _hd3217432557_ _hd3210632791_)
                      (if (gx#identifier? _hd3217432557_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50451_|
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
                                          (___kont4653146532_
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
                                                (___kont4653346534_
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
                         |gerbil/core$<match>[1]#_g50450_|
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
                                    (___kont4653546536_
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
                  (___kont4652946530_ _hd3210632791_ _hd3210332781_)
                  (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50453_|
                                                   _hd3210932801_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3210832804_)
                                                      (let ((___splice4652346524_
                                                             (gx#syntax-split-splice
                                                              _tl3210832804_
                                                              '0)))
                                                        (let ((_tl3213732700_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4652346524_ '1)))
                      (_target3213532697_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4652346524_ '0))))
                  (if (gx#stx-null? _tl3213732700_)
                      (___match4659746598_
                       _e3210432777_
                       _hd3210332781_
                       _tl3210232784_
                       _e3210732787_
                       _hd3210632791_
                       _tl3210532794_
                       _e3211032797_
                       _hd3210932801_
                       _tl3210832804_
                       ___splice4652346524_
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
                                  (___kont4652746528_
                                   _hd3217432557_
                                   _hd3210632791_)
                                  (if (gx#identifier? _hd3217432557_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50451_|
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
                                                      (___kont4653146532_
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
                    (___kont4653346534_
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
                                     |gerbil/core$<match>[1]#_g50450_|
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
                                                (___kont4653546536_
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
                              (___kont4652946530_
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
                          (___kont4652746528_ _hd3217432557_ _hd3210632791_)
                          (if (gx#identifier? _hd3217432557_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50451_|
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
                                              (___kont4653146532_
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
                                                    (___kont4653346534_
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
                             |gerbil/core$<match>[1]#_g50450_|
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
                                        (___kont4653546536_
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
                      (___kont4652946530_ _hd3210632791_ _hd3210332781_)
                      (let () (declare (not safe)) (_g3209732243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50452_|
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
                                      (___kont4652546526_
                                       _hd3216332631_
                                       _hd3216032621_
                                       _hd3210332781_)
                                      (if (gx#identifier? _hd3216332631_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50451_|
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
                                                          (___kont4653146532_
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
                        (___kont4653346534_
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
                                         |gerbil/core$<match>[1]#_g50450_|
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
                                                    (___kont4653546536_
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
                                  (___kont4652946530_
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
                                      (___kont4652746528_
                                       _hd3217432557_
                                       _hd3210632791_)
                                      (if (gx#identifier? _hd3217432557_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50451_|
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
                                                          (___kont4653146532_
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
                        (___kont4653346534_
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
                                         |gerbil/core$<match>[1]#_g50450_|
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
                                                    (___kont4653546536_
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
                                  (___kont4652946530_
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
                              (___kont4652746528_
                               _hd3217432557_
                               _hd3210632791_)
                              (if (gx#identifier? _hd3217432557_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50451_|
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
                                                  (___kont4653146532_
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
                                                        (___kont4653346534_
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
                                 |gerbil/core$<match>[1]#_g50450_|
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
                                            (___kont4653546536_
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
                          (___kont4652946530_ _hd3210632791_ _hd3210332781_)
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
                          (___kont4652746528_ _hd3217432557_ _hd3210632791_)
                          (if (gx#identifier? _hd3217432557_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50451_|
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
                                              (___kont4653146532_
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
                                                    (___kont4653346534_
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
                             |gerbil/core$<match>[1]#_g50450_|
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
                                        (___kont4653546536_
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
                      (___kont4652946530_ _hd3210632791_ _hd3210332781_)
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
                                                      (___kont4652746528_
                                                       _hd3217432557_
                                                       _hd3210632791_)
                                                      (if (gx#identifier?
                                                           _hd3217432557_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50451_|
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
                                  (___kont4653146532_
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
                                        (___kont4653346534_
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
                                                         |gerbil/core$<match>[1]#_g50450_|
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
                            (___kont4653546536_
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
                                                  (___kont4652946530_
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
                                              (___kont4652746528_
                                               _hd3217432557_
                                               _hd3210632791_)
                                              (if (gx#identifier?
                                                   _hd3217432557_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50451_|
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
                          (___kont4653146532_
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
                                (___kont4653346534_
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
                                                 |gerbil/core$<match>[1]#_g50450_|
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
                    (___kont4653546536_
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
                                          (___kont4652946530_
                                           _hd3210632791_
                                           _hd3210332781_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3209732243_)))))))
                          (let () (declare (not safe)) (_g3209732243_)))))
                  (let () (declare (not safe)) (_g3209732243_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32886_)
        (let* ((___stx4678246783_ _$stx32886_)
               (_g3289132925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4678246783_))))
          (let ((___kont4678546786_
                 (lambda (_L33029_ _L33031_ _L33032_)
                   (let ((__tmp50516 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50455
                          (let ((__tmp50456
                                 (let ((__tmp50457
                                        (let ((__tmp50515
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50458
                                               (let ((__tmp50459
                                                      (let ((__tmp50460
                                                             (let ((__tmp50514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50461
                            (let ((__tmp50506
                                   (let ((__tmp50511
                                          (let ((__tmp50513
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50512
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L33031_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50513 __tmp50512)))
                                         (__tmp50507
                                          (let ((__tmp50508
                                                 (let ((__tmp50510
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50509
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L33029_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50510
                                                         __tmp50509))))
                                            (declare (not safe))
                                            (cons __tmp50508 '()))))
                                     (declare (not safe))
                                     (cons __tmp50511 __tmp50507)))
                                  (__tmp50462
                                   (let ((__tmp50463
                                          (let ((__tmp50505
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50464
                                                 (let ((__tmp50503
                                                        (let ((__tmp50504
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50504
                                                                '())))
                                                       (__tmp50465
                                                        (let ((__tmp50466
                                                               (let ((__tmp50502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50467
                              (let ((__tmp50501 (gx#datum->syntax '#f '$stx))
                                    (__tmp50468
                                     (let ((__tmp50469
                                            (let ((__tmp50480
                                                   (let ((__tmp50499
                                                          (let ((__tmp50500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50500)))
                 (__tmp50481
                  (let ((__tmp50482
                         (let ((__tmp50498
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50483
                                (let ((__tmp50497
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50484
                                       (let ((__tmp50485
                                              (let ((__tmp50496
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50486
                                                     (let ((__tmp50492
                                                            (let ((__tmp50495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50493
                           (let ((__tmp50494 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50494 '()))))
                      (declare (not safe))
                      (cons __tmp50495 __tmp50493)))
                   (__tmp50487
                    (let ((__tmp50488
                           (let ((__tmp50491
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50489
                                  (let ((__tmp50490
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50490 '()))))
                             (declare (not safe))
                             (cons __tmp50491 __tmp50489))))
                      (declare (not safe))
                      (cons __tmp50488 '()))))
               (declare (not safe))
               (cons __tmp50492 __tmp50487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50496 __tmp50486))))
                                         (declare (not safe))
                                         (cons __tmp50485 '()))))
                                  (declare (not safe))
                                  (cons __tmp50497 __tmp50484))))
                           (declare (not safe))
                           (cons __tmp50498 __tmp50483))))
                    (declare (not safe))
                    (cons __tmp50482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50499
                                                           __tmp50481)))
                                                  (__tmp50470
                                                   (let ((__tmp50471
                                                          (let ((__tmp50479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50472
                         (let ((__tmp50473
                                (let ((__tmp50478
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50474
                                       (let ((__tmp50477
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50475
                                              (let ((__tmp50476
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50476 '()))))
                                         (declare (not safe))
                                         (cons __tmp50477 __tmp50475))))
                                  (declare (not safe))
                                  (cons __tmp50478 __tmp50474))))
                           (declare (not safe))
                           (cons __tmp50473 '()))))
                    (declare (not safe))
                    (cons __tmp50479 __tmp50472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50471 '()))))
                                              (declare (not safe))
                                              (cons __tmp50480 __tmp50470))))
                                       (declare (not safe))
                                       (cons '() __tmp50469))))
                                (declare (not safe))
                                (cons __tmp50501 __tmp50468))))
                         (declare (not safe))
                         (cons __tmp50502 __tmp50467))))
                  (declare (not safe))
                  (cons __tmp50466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50503
                                                         __tmp50465))))
                                            (declare (not safe))
                                            (cons __tmp50505 __tmp50464))))
                                     (declare (not safe))
                                     (cons __tmp50463 '()))))
                              (declare (not safe))
                              (cons __tmp50506 __tmp50462))))
                       (declare (not safe))
                       (cons __tmp50514 __tmp50461))))
                (declare (not safe))
                (cons __tmp50460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50459))))
                                          (declare (not safe))
                                          (cons __tmp50515 __tmp50458))))
                                   (declare (not safe))
                                   (cons __tmp50457 '()))))
                            (declare (not safe))
                            (cons _L33032_ __tmp50456))))
                     (declare (not safe))
                     (cons __tmp50516 __tmp50455))))
                (___kont4678746788_
                 (lambda (_L32962_ _L32964_ _L32965_)
                   (let ((__tmp50517
                          (let ((__tmp50518
                                 (let ((__tmp50519
                                        (let ((__tmp50520
                                               (let ((__tmp50531
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50521
                                                      (let ((__tmp50529
                                                             (let ((__tmp50530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50530 '())))
                    (__tmp50522
                     (let ((__tmp50523
                            (let ((__tmp50528
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50524
                                   (let ((__tmp50525
                                          (let ((__tmp50526
                                                 (let ((__tmp50527
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50527 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50526))))
                                     (declare (not safe))
                                     (cons '#f __tmp50525))))
                              (declare (not safe))
                              (cons __tmp50528 __tmp50524))))
                       (declare (not safe))
                       (cons __tmp50523 '()))))
                (declare (not safe))
                (cons __tmp50529 __tmp50522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50531
                                                       __tmp50521))))
                                          (declare (not safe))
                                          (cons __tmp50520 '()))))
                                   (declare (not safe))
                                   (cons _L32962_ __tmp50519))))
                            (declare (not safe))
                            (cons _L32964_ __tmp50518))))
                     (declare (not safe))
                     (cons _L32965_ __tmp50517)))))
            (let ((___match4681546816_
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
                           (___kont4678546786_ _L33029_ _L33031_ _L33032_)
                           (let () (declare (not safe)) (_g3289132925_)))))))
              (if (gx#stx-pair? ___stx4678246783_)
                  (let ((_e3289832989_ (gx#syntax-e ___stx4678246783_)))
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
                                                  (___match4681546816_
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
                                              (___kont4678746788_
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
                                     (let ((__tmp50536
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50532
                                            (let ((__tmp50533
                                                   (let ((__tmp50534
                                                          (let ((__tmp50535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50535 _L33100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50534 '()))))
                                              (declare (not safe))
                                              (cons _L33102_ __tmp50533))))
                                       (declare (not safe))
                                       (cons __tmp50536 __tmp50532)))
                                   _tl3306533097_
                                   _hd3306633094_)))
                              (_g3305833073_ _g3305933077_))))
                      (_g3305833073_ _g3305933077_)))))
          (_g3305733116_ _$stx33054_))))))
