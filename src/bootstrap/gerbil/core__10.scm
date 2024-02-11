(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49876_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49877_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49934_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49935_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49936_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49938_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49939_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49940_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49941_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49942_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49943_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49944_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49945_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49946_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49947_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50340_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50424_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50444_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50445_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50574_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50575_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50576_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50577_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50578_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp49860 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp49860
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30556_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30556_)))
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
      (lambda (_stx30553_)
        (if (gx#identifier? _stx30553_)
            (let ((__tmp49861 (gx#syntax-local-value _stx30553_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49861))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28859_ _match-stx28861_)
        (letrec ((_parse128863_
                  (lambda (_hd29216_)
                    (let* ((___stx4469144692_ _hd29216_)
                           (_g2924229384_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4469144692_))))
                      (let ((___kont4469444695_
                             (lambda (_L30316_ _L30318_)
                               (let* ((___stx4461144612_ _L30316_)
                                      (_g3033530368_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4461144612_))))
                                 (let ((___kont4461444615_
                                        (lambda ()
                                          (let ((__tmp49862
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30318_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49862))))
                                       (___kont4461644617_
                                        (lambda (_L30509_)
                                          (let ((__tmp49863
                                                 (let ((__tmp49864
                                                        (let ((__tmp49865
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128863_ _L30509_))))
                  (declare (not safe))
                  (cons __tmp49865 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30318_
                                                         __tmp49864))))
                                            (declare (not safe))
                                            (cons '?: __tmp49863))))
                                       (___kont4461844619_
                                        (lambda (_L30479_)
                                          (let ((__tmp49866
                                                 (let ((__tmp49867
                                                        (let ((__tmp49868
                                                               (let ((__tmp49869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128863_ _L30479_))))
                         (declare (not safe))
                         (cons __tmp49869 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30318_
                                                         __tmp49867))))
                                            (declare (not safe))
                                            (cons '?: __tmp49866))))
                                       (___kont4462044621_
                                        (lambda (_L30430_ _L30432_)
                                          (let ((__tmp49870
                                                 (let ((__tmp49871
                                                        (let ((__tmp49872
                                                               (let ((__tmp49873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49874
                                     (let ((__tmp49875
                                            (let ()
                                              (declare (not safe))
                                              (_parse128863_ _L30430_))))
                                       (declare (not safe))
                                       (cons __tmp49875 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49874))))
                         (declare (not safe))
                         (cons _L30432_ __tmp49873))))
                  (declare (not safe))
                  (cons ':: __tmp49872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30318_
                                                         __tmp49871))))
                                            (declare (not safe))
                                            (cons '?: __tmp49870))))
                                       (___kont4462244623_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28870_ _hd29216_)))))
                                   (let ((_g3033130520_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4461144612_)
                                                (let ((_e3034030499_
                                                       (gx#syntax-e
                                                        ___stx4461144612_)))
                                                  (let ((_tl3033830506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3034030499_)))
                                                        (_hd3033930503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3034030499_))))
                                                    (if (gx#stx-null?
                                                         _tl3033830506_)
                                                        (___kont4461644617_
                                                         _hd3033930503_)
                                                        (if (gx#identifier?
                                                             _hd3033930503_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49877_|
                         _hd3033930503_)
                        (if (gx#stx-pair? _tl3033830506_)
                            (let ((_e3034730469_ (gx#syntax-e _tl3033830506_)))
                              (let ((_tl3034530476_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3034730469_)))
                                    (_hd3034630473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3034730469_))))
                                (if (gx#stx-null? _tl3034530476_)
                                    (___kont4461844619_ _hd3034630473_)
                                    (___kont4462244623_))))
                            (___kont4462244623_))
                        (___kont4462244623_))
                    (if (gx#stx-datum? _hd3033930503_)
                        (let ((_e3035330396_ (gx#stx-e _hd3033930503_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3035330396_ '::))
                              (if (gx#stx-pair? _tl3033830506_)
                                  (let ((_e3035630400_
                                         (gx#syntax-e _tl3033830506_)))
                                    (let ((_tl3035430407_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3035630400_)))
                                          (_hd3035530404_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3035630400_))))
                                      (if (gx#stx-pair? _tl3035430407_)
                                          (let ((_e3035930410_
                                                 (gx#syntax-e _tl3035430407_)))
                                            (let ((_tl3035730417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3035930410_)))
                                                  (_hd3035830414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3035930410_))))
                                              (if (gx#identifier?
                                                   _hd3035830414_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49876_|
                                                       _hd3035830414_)
                                                      (if (gx#stx-pair?
                                                           _tl3035730417_)
                                                          (let ((_e3036230420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3035730417_)))
                    (let ((_tl3036030427_
                           (let () (declare (not safe)) (##cdr _e3036230420_)))
                          (_hd3036130424_
                           (let ()
                             (declare (not safe))
                             (##car _e3036230420_))))
                      (if (gx#stx-null? _tl3036030427_)
                          (___kont4462044621_ _hd3036130424_ _hd3035530404_)
                          (___kont4462244623_))))
                  (___kont4462244623_))
              (___kont4462244623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4462244623_))))
                                          (___kont4462244623_))))
                                  (___kont4462244623_))
                              (___kont4462244623_)))
                        (___kont4462244623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4462244623_)))))
                                     (if (gx#stx-null? ___stx4461144612_)
                                         (___kont4461444615_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3033130520_))))))))
                            (___kont4469644697_
                             (lambda (_L30221_)
                               (let* ((___stx4459344594_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4459344594_))))
                                 (let ((___kont4459644597_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128863_ _L30272_))))
                                       (___kont4459844599_
                                        (lambda ()
                                          (let ((__tmp49878
                                                 (gx#stx-map
                                                  _parse128863_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49878)))))
                                   (if (gx#stx-pair? ___stx4459344594_)
                                       (let ((_e3023830262_
                                              (gx#syntax-e ___stx4459344594_)))
                                         (let ((_tl3023630269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023830262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023830262_))))
                                           (if (gx#stx-null? _tl3023630269_)
                                               (___kont4459644597_
                                                _hd3023730266_)
                                               (___kont4459844599_))))
                                       (___kont4459844599_))))))
                            (___kont4469844699_
                             (lambda (_L30136_)
                               (let* ((___stx4457544576_ _L30136_)
                                      (_g3014830159_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4457544576_))))
                                 (let ((___kont4457844579_
                                        (lambda (_L30187_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128863_ _L30187_))))
                                       (___kont4458044581_
                                        (lambda ()
                                          (let ((__tmp49879
                                                 (gx#stx-map
                                                  _parse128863_
                                                  _L30136_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49879)))))
                                   (if (gx#stx-pair? ___stx4457544576_)
                                       (let ((_e3015330177_
                                              (gx#syntax-e ___stx4457544576_)))
                                         (let ((_tl3015130184_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3015330177_)))
                                               (_hd3015230181_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3015330177_))))
                                           (if (gx#stx-null? _tl3015130184_)
                                               (___kont4457844579_
                                                _hd3015230181_)
                                               (___kont4458044581_))))
                                       (___kont4458044581_))))))
                            (___kont4470044701_
                             (lambda (_L30106_)
                               (let ((__tmp49880
                                      (let ((__tmp49881
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L30106_))))
                                        (declare (not safe))
                                        (cons __tmp49881 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49880))))
                            (___kont4470244703_
                             (lambda (_L30062_ _L30064_)
                               (let ((__tmp49882
                                      (let ((__tmp49885
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L30064_)))
                                            (__tmp49883
                                             (let ((__tmp49884
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128863_
                                                       _L30062_))))
                                               (declare (not safe))
                                               (cons __tmp49884 '()))))
                                        (declare (not safe))
                                        (cons __tmp49885 __tmp49883))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49882))))
                            (___kont4470444705_
                             (lambda (_L30006_ _L30008_ _L30009_)
                               (if (gx#stx-null? _L30006_)
                                   (let ((__tmp49893
                                          (let ((__tmp49896
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128863_ _L30009_)))
                                                (__tmp49894
                                                 (let ((__tmp49895
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128863_
                                                           _L30008_))))
                                                   (declare (not safe))
                                                   (cons __tmp49895 '()))))
                                            (declare (not safe))
                                            (cons __tmp49896 __tmp49894))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49893))
                                   (let ((__tmp49886
                                          (let ((__tmp49892
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128863_ _L30009_)))
                                                (__tmp49887
                                                 (let ((__tmp49888
                                                        (let ((__tmp49889
                                                               (let ((__tmp49891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49890
                              (let ()
                                (declare (not safe))
                                (cons _L30008_ _L30006_))))
                         (declare (not safe))
                         (cons __tmp49891 __tmp49890))))
                  (declare (not safe))
                  (_parse128863_ __tmp49889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49888 '()))))
                                            (declare (not safe))
                                            (cons __tmp49892 __tmp49887))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49886)))))
                            (___kont4470644707_
                             (lambda (_L29958_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28865_ _L29958_))))
                            (___kont4470844709_
                             (lambda (_L29928_)
                               (let ((__tmp49897
                                      (let ((__tmp49898
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L29928_))))
                                        (declare (not safe))
                                        (cons __tmp49898 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49897))))
                            (___kont4471044711_
                             (lambda (_L29891_)
                               (let ((__tmp49899
                                      (let ((__tmp49900
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L29891_))))
                                        (declare (not safe))
                                        (cons __tmp49900 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49899))))
                            (___kont4471244713_
                             (lambda (_L29867_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128863_ _L29867_))))
                            (___kont4471444715_
                             (lambda (_L29829_)
                               (let ((__tmp49901
                                      (let ((__tmp49902
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28866_
                                                _L29829_))))
                                        (declare (not safe))
                                        (cons __tmp49902 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49901))))
                            (___kont4471644717_
                             (lambda (_L29801_)
                               (let ((__tmp49903
                                      (let ((__tmp49904
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28866_
                                                _L29801_))))
                                        (declare (not safe))
                                        (cons __tmp49904 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49903))))
                            (___kont4471844719_
                             (lambda (_L29762_)
                               (let ((__tmp49905
                                      (let ((__tmp49906
                                             (let ((__tmp49907
                                                    (let ((__tmp49908
                                                           (lambda (_g2977529778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2977629781_)
                     (let ()
                       (declare (not safe))
                       (cons _g2977529778_ _g2977629781_)))))
              (declare (not safe))
              (foldr1 __tmp49908 '() _L29762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28866_
                                                __tmp49907))))
                                        (declare (not safe))
                                        (cons __tmp49906 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49905))))
                            (___kont4472244723_
                             (lambda (_L29708_ _L29710_)
                               (let ((__tmp49909
                                      (let ((__tmp49912
                                             (gx#syntax-local-value _L29710_))
                                            (__tmp49910
                                             (let ((__tmp49911
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28866_
                                                       _L29708_))))
                                               (declare (not safe))
                                               (cons __tmp49911 '()))))
                                        (declare (not safe))
                                        (cons __tmp49912 __tmp49910))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49909))))
                            (___kont4472444725_
                             (lambda (_L29678_ _L29680_)
                               (let ((__tmp49913
                                      (let ((__tmp49916
                                             (gx#syntax-local-value _L29680_))
                                            (__tmp49914
                                             (let ((__tmp49915
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28868_
                                                       _L29678_))))
                                               (declare (not safe))
                                               (cons __tmp49915 '()))))
                                        (declare (not safe))
                                        (cons __tmp49916 __tmp49914))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49913))))
                            (___kont4472644727_
                             (lambda (_L29638_ _L29640_)
                               (let ((__tmp49917
                                      (let ((__tmp49918
                                             (let ((__tmp49923
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49919
                                                    (let ((__tmp49920
                                                           (let ((__tmp49922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49921
                          (let () (declare (not safe)) (cons _L29638_ '()))))
                     (declare (not safe))
                     (cons __tmp49922 __tmp49921))))
              (declare (not safe))
              (cons _L29640_ __tmp49920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49923 __tmp49919))))
                                        (declare (not safe))
                                        (cons __tmp49918 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49917))))
                            (___kont4472844729_
                             (lambda (_L29598_)
                               (let ((__tmp49924
                                      (let ((__tmp49925 (gx#stx-e _L29598_)))
                                        (declare (not safe))
                                        (cons __tmp49925 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49924))))
                            (___kont4473044731_
                             (lambda (_L29558_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28869_ _L29558_))))
                            (___kont4473244733_
                             (lambda (_L29514_ _L29516_)
                               (let ((__tmp49926
                                      (let ((__tmp49927
                                             (let ((__tmp49928
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128863_
                                                       _L29514_))))
                                               (declare (not safe))
                                               (cons __tmp49928 '()))))
                                        (declare (not safe))
                                        (cons _L29516_ __tmp49927))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49926))))
                            (___kont4473444735_
                             (lambda (_L29462_)
                               (let ((__tmp49929
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29462_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29216_))
                                        (let ((_$e29473_
                                               (gx#stx-source _hd29216_)))
                                          (if _$e29473_
                                              _$e29473_
                                              (gx#stx-source _stx28859_)))))))
                                 (declare (not safe))
                                 (_parse128863_ __tmp49929))))
                            (___kont4473644737_
                             (lambda (_L29436_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4473844739_
                             (lambda (_L29420_)
                               (let ((__tmp49930
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29420_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49930))))
                            (___kont4474044741_
                             (lambda (_L29402_)
                               (let ((__tmp49931
                                      (let ((__tmp49932 (gx#stx-e _L29402_)))
                                        (declare (not safe))
                                        (cons __tmp49932 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49931))))
                            (___kont4474244743_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28870_ _hd29216_)))))
                        (let* ((_g2924029413_
                                (lambda ()
                                  (let ((_L29402_ ___stx4469144692_))
                                    (if (gx#stx-datum? _L29402_)
                                        (___kont4474044741_ _L29402_)
                                        (___kont4474244743_)))))
                               (_g2923929429_
                                (lambda ()
                                  (let ((_L29420_ ___stx4469144692_))
                                    (if (and (gx#identifier? _L29420_)
                                             (let ((__tmp49933
                                                    (gx#ellipsis? _L29420_)))
                                               (declare (not safe))
                                               (not __tmp49933)))
                                        (___kont4473844739_ _L29420_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2924029413_))))))
                               (_g2923829445_
                                (lambda ()
                                  (let ((_L29436_ ___stx4469144692_))
                                    (if (gx#underscore? _L29436_)
                                        (___kont4473644737_ _L29436_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2923929429_))))))
                               (___match4501845019_
                                (lambda (_e2937529452_
                                         _hd2937429456_
                                         _tl2937329459_)
                                  (let ((_L29462_ _hd2937429456_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29462_))
                                        (___kont4473444735_ _L29462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2923829445_))))))
                               (___match4495244953_
                                (lambda (_e2934329618_
                                         _hd2934229622_
                                         _tl2934129625_
                                         _e2934629628_
                                         _hd2934529632_
                                         _tl2934429635_)
                                  (let ((_L29638_ _hd2934529632_)
                                        (_L29640_ _hd2934229622_))
                                    (if (and (gx#identifier? _L29640_)
                                             (or (gx#free-identifier=?
                                                  _L29640_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29640_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29640_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4472644727_ _L29638_ _L29640_)
                                        (if (gx#identifier? _hd2934229622_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49935_|
                                                 _hd2934229622_)
                                                (___kont4472844729_
                                                 _hd2934529632_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49934_|
                                                     _hd2934229622_)
                                                    (___kont4473044731_
                                                     _hd2934529632_)
                                                    (___match4501845019_
                                                     _e2934329618_
                                                     _hd2934229622_
                                                     _tl2934129625_)))
                                            (___match4501845019_
                                             _e2934329618_
                                             _hd2934229622_
                                             _tl2934129625_))))))
                               (___match4493844939_
                                (lambda (_e2933829668_
                                         _hd2933729672_
                                         _tl2933629675_)
                                  (let ((_L29678_ _tl2933629675_)
                                        (_L29680_ _hd2933729672_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29680_))
                                        (___kont4472444725_ _L29678_ _L29680_)
                                        (if (gx#stx-pair? _tl2933629675_)
                                            (let ((_e2934629628_
                                                   (gx#syntax-e
                                                    _tl2933629675_)))
                                              (let ((_tl2934429635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2934629628_)))
                                                    (_hd2934529632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2934629628_))))
                                                (if (gx#stx-null?
                                                     _tl2934429635_)
                                                    (___match4495244953_
                                                     _e2933829668_
                                                     _hd2933729672_
                                                     _tl2933629675_
                                                     _e2934629628_
                                                     _hd2934529632_
                                                     _tl2934429635_)
                                                    (if (gx#identifier?
                                                         _hd2933729672_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49935_|
                                                             _hd2933729672_)
                                                            (___match4501845019_
                                                             _e2933829668_
                                                             _hd2933729672_
                                                             _tl2933629675_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49934_|
                         _hd2933729672_)
                        (___match4501845019_
                         _e2933829668_
                         _hd2933729672_
                         _tl2933629675_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49936_|
                             _hd2933729672_)
                            (if (gx#stx-pair? _tl2934429635_)
                                (let ((_e2937129504_
                                       (gx#syntax-e _tl2934429635_)))
                                  (let ((_tl2936929511_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2937129504_)))
                                        (_hd2937029508_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2937129504_))))
                                    (if (gx#stx-null? _tl2936929511_)
                                        (___kont4473244733_
                                         _hd2937029508_
                                         _hd2934529632_)
                                        (___match4501845019_
                                         _e2933829668_
                                         _hd2933729672_
                                         _tl2933629675_))))
                                (___match4501845019_
                                 _e2933829668_
                                 _hd2933729672_
                                 _tl2933629675_))
                            (___match4501845019_
                             _e2933829668_
                             _hd2933729672_
                             _tl2933629675_))))
                (___match4501845019_
                 _e2933829668_
                 _hd2933729672_
                 _tl2933629675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4501845019_
                                             _e2933829668_
                                             _hd2933729672_
                                             _tl2933629675_))))))
                               (___match4493244933_
                                (lambda (_e2933329698_
                                         _hd2933229702_
                                         _tl2933129705_)
                                  (let ((_L29708_ _tl2933129705_)
                                        (_L29710_ _hd2933229702_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29710_
                                           gerbil/core$<MOP>$<MOP:2>#class-type-struct?))
                                        (___kont4472244723_ _L29708_ _L29710_)
                                        (___match4493844939_
                                         _e2933329698_
                                         _hd2933229702_
                                         _tl2933129705_)))))
                               (___match4492644927_
                                (lambda (_e2931929728_
                                         ___splice4472044721_
                                         _target2932029732_
                                         _tl2932229735_)
                                  (letrec ((_loop2932329738_
                                            (lambda (_hd2932129742_
                                                     _body2932729745_)
                                              (if (gx#stx-pair? _hd2932129742_)
                                                  (let ((_e2932429748_
                                                         (gx#syntax-e
                                                          _hd2932129742_)))
                                                    (let ((_lp-tl2932629755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2932429748_)))
                                                          (_lp-hd2932529752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2932429748_))))
                                                      (let ((__tmp49937
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2932529752_ _body2932729745_))))
                (declare (not safe))
                (_loop2932329738_ _lp-tl2932629755_ __tmp49937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2932829758_
                                                         (reverse _body2932729745_)))
                                                    (___kont4471844719_
                                                     _body2932829758_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2932329738_
                                       _target2932029732_
                                       '())))))
                               (_g2923029784_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4469144692_)
                                      (let ((_e2931929728_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4469144692_))))
                                        (if (gx#stx-pair/null? _e2931929728_)
                                            (let ((___splice4472044721_
                                                   (gx#syntax-split-splice
                                                    _e2931929728_
                                                    '0)))
                                              (let ((_tl2932229735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4472044721_
                                                        '1)))
                                                    (_target2932029732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4472044721_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2932229735_)
                                                    (___match4492644927_
                                                     _e2931929728_
                                                     ___splice4472044721_
                                                     _target2932029732_
                                                     _tl2932229735_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2923829445_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2923829445_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2923829445_)))))
                               (_g2922629901_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4469144692_)
                                      (let ((_e2930229887_
                                             (unbox (gx#syntax-e
                                                     ___stx4469144692_))))
                                        (___kont4471044711_ _e2930229887_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2923029784_)))))
                               (___match4478044781_
                                (lambda (_e2925930126_
                                         _hd2925830130_
                                         _tl2925730133_)
                                  (let ((_L30136_ _tl2925730133_))
                                    (if (gx#stx-list? _L30136_)
                                        (___kont4469844699_ _L30136_)
                                        (___match4493244933_
                                         _e2925930126_
                                         _hd2925830130_
                                         _tl2925730133_)))))
                               (___match4477044771_
                                (lambda (_e2925530211_
                                         _hd2925430215_
                                         _tl2925330218_)
                                  (let ((_L30221_ _tl2925330218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4469644697_ _L30221_)
                                        (___match4493244933_
                                         _e2925530211_
                                         _hd2925430215_
                                         _tl2925330218_))))))
                          (if (gx#stx-pair? ___stx4469144692_)
                              (let ((_e2924830296_
                                     (gx#syntax-e ___stx4469144692_)))
                                (let ((_tl2924630303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2924830296_)))
                                      (_hd2924730300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2924830296_))))
                                  (if (gx#identifier? _hd2924730300_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49947_|
                                           _hd2924730300_)
                                          (if (gx#stx-pair? _tl2924630303_)
                                              (let ((_e2925130306_
                                                     (gx#syntax-e
                                                      _tl2924630303_)))
                                                (let ((_tl2924930313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2925130306_)))
                                                      (_hd2925030310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2925130306_))))
                                                  (___kont4469444695_
                                                   _tl2924930313_
                                                   _hd2925030310_)))
                                              (___match4493244933_
                                               _e2924830296_
                                               _hd2924730300_
                                               _tl2924630303_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49946_|
                                               _hd2924730300_)
                                              (___match4477044771_
                                               _e2924830296_
                                               _hd2924730300_
                                               _tl2924630303_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49945_|
                                                   _hd2924730300_)
                                                  (___match4478044781_
                                                   _e2924830296_
                                                   _hd2924730300_
                                                   _tl2924630303_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49944_|
                                                       _hd2924730300_)
                                                      (if (gx#stx-pair?
                                                           _tl2924630303_)
                                                          (let ((_e2926630096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2924630303_)))
                    (let ((_tl2926430103_
                           (let () (declare (not safe)) (##cdr _e2926630096_)))
                          (_hd2926530100_
                           (let ()
                             (declare (not safe))
                             (##car _e2926630096_))))
                      (if (gx#stx-null? _tl2926430103_)
                          (___kont4470044701_ _hd2926530100_)
                          (___match4493244933_
                           _e2924830296_
                           _hd2924730300_
                           _tl2924630303_))))
                  (___match4493244933_
                   _e2924830296_
                   _hd2924730300_
                   _tl2924630303_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49943_|
                   _hd2924730300_)
                  (if (gx#stx-pair? _tl2924630303_)
                      (let ((_e2927430042_ (gx#syntax-e _tl2924630303_)))
                        (let ((_tl2927230049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2927430042_)))
                              (_hd2927330046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2927430042_))))
                          (if (gx#stx-pair? _tl2927230049_)
                              (let ((_e2927730052_
                                     (gx#syntax-e _tl2927230049_)))
                                (let ((_tl2927530059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2927730052_)))
                                      (_hd2927630056_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2927730052_))))
                                  (if (gx#stx-null? _tl2927530059_)
                                      (___kont4470244703_
                                       _hd2927630056_
                                       _hd2927330046_)
                                      (___match4493244933_
                                       _e2924830296_
                                       _hd2924730300_
                                       _tl2924630303_))))
                              (___match4493244933_
                               _e2924830296_
                               _hd2924730300_
                               _tl2924630303_))))
                      (___match4493244933_
                       _e2924830296_
                       _hd2924730300_
                       _tl2924630303_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49942_|
                       _hd2924730300_)
                      (if (gx#stx-pair? _tl2924630303_)
                          (let ((_e2928629986_ (gx#syntax-e _tl2924630303_)))
                            (let ((_tl2928429993_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2928629986_)))
                                  (_hd2928529990_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2928629986_))))
                              (if (gx#stx-pair? _tl2928429993_)
                                  (let ((_e2928929996_
                                         (gx#syntax-e _tl2928429993_)))
                                    (let ((_tl2928730003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2928929996_)))
                                          (_hd2928830000_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2928929996_))))
                                      (___kont4470444705_
                                       _tl2928730003_
                                       _hd2928830000_
                                       _hd2928529990_)))
                                  (___match4493244933_
                                   _e2924830296_
                                   _hd2924730300_
                                   _tl2924630303_))))
                          (___match4493244933_
                           _e2924830296_
                           _hd2924730300_
                           _tl2924630303_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49941_|
                           _hd2924730300_)
                          (___kont4470644707_ _tl2924630303_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49940_|
                               _hd2924730300_)
                              (if (gx#stx-pair? _tl2924630303_)
                                  (let ((_e2930029918_
                                         (gx#syntax-e _tl2924630303_)))
                                    (let ((_tl2929829925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2930029918_)))
                                          (_hd2929929922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2930029918_))))
                                      (if (gx#stx-null? _tl2929829925_)
                                          (___kont4470844709_ _hd2929929922_)
                                          (___match4493244933_
                                           _e2924830296_
                                           _hd2924730300_
                                           _tl2924630303_))))
                                  (___match4493244933_
                                   _e2924830296_
                                   _hd2924730300_
                                   _tl2924630303_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49939_|
                                   _hd2924730300_)
                                  (if (gx#stx-pair? _tl2924630303_)
                                      (let ((_e2930929857_
                                             (gx#syntax-e _tl2924630303_)))
                                        (let ((_tl2930729864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2930929857_)))
                                              (_hd2930829861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2930929857_))))
                                          (if (gx#stx-null? _tl2930729864_)
                                              (___kont4471244713_
                                               _hd2930829861_)
                                              (___kont4471444715_
                                               _tl2924630303_))))
                                      (___kont4471444715_ _tl2924630303_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49938_|
                                       _hd2924730300_)
                                      (___kont4471644717_ _tl2924630303_)
                                      (___match4493244933_
                                       _e2924830296_
                                       _hd2924730300_
                                       _tl2924630303_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4493244933_
                                       _e2924830296_
                                       _hd2924730300_
                                       _tl2924630303_))))
                              (let ()
                                (declare (not safe))
                                (_g2922629901_))))))))
                 (_parse-list28865_
                  (lambda (_body29045_)
                    (let* ((___stx4502145022_ _body29045_)
                           (_g2905129080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4502145022_))))
                      (let ((___kont4502445025_
                             (lambda (_L29198_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128863_ _L29198_))))
                            (___kont4502645027_
                             (lambda (_L29150_ _L29152_ _L29153_)
                               (let ((__tmp49948
                                      (let ((__tmp49951
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L29153_)))
                                            (__tmp49949
                                             (let ((__tmp49950
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28865_
                                                       _L29150_))))
                                               (declare (not safe))
                                               (cons __tmp49950 '()))))
                                        (declare (not safe))
                                        (cons __tmp49951 __tmp49949))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49948))))
                            (___kont4502845029_
                             (lambda (_L29108_ _L29110_)
                               (let ((__tmp49952
                                      (let ((__tmp49955
                                             (let ()
                                               (declare (not safe))
                                               (_parse128863_ _L29110_)))
                                            (__tmp49953
                                             (let ((__tmp49954
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28865_
                                                       _L29108_))))
                                               (declare (not safe))
                                               (cons __tmp49954 '()))))
                                        (declare (not safe))
                                        (cons __tmp49955 __tmp49953))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49952))))
                            (___kont4503045031_
                             (lambda ()
                               (if (gx#stx-null? _body29045_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49956
                                              (gx#stx-pair? _body29045_)))
                                         (declare (not safe))
                                         (not __tmp49956))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128863_ _body29045_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28870_ _body29045_)))))))
                        (let* ((___match4507045071_
                                (lambda (_e2907429098_
                                         _hd2907329102_
                                         _tl2907229105_)
                                  (let ((_L29108_ _tl2907229105_)
                                        (_L29110_ _hd2907329102_))
                                    (if (let ((__tmp49957
                                               (gx#ellipsis? _L29110_)))
                                          (declare (not safe))
                                          (not __tmp49957))
                                        (___kont4502845029_ _L29108_ _L29110_)
                                        (___kont4503045031_)))))
                               (___match4506445065_
                                (lambda (_e2906629130_
                                         _hd2906529134_
                                         _tl2906429137_
                                         _e2906929140_
                                         _hd2906829144_
                                         _tl2906729147_)
                                  (let ((_L29150_ _tl2906729147_)
                                        (_L29152_ _hd2906829144_)
                                        (_L29153_ _hd2906529134_))
                                    (if (gx#ellipsis? _L29152_)
                                        (___kont4502645027_
                                         _L29150_
                                         _L29152_
                                         _L29153_)
                                        (___match4507045071_
                                         _e2906629130_
                                         _hd2906529134_
                                         _tl2906429137_))))))
                          (if (gx#stx-pair? ___stx4502145022_)
                              (let ((_e2905629174_
                                     (gx#syntax-e ___stx4502145022_)))
                                (let ((_tl2905429181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2905629174_)))
                                      (_hd2905529178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2905629174_))))
                                  (if (gx#stx-datum? _hd2905529178_)
                                      (let ((_e2905729184_
                                             (gx#stx-e _hd2905529178_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2905729184_ '::))
                                            (if (gx#stx-pair? _tl2905429181_)
                                                (let ((_e2906029188_
                                                       (gx#syntax-e
                                                        _tl2905429181_)))
                                                  (let ((_tl2905829195_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2906029188_)))
                                                        (_hd2905929192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2906029188_))))
                                                    (if (gx#stx-null?
                                                         _tl2905829195_)
                                                        (___kont4502445025_
                                                         _hd2905929192_)
                                                        (___match4506445065_
                                                         _e2905629174_
                                                         _hd2905529178_
                                                         _tl2905429181_
                                                         _e2906029188_
                                                         _hd2905929192_
                                                         _tl2905829195_))))
                                                (___match4507045071_
                                                 _e2905629174_
                                                 _hd2905529178_
                                                 _tl2905429181_))
                                            (if (gx#stx-pair? _tl2905429181_)
                                                (let ((_e2906929140_
                                                       (gx#syntax-e
                                                        _tl2905429181_)))
                                                  (let ((_tl2906729147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2906929140_)))
                                                        (_hd2906829144_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2906929140_))))
                                                    (___match4506445065_
                                                     _e2905629174_
                                                     _hd2905529178_
                                                     _tl2905429181_
                                                     _e2906929140_
                                                     _hd2906829144_
                                                     _tl2906729147_)))
                                                (___match4507045071_
                                                 _e2905629174_
                                                 _hd2905529178_
                                                 _tl2905429181_))))
                                      (if (gx#stx-pair? _tl2905429181_)
                                          (let ((_e2906929140_
                                                 (gx#syntax-e _tl2905429181_)))
                                            (let ((_tl2906729147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2906929140_)))
                                                  (_hd2906829144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2906929140_))))
                                              (___match4506445065_
                                               _e2905629174_
                                               _hd2905529178_
                                               _tl2905429181_
                                               _e2906929140_
                                               _hd2906829144_
                                               _tl2906729147_)))
                                          (___match4507045071_
                                           _e2905629174_
                                           _hd2905529178_
                                           _tl2905429181_)))))
                              (___kont4503045031_)))))))
                 (_parse-vector28866_
                  (lambda (_body29042_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28867_ _body29042_))
                        (let ((__tmp49960
                               (let ((__tmp49961
                                      (gx#stx-map _parse128863_ _body29042_)))
                                 (declare (not safe))
                                 (cons __tmp49961 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49960))
                        (let ((__tmp49958
                               (let ((__tmp49959
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28865_ _body29042_))))
                                 (declare (not safe))
                                 (cons __tmp49959 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49958)))))
                 (_simple-vector?28867_
                  (lambda (_body28979_)
                    (let* ((___stx4507345074_ _body28979_)
                           (_g2898328995_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4507345074_))))
                      (let ((___kont4507645077_
                             (lambda (_L29023_ _L29025_)
                               (if (let ((__tmp49962 (gx#ellipsis? _L29025_)))
                                     (declare (not safe))
                                     (not __tmp49962))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28867_ _L29023_))
                                   '#f)))
                            (___kont4507845079_
                             (lambda () (gx#stx-null? _body28979_))))
                        (if (gx#stx-pair? ___stx4507345074_)
                            (let ((_e2898929013_
                                   (gx#syntax-e ___stx4507345074_)))
                              (let ((_tl2898729020_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2898929013_)))
                                    (_hd2898829017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2898929013_))))
                                (___kont4507645077_
                                 _tl2898729020_
                                 _hd2898829017_)))
                            (___kont4507845079_))))))
                 (_parse-class-body28868_
                  (lambda (_body28888_)
                    (let _recur28891_ ((_rest28894_ _body28888_))
                      (let* ((___stx4508945090_ _rest28894_)
                             (_g2889828914_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4508945090_))))
                        (let ((___kont4509245093_
                               (lambda (_L28952_ _L28954_ _L28955_)
                                 (let ((__tmp49963
                                        (let ((__tmp49965
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128863_ _L28954_)))
                                              (__tmp49964
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28891_ _L28952_))))
                                          (declare (not safe))
                                          (cons __tmp49965 __tmp49964))))
                                   (declare (not safe))
                                   (cons _L28955_ __tmp49963))))
                              (___kont4509445095_
                               (lambda ()
                                 (if (gx#stx-null? _rest28894_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28870_ _rest28894_))))))
                          (let ((___match4510845109_
                                 (lambda (_e2890528932_
                                          _hd2890428936_
                                          _tl2890328939_
                                          _e2890828942_
                                          _hd2890728946_
                                          _tl2890628949_)
                                   (let ((_L28952_ _tl2890628949_)
                                         (_L28954_ _hd2890728946_)
                                         (_L28955_ _hd2890428936_))
                                     (if (gx#stx-keyword? _L28955_)
                                         (___kont4509245093_
                                          _L28952_
                                          _L28954_
                                          _L28955_)
                                         (___kont4509445095_))))))
                            (if (gx#stx-pair? ___stx4508945090_)
                                (let ((_e2890528932_
                                       (gx#syntax-e ___stx4508945090_)))
                                  (let ((_tl2890328939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2890528932_)))
                                        (_hd2890428936_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2890528932_))))
                                    (if (gx#stx-pair? _tl2890328939_)
                                        (let ((_e2890828942_
                                               (gx#syntax-e _tl2890328939_)))
                                          (let ((_tl2890628949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2890828942_)))
                                                (_hd2890728946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2890828942_))))
                                            (___match4510845109_
                                             _e2890528932_
                                             _hd2890428936_
                                             _tl2890328939_
                                             _e2890828942_
                                             _hd2890728946_
                                             _tl2890628949_)))
                                        (___kont4509445095_))))
                                (___kont4509445095_))))))))
                 (_parse-qq28869_
                  (lambda (_hd28875_)
                    (let ((_g2887728884_
                           (lambda (_g2887828880_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2887828880_))))
                      (declare (not safe))
                      (_g2887728884_ _hd28875_))))
                 (_parse-error28870_
                  (lambda (_hd28872_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28861_
                               (let ((__tmp49967
                                      (let ((__tmp49968
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28872_ '()))))
                                        (declare (not safe))
                                        (cons _stx28859_ __tmp49968))))
                                 (declare (not safe))
                                 (cons _match-stx28861_ __tmp49967))
                               (let ((__tmp49966
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28872_ '()))))
                                 (declare (not safe))
                                 (cons _stx28859_ __tmp49966)))))))
          (let () (declare (not safe)) (_parse128863_ _stx28859_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30543_)
        (let ((_match-stx30546_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30543_
           _match-stx30546_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49970_
        (let ((_g49969_ (let () (declare (not safe)) (##length _g49970_))))
          (cond ((let () (declare (not safe)) (##fx= _g49969_ 1))
                 (apply (lambda (_stx30543_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30543_)))
                        _g49970_))
                ((let () (declare (not safe)) (##fx= _g49969_ 2))
                 (apply (lambda (_stx30549_ _match-stx30551_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30549_
                             _match-stx30551_)))
                        _g49970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49970_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28843_)
        (call-with-current-continuation
         (lambda (_E28847_)
           (with-exception-handler
            (let ((_E!28850_ (current-exception-handler)))
              (lambda (_e28853_)
                (if (syntax-error? _e28853_)
                    (_E28847_ '#f)
                    (_E!28850_ _e28853_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28843_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27578_)
        (letrec ((_loop27581_
                  (lambda (_ptree27868_ _vars27870_ _K27871_)
                    (let* ((___stx4520745208_ _ptree27868_)
                           (_g2788427994_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4520745208_))))
                      (let ((___kont4521045211_
                             (lambda (_L28624_)
                               (let* ((___stx4512745128_ _L28624_)
                                      (_g2864128675_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4512745128_))))
                                 (let ((___kont4513045131_
                                        (lambda (_L28824_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27581_
                                             _L28824_
                                             _vars27870_
                                             _K27871_))))
                                       (___kont4513245133_
                                        (lambda (_L28793_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27581_
                                             _L28793_
                                             _vars27870_
                                             _K27871_))))
                                       (___kont4513445135_
                                        (lambda (_L28741_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27581_
                                             _L28741_
                                             _vars27870_
                                             _K27871_))))
                                       (___kont4513645137_
                                        (lambda () (_K27871_ _vars27870_))))
                                   (if (gx#stx-pair? ___stx4512745128_)
                                       (let ((_e2864628814_
                                              (gx#syntax-e ___stx4512745128_)))
                                         (let ((_tl2864428821_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2864628814_)))
                                               (_hd2864528818_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2864628814_))))
                                           (if (gx#stx-null? _tl2864428821_)
                                               (___kont4513045131_
                                                _hd2864528818_)
                                               (if (gx#stx-datum?
                                                    _hd2864528818_)
                                                   (let ((_e2865128779_
                                                          (gx#stx-e
                                                           _hd2864528818_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2865128779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2864428821_)
                     (let ((_e2865428783_ (gx#syntax-e _tl2864428821_)))
                       (let ((_tl2865228790_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2865428783_)))
                             (_hd2865328787_
                              (let ()
                                (declare (not safe))
                                (##car _e2865428783_))))
                         (if (gx#stx-null? _tl2865228790_)
                             (___kont4513245133_ _hd2865328787_)
                             (___kont4513645137_))))
                     (___kont4513645137_))
                 (if (let () (declare (not safe)) (equal? _e2865128779_ '::))
                     (if (gx#stx-pair? _tl2864428821_)
                         (let ((_e2866228707_ (gx#syntax-e _tl2864428821_)))
                           (let ((_tl2866028714_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2866228707_)))
                                 (_hd2866128711_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2866228707_))))
                             (if (gx#stx-pair? _tl2866028714_)
                                 (let ((_e2866528717_
                                        (gx#syntax-e _tl2866028714_)))
                                   (let ((_tl2866328724_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2866528717_)))
                                         (_hd2866428721_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2866528717_))))
                                     (if (gx#stx-datum? _hd2866428721_)
                                         (let ((_e2866628727_
                                                (gx#stx-e _hd2866428721_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2866628727_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2866328724_)
                                                   (let ((_e2866928731_
                                                          (gx#syntax-e
                                                           _tl2866328724_)))
                                                     (let ((_tl2866728738_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2866928731_)))
                                                           (_hd2866828735_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2866928731_))))
                                                       (if (gx#stx-null?
                                                            _tl2866728738_)
                                                           (___kont4513445135_
                                                            _hd2866828735_)
                                                           (___kont4513645137_))))
                                                   (___kont4513645137_))
                                               (___kont4513645137_)))
                                         (___kont4513645137_))))
                                 (___kont4513645137_))))
                         (___kont4513645137_))
                     (___kont4513645137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4513645137_)))))
                                       (___kont4513645137_))))))
                            (___kont4521245213_
                             (lambda (_L28511_ _L28513_)
                               (let* ((___stx4511145112_ _L28511_)
                                      (_g2852928541_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4511145112_))))
                                 (let ((___kont4511445115_
                                        (lambda (_L28569_ _L28571_)
                                          (let ((__tmp49971
                                                 (lambda (_g2858328585_)
                                                   (let ((__tmp49972
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27581_
                                                      __tmp49972
                                                      _g2858328585_
                                                      _K27871_)))))
                                            (declare (not safe))
                                            (_loop27581_
                                             _L28571_
                                             _vars27870_
                                             __tmp49971))))
                                       (___kont4511645117_
                                        (lambda () (_K27871_ _vars27870_))))
                                   (if (gx#stx-pair? ___stx4511145112_)
                                       (let ((_e2853528559_
                                              (gx#syntax-e ___stx4511145112_)))
                                         (let ((_tl2853328566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2853528559_)))
                                               (_hd2853428563_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2853528559_))))
                                           (___kont4511445115_
                                            _tl2853328566_
                                            _hd2853428563_)))
                                       (___kont4511645117_))))))
                            (___kont4521445215_
                             (lambda (_L28480_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27581_ _L28480_ _vars27870_ _K27871_))))
                            (___kont4521645217_
                             (lambda (_L28426_ _L28428_)
                               (let ((__tmp49973
                                      (lambda (_g2844328445_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27581_
                                           _L28426_
                                           _g2844328445_
                                           _K27871_)))))
                                 (declare (not safe))
                                 (_loop27581_
                                  _L28428_
                                  _vars27870_
                                  __tmp49973))))
                            (___kont4521845219_
                             (lambda (_L28362_ _L28364_)
                               (let ((__tmp49974
                                      (lambda (_g2837928381_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27581_
                                           _L28362_
                                           _g2837928381_
                                           _K27871_)))))
                                 (declare (not safe))
                                 (_loop27581_
                                  _L28364_
                                  _vars27870_
                                  __tmp49974))))
                            (___kont4522045221_
                             (lambda (_L28307_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27581_ _L28307_ _vars27870_ _K27871_))))
                            (___kont4522245223_
                             (lambda (_L28257_ _L28259_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27583_
                                  _L28257_
                                  _vars27870_
                                  _K27871_))))
                            (___kont4522445225_
                             (lambda (_L28214_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27583_
                                  _L28214_
                                  _vars27870_
                                  _K27871_))))
                            (___kont4522645227_
                             (lambda (_L28157_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27585_
                                  _L28157_
                                  _vars27870_
                                  _K27871_))))
                            (___kont4522845229_
                             (lambda (_L28098_ _L28100_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27581_ _L28098_ _vars27870_ _K27871_))))
                            (___kont4523045231_
                             (lambda (_L28036_)
                               (if (let ((__tmp49975
                                          (lambda (_g2805128053_)
                                            (gx#bound-identifier=?
                                             _g2805128053_
                                             _L28036_))))
                                     (declare (not safe))
                                     (find __tmp49975 _vars27870_))
                                   (_K27871_ _vars27870_)
                                   (_K27871_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28036_ _vars27870_))))))
                            (___kont4523245233_
                             (lambda () (_K27871_ _vars27870_))))
                        (let* ((___match4536445365_
                                (lambda (_e2794328237_
                                         _hd2794228241_
                                         _tl2794128244_
                                         _e2794628247_
                                         _hd2794528251_
                                         _tl2794428254_)
                                  (let ((_L28257_ _hd2794528251_)
                                        (_L28259_ _hd2794228241_))
                                    (if (or (gx#stx-eq? 'values: _L28259_)
                                            (gx#stx-eq? 'vector: _L28259_))
                                        (___kont4522245223_ _L28257_ _L28259_)
                                        (if (gx#stx-datum? _hd2794228241_)
                                            (let ((_e2795128190_
                                                   (gx#stx-e _hd2794228241_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2795128190_
                                                            'struct:))
                                                  (___kont4523245233_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2795128190_
                                                                'class:))
                                                      (___kont4523245233_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2795128190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4523245233_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2795128190_ 'var:))
                      (___kont4523045231_ _hd2794528251_)
                      (___kont4523245233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4523245233_))))))
                               (___match4525845259_
                                (lambda (_e2789828501_
                                         _hd2789728505_
                                         _tl2789628508_)
                                  (let ((_L28511_ _tl2789628508_)
                                        (_L28513_ _hd2789728505_))
                                    (if (or (gx#stx-eq? 'and: _L28513_)
                                            (gx#stx-eq? 'or: _L28513_))
                                        (___kont4521245213_ _L28511_ _L28513_)
                                        (if (gx#stx-datum? _hd2789728505_)
                                            (let ((_e2790328466_
                                                   (gx#stx-e _hd2789728505_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2790328466_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2789628508_)
                                                      (let ((_e2790628470_
                                                             (gx#syntax-e
                                                              _tl2789628508_)))
                                                        (let ((_tl2790428477_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2790628470_)))
                      (_hd2790528474_
                       (let () (declare (not safe)) (##car _e2790628470_))))
                  (if (gx#stx-null? _tl2790428477_)
                      (___kont4521445215_ _hd2790528474_)
                      (___kont4523245233_))))
              (___kont4523245233_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2790328466_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2789628508_)
                                                          (let ((_e2791528406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2789628508_)))
                    (let ((_tl2791328413_
                           (let () (declare (not safe)) (##cdr _e2791528406_)))
                          (_hd2791428410_
                           (let ()
                             (declare (not safe))
                             (##car _e2791528406_))))
                      (if (gx#stx-pair? _tl2791328413_)
                          (let ((_e2791828416_ (gx#syntax-e _tl2791328413_)))
                            (let ((_tl2791628423_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2791828416_)))
                                  (_hd2791728420_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2791828416_))))
                              (if (gx#stx-null? _tl2791628423_)
                                  (___kont4521645217_
                                   _hd2791728420_
                                   _hd2791428410_)
                                  (___kont4523245233_))))
                          (if (gx#stx-null? _tl2791328413_)
                              (___match4536445365_
                               _e2789828501_
                               _hd2789728505_
                               _tl2789628508_
                               _e2791528406_
                               _hd2791428410_
                               _tl2791328413_)
                              (___kont4523245233_)))))
                  (___kont4523245233_))
              (if (let () (declare (not safe)) (equal? _e2790328466_ 'splice:))
                  (if (gx#stx-pair? _tl2789628508_)
                      (let ((_e2792728342_ (gx#syntax-e _tl2789628508_)))
                        (let ((_tl2792528349_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2792728342_)))
                              (_hd2792628346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2792728342_))))
                          (if (gx#stx-pair? _tl2792528349_)
                              (let ((_e2793028352_
                                     (gx#syntax-e _tl2792528349_)))
                                (let ((_tl2792828359_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2793028352_)))
                                      (_hd2792928356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2793028352_))))
                                  (if (gx#stx-null? _tl2792828359_)
                                      (___kont4521845219_
                                       _hd2792928356_
                                       _hd2792628346_)
                                      (___kont4523245233_))))
                              (if (gx#stx-null? _tl2792528349_)
                                  (___match4536445365_
                                   _e2789828501_
                                   _hd2789728505_
                                   _tl2789628508_
                                   _e2792728342_
                                   _hd2792628346_
                                   _tl2792528349_)
                                  (___kont4523245233_)))))
                      (___kont4523245233_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2790328466_ 'box:))
                      (if (gx#stx-pair? _tl2789628508_)
                          (let ((_e2793828297_ (gx#syntax-e _tl2789628508_)))
                            (let ((_tl2793628304_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2793828297_)))
                                  (_hd2793728301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2793828297_))))
                              (if (gx#stx-null? _tl2793628304_)
                                  (___kont4522045221_ _hd2793728301_)
                                  (___kont4523245233_))))
                          (___kont4523245233_))
                      (if (gx#stx-pair? _tl2789628508_)
                          (let ((_e2794628247_ (gx#syntax-e _tl2789628508_)))
                            (let ((_tl2794428254_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2794628247_)))
                                  (_hd2794528251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2794628247_))))
                              (if (gx#stx-null? _tl2794428254_)
                                  (___match4536445365_
                                   _e2789828501_
                                   _hd2789728505_
                                   _tl2789628508_
                                   _e2794628247_
                                   _hd2794528251_
                                   _tl2794428254_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2790328466_ 'struct:))
                                      (if (gx#stx-pair? _tl2794428254_)
                                          (let ((_e2795728204_
                                                 (gx#syntax-e _tl2794428254_)))
                                            (let ((_tl2795528211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2795728204_)))
                                                  (_hd2795628208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2795728204_))))
                                              (if (gx#stx-null? _tl2795528211_)
                                                  (___kont4522445225_
                                                   _hd2795628208_)
                                                  (___kont4523245233_))))
                                          (___kont4523245233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2790328466_ 'class:))
                                          (if (gx#stx-pair? _tl2794428254_)
                                              (let ((_e2796828147_
                                                     (gx#syntax-e
                                                      _tl2794428254_)))
                                                (let ((_tl2796628154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2796828147_)))
                                                      (_hd2796728151_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2796828147_))))
                                                  (if (gx#stx-null?
                                                       _tl2796628154_)
                                                      (___kont4522645227_
                                                       _hd2796728151_)
                                                      (___kont4523245233_))))
                                              (___kont4523245233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2790328466_ 'apply:))
                                              (if (gx#stx-pair? _tl2794428254_)
                                                  (let ((_e2798028088_
                                                         (gx#syntax-e
                                                          _tl2794428254_)))
                                                    (let ((_tl2797828095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2798028088_)))
                                                          (_hd2797928092_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2798028088_))))
                                                      (if (gx#stx-null?
                                                           _tl2797828095_)
                                                          (___kont4522845229_
                                                           _hd2797928092_
                                                           _hd2794528251_)
                                                          (___kont4523245233_))))
                                                  (___kont4523245233_))
                                              (___kont4523245233_)))))))
                          (___kont4523245233_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2789628508_)
                                                (let ((_e2794628247_
                                                       (gx#syntax-e
                                                        _tl2789628508_)))
                                                  (let ((_tl2794428254_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2794628247_)))
                                                        (_hd2794528251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2794628247_))))
                                                    (if (gx#stx-null?
                                                         _tl2794428254_)
                                                        (___match4536445365_
                                                         _e2789828501_
                                                         _hd2789728505_
                                                         _tl2789628508_
                                                         _e2794628247_
                                                         _hd2794528251_
                                                         _tl2794428254_)
                                                        (___kont4523245233_))))
                                                (___kont4523245233_))))))))
                          (if (gx#stx-pair? ___stx4520745208_)
                              (let ((_e2788928600_
                                     (gx#syntax-e ___stx4520745208_)))
                                (let ((_tl2788728607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2788928600_)))
                                      (_hd2788828604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2788928600_))))
                                  (if (gx#stx-datum? _hd2788828604_)
                                      (let ((_e2789028610_
                                             (gx#stx-e _hd2788828604_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2789028610_ '?:))
                                            (if (gx#stx-pair? _tl2788728607_)
                                                (let ((_e2789328614_
                                                       (gx#syntax-e
                                                        _tl2788728607_)))
                                                  (let ((_tl2789128621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2789328614_)))
                                                        (_hd2789228618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2789328614_))))
                                                    (___kont4521045211_
                                                     _tl2789128621_)))
                                                (___match4525845259_
                                                 _e2788928600_
                                                 _hd2788828604_
                                                 _tl2788728607_))
                                            (___match4525845259_
                                             _e2788928600_
                                             _hd2788828604_
                                             _tl2788728607_)))
                                      (___match4525845259_
                                       _e2788928600_
                                       _hd2788828604_
                                       _tl2788728607_))))
                              (___kont4523245233_)))))))
                 (_loop-vector27583_
                  (lambda (_body27744_ _vars27746_ _K27747_)
                    (let* ((___stx4546545466_ _body27744_)
                           (_g2775027773_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4546545466_))))
                      (let ((___kont4546845469_
                             (lambda (_L27850_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27584_
                                  _L27850_
                                  _vars27746_
                                  _K27747_))))
                            (___kont4547045471_
                             (lambda (_L27804_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27581_
                                  _L27804_
                                  _vars27746_
                                  _K27747_)))))
                        (if (gx#stx-pair? ___stx4546545466_)
                            (let ((_e2775527826_
                                   (gx#syntax-e ___stx4546545466_)))
                              (let ((_tl2775327833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2775527826_)))
                                    (_hd2775427830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2775527826_))))
                                (if (gx#stx-datum? _hd2775427830_)
                                    (let ((_e2775627836_
                                           (gx#stx-e _hd2775427830_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2775627836_ 'simple:))
                                          (if (gx#stx-pair? _tl2775327833_)
                                              (let ((_e2775927840_
                                                     (gx#syntax-e
                                                      _tl2775327833_)))
                                                (let ((_tl2775727847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2775927840_)))
                                                      (_hd2775827844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2775927840_))))
                                                  (if (gx#stx-null?
                                                       _tl2775727847_)
                                                      (___kont4546845469_
                                                       _hd2775827844_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2775027773_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2775027773_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2775627836_ 'list:))
                                              (if (gx#stx-pair? _tl2775327833_)
                                                  (let ((_e2776727794_
                                                         (gx#syntax-e
                                                          _tl2775327833_)))
                                                    (let ((_tl2776527801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2776727794_)))
                                                          (_hd2776627798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2776727794_))))
                                                      (if (gx#stx-null?
                                                           _tl2776527801_)
                                                          (___kont4547045471_
                                                           _hd2776627798_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2775027773_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2775027773_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2775027773_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2775027773_)))))
                            (let () (declare (not safe)) (_g2775027773_)))))))
                 (_loop-list27584_
                  (lambda (_rest27674_ _vars27676_ _K27677_)
                    (let* ((___stx4551545516_ _rest27674_)
                           (_g2768027692_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4551545516_))))
                      (let ((___kont4551845519_
                             (lambda (_L27720_ _L27722_)
                               (let ((__tmp49976
                                      (lambda (_g2773427736_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27584_
                                           _L27720_
                                           _g2773427736_
                                           _K27677_)))))
                                 (declare (not safe))
                                 (_loop27581_
                                  _L27722_
                                  _vars27676_
                                  __tmp49976))))
                            (___kont4552045521_
                             (lambda () (_K27677_ _vars27676_))))
                        (if (gx#stx-pair? ___stx4551545516_)
                            (let ((_e2768627710_
                                   (gx#syntax-e ___stx4551545516_)))
                              (let ((_tl2768427717_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768627710_)))
                                    (_hd2768527714_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768627710_))))
                                (___kont4551845519_
                                 _tl2768427717_
                                 _hd2768527714_)))
                            (___kont4552045521_))))))
                 (_loop-class-list27585_
                  (lambda (_rest27587_ _vars27589_ _K27590_)
                    (let* ((___stx4553145532_ _rest27587_)
                           (_g2759327608_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4553145532_))))
                      (let ((___kont4553445535_
                             (lambda (_L27646_ _L27648_)
                               (let ((__tmp49977
                                      (lambda (_g2766427666_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27585_
                                           _L27646_
                                           _g2766427666_
                                           _K27590_)))))
                                 (declare (not safe))
                                 (_loop27581_
                                  _L27648_
                                  _vars27589_
                                  __tmp49977))))
                            (___kont4553645537_
                             (lambda () (_K27590_ _vars27589_))))
                        (if (gx#stx-pair? ___stx4553145532_)
                            (let ((_e2759927626_
                                   (gx#syntax-e ___stx4553145532_)))
                              (let ((_tl2759727633_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2759927626_)))
                                    (_hd2759827630_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2759927626_))))
                                (if (gx#stx-pair? _tl2759727633_)
                                    (let ((_e2760227636_
                                           (gx#syntax-e _tl2759727633_)))
                                      (let ((_tl2760027643_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2760227636_)))
                                            (_hd2760127640_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2760227636_))))
                                        (___kont4553445535_
                                         _tl2760027643_
                                         _hd2760127640_)))
                                    (___kont4553645537_))))
                            (___kont4553645537_)))))))
          (let ()
            (declare (not safe))
            (_loop27581_ _ptree27578_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24539_ _tgt24541_ _ptree24542_ _K24543_ _E24544_)
        (letrec ((_generate124546_
                  (lambda (_tgt25791_ _ptree25793_ _K25794_ _E25795_)
                    (let* ((_g2579725805_
                            (lambda (_g2579825801_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2579825801_)))
                           (_g2579627574_
                            (lambda (_g2579825809_)
                              ((lambda (_L25812_)
                                 (let ()
                                   (let* ((___stx4576745768_ _ptree25793_)
                                          (_g2583925981_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4576745768_))))
                                     (let ((___kont4577045771_
                                            (lambda (_L27289_ _L27291_)
                                              (let* ((___stx4568545686_
                                                      _L27289_)
                                                     (_g2730827343_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4568545686_))))
                                                (let ((___kont4568845689_
                                                       (lambda ()
                                                         (let ((__tmp49978
                                                                (let ((__tmp49981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49984 (gx#datum->syntax '#f '?))
                                     (__tmp49982
                                      (let ((__tmp49983
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25812_ '()))))
                                        (declare (not safe))
                                        (cons _L27291_ __tmp49983))))
                                 (declare (not safe))
                                 (cons __tmp49984 __tmp49982)))
                              (__tmp49979
                               (let ((__tmp49980
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25795_ '()))))
                                 (declare (not safe))
                                 (cons _K25794_ __tmp49980))))
                          (declare (not safe))
                          (cons __tmp49981 __tmp49979))))
                   (declare (not safe))
                   (cons 'if __tmp49978))))
              (___kont4569045691_
               (lambda (_L27544_)
                 (let ((__tmp49985
                        (let ((__tmp49989
                               (let ((__tmp49992 (gx#datum->syntax '#f '?))
                                     (__tmp49990
                                      (let ((__tmp49991
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25812_ '()))))
                                        (declare (not safe))
                                        (cons _L27291_ __tmp49991))))
                                 (declare (not safe))
                                 (cons __tmp49992 __tmp49990)))
                              (__tmp49986
                               (let ((__tmp49988
                                      (let ()
                                        (declare (not safe))
                                        (_generate124546_
                                         _tgt25791_
                                         _L27544_
                                         _K25794_
                                         _E25795_)))
                                     (__tmp49987
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25795_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49988 __tmp49987))))
                          (declare (not safe))
                          (cons __tmp49989 __tmp49986))))
                   (declare (not safe))
                   (cons 'if __tmp49985))))
              (___kont4569245693_
               (lambda (_L27482_)
                 (let* ((_g2749627504_
                         (lambda (_g2749727500_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2749727500_)))
                        (_g2749527523_
                         (lambda (_g2749727508_)
                           ((lambda (_L27511_)
                              (let ()
                                (let ((__tmp49993
                                       (let ((__tmp50000
                                              (let ((__tmp50001
                                                     (let ((__tmp50002
                                                            (let ((__tmp50003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50004
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25812_ '()))))
                             (declare (not safe))
                             (cons _L27291_ __tmp50004))))
                      (declare (not safe))
                      (cons __tmp50003 '()))))
               (declare (not safe))
               (cons _L27511_ __tmp50002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50001 '())))
                                             (__tmp49994
                                              (let ((__tmp49995
                                                     (let ((__tmp49996
                                                            (let ((__tmp49997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49999
                                  (let ()
                                    (declare (not safe))
                                    (_generate124546_
                                     _L27511_
                                     _L27482_
                                     _K25794_
                                     _E25795_)))
                                 (__tmp49998
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25795_ '()))))
                             (declare (not safe))
                             (cons __tmp49999 __tmp49998))))
                      (declare (not safe))
                      (cons _L27511_ __tmp49997))))
               (declare (not safe))
               (cons 'if __tmp49996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49995 '()))))
                                         (declare (not safe))
                                         (cons __tmp50000 __tmp49994))))
                                  (declare (not safe))
                                  (cons 'let __tmp49993))))
                            _g2749727508_)))
                        (__tmp50005 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2749527523_ __tmp50005))))
              (___kont4569445695_
               (lambda (_L27398_ _L27400_)
                 (let* ((_g2742027428_
                         (lambda (_g2742127424_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2742127424_)))
                        (_g2741927447_
                         (lambda (_g2742127432_)
                           ((lambda (_L27435_)
                              (let ()
                                (let ((__tmp50006
                                       (let ((__tmp50018
                                              (let ((__tmp50021
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp50019
                                                     (let ((__tmp50020
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27291_ __tmp50020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50021 __tmp50019)))
                                             (__tmp50007
                                              (let ((__tmp50009
                                                     (let ((__tmp50010
                                                            (let ((__tmp50013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50014
                                  (let ((__tmp50015
                                         (let ((__tmp50016
                                                (let ((__tmp50017
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25812_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27400_ __tmp50017))))
                                           (declare (not safe))
                                           (cons __tmp50016 '()))))
                                    (declare (not safe))
                                    (cons _L27435_ __tmp50015))))
                             (declare (not safe))
                             (cons __tmp50014 '())))
                          (__tmp50011
                           (let ((__tmp50012
                                  (let ()
                                    (declare (not safe))
                                    (_generate124546_
                                     _L27435_
                                     _L27398_
                                     _K25794_
                                     _E25795_))))
                             (declare (not safe))
                             (cons __tmp50012 '()))))
                      (declare (not safe))
                      (cons __tmp50013 __tmp50011))))
               (declare (not safe))
               (cons 'let __tmp50010)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50008
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25795_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50009 __tmp50008))))
                                         (declare (not safe))
                                         (cons __tmp50018 __tmp50007))))
                                  (declare (not safe))
                                  (cons 'if __tmp50006))))
                            _g2742127432_)))
                        (__tmp50022 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2741927447_ __tmp50022)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2730527555_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4568545686_)
                                                               (let ((_e2731327534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4568545686_)))
                         (let ((_tl2731127541_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2731327534_)))
                               (_hd2731227538_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2731327534_))))
                           (if (gx#stx-null? _tl2731127541_)
                               (___kont4569045691_ _hd2731227538_)
                               (if (gx#stx-datum? _hd2731227538_)
                                   (let ((_e2731827468_
                                          (gx#stx-e _hd2731227538_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2731827468_ '=>:))
                                         (if (gx#stx-pair? _tl2731127541_)
                                             (let ((_e2732127472_
                                                    (gx#syntax-e
                                                     _tl2731127541_)))
                                               (let ((_tl2731927479_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2732127472_)))
                                                     (_hd2732027476_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2732127472_))))
                                                 (if (gx#stx-null?
                                                      _tl2731927479_)
                                                     (___kont4569245693_
                                                      _hd2732027476_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2730827343_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2730827343_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2731827468_ '::))
                                             (if (gx#stx-pair? _tl2731127541_)
                                                 (let ((_e2733027364_
                                                        (gx#syntax-e
                                                         _tl2731127541_)))
                                                   (let ((_tl2732827371_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2733027364_)))
                                                         (_hd2732927368_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2733027364_))))
                                                     (if (gx#stx-pair?
                                                          _tl2732827371_)
                                                         (let ((_e2733327374_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2732827371_)))
                   (let ((_tl2733127381_
                          (let () (declare (not safe)) (##cdr _e2733327374_)))
                         (_hd2733227378_
                          (let () (declare (not safe)) (##car _e2733327374_))))
                     (if (gx#stx-datum? _hd2733227378_)
                         (let ((_e2733427384_ (gx#stx-e _hd2733227378_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2733427384_ '=>:))
                               (if (gx#stx-pair? _tl2733127381_)
                                   (let ((_e2733727388_
                                          (gx#syntax-e _tl2733127381_)))
                                     (let ((_tl2733527395_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2733727388_)))
                                           (_hd2733627392_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2733727388_))))
                                       (if (gx#stx-null? _tl2733527395_)
                                           (___kont4569445695_
                                            _hd2733627392_
                                            _hd2732927368_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2730827343_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2730827343_)))
                               (let () (declare (not safe)) (_g2730827343_))))
                         (let () (declare (not safe)) (_g2730827343_)))))
                 (let () (declare (not safe)) (_g2730827343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2730827343_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2730827343_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2730827343_))))))
                       (let () (declare (not safe)) (_g2730827343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4568545686_)
                                                        (___kont4568845689_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2730527555_))))))))
                                           (___kont4577245773_
                                            (lambda (_L27186_)
                                              (let* ((___stx4566945670_
                                                      _L27186_)
                                                     (_g2719927211_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4566945670_))))
                                                (let ((___kont4567245673_
                                                       (lambda (_L27239_
                                                                _L27241_)
                                                         (let ((__tmp50023
                                                                (let ((__tmp50024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27239_))))
                          (declare (not safe))
                          (_generate124546_
                           _tgt25791_
                           __tmp50024
                           _K25794_
                           _E25795_))))
                   (declare (not safe))
                   (_generate124546_
                    _tgt25791_
                    _L27241_
                    __tmp50023
                    _E25795_))))
              (___kont4567445675_ (lambda () _K25794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4566945670_)
                                                      (let ((_e2720527229_
                                                             (gx#syntax-e
                                                              ___stx4566945670_)))
                                                        (let ((_tl2720327236_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2720527229_)))
                      (_hd2720427233_
                       (let () (declare (not safe)) (##car _e2720527229_))))
                  (___kont4567245673_ _tl2720327236_ _hd2720427233_)))
              (___kont4567445675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4577445775_
                                            (lambda (_L27093_)
                                              (let* ((___stx4565345654_
                                                      _L27093_)
                                                     (_g2710627118_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4565345654_))))
                                                (let ((___kont4565645657_
                                                       (lambda (_L27146_
                                                                _L27148_)
                                                         (let ((__tmp50025
                                                                (let ((__tmp50026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27146_))))
                          (declare (not safe))
                          (_generate124546_
                           _tgt25791_
                           __tmp50026
                           _K25794_
                           _E25795_))))
                   (declare (not safe))
                   (_generate124546_
                    _tgt25791_
                    _L27148_
                    _K25794_
                    __tmp50025))))
              (___kont4565845659_ (lambda () _E25795_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4565345654_)
                                                      (let ((_e2711227136_
                                                             (gx#syntax-e
                                                              ___stx4565345654_)))
                                                        (let ((_tl2711027143_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2711227136_)))
                      (_hd2711127140_
                       (let () (declare (not safe)) (##car _e2711227136_))))
                  (___kont4565645657_ _tl2711027143_ _hd2711127140_)))
              (___kont4565845659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4577645777_
                                            (lambda (_L27058_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124546_
                                                 _tgt25791_
                                                 _L27058_
                                                 _E25795_
                                                 _K25794_))))
                                           (___kont4577845779_
                                            (lambda (_L26940_ _L26942_)
                                              (let* ((_g2695926974_
                                                      (lambda (_g2696026970_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2696026970_)))
                                                     (_g2695827023_
                                                      (lambda (_g2696026978_)
                                                        (if (gx#stx-pair?
                                                             _g2696026978_)
                                                            (let ((_e2696526981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2696026978_)))
                      (let ((_hd2696426985_
                             (let ()
                               (declare (not safe))
                               (##car _e2696526981_)))
                            (_tl2696326988_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2696526981_))))
                        (if (gx#stx-pair? _tl2696326988_)
                            (let ((_e2696826991_ (gx#syntax-e _tl2696326988_)))
                              (let ((_hd2696726995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2696826991_)))
                                    (_tl2696626998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2696826991_))))
                                (if (gx#stx-null? _tl2696626998_)
                                    ((lambda (_L27001_ _L27003_)
                                       (let ()
                                         (let ((__tmp50027
                                                (let ((__tmp50065
                                                       (let ((__tmp50067
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp50066
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25812_ '()))))
                 (declare (not safe))
                 (cons __tmp50067 __tmp50066)))
              (__tmp50028
               (let ((__tmp50030
                      (let ((_hd-pat27019_ (gx#stx-e _L26942_))
                            (_tl-pat27021_ (gx#stx-e _L26940_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27019_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27021_ '(any:))))
                            _K25794_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27021_ '(any:)))
                                (let ((__tmp50056
                                       (let ((__tmp50059
                                              (let ((__tmp50060
                                                     (let ((__tmp50061
                                                            (let ((__tmp50062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50064 (gx#datum->syntax '#f '##car))
                                 (__tmp50063
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25812_ '()))))
                             (declare (not safe))
                             (cons __tmp50064 __tmp50063))))
                      (declare (not safe))
                      (cons __tmp50062 '()))))
               (declare (not safe))
               (cons _L27003_ __tmp50061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50060 '())))
                                             (__tmp50057
                                              (let ((__tmp50058
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124546_
                                                        _L27003_
                                                        _L26942_
                                                        _K25794_
                                                        _E25795_))))
                                                (declare (not safe))
                                                (cons __tmp50058 '()))))
                                         (declare (not safe))
                                         (cons __tmp50059 __tmp50057))))
                                  (declare (not safe))
                                  (cons 'let __tmp50056))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27019_ '(any:)))
                                    (let ((__tmp50047
                                           (let ((__tmp50050
                                                  (let ((__tmp50051
                                                         (let ((__tmp50052
                                                                (let ((__tmp50053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50055 (gx#datum->syntax '#f '##cdr))
                                     (__tmp50054
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25812_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50055 __tmp50054))))
                          (declare (not safe))
                          (cons __tmp50053 '()))))
                   (declare (not safe))
                   (cons _L27001_ __tmp50052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50051 '())))
                                                 (__tmp50048
                                                  (let ((__tmp50049
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124546_
                                                            _L27001_
                                                            _L26940_
                                                            _K25794_
                                                            _E25795_))))
                                                    (declare (not safe))
                                                    (cons __tmp50049 '()))))
                                             (declare (not safe))
                                             (cons __tmp50050 __tmp50048))))
                                      (declare (not safe))
                                      (cons 'let __tmp50047))
                                    (let ((__tmp50031
                                           (let ((__tmp50035
                                                  (let ((__tmp50042
                                                         (let ((__tmp50043
                                                                (let ((__tmp50044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50046 (gx#datum->syntax '#f '##car))
                                     (__tmp50045
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25812_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50046 __tmp50045))))
                          (declare (not safe))
                          (cons __tmp50044 '()))))
                   (declare (not safe))
                   (cons _L27003_ __tmp50043)))
                (__tmp50036
                 (let ((__tmp50037
                        (let ((__tmp50038
                               (let ((__tmp50039
                                      (let ((__tmp50041
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp50040
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25812_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50041 __tmp50040))))
                                 (declare (not safe))
                                 (cons __tmp50039 '()))))
                          (declare (not safe))
                          (cons _L27001_ __tmp50038))))
                   (declare (not safe))
                   (cons __tmp50037 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50042
                                                          __tmp50036)))
                                                 (__tmp50032
                                                  (let ((__tmp50033
                                                         (let ((__tmp50034
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124546_
                           _L27001_
                           _L26940_
                           _K25794_
                           _E25795_))))
                   (declare (not safe))
                   (_generate124546_ _L27003_ _L26942_ __tmp50034 _E25795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50033 '()))))
                                             (declare (not safe))
                                             (cons __tmp50035 __tmp50032))))
                                      (declare (not safe))
                                      (cons 'let __tmp50031)))))))
                     (__tmp50029
                      (let () (declare (not safe)) (cons _E25795_ '()))))
                 (declare (not safe))
                 (cons __tmp50030 __tmp50029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50065
                                                        __tmp50028))))
                                           (declare (not safe))
                                           (cons 'if __tmp50027))))
                                     _hd2696726995_
                                     _hd2696426985_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2695926974_ _g2696026978_)))))
                            (let ()
                              (declare (not safe))
                              (_g2695926974_ _g2696026978_)))))
                    (let ()
                      (declare (not safe))
                      (_g2695926974_ _g2696026978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50068
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2695827023_ __tmp50068))))
                                           (___kont4578045781_
                                            (lambda ()
                                              (let ((__tmp50069
                                                     (let ((__tmp50072
                                                            (let ((__tmp50074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp50073
                           (let () (declare (not safe)) (cons _L25812_ '()))))
                      (declare (not safe))
                      (cons __tmp50074 __tmp50073)))
                   (__tmp50070
                    (let ((__tmp50071
                           (let () (declare (not safe)) (cons _E25795_ '()))))
                      (declare (not safe))
                      (cons _K25794_ __tmp50071))))
               (declare (not safe))
               (cons __tmp50072 __tmp50070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp50069))))
                                           (___kont4578245783_
                                            (lambda (_L26856_ _L26858_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24548_
                                                 _tgt25791_
                                                 _L26858_
                                                 _L26856_
                                                 _K25794_
                                                 _E25795_))))
                                           (___kont4578445785_
                                            (lambda (_L26770_)
                                              (let* ((_g2678426792_
                                                      (lambda (_g2678526788_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2678526788_)))
                                                     (_g2678326811_
                                                      (lambda (_g2678526796_)
                                                        ((lambda (_L26799_)
                                                           (let ()
                                                             (let ((__tmp50075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50088
                                   (let ((__tmp50090
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp50089
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25812_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50090 __tmp50089)))
                                  (__tmp50076
                                   (let ((__tmp50078
                                          (let ((__tmp50079
                                                 (let ((__tmp50082
                                                        (let ((__tmp50083
                                                               (let ((__tmp50084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50085
                                     (let ((__tmp50087
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp50086
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25812_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50087 __tmp50086))))
                                (declare (not safe))
                                (cons __tmp50085 '()))))
                         (declare (not safe))
                         (cons _L26799_ __tmp50084))))
                  (declare (not safe))
                  (cons __tmp50083 '())))
               (__tmp50080
                (let ((__tmp50081
                       (let ()
                         (declare (not safe))
                         (_generate124546_
                          _L26799_
                          _L26770_
                          _K25794_
                          _E25795_))))
                  (declare (not safe))
                  (cons __tmp50081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50082
                                                         __tmp50080))))
                                            (declare (not safe))
                                            (cons 'let __tmp50079)))
                                         (__tmp50077
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25795_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50078 __tmp50077))))
                              (declare (not safe))
                              (cons __tmp50088 __tmp50076))))
                       (declare (not safe))
                       (cons 'if __tmp50075))))
                 _g2678526796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50091
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2678326811_ __tmp50091))))
                                           (___kont4578645787_
                                            (lambda (_L26575_)
                                              (let* ((___stx4560345604_
                                                      _L26575_)
                                                     (_g2659026613_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4560345604_))))
                                                (let ((___kont4560645607_
                                                       (lambda (_L26690_)
                                                         (let* ((_g2670426712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2670526708_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2670526708_)))
                        (_g2670326731_
                         (lambda (_g2670526716_)
                           ((lambda (_L26719_)
                              (let ()
                                (let ((__tmp50092
                                       (let ((__tmp50096
                                              (let ((__tmp50102
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp50097
                                                     (let ((__tmp50099
                                                            (let ((__tmp50101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp50100
                           (let () (declare (not safe)) (cons _L25812_ '()))))
                      (declare (not safe))
                      (cons __tmp50101 __tmp50100)))
                   (__tmp50098
                    (let () (declare (not safe)) (cons _L26719_ '()))))
               (declare (not safe))
               (cons __tmp50099 __tmp50098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50102 __tmp50097)))
                                             (__tmp50093
                                              (let ((__tmp50095
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24549_
                                                        _tgt25791_
                                                        _L26690_
                                                        '0
                                                        _K25794_
                                                        _E25795_)))
                                                    (__tmp50094
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25795_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50095 __tmp50094))))
                                         (declare (not safe))
                                         (cons __tmp50096 __tmp50093))))
                                  (declare (not safe))
                                  (cons 'if __tmp50092))))
                            _g2670526716_)))
                        (__tmp50103 (gx#stx-length _L26690_)))
                   (declare (not safe))
                   (_g2670326731_ __tmp50103))))
              (___kont4560845609_
               (lambda (_L26644_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24550_
                    _tgt25791_
                    _L26644_
                    'values->list
                    _K25794_
                    _E25795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4560345604_)
                                                      (let ((_e2659526666_
                                                             (gx#syntax-e
                                                              ___stx4560345604_)))
                                                        (let ((_tl2659326673_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2659526666_)))
                      (_hd2659426670_
                       (let () (declare (not safe)) (##car _e2659526666_))))
                  (if (gx#stx-datum? _hd2659426670_)
                      (let ((_e2659626676_ (gx#stx-e _hd2659426670_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2659626676_ 'simple:))
                            (if (gx#stx-pair? _tl2659326673_)
                                (let ((_e2659926680_
                                       (gx#syntax-e _tl2659326673_)))
                                  (let ((_tl2659726687_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2659926680_)))
                                        (_hd2659826684_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2659926680_))))
                                    (if (gx#stx-null? _tl2659726687_)
                                        (___kont4560645607_ _hd2659826684_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2659026613_)))))
                                (let () (declare (not safe)) (_g2659026613_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2659626676_ 'list:))
                                (if (gx#stx-pair? _tl2659326673_)
                                    (let ((_e2660726634_
                                           (gx#syntax-e _tl2659326673_)))
                                      (let ((_tl2660526641_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2660726634_)))
                                            (_hd2660626638_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2660726634_))))
                                        (if (gx#stx-null? _tl2660526641_)
                                            (___kont4560845609_ _hd2660626638_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2659026613_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2659026613_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2659026613_)))))
                      (let () (declare (not safe)) (_g2659026613_)))))
              (let () (declare (not safe)) (_g2659026613_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4578845789_
                                            (lambda (_L26380_)
                                              (let* ((___stx4555345554_
                                                      _L26380_)
                                                     (_g2639526418_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4555345554_))))
                                                (let ((___kont4555645557_
                                                       (lambda (_L26495_)
                                                         (let* ((_g2650926517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2651026513_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2651026513_)))
                        (_g2650826536_
                         (lambda (_g2651026521_)
                           ((lambda (_L26524_)
                              (let ()
                                (let ((__tmp50104
                                       (let ((__tmp50119
                                              (let ((__tmp50121
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp50120
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25812_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50121 __tmp50120)))
                                             (__tmp50105
                                              (let ((__tmp50107
                                                     (let ((__tmp50108
                                                            (let ((__tmp50112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50118 (gx#datum->syntax '#f '##fx=))
                                 (__tmp50113
                                  (let ((__tmp50115
                                         (let ((__tmp50117
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp50116
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25812_ '()))))
                                           (declare (not safe))
                                           (cons __tmp50117 __tmp50116)))
                                        (__tmp50114
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26524_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50115 __tmp50114))))
                             (declare (not safe))
                             (cons __tmp50118 __tmp50113)))
                          (__tmp50109
                           (let ((__tmp50111
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24549_
                                     _tgt25791_
                                     _L26495_
                                     '0
                                     _K25794_
                                     _E25795_)))
                                 (__tmp50110
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25795_ '()))))
                             (declare (not safe))
                             (cons __tmp50111 __tmp50110))))
                      (declare (not safe))
                      (cons __tmp50112 __tmp50109))))
               (declare (not safe))
               (cons 'if __tmp50108)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50106
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25795_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50107 __tmp50106))))
                                         (declare (not safe))
                                         (cons __tmp50119 __tmp50105))))
                                  (declare (not safe))
                                  (cons 'if __tmp50104))))
                            _g2651026521_)))
                        (__tmp50122 (gx#stx-length _L26495_)))
                   (declare (not safe))
                   (_g2650826536_ __tmp50122))))
              (___kont4555845559_
               (lambda (_L26449_)
                 (let ((__tmp50123
                        (let ((__tmp50127
                               (let ((__tmp50129
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp50128
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25812_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50129 __tmp50128)))
                              (__tmp50124
                               (let ((__tmp50126
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24550_
                                         _tgt25791_
                                         _L26449_
                                         'vector->list
                                         _K25794_
                                         _E25795_)))
                                     (__tmp50125
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25795_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50126 __tmp50125))))
                          (declare (not safe))
                          (cons __tmp50127 __tmp50124))))
                   (declare (not safe))
                   (cons 'if __tmp50123)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4555345554_)
                                                      (let ((_e2640026471_
                                                             (gx#syntax-e
                                                              ___stx4555345554_)))
                                                        (let ((_tl2639826478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2640026471_)))
                      (_hd2639926475_
                       (let () (declare (not safe)) (##car _e2640026471_))))
                  (if (gx#stx-datum? _hd2639926475_)
                      (let ((_e2640126481_ (gx#stx-e _hd2639926475_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2640126481_ 'simple:))
                            (if (gx#stx-pair? _tl2639826478_)
                                (let ((_e2640426485_
                                       (gx#syntax-e _tl2639826478_)))
                                  (let ((_tl2640226492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2640426485_)))
                                        (_hd2640326489_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2640426485_))))
                                    (if (gx#stx-null? _tl2640226492_)
                                        (___kont4555645557_ _hd2640326489_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2639526418_)))))
                                (let () (declare (not safe)) (_g2639526418_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2640126481_ 'list:))
                                (if (gx#stx-pair? _tl2639826478_)
                                    (let ((_e2641226439_
                                           (gx#syntax-e _tl2639826478_)))
                                      (let ((_tl2641026446_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2641226439_)))
                                            (_hd2641126443_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2641226439_))))
                                        (if (gx#stx-null? _tl2641026446_)
                                            (___kont4555845559_ _hd2641126443_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2639526418_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2639526418_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2639526418_)))))
                      (let () (declare (not safe)) (_g2639526418_)))))
              (let () (declare (not safe)) (_g2639526418_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4579045791_
                                            (lambda (_L26331_ _L26333_)
                                              (let ((__tmp50130
                                                     (gx#stx-e _L26333_)))
                                                (declare (not safe))
                                                (_generate-struct24551_
                                                 __tmp50130
                                                 _tgt25791_
                                                 _L26331_
                                                 _K25794_
                                                 _E25795_))))
                                           (___kont4579245793_
                                            (lambda (_L26272_ _L26274_)
                                              (let ((__tmp50131
                                                     (gx#stx-e _L26274_)))
                                                (declare (not safe))
                                                (_generate-class24554_
                                                 __tmp50131
                                                 _tgt25791_
                                                 _L26272_
                                                 _K25794_
                                                 _E25795_))))
                                           (___kont4579445795_
                                            (lambda (_L26175_)
                                              (let* ((_g2618926197_
                                                      (lambda (_g2619026193_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2619026193_)))
                                                     (_g2618826216_
                                                      (lambda (_g2619026201_)
                                                        ((lambda (_L26204_)
                                                           (let ()
                                                             (let ((__tmp50132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50135
                                   (let ((__tmp50136
                                          (let ((__tmp50137
                                                 (let ((__tmp50138
                                                        (let ((__tmp50140
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp50139
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26175_ '()))))
                  (declare (not safe))
                  (cons __tmp50140 __tmp50139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50138 '()))))
                                            (declare (not safe))
                                            (cons _L25812_ __tmp50137))))
                                     (declare (not safe))
                                     (cons _L26204_ __tmp50136)))
                                  (__tmp50133
                                   (let ((__tmp50134
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25795_ '()))))
                                     (declare (not safe))
                                     (cons _K25794_ __tmp50134))))
                              (declare (not safe))
                              (cons __tmp50135 __tmp50133))))
                       (declare (not safe))
                       (cons 'if __tmp50132))))
                 _g2619026201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50141
                                                      (let ((_e26220_
                                                             (gx#stx-e
                                                              _L26175_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26220_))
                        (keyword? _e26220_)
                        (let () (declare (not safe)) (immediate? _e26220_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26220_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2618826216_ __tmp50141))))
                                           (___kont4579645797_
                                            (lambda (_L26095_ _L26097_)
                                              (let* ((_g2611326121_
                                                      (lambda (_g2611426117_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2611426117_)))
                                                     (_g2611226140_
                                                      (lambda (_g2611426125_)
                                                        ((lambda (_L26128_)
                                                           (let ()
                                                             (let ((__tmp50142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50145
                                   (let ((__tmp50146
                                          (let ((__tmp50147
                                                 (let ((__tmp50148
                                                        (let ((__tmp50149
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25812_ '()))))
                  (declare (not safe))
                  (cons _L26097_ __tmp50149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50148 '()))))
                                            (declare (not safe))
                                            (cons _L26128_ __tmp50147))))
                                     (declare (not safe))
                                     (cons __tmp50146 '())))
                                  (__tmp50143
                                   (let ((__tmp50144
                                          (let ()
                                            (declare (not safe))
                                            (_generate124546_
                                             _L26128_
                                             _L26095_
                                             _K25794_
                                             _E25795_))))
                                     (declare (not safe))
                                     (cons __tmp50144 '()))))
                              (declare (not safe))
                              (cons __tmp50145 __tmp50143))))
                       (declare (not safe))
                       (cons 'let __tmp50142))))
                 _g2611426125_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50150
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2611226140_ __tmp50150))))
                                           (___kont4579845799_
                                            (lambda (_L26037_)
                                              (let ((__tmp50151
                                                     (let ((__tmp50153
                                                            (let ((__tmp50154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50155
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25812_ '()))))
                             (declare (not safe))
                             (cons _L26037_ __tmp50155))))
                      (declare (not safe))
                      (cons __tmp50154 '())))
                   (__tmp50152
                    (let () (declare (not safe)) (cons _K25794_ '()))))
               (declare (not safe))
               (cons __tmp50153 __tmp50152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp50151))))
                                           (___kont4580045801_
                                            (lambda () _K25794_)))
                                       (if (gx#stx-pair? ___stx4576745768_)
                                           (let ((_e2584527265_
                                                  (gx#syntax-e
                                                   ___stx4576745768_)))
                                             (let ((_tl2584327272_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2584527265_)))
                                                   (_hd2584427269_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2584527265_))))
                                               (if (gx#stx-datum?
                                                    _hd2584427269_)
                                                   (let ((_e2584627275_
                                                          (gx#stx-e
                                                           _hd2584427269_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2584627275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2584327272_)
                     (let ((_e2584927279_ (gx#syntax-e _tl2584327272_)))
                       (let ((_tl2584727286_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2584927279_)))
                             (_hd2584827283_
                              (let ()
                                (declare (not safe))
                                (##car _e2584927279_))))
                         (___kont4577045771_ _tl2584727286_ _hd2584827283_)))
                     (let () (declare (not safe)) (_g2583925981_)))
                 (if (let () (declare (not safe)) (equal? _e2584627275_ 'and:))
                     (___kont4577245773_ _tl2584327272_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2584627275_ 'or:))
                         (___kont4577445775_ _tl2584327272_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2584627275_ 'not:))
                             (if (gx#stx-pair? _tl2584327272_)
                                 (let ((_e2586727048_
                                        (gx#syntax-e _tl2584327272_)))
                                   (let ((_tl2586527055_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2586727048_)))
                                         (_hd2586627052_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2586727048_))))
                                     (if (gx#stx-null? _tl2586527055_)
                                         (___kont4577645777_ _hd2586627052_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2583925981_)))))
                                 (let () (declare (not safe)) (_g2583925981_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2584627275_ 'cons:))
                                 (if (gx#stx-pair? _tl2584327272_)
                                     (let ((_e2587626920_
                                            (gx#syntax-e _tl2584327272_)))
                                       (let ((_tl2587426927_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2587626920_)))
                                             (_hd2587526924_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2587626920_))))
                                         (if (gx#stx-pair? _tl2587426927_)
                                             (let ((_e2587926930_
                                                    (gx#syntax-e
                                                     _tl2587426927_)))
                                               (let ((_tl2587726937_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2587926930_)))
                                                     (_hd2587826934_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2587926930_))))
                                                 (if (gx#stx-null?
                                                      _tl2587726937_)
                                                     (___kont4577845779_
                                                      _hd2587826934_
                                                      _hd2587526924_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2583925981_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2583925981_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2583925981_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2584627275_ 'null:))
                                     (if (gx#stx-null? _tl2584327272_)
                                         (___kont4578045781_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2583925981_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2584627275_ 'splice:))
                                         (if (gx#stx-pair? _tl2584327272_)
                                             (let ((_e2589226836_
                                                    (gx#syntax-e
                                                     _tl2584327272_)))
                                               (let ((_tl2589026843_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2589226836_)))
                                                     (_hd2589126840_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2589226836_))))
                                                 (if (gx#stx-pair?
                                                      _tl2589026843_)
                                                     (let ((_e2589526846_
                                                            (gx#syntax-e
                                                             _tl2589026843_)))
                                                       (let ((_tl2589326853_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2589526846_)))
                     (_hd2589426850_
                      (let () (declare (not safe)) (##car _e2589526846_))))
                 (if (gx#stx-null? _tl2589326853_)
                     (___kont4578245783_ _hd2589426850_ _hd2589126840_)
                     (let () (declare (not safe)) (_g2583925981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2583925981_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2583925981_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2584627275_ 'box:))
                                             (if (gx#stx-pair? _tl2584327272_)
                                                 (let ((_e2590326760_
                                                        (gx#syntax-e
                                                         _tl2584327272_)))
                                                   (let ((_tl2590126767_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2590326760_)))
                                                         (_hd2590226764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2590326760_))))
                                                     (if (gx#stx-null?
                                                          _tl2590126767_)
                                                         (___kont4578445785_
                                                          _hd2590226764_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2583925981_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2583925981_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2584627275_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2584327272_)
                                                     (let ((_e2591126565_
                                                            (gx#syntax-e
                                                             _tl2584327272_)))
                                                       (let ((_tl2590926572_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2591126565_)))
                     (_hd2591026569_
                      (let () (declare (not safe)) (##car _e2591126565_))))
                 (if (gx#stx-null? _tl2590926572_)
                     (___kont4578645787_ _hd2591026569_)
                     (let () (declare (not safe)) (_g2583925981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2583925981_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2584627275_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2584327272_)
                                                         (let ((_e2591926370_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2584327272_)))
                   (let ((_tl2591726377_
                          (let () (declare (not safe)) (##cdr _e2591926370_)))
                         (_hd2591826374_
                          (let () (declare (not safe)) (##car _e2591926370_))))
                     (if (gx#stx-null? _tl2591726377_)
                         (___kont4578845789_ _hd2591826374_)
                         (let () (declare (not safe)) (_g2583925981_)))))
                 (let () (declare (not safe)) (_g2583925981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2584627275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2584327272_)
                     (let ((_e2592826311_ (gx#syntax-e _tl2584327272_)))
                       (let ((_tl2592626318_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2592826311_)))
                             (_hd2592726315_
                              (let ()
                                (declare (not safe))
                                (##car _e2592826311_))))
                         (if (gx#stx-pair? _tl2592626318_)
                             (let ((_e2593126321_
                                    (gx#syntax-e _tl2592626318_)))
                               (let ((_tl2592926328_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2593126321_)))
                                     (_hd2593026325_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2593126321_))))
                                 (if (gx#stx-null? _tl2592926328_)
                                     (___kont4579045791_
                                      _hd2593026325_
                                      _hd2592726315_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2583925981_)))))
                             (let () (declare (not safe)) (_g2583925981_)))))
                     (let () (declare (not safe)) (_g2583925981_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2584627275_ 'class:))
                     (if (gx#stx-pair? _tl2584327272_)
                         (let ((_e2594026252_ (gx#syntax-e _tl2584327272_)))
                           (let ((_tl2593826259_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2594026252_)))
                                 (_hd2593926256_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2594026252_))))
                             (if (gx#stx-pair? _tl2593826259_)
                                 (let ((_e2594326262_
                                        (gx#syntax-e _tl2593826259_)))
                                   (let ((_tl2594126269_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2594326262_)))
                                         (_hd2594226266_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2594326262_))))
                                     (if (gx#stx-null? _tl2594126269_)
                                         (___kont4579245793_
                                          _hd2594226266_
                                          _hd2593926256_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2583925981_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2583925981_)))))
                         (let () (declare (not safe)) (_g2583925981_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2584627275_ 'datum:))
                         (if (gx#stx-pair? _tl2584327272_)
                             (let ((_e2595126165_
                                    (gx#syntax-e _tl2584327272_)))
                               (let ((_tl2594926172_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2595126165_)))
                                     (_hd2595026169_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2595126165_))))
                                 (if (gx#stx-null? _tl2594926172_)
                                     (___kont4579445795_ _hd2595026169_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2583925981_)))))
                             (let () (declare (not safe)) (_g2583925981_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2584627275_ 'apply:))
                             (if (gx#stx-pair? _tl2584327272_)
                                 (let ((_e2596026075_
                                        (gx#syntax-e _tl2584327272_)))
                                   (let ((_tl2595826082_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2596026075_)))
                                         (_hd2595926079_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2596026075_))))
                                     (if (gx#stx-pair? _tl2595826082_)
                                         (let ((_e2596326085_
                                                (gx#syntax-e _tl2595826082_)))
                                           (let ((_tl2596126092_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2596326085_)))
                                                 (_hd2596226089_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2596326085_))))
                                             (if (gx#stx-null? _tl2596126092_)
                                                 (___kont4579645797_
                                                  _hd2596226089_
                                                  _hd2595926079_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2583925981_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2583925981_)))))
                                 (let () (declare (not safe)) (_g2583925981_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2584627275_ 'var:))
                                 (if (gx#stx-pair? _tl2584327272_)
                                     (let ((_e2597126027_
                                            (gx#syntax-e _tl2584327272_)))
                                       (let ((_tl2596926034_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2597126027_)))
                                             (_hd2597026031_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2597126027_))))
                                         (if (gx#stx-null? _tl2596926034_)
                                             (___kont4579845799_
                                              _hd2597026031_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2583925981_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2583925981_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2584627275_ 'any:))
                                     (if (gx#stx-null? _tl2584327272_)
                                         (___kont4580045801_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2583925981_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2583925981_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2583925981_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2583925981_)))))))
                               _g2579825809_))))
                      (declare (not safe))
                      (_g2579627574_ _tgt25791_))))
                 (_generate-splice24548_
                  (lambda (_tgt25163_ _hd25165_ _rest25166_ _K25167_ _E25168_)
                    (let* ((_g2517025187_
                            (lambda (_g2517125183_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2517125183_)))
                           (_g2516925787_
                            (lambda (_g2517125191_)
                              (if (gx#stx-pair/null? _g2517125191_)
                                  (let ((_g50156_
                                         (gx#syntax-split-splice
                                          _g2517125191_
                                          '0)))
                                    (begin
                                      (let ((_g50157_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g50156_)
                                                   (##vector-length _g50156_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g50157_ 2)))
                                            (error "Context expects 2 values"
                                                   _g50157_)))
                                      (let ((_target2517325194_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50156_ 0)))
                                            (_tl2517525197_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50156_ 1))))
                                        (if (gx#stx-null? _tl2517525197_)
                                            (letrec ((_loop2517625200_
                                                      (lambda (_hd2517425204_
                                                               _var2518025207_)
                                                        (if (gx#stx-pair?
                                                             _hd2517425204_)
                                                            (let ((_e2517725210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2517425204_)))
                      (let ((_lp-hd2517825214_
                             (let ()
                               (declare (not safe))
                               (##car _e2517725210_)))
                            (_lp-tl2517925217_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2517725210_))))
                        (let ((__tmp50248
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2517825214_ _var2518025207_))))
                          (declare (not safe))
                          (_loop2517625200_ _lp-tl2517925217_ __tmp50248))))
                    (let ((_var2518125220_ (reverse _var2518025207_)))
                      ((lambda (_L25224_)
                         (let ()
                           (let* ((_g2524025257_
                                   (lambda (_g2524125253_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2524125253_)))
                                  (_g2523925775_
                                   (lambda (_g2524125261_)
                                     (if (gx#stx-pair/null? _g2524125261_)
                                         (let ((_g50158_
                                                (gx#syntax-split-splice
                                                 _g2524125261_
                                                 '0)))
                                           (begin
                                             (let ((_g50159_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g50158_)
                                                          (##vector-length
                                                           _g50158_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g50159_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g50159_)))
                                             (let ((_target2524325264_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50158_
                                                       0)))
                                                   (_tl2524525267_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50158_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2524525267_)
                                                   (letrec ((_loop2524625270_
                                                             (lambda (_hd2524425274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2525025277_)
                       (if (gx#stx-pair? _hd2524425274_)
                           (let ((_e2524725280_ (gx#syntax-e _hd2524425274_)))
                             (let ((_lp-hd2524825284_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2524725280_)))
                                   (_lp-tl2524925287_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2524725280_))))
                               (let ((__tmp50245
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2524825284_
                                              _var-r2525025277_))))
                                 (declare (not safe))
                                 (_loop2524625270_
                                  _lp-tl2524925287_
                                  __tmp50245))))
                           (let ((_var-r2525125290_
                                  (reverse _var-r2525025277_)))
                             ((lambda (_L25294_)
                                (let ()
                                  (let* ((_g2531125328_
                                          (lambda (_g2531225324_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2531225324_)))
                                         (_g2531025763_
                                          (lambda (_g2531225332_)
                                            (if (gx#stx-pair/null?
                                                 _g2531225332_)
                                                (let ((_g50160_
                                                       (gx#syntax-split-splice
                                                        _g2531225332_
                                                        '0)))
                                                  (begin
                                                    (let ((_g50161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50160_)
                         (##vector-length _g50160_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g50161_ 2)))
                  (error "Context expects 2 values" _g50161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2531425335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50160_
                                                              0)))
                                                          (_tl2531625338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50160_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2531625338_)
                                                          (letrec ((_loop2531725341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2531525345_ _init2532125348_)
                              (if (gx#stx-pair? _hd2531525345_)
                                  (let ((_e2531825351_
                                         (gx#syntax-e _hd2531525345_)))
                                    (let ((_lp-hd2531925355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2531825351_)))
                                          (_lp-tl2532025358_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2531825351_))))
                                      (let ((__tmp50241
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2531925355_
                                                     _init2532125348_))))
                                        (declare (not safe))
                                        (_loop2531725341_
                                         _lp-tl2532025358_
                                         __tmp50241))))
                                  (let ((_init2532225361_
                                         (reverse _init2532125348_)))
                                    ((lambda (_L25365_)
                                       (let ()
                                         (let* ((_g2538225390_
                                                 (lambda (_g2538325386_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2538325386_)))
                                                (_g2538125759_
                                                 (lambda (_g2538325394_)
                                                   ((lambda (_L25397_)
                                                      (let ()
                                                        (let* ((_g2541025418_
                                                                (lambda (_g2541125414_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2541125414_)))
                       (_g2540925755_
                        (lambda (_g2541125422_)
                          ((lambda (_L25425_)
                             (let ()
                               (let* ((_g2543825446_
                                       (lambda (_g2543925442_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2543925442_)))
                                      (_g2543725751_
                                       (lambda (_g2543925450_)
                                         ((lambda (_L25453_)
                                            (let ()
                                              (let* ((_g2546625474_
                                                      (lambda (_g2546725470_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2546725470_)))
                                                     (_g2546525747_
                                                      (lambda (_g2546725478_)
                                                        ((lambda (_L25481_)
                                                           (let ()
                                                             (let* ((_g2549425502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2549525498_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2549525498_)))
                            (_g2549325743_
                             (lambda (_g2549525506_)
                               ((lambda (_L25509_)
                                  (let ()
                                    (let* ((_g2552225530_
                                            (lambda (_g2552325526_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2552325526_)))
                                           (_g2552125739_
                                            (lambda (_g2552325534_)
                                              ((lambda (_L25537_)
                                                 (let ()
                                                   (let* ((_g2555025558_
                                                           (lambda (_g2555125554_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2555125554_)))
                                                          (_g2554925735_
                                                           (lambda (_g2555125562_)
                                                             ((lambda (_L25565_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2557825586_
                                  (lambda (_g2557925582_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2557925582_)))
                                 (_g2557725720_
                                  (lambda (_g2557925590_)
                                    ((lambda (_L25593_)
                                       (let ()
                                         (let* ((_g2560625614_
                                                 (lambda (_g2560725610_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2560725610_)))
                                                (_g2560525708_
                                                 (lambda (_g2560725618_)
                                                   ((lambda (_L25621_)
                                                      (let ()
                                                        (let* ((_g2563425642_
                                                                (lambda (_g2563525638_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2563525638_)))
                       (_g2563325704_
                        (lambda (_g2563525646_)
                          ((lambda (_L25649_)
                             (let ()
                               (let ()
                                 (let ((__tmp50215
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp50162
                                        (let ((__tmp50168
                                               (let ((__tmp50206
                                                      (let ((__tmp50207
                                                             (let ((__tmp50208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50214 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50209
                                   (let ((__tmp50211
                                          (let ((__tmp50212
                                                 (let ((__tmp50213
                                                        (lambda (_g2567125674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2567225677_)
                  (let ()
                    (declare (not safe))
                    (cons _g2567125674_ _g2567225677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp50213
                                                           '()
                                                           _L25224_))))
                                            (declare (not safe))
                                            (cons _L25537_ __tmp50212)))
                                         (__tmp50210
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25565_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50211 __tmp50210))))
                              (declare (not safe))
                              (cons __tmp50214 __tmp50209))))
                       (declare (not safe))
                       (cons __tmp50208 '()))))
                (declare (not safe))
                (cons _L25425_ __tmp50207)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50169
                                                      (let ((__tmp50196
                                                             (let ((__tmp50197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50198
                                   (let ((__tmp50205
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp50199
                                          (let ((__tmp50201
                                                 (let ((__tmp50202
                                                        (let ((__tmp50203
                                                               (let ((__tmp50204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2566925680_ _g2567025683_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2566925680_ _g2567025683_)))))
                         (declare (not safe))
                         (foldr1 __tmp50204 '() _L25294_))))
                  (declare (not safe))
                  (cons _L25537_ __tmp50203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25509_ __tmp50202)))
                                                (__tmp50200
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25649_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50201 __tmp50200))))
                                     (declare (not safe))
                                     (cons __tmp50205 __tmp50199))))
                              (declare (not safe))
                              (cons __tmp50198 '()))))
                       (declare (not safe))
                       (cons _L25481_ __tmp50197)))
                    (__tmp50170
                     (let ((__tmp50171
                            (let ((__tmp50172
                                   (let ((__tmp50173
                                          (let ((__tmp50195
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50174
                                                 (let ((__tmp50192
                                                        (let ((__tmp50193
                                                               (let ((__tmp50194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2566725686_ _g2566825689_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2566725686_ _g2566825689_)))))
                         (declare (not safe))
                         (foldr1 __tmp50194 '() _L25294_))))
                  (declare (not safe))
                  (cons _L25537_ __tmp50193)))
               (__tmp50175
                (let ((__tmp50176
                       (let ((__tmp50191 (gx#datum->syntax '#f 'if))
                             (__tmp50177
                              (let ((__tmp50188
                                     (let ((__tmp50190
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp50189
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25537_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50190 __tmp50189)))
                                    (__tmp50178
                                     (let ((__tmp50180
                                            (let ((__tmp50181
                                                   (let ((__tmp50185
                                                          (let ((__tmp50187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp50186
                         (let () (declare (not safe)) (cons _L25537_ '()))))
                    (declare (not safe))
                    (cons __tmp50187 __tmp50186)))
                 (__tmp50182
                  (let ((__tmp50183
                         (let ((__tmp50184
                                (lambda (_g2566525692_ _g2566625695_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2566525692_ _g2566625695_)))))
                           (declare (not safe))
                           (foldr1 __tmp50184 '() _L25294_))))
                    (declare (not safe))
                    (cons _L25537_ __tmp50183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50185
                                                           __tmp50182))))
                                              (declare (not safe))
                                              (cons _L25481_ __tmp50181)))
                                           (__tmp50179
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25621_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50180 __tmp50179))))
                                (declare (not safe))
                                (cons __tmp50188 __tmp50178))))
                         (declare (not safe))
                         (cons __tmp50191 __tmp50177))))
                  (declare (not safe))
                  (cons __tmp50176 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50192
                                                         __tmp50175))))
                                            (declare (not safe))
                                            (cons __tmp50195 __tmp50174))))
                                     (declare (not safe))
                                     (cons __tmp50173 '()))))
                              (declare (not safe))
                              (cons _L25453_ __tmp50172))))
                       (declare (not safe))
                       (cons __tmp50171 '()))))
                (declare (not safe))
                (cons __tmp50196 __tmp50170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50206 __tmp50169)))
                                              (__tmp50163
                                               (let ((__tmp50164
                                                      (let ((__tmp50165
                                                             (let ((__tmp50166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50167
                                   (lambda (_g2566325698_ _g2566425701_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2566325698_ _g2566425701_)))))
                              (declare (not safe))
                              (foldr1 __tmp50167 '() _L25365_))))
                       (declare (not safe))
                       (cons _L25397_ __tmp50166))))
                (declare (not safe))
                (cons _L25453_ __tmp50165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50164 '()))))
                                          (declare (not safe))
                                          (cons __tmp50168 __tmp50163))))
                                   (declare (not safe))
                                   (cons __tmp50215 __tmp50162)))))
                           _g2563525646_)))
                       (__tmp50216
                        (let ()
                          (declare (not safe))
                          (_generate124546_
                           _L25509_
                           _hd25165_
                           _L25593_
                           _L25621_))))
                  (declare (not safe))
                  (_g2563325704_ __tmp50216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2560725618_)))
                                                (__tmp50217
                                                 (let ((__tmp50218
                                                        (let ((__tmp50219
                                                               (let ((__tmp50220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2571125714_ _g2571225717_)
                                (let ((__tmp50221
                                       (let ((__tmp50223
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp50222
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2571125714_ '()))))
                                         (declare (not safe))
                                         (cons __tmp50223 __tmp50222))))
                                  (declare (not safe))
                                  (cons __tmp50221 _g2571225717_)))))
                         (declare (not safe))
                         (foldr1 __tmp50220 '() _L25294_))))
                  (declare (not safe))
                  (cons _L25537_ __tmp50219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25425_
                                                         __tmp50218))))
                                           (declare (not safe))
                                           (_g2560525708_ __tmp50217))))
                                     _g2557925590_)))
                                 (__tmp50224
                                  (let ((__tmp50225
                                         (let ((__tmp50232
                                                (let ((__tmp50234
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp50233
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25537_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp50234
                                                        __tmp50233)))
                                               (__tmp50226
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25294_
                                                   _L25224_)
                                                  (let ((__tmp50227
                                                         (lambda (_g2572325727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2572425730_
                          _g2572525732_)
                   (let ((__tmp50228
                          (let ((__tmp50231 (gx#datum->syntax '#f 'cons))
                                (__tmp50229
                                 (let ((__tmp50230
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2572325727_ '()))))
                                   (declare (not safe))
                                   (cons _g2572425730_ __tmp50230))))
                            (declare (not safe))
                            (cons __tmp50231 __tmp50229))))
                     (declare (not safe))
                     (cons __tmp50228 _g2572525732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp50227
                                                            '()
                                                            _L25294_
                                                            _L25224_)))))
                                           (declare (not safe))
                                           (cons __tmp50232 __tmp50226))))
                                    (declare (not safe))
                                    (cons _L25453_ __tmp50225))))
                            (declare (not safe))
                            (_g2557725720_ __tmp50224))))
                      _g2555125562_)))
                  (__tmp50235
                   (let ()
                     (declare (not safe))
                     (_generate124546_
                      _L25537_
                      _rest25166_
                      _K25167_
                      _E25168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2554925735_
                                                      __tmp50235))))
                                               _g2552325534_)))
                                           (__tmp50236 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2552125739_ __tmp50236))))
                                _g2549525506_)))
                            (__tmp50237 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2549325743_ __tmp50237))))
                 _g2546725478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50238
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2546525747_ __tmp50238))))
                                          _g2543925450_)))
                                      (__tmp50239 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2543725751_ __tmp50239))))
                           _g2541125422_)))
                       (__tmp50240 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2540925755_ __tmp50240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2538325394_))))
                                           (declare (not safe))
                                           (_g2538125759_ _tgt25163_))))
                                     _init2532225361_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2531725341_ _target2531425335_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2531125328_ _g2531225332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2531125328_
                                                   _g2531225332_)))))
                                         (__tmp50242
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp50243
                                                   (lambda (_g2576625769_
                                                            _g2576725772_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2576625769_
                                                             _g2576725772_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp50243
                                                      '()
                                                      _L25224_)))
                                           (let ((__tmp50244
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp50244 '())))))
                                    (declare (not safe))
                                    (_g2531025763_ __tmp50242))))
                              _var-r2525125290_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2524625270_
                                                        _target2524325264_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2524025257_
                                                      _g2524125261_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2524025257_ _g2524125261_)))))
                                  (__tmp50246
                                   (gx#gentemps
                                    (let ((__tmp50247
                                           (lambda (_g2577825781_
                                                    _g2577925784_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2577825781_
                                                     _g2577925784_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp50247 '() _L25224_)))))
                             (declare (not safe))
                             (_g2523925775_ __tmp50246))))
                       _var2518125220_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2517625200_
                                                 _target2517325194_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2517025187_
                                               _g2517125191_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2517025187_ _g2517125191_)))))
                           (__tmp50249
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25165_))))
                      (declare (not safe))
                      (_g2516925787_ __tmp50249))))
                 (_generate-simple-vector24549_
                  (lambda (_tgt25005_
                           _body25007_
                           _start25008_
                           _K25009_
                           _E25010_)
                    (let _recur25012_ ((_rest25015_ _body25007_)
                                       (_off25017_ _start25008_))
                      (let* ((___stx4612546126_ _rest25015_)
                             (_g2502025032_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4612546126_))))
                        (let ((___kont4612846129_
                               (lambda (_L25060_ _L25062_)
                                 (let* ((_g2507725096_
                                         (lambda (_g2507825092_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2507825092_)))
                                        (_g2507625155_
                                         (lambda (_g2507825100_)
                                           (if (gx#stx-pair? _g2507825100_)
                                               (let ((_e2508425103_
                                                      (gx#syntax-e
                                                       _g2507825100_)))
                                                 (let ((_hd2508325107_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2508425103_)))
                                                       (_tl2508225110_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2508425103_))))
                                                   (if (gx#stx-pair?
                                                        _tl2508225110_)
                                                       (let ((_e2508725113_
                                                              (gx#syntax-e
                                                               _tl2508225110_)))
                                                         (let ((_hd2508625117_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2508725113_)))
                       (_tl2508525120_
                        (let () (declare (not safe)) (##cdr _e2508725113_))))
                   (if (gx#stx-pair? _tl2508525120_)
                       (let ((_e2509025123_ (gx#syntax-e _tl2508525120_)))
                         (let ((_hd2508925127_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2509025123_)))
                               (_tl2508825130_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2509025123_))))
                           (if (gx#stx-null? _tl2508825130_)
                               ((lambda (_L25133_ _L25135_ _L25136_)
                                  (let ()
                                    (let ((__tmp50250
                                           (let ((__tmp50255
                                                  (let ((__tmp50256
                                                         (let ((__tmp50257
                                                                (let ((__tmp50258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50261
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp50259
                                      (let ((__tmp50260
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25133_ '()))))
                                        (declare (not safe))
                                        (cons _L25135_ __tmp50260))))
                                 (declare (not safe))
                                 (cons __tmp50261 __tmp50259))))
                          (declare (not safe))
                          (cons __tmp50258 '()))))
                   (declare (not safe))
                   (cons _L25136_ __tmp50257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50256 '())))
                                                 (__tmp50251
                                                  (let ((__tmp50252
                                                         (let ((__tmp50253
                                                                (let ((__tmp50254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25017_ '1))))
                          (declare (not safe))
                          (_recur25012_ _L25060_ __tmp50254))))
                   (declare (not safe))
                   (_generate124546_ _L25136_ _L25062_ __tmp50253 _E25010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50252 '()))))
                                             (declare (not safe))
                                             (cons __tmp50255 __tmp50251))))
                                      (declare (not safe))
                                      (cons 'let __tmp50250))))
                                _hd2508925127_
                                _hd2508625117_
                                _hd2508325107_)
                               (let ()
                                 (declare (not safe))
                                 (_g2507725096_ _g2507825100_)))))
                       (let ()
                         (declare (not safe))
                         (_g2507725096_ _g2507825100_)))))
               (let () (declare (not safe)) (_g2507725096_ _g2507825100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2507725096_
                                                  _g2507825100_)))))
                                        (__tmp50262
                                         (list (gx#genident 'e)
                                               _tgt25005_
                                               _off25017_)))
                                   (declare (not safe))
                                   (_g2507625155_ __tmp50262))))
                              (___kont4613046131_ (lambda () _K25009_)))
                          (if (gx#stx-pair? ___stx4612546126_)
                              (let ((_e2502625050_
                                     (gx#syntax-e ___stx4612546126_)))
                                (let ((_tl2502425057_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2502625050_)))
                                      (_hd2502525054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2502625050_))))
                                  (___kont4612846129_
                                   _tl2502425057_
                                   _hd2502525054_)))
                              (___kont4613046131_)))))))
                 (_generate-list-vector24550_
                  (lambda (_tgt24897_
                           _body24899_
                           _->list24900_
                           _K24901_
                           _E24902_)
                    (let* ((_g2490424912_
                            (lambda (_g2490524908_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2490524908_)))
                           (_g2490325001_
                            (lambda (_g2490524916_)
                              ((lambda (_L24919_)
                                 (let ()
                                   (let* ((_g2493124939_
                                           (lambda (_g2493224935_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2493224935_)))
                                          (_g2493024997_
                                           (lambda (_g2493224943_)
                                             ((lambda (_L24946_)
                                                (let ()
                                                  (let* ((_g2495924967_
                                                          (lambda (_g2496024963_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2496024963_)))
                                                         (_g2495824989_
                                                          (lambda (_g2496024971_)
                                                            ((lambda (_L24974_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp50263
                                  (let ((__tmp50266
                                         (let ((__tmp50267
                                                (let ((__tmp50268
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L24974_ '()))))
                                                  (declare (not safe))
                                                  (cons _L24919_ __tmp50268))))
                                           (declare (not safe))
                                           (cons __tmp50267 '())))
                                        (__tmp50264
                                         (let ((__tmp50265
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124546_
                                                   _L24919_
                                                   _body24899_
                                                   _K24901_
                                                   _E24902_))))
                                           (declare (not safe))
                                           (cons __tmp50265 '()))))
                                    (declare (not safe))
                                    (cons __tmp50266 __tmp50264))))
                             (declare (not safe))
                             (cons 'let __tmp50263)))))
                     _g2496024971_)))
                 (__tmp50269
                  (let ((_$e24993_ _->list24900_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e24993_))
                        (let ((__tmp50278 (gx#datum->syntax '#f 'values->list))
                              (__tmp50277
                               (let ()
                                 (declare (not safe))
                                 (cons _L24946_ '()))))
                          (declare (not safe))
                          (cons __tmp50278 __tmp50277))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e24993_))
                            (let ((__tmp50276
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50275
                                   (let ()
                                     (declare (not safe))
                                     (cons _L24946_ '()))))
                              (declare (not safe))
                              (cons __tmp50276 __tmp50275))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e24993_))
                                (let ((__tmp50274
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50270
                                       (let ((__tmp50271
                                              (let ((__tmp50273
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50272
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L24946_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50273 __tmp50272))))
                                         (declare (not safe))
                                         (cons __tmp50271 '()))))
                                  (declare (not safe))
                                  (cons __tmp50274 __tmp50270))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24539_
                                 _->list24900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2495824989_
                                                     __tmp50269))))
                                              _g2493224943_))))
                                     (declare (not safe))
                                     (_g2493024997_ _tgt24897_))))
                               _g2490524916_)))
                           (__tmp50279 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2490325001_ __tmp50279))))
                 (_generate-struct24551_
                  (lambda (_info24768_
                           _tgt24770_
                           _body24771_
                           _K24772_
                           _E24773_)
                    (let* ((___stx4614146142_ _body24771_)
                           (_g2477624799_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4614146142_))))
                      (let ((___kont4614446145_
                             (lambda (_L24876_)
                               (let* ((_fields24890_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24553_
                                          _info24768_)))
                                      (__tmp50280
                                       (let ((__tmp50284
                                              (let ((__tmp50286
                                                     (let ((__obj47344
                                                            _info24768_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47344
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47344
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47344
                                                            'predicate))))
                                                    (__tmp50285
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24770_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50286 __tmp50285)))
                                             (__tmp50281
                                              (let ((__tmp50283
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24552_
                                                        _info24768_
                                                        _tgt24770_
                                                        _L24876_
                                                        _K24772_
                                                        _E24773_)))
                                                    (__tmp50282
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24773_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50283 __tmp50282))))
                                         (declare (not safe))
                                         (cons __tmp50284 __tmp50281))))
                                 (declare (not safe))
                                 (cons 'if __tmp50280))))
                            (___kont4614646147_
                             (lambda (_L24830_)
                               (let ((__tmp50287
                                      (let ((__tmp50291
                                             (let ((__tmp50293
                                                    (let ((__obj47345
                                                           _info24768_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47345
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47345
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47345
                                                           'predicate))))
                                                   (__tmp50292
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24770_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50293 __tmp50292)))
                                            (__tmp50288
                                             (let ((__tmp50290
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24550_
                                                       _tgt24770_
                                                       _L24830_
                                                       'struct->list
                                                       _K24772_
                                                       _E24773_)))
                                                   (__tmp50289
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24773_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50290 __tmp50289))))
                                        (declare (not safe))
                                        (cons __tmp50291 __tmp50288))))
                                 (declare (not safe))
                                 (cons 'if __tmp50287)))))
                        (if (gx#stx-pair? ___stx4614146142_)
                            (let ((_e2478124852_
                                   (gx#syntax-e ___stx4614146142_)))
                              (let ((_tl2477924859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2478124852_)))
                                    (_hd2478024856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2478124852_))))
                                (if (gx#stx-datum? _hd2478024856_)
                                    (let ((_e2478224862_
                                           (gx#stx-e _hd2478024856_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2478224862_ 'simple:))
                                          (if (gx#stx-pair? _tl2477924859_)
                                              (let ((_e2478524866_
                                                     (gx#syntax-e
                                                      _tl2477924859_)))
                                                (let ((_tl2478324873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2478524866_)))
                                                      (_hd2478424870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2478524866_))))
                                                  (if (gx#stx-null?
                                                       _tl2478324873_)
                                                      (___kont4614446145_
                                                       _hd2478424870_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2477624799_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2477624799_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2478224862_ 'list:))
                                              (if (gx#stx-pair? _tl2477924859_)
                                                  (let ((_e2479324820_
                                                         (gx#syntax-e
                                                          _tl2477924859_)))
                                                    (let ((_tl2479124827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2479324820_)))
                                                          (_hd2479224824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2479324820_))))
                                                      (if (gx#stx-null?
                                                           _tl2479124827_)
                                                          (___kont4614646147_
                                                           _hd2479224824_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2477624799_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2477624799_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2477624799_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2477624799_)))))
                            (let () (declare (not safe)) (_g2477624799_)))))))
                 (_generate-simple-struct-body24552_
                  (lambda (_info24688_
                           _tgt24690_
                           _body24691_
                           _K24692_
                           _E24693_)
                    (let _recur24695_ ((_rest24698_ _body24691_)
                                       (_fields24700_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24553_
                                           _info24688_))))
                      (let* ((___stx4619146192_ _rest24698_)
                             (_g2470324715_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4619146192_))))
                        (let ((___kont4619446195_
                               (lambda (_L24743_ _L24745_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24700_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24539_
                                      _info24688_
                                      (let ((__obj47346 _info24688_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47346
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47346
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47346
                                             'name))))
                                     (let ((_$tgt24760_ (gx#genident 'e))
                                           (_getf24762_ (car _fields24700_)))
                                       (let ((__tmp50294
                                              (let ((__tmp50299
                                                     (let ((__tmp50300
                                                            (let ((__tmp50301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50302
                                  (let ((__tmp50303
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24690_ '()))))
                                    (declare (not safe))
                                    (cons _getf24762_ __tmp50303))))
                             (declare (not safe))
                             (cons __tmp50302 '()))))
                      (declare (not safe))
                      (cons _$tgt24760_ __tmp50301))))
               (declare (not safe))
               (cons __tmp50300 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50295
                                                     (let ((__tmp50296
                                                            (let ((__tmp50297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50298 (cdr _fields24700_)))
                             (declare (not safe))
                             (_recur24695_ _L24743_ __tmp50298))))
                      (declare (not safe))
                      (_generate124546_
                       _$tgt24760_
                       _L24745_
                       __tmp50297
                       _E24693_))))
               (declare (not safe))
               (cons __tmp50296 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50299 __tmp50295))))
                                         (declare (not safe))
                                         (cons 'let __tmp50294))))))
                              (___kont4619646197_ (lambda () _K24692_)))
                          (if (gx#stx-pair? ___stx4619146192_)
                              (let ((_e2470924733_
                                     (gx#syntax-e ___stx4619146192_)))
                                (let ((_tl2470724740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2470924733_)))
                                      (_hd2470824737_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2470924733_))))
                                  (___kont4619446195_
                                   _tl2470724740_
                                   _hd2470824737_)))
                              (___kont4619646197_)))))))
                 (_struct-field-accessors24553_
                  (lambda (_info24669_)
                    (let _recur24672_ ((_next24675_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24669_ '()))))
                      (if (let () (declare (not safe)) (null? _next24675_))
                          '()
                          (let ((_ti24678_ (car _next24675_)))
                            (append (let ((__tmp50304
                                           (map gx#syntax-local-value
                                                (let ((__obj47347 _ti24678_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47347
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47347
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47347
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24672_ __tmp50304))
                                    (map (lambda (_slot24681_)
                                           (let ((_$e24684_
                                                  (let ((__tmp50305
                                                         (let ((__obj47348
                                                                _ti24678_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47348
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47348
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47348
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24681_
                                                             __tmp50305))))
                                             (if _$e24684_
                                                 _$e24684_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24539_
                                                  _info24669_
                                                  _slot24681_))))
                                         (let ((__obj47349 _ti24678_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47349
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47349
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47349
                                                'slots))))))))))
                 (_generate-class24554_
                  (lambda (_info24662_
                           _tgt24664_
                           _body24665_
                           _K24666_
                           _E24667_)
                    (let ((__tmp50306
                           (let ((__tmp50310
                                  (let ((__tmp50312
                                         (let ((__obj47350 _info24662_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47350
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47350
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47350
                                                'predicate))))
                                        (__tmp50311
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24664_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50312 __tmp50311)))
                                 (__tmp50307
                                  (let ((__tmp50309
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24555_
                                            _info24662_
                                            _tgt24664_
                                            _body24665_
                                            _K24666_
                                            _E24667_)))
                                        (__tmp50308
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24667_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50309 __tmp50308))))
                             (declare (not safe))
                             (cons __tmp50310 __tmp50307))))
                      (declare (not safe))
                      (cons 'if __tmp50306))))
                 (_generate-class-body24555_
                  (lambda (_info24557_
                           _tgt24559_
                           _body24560_
                           _K24561_
                           _E24562_)
                    (let _recur24564_ ((_rest24567_ _body24560_))
                      (let* ((___stx4620746208_ _rest24567_)
                             (_g2457124587_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4620746208_))))
                        (let ((___kont4621046211_
                               (lambda (_L24625_ _L24627_ _L24628_)
                                 (let ((_$e24648_
                                        (let ((__tmp50314
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24628_))))
                                              (__tmp50313
                                               (let ((__obj47351 _info24557_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47351
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47351
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47351
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50314 __tmp50313))))
                                   (if _$e24648_
                                       ((lambda (_getf24652_)
                                          (let* ((_$tgt24655_ (gx#genident 'e))
                                                 (__tmp50315
                                                  (let ((__tmp50319
                                                         (let ((__tmp50320
                                                                (let ((__tmp50321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50322
                                      (let ((__tmp50323
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24559_ '()))))
                                        (declare (not safe))
                                        (cons _getf24652_ __tmp50323))))
                                 (declare (not safe))
                                 (cons __tmp50322 '()))))
                          (declare (not safe))
                          (cons _$tgt24655_ __tmp50321))))
                   (declare (not safe))
                   (cons __tmp50320 '())))
                (__tmp50316
                 (let ((__tmp50317
                        (let ((__tmp50318
                               (let ()
                                 (declare (not safe))
                                 (_recur24564_ _L24625_))))
                          (declare (not safe))
                          (_generate124546_
                           _$tgt24655_
                           _L24627_
                           __tmp50318
                           _E24562_))))
                   (declare (not safe))
                   (cons __tmp50317 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50319
                                                          __tmp50316))))
                                            (declare (not safe))
                                            (cons 'let __tmp50315)))
                                        _$e24648_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24539_
                                        _info24557_
                                        _L24628_)))))
                              (___kont4621246213_ (lambda () _K24561_)))
                          (if (gx#stx-pair? ___stx4620746208_)
                              (let ((_e2457824605_
                                     (gx#syntax-e ___stx4620746208_)))
                                (let ((_tl2457624612_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2457824605_)))
                                      (_hd2457724609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2457824605_))))
                                  (if (gx#stx-pair? _tl2457624612_)
                                      (let ((_e2458124615_
                                             (gx#syntax-e _tl2457624612_)))
                                        (let ((_tl2457924622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2458124615_)))
                                              (_hd2458024619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2458124615_))))
                                          (___kont4621046211_
                                           _tl2457924622_
                                           _hd2458024619_
                                           _hd2457724609_)))
                                      (___kont4621246213_))))
                              (___kont4621246213_))))))))
          (let ()
            (declare (not safe))
            (_generate124546_ _tgt24541_ _ptree24542_ _K24543_ _E24544_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23435_ _tgt-lst23437_ _clauses23438_)
        (letrec ((_parse-body23440_
                  (lambda (_hd-len24361_)
                    (let _lp24364_ ((_rest24367_ _clauses23438_)
                                    (_r24369_ '()))
                      (let* ((___stx4625746258_ _rest24367_)
                             (_g2437224384_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4625746258_))))
                        (let ((___kont4626046261_
                               (lambda (_L24412_ _L24414_)
                                 (let* ((___stx4622946230_ _L24414_)
                                        (_g2443124447_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4622946230_))))
                                   (let ((___kont4623246233_
                                          (lambda (_L24516_)
                                            (if (gx#stx-null? _L24412_)
                                                (let ((__tmp50324
                                                       (let ((__tmp50329
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50325
                                                              (let ((__tmp50326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50327
                                    (gx#stx-wrap-source
                                     (let ((__tmp50328
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50328 _L24516_))
                                     (let ((_$e24527_
                                            (gx#stx-source _L24414_)))
                                       (if _$e24527_
                                           _$e24527_
                                           (gx#stx-source _stx23435_))))))
                               (declare (not safe))
                               (cons __tmp50327 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50326))))
                 (declare (not safe))
                 (cons __tmp50329 __tmp50325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50324 _r24369_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23435_
                                                 _L24414_))))
                                         (___kont4623446235_
                                          (lambda (_L24475_ _L24477_)
                                            (let ((__tmp50330
                                                   (let ((__tmp50331
                                                          (let ((__tmp50337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50332
                         (let ((__tmp50336
                                (gx#stx-map
                                 (lambda (_g2448924491_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2448924491_
                                      _stx23435_)))
                                 _L24477_))
                               (__tmp50333
                                (let ((__tmp50334
                                       (gx#stx-wrap-source
                                        (let ((__tmp50335
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50335 _L24475_))
                                        (let ((_$e24495_
                                               (gx#stx-source _L24414_)))
                                          (if _$e24495_
                                              _$e24495_
                                              (gx#stx-source _stx23435_))))))
                                  (declare (not safe))
                                  (cons __tmp50334 '()))))
                           (declare (not safe))
                           (cons __tmp50336 __tmp50333))))
                    (declare (not safe))
                    (cons __tmp50337 __tmp50332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50331
                                                           _r24369_))))
                                              (declare (not safe))
                                              (_lp24364_
                                               _L24412_
                                               __tmp50330))))
                                         (___kont4623646237_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23435_
                                             _L24414_))))
                                     (let* ((___match4625446255_
                                             (lambda (_e2444124465_
                                                      _hd2444024469_
                                                      _tl2443924472_)
                                               (let ((_L24475_ _tl2443924472_)
                                                     (_L24477_ _hd2444024469_))
                                                 (if (and (gx#stx-list?
                                                           _L24477_)
                                                          (fx= (gx#stx-length
                                                                _L24477_)
                                                               _hd-len24361_)
                                                          (gx#stx-list?
                                                           _L24475_)
                                                          (let ((__tmp50338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24475_)))
                    (declare (not safe))
                    (not __tmp50338)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4623446235_
                                                      _L24475_
                                                      _L24477_)
                                                     (___kont4623646237_)))))
                                            (___match4624846249_
                                             (lambda (_e2443624506_
                                                      _hd2443524510_
                                                      _tl2443424513_)
                                               (let ((_L24516_ _tl2443424513_))
                                                 (if (and (gx#stx-list?
                                                           _L24516_)
                                                          (let ((__tmp50339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24516_)))
                    (declare (not safe))
                    (not __tmp50339)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4623246233_
                                                      _L24516_)
                                                     (___match4625446255_
                                                      _e2443624506_
                                                      _hd2443524510_
                                                      _tl2443424513_))))))
                                       (if (gx#stx-pair? ___stx4622946230_)
                                           (let ((_e2443624506_
                                                  (gx#syntax-e
                                                   ___stx4622946230_)))
                                             (let ((_tl2443424513_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2443624506_)))
                                                   (_hd2443524510_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2443624506_))))
                                               (if (gx#identifier?
                                                    _hd2443524510_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50340_|
                                                        _hd2443524510_)
                                                       (___match4624846249_
                                                        _e2443624506_
                                                        _hd2443524510_
                                                        _tl2443424513_)
                                                       (___match4625446255_
                                                        _e2443624506_
                                                        _hd2443524510_
                                                        _tl2443424513_))
                                                   (___match4625446255_
                                                    _e2443624506_
                                                    _hd2443524510_
                                                    _tl2443424513_))))
                                           (___kont4623646237_)))))))
                              (___kont4626246263_ (lambda () _r24369_)))
                          (if (gx#stx-pair? ___stx4625746258_)
                              (let ((_e2437824402_
                                     (gx#syntax-e ___stx4625746258_)))
                                (let ((_tl2437624409_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2437824402_)))
                                      (_hd2437724406_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2437824402_))))
                                  (___kont4626046261_
                                   _tl2437624409_
                                   _hd2437724406_)))
                              (___kont4626246263_)))))))
                 (_generate-body23442_
                  (lambda (_body24146_)
                    (let* ((_g2414924157_
                            (lambda (_g2415024153_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2415024153_)))
                           (_g2414824357_
                            (lambda (_g2415024161_)
                              ((lambda (_L24164_)
                                 (let ()
                                   (let* ((_g2417624193_
                                           (lambda (_g2417724189_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2417724189_)))
                                          (_g2417524353_
                                           (lambda (_g2417724197_)
                                             (if (gx#stx-pair/null?
                                                  _g2417724197_)
                                                 (let ((_g50341_
                                                        (gx#syntax-split-splice
                                                         _g2417724197_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50341_)
                          (##vector-length _g50341_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50342_ 2)))
                   (error "Context expects 2 values" _g50342_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2417924200_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50341_
                                                               0)))
                                                           (_tl2418124203_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50341_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2418124203_)
                                                           (letrec ((_loop2418224206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2418024210_ _target2418624213_)
                               (if (gx#stx-pair? _hd2418024210_)
                                   (let ((_e2418324216_
                                          (gx#syntax-e _hd2418024210_)))
                                     (let ((_lp-hd2418424220_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2418324216_)))
                                           (_lp-tl2418524223_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2418324216_))))
                                       (let ((__tmp50365
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2418424220_
                                                      _target2418624213_))))
                                         (declare (not safe))
                                         (_loop2418224206_
                                          _lp-tl2418524223_
                                          __tmp50365))))
                                   (let ((_target2418724226_
                                          (reverse _target2418624213_)))
                                     ((lambda (_L24230_)
                                        (let ()
                                          (let* ((_g2424724255_
                                                  (lambda (_g2424824251_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2424824251_)))
                                                 (_g2424624341_
                                                  (lambda (_g2424824259_)
                                                    ((lambda (_L24262_)
                                                       (let ()
                                                         (let* ((_g2427524283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2427624279_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2427624279_)))
                        (_g2427424337_
                         (lambda (_g2427624287_)
                           ((lambda (_L24290_)
                              (let ()
                                (let* ((_g2430324311_
                                        (lambda (_g2430424307_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2430424307_)))
                                       (_g2430224333_
                                        (lambda (_g2430424315_)
                                          ((lambda (_L24318_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50346
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50343
                                                        (let ((__tmp50345
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50344
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24318_ '()))))
                  (declare (not safe))
                  (cons __tmp50345 __tmp50344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50346
                                                         __tmp50343)))))
                                           _g2430424315_)))
                                       (__tmp50347
                                        (gx#stx-wrap-source
                                         (let ((__tmp50353
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50348
                                                (let ((__tmp50350
                                                       (let ((__tmp50351
                                                              (let ((__tmp50352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24262_ '()))))
                        (declare (not safe))
                        (cons _L24164_ __tmp50352))))
                 (declare (not safe))
                 (cons __tmp50351 '())))
              (__tmp50349 (let () (declare (not safe)) (cons _L24290_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50350
                                                        __tmp50349))))
                                           (declare (not safe))
                                           (cons __tmp50353 __tmp50348))
                                         (gx#stx-source _stx23435_))))
                                  (declare (not safe))
                                  (_g2430224333_ __tmp50347))))
                            _g2427624287_)))
                        (__tmp50354
                         (let ((__tmp50355
                                (let ()
                                  (declare (not safe))
                                  (cons _L24164_ '()))))
                           (declare (not safe))
                           (_generate-clauses23443_ _body24146_ __tmp50355))))
                   (declare (not safe))
                   (_g2427424337_ __tmp50354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2424824259_)))
                                                 (__tmp50356
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50364
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50357
                                                          (let ((__tmp50358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50359
                                (let ((__tmp50363
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50360
                                       (let ((__tmp50361
                                              (let ((__tmp50362
                                                     (lambda (_g2434424347_
                                                              _g2434524350_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2434424347_
                                                               _g2434524350_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50362
                                                        '()
                                                        _L24230_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50361))))
                                  (declare (not safe))
                                  (cons __tmp50363 __tmp50360))))
                           (declare (not safe))
                           (cons __tmp50359 '()))))
                    (declare (not safe))
                    (cons '() __tmp50358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50364
                                                           __tmp50357))
                                                   (gx#stx-source
                                                    _stx23435_))))
                                            (declare (not safe))
                                            (_g2424624341_ __tmp50356))))
                                      _target2418724226_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2418224206_ _target2417924200_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2417624193_ _g2417724197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2417624193_
                                                    _g2417724197_))))))
                                     (declare (not safe))
                                     (_g2417524353_ _tgt-lst23437_))))
                               _g2415024161_)))
                           (__tmp50366 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2414824357_ __tmp50366))))
                 (_generate-clauses23443_
                  (lambda (_rest23798_ _E23800_)
                    (let* ((___stx4627346274_ _rest23798_)
                           (_g2380423820_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4627346274_))))
                      (let ((___kont4627646277_
                             (lambda (_L24054_)
                               (let* ((_g2406524083_
                                       (lambda (_g2406624079_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2406624079_)))
                                      (_g2406424138_
                                       (lambda (_g2406624087_)
                                         (if (gx#stx-pair? _g2406624087_)
                                             (let ((_e2407124090_
                                                    (gx#syntax-e
                                                     _g2406624087_)))
                                               (let ((_hd2407024094_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2407124090_)))
                                                     (_tl2406924097_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2407124090_))))
                                                 (if (gx#stx-pair?
                                                      _tl2406924097_)
                                                     (let ((_e2407424100_
                                                            (gx#syntax-e
                                                             _tl2406924097_)))
                                                       (let ((_hd2407324104_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2407424100_)))
                     (_tl2407224107_
                      (let () (declare (not safe)) (##cdr _e2407424100_))))
                 (if (gx#stx-pair? _tl2407224107_)
                     (let ((_e2407724110_ (gx#syntax-e _tl2407224107_)))
                       (let ((_hd2407624114_
                              (let ()
                                (declare (not safe))
                                (##car _e2407724110_)))
                             (_tl2407524117_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2407724110_))))
                         (if (gx#stx-null? _tl2407524117_)
                             ((lambda (_L24120_ _L24122_)
                                (let ((__tmp50367
                                       (let ((__tmp50368
                                              (let ((__tmp50369
                                                     (if (gx#stx-e _L24122_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123444_
                                                            _L24122_
                                                            _L24120_
                                                            _E23800_))
                                                         _L24120_)))
                                                (declare (not safe))
                                                (cons __tmp50369 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50368))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50367)))
                              _hd2407624114_
                              _hd2407324104_)
                             (let ()
                               (declare (not safe))
                               (_g2406524083_ _g2406624087_)))))
                     (let ()
                       (declare (not safe))
                       (_g2406524083_ _g2406624087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2406524083_
                                                        _g2406624087_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2406524083_
                                                _g2406624087_))))))
                                 (declare (not safe))
                                 (_g2406424138_ _L24054_))))
                            (___kont4627846279_
                             (lambda (_L23848_ _L23850_)
                               (let* ((_g2386323882_
                                       (lambda (_g2386423878_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2386423878_)))
                                      (_g2386224033_
                                       (lambda (_g2386423886_)
                                         (if (gx#stx-pair? _g2386423886_)
                                             (let ((_e2387023889_
                                                    (gx#syntax-e
                                                     _g2386423886_)))
                                               (let ((_hd2386923893_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2387023889_)))
                                                     (_tl2386823896_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2387023889_))))
                                                 (if (gx#stx-pair?
                                                      _tl2386823896_)
                                                     (let ((_e2387323899_
                                                            (gx#syntax-e
                                                             _tl2386823896_)))
                                                       (let ((_hd2387223903_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2387323899_)))
                     (_tl2387123906_
                      (let () (declare (not safe)) (##cdr _e2387323899_))))
                 (if (gx#stx-pair? _tl2387123906_)
                     (let ((_e2387623909_ (gx#syntax-e _tl2387123906_)))
                       (let ((_hd2387523913_
                              (let ()
                                (declare (not safe))
                                (##car _e2387623909_)))
                             (_tl2387423916_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2387623909_))))
                         (if (gx#stx-null? _tl2387423916_)
                             ((lambda (_L23919_ _L23921_ _L23922_)
                                (if (gx#stx-e _L23921_)
                                    (let* ((_g2393923954_
                                            (lambda (_g2394023950_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2394023950_)))
                                           (_g2393823999_
                                            (lambda (_g2394023958_)
                                              (if (gx#stx-pair? _g2394023958_)
                                                  (let ((_e2394523961_
                                                         (gx#syntax-e
                                                          _g2394023958_)))
                                                    (let ((_hd2394423965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2394523961_)))
                                                          (_tl2394323968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2394523961_))))
                                                      (if (gx#stx-pair?
                                                           _tl2394323968_)
                                                          (let ((_e2394823971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2394323968_)))
                    (let ((_hd2394723975_
                           (let () (declare (not safe)) (##car _e2394823971_)))
                          (_tl2394623978_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2394823971_))))
                      (if (gx#stx-null? _tl2394623978_)
                          ((lambda (_L23981_ _L23983_)
                             (let ()
                               (let ((__tmp50396 (gx#datum->syntax '#f 'let))
                                     (__tmp50387
                                      (let ((__tmp50389
                                             (let ((__tmp50390
                                                    (let ((__tmp50391
                                                           (let ((__tmp50392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50395 (gx#datum->syntax '#f 'lambda))
                                (__tmp50393
                                 (let ((__tmp50394
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23983_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50394))))
                            (declare (not safe))
                            (cons __tmp50395 __tmp50393))))
                     (declare (not safe))
                     (cons __tmp50392 '()))))
              (declare (not safe))
              (cons _L23922_ __tmp50391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50390 '())))
                                            (__tmp50388
                                             (let ()
                                               (declare (not safe))
                                               (cons _L23981_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50389 __tmp50388))))
                                 (declare (not safe))
                                 (cons __tmp50396 __tmp50387))))
                           _hd2394723975_
                           _hd2394423965_)
                          (let ()
                            (declare (not safe))
                            (_g2393923954_ _g2394023958_)))))
                  (let ()
                    (declare (not safe))
                    (_g2393923954_ _g2394023958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2393923954_
                                                     _g2394023958_)))))
                                           (__tmp50397
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123444_
                                                     _L23921_
                                                     _L23919_
                                                     _E23800_))
                                                  (let ((__tmp50398
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L23922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23443_
                                                     _L23848_
                                                     __tmp50398)))))
                                      (declare (not safe))
                                      (_g2393823999_ __tmp50397))
                                    (let* ((_g2400324011_
                                            (lambda (_g2400424007_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2400424007_)))
                                           (_g2400224029_
                                            (lambda (_g2400424015_)
                                              ((lambda (_L24018_)
                                                 (let ()
                                                   (let ((__tmp50384
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50370
                                                          (let ((__tmp50372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50373
                                (let ((__tmp50374
                                       (let ((__tmp50375
                                              (let ((__tmp50383
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50376
                                                     (let ((__tmp50382
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50377
                                                            (let ((__tmp50378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50381 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50379
                                  (let ((__tmp50380
                                         (let ()
                                           (declare (not safe))
                                           (cons _L23919_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50380))))
                             (declare (not safe))
                             (cons __tmp50381 __tmp50379))))
                      (declare (not safe))
                      (cons __tmp50378 '()))))
               (declare (not safe))
               (cons __tmp50382 __tmp50377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50383 __tmp50376))))
                                         (declare (not safe))
                                         (cons __tmp50375 '()))))
                                  (declare (not safe))
                                  (cons _L23922_ __tmp50374))))
                           (declare (not safe))
                           (cons __tmp50373 '())))
                        (__tmp50371
                         (let () (declare (not safe)) (cons _L24018_ '()))))
                    (declare (not safe))
                    (cons __tmp50372 __tmp50371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50384
                                                           __tmp50370))))
                                               _g2400424015_)))
                                           (__tmp50385
                                            (let ((__tmp50386
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L23922_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23443_
                                               _L23848_
                                               __tmp50386))))
                                      (declare (not safe))
                                      (_g2400224029_ __tmp50385))))
                              _hd2387523913_
                              _hd2387223903_
                              _hd2386923893_)
                             (let ()
                               (declare (not safe))
                               (_g2386323882_ _g2386423886_)))))
                     (let ()
                       (declare (not safe))
                       (_g2386323882_ _g2386423886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2386323882_
                                                        _g2386423886_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2386323882_
                                                _g2386423886_))))))
                                 (declare (not safe))
                                 (_g2386224033_ _L23850_))))
                            (___kont4628046281_
                             (lambda ()
                               (let ((__tmp50399
                                      (let ((__tmp50400
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23800_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50400))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50399)))))
                        (if (gx#stx-pair? ___stx4627346274_)
                            (let ((_e2380924044_
                                   (gx#syntax-e ___stx4627346274_)))
                              (let ((_tl2380724051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2380924044_)))
                                    (_hd2380824048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2380924044_))))
                                (if (gx#stx-null? _tl2380724051_)
                                    (___kont4627646277_ _hd2380824048_)
                                    (___kont4627846279_
                                     _tl2380724051_
                                     _hd2380824048_))))
                            (___kont4628046281_))))))
                 (_generate123444_
                  (lambda (_clause23446_ _body23448_ _E23449_)
                    (let* ((_g2345123475_
                            (lambda (_g2345223471_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2345223471_)))
                           (_g2345023794_
                            (lambda (_g2345223479_)
                              (if (gx#stx-pair? _g2345223479_)
                                  (let ((_e2345723482_
                                         (gx#syntax-e _g2345223479_)))
                                    (let ((_hd2345623486_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2345723482_)))
                                          (_tl2345523489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2345723482_))))
                                      (if (gx#stx-pair? _tl2345523489_)
                                          (let ((_e2346023492_
                                                 (gx#syntax-e _tl2345523489_)))
                                            (let ((_hd2345923496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2346023492_)))
                                                  (_tl2345823499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2346023492_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2345923496_)
                                                  (let ((_g50401_
                                                         (gx#syntax-split-splice
                                                          _hd2345923496_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50402_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50401_)
                           (##vector-length _g50401_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50402_ 2)))
                    (error "Context expects 2 values" _g50402_)))
              (let ((_target2346123502_
                     (let () (declare (not safe)) (##vector-ref _g50401_ 0)))
                    (_tl2346323505_
                     (let () (declare (not safe)) (##vector-ref _g50401_ 1))))
                (if (gx#stx-null? _tl2346323505_)
                    (letrec ((_loop2346423508_
                              (lambda (_hd2346223512_ _var2346823515_)
                                (if (gx#stx-pair? _hd2346223512_)
                                    (let ((_e2346523518_
                                           (gx#syntax-e _hd2346223512_)))
                                      (let ((_lp-hd2346623522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2346523518_)))
                                            (_lp-tl2346723525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2346523518_))))
                                        (let ((__tmp50419
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2346623522_
                                                       _var2346823515_))))
                                          (declare (not safe))
                                          (_loop2346423508_
                                           _lp-tl2346723525_
                                           __tmp50419))))
                                    (let ((_var2346923528_
                                           (reverse _var2346823515_)))
                                      (if (gx#stx-null? _tl2345823499_)
                                          ((lambda (_L23532_ _L23534_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50403
                                                       (lambda (_g2355523558_
                                                                _g2355623561_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2355523558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2355623561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50403
                                                          '()
                                                          _L23532_))
                                                _stx23435_)
                                               (let* ((_g2356423572_
                                                       (lambda (_g2356523568_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2356523568_)))
                                                      (_g2356323666_
                                                       (lambda (_g2356523576_)
                                                         ((lambda (_L23579_)
                                                            (let ()
                                                              (let* ((_g2359223600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2359323596_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2359323596_)))
                             (_g2359123662_
                              (lambda (_g2359323604_)
                                ((lambda (_L23607_)
                                   (let ()
                                     (let* ((_g2362023628_
                                             (lambda (_g2362123624_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2362123624_)))
                                            (_g2361923650_
                                             (lambda (_g2362123632_)
                                               ((lambda (_L23635_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50408
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50404
                                                              (let ((__tmp50406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50407
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23635_ '()))))
                               (declare (not safe))
                               (cons _L23534_ __tmp50407)))
                            (__tmp50405
                             (let ()
                               (declare (not safe))
                               (cons _L23579_ '()))))
                        (declare (not safe))
                        (cons __tmp50406 __tmp50405))))
                 (declare (not safe))
                 (cons __tmp50408 __tmp50404))
               (gx#stx-source _stx23435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2362123632_)))
                                            (__tmp50409
                                             (gx#stx-wrap-source
                                              (let ((__tmp50414
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50410
                                                     (let ((__tmp50412
                                                            (let ((__tmp50413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2365323656_ _g2365423659_)
                             (let ()
                               (declare (not safe))
                               (cons _g2365323656_ _g2365423659_)))))
                      (declare (not safe))
                      (foldr1 __tmp50413 '() _L23532_)))
                   (__tmp50411
                    (let () (declare (not safe)) (cons _L23607_ '()))))
               (declare (not safe))
               (cons __tmp50412 __tmp50411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50414 __tmp50410))
                                              (gx#stx-source _stx23435_))))
                                       (declare (not safe))
                                       (_g2361923650_ __tmp50409))))
                                 _g2359323604_))))
                        (declare (not safe))
                        (_g2359123662_ _body23448_))))
                  _g2356523576_)))
              (__tmp50415
               (let _recur23670_ ((_rest23673_ _clause23446_)
                                  (_rest-targets23675_ _tgt-lst23437_))
                 (let* ((___stx4629946300_ _rest23673_)
                        (_g2367823690_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4629946300_))))
                   (let ((___kont4630246303_
                          (lambda (_L23726_ _L23728_)
                            (let* ((_g2374323755_
                                    (lambda (_g2374423751_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2374423751_)))
                                   (_g2374223786_
                                    (lambda (_g2374423759_)
                                      (if (gx#stx-pair? _g2374423759_)
                                          (let ((_e2374923762_
                                                 (gx#syntax-e _g2374423759_)))
                                            (let ((_hd2374823766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2374923762_)))
                                                  (_tl2374723769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2374923762_))))
                                              ((lambda (_L23772_ _L23774_)
                                                 (let ((__tmp50416
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23670_
                                                           _L23726_
                                                           _L23772_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23435_
                                                    _L23774_
                                                    _L23728_
                                                    __tmp50416
                                                    _E23449_)))
                                               _tl2374723769_
                                               _hd2374823766_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2374323755_ _g2374423759_))))))
                              (declare (not safe))
                              (_g2374223786_ _rest-targets23675_))))
                         (___kont4630446305_
                          (lambda ()
                            (let ((__tmp50417
                                   (let ((__tmp50418
                                          (lambda (_g2370023703_ _g2370123706_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2370023703_
                                                    _g2370123706_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50418 '() _L23532_))))
                              (declare (not safe))
                              (cons _L23534_ __tmp50417)))))
                     (if (gx#stx-pair? ___stx4629946300_)
                         (let ((_e2368423716_ (gx#syntax-e ___stx4629946300_)))
                           (let ((_tl2368223723_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2368423716_)))
                                 (_hd2368323720_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2368423716_))))
                             (___kont4630246303_
                              _tl2368223723_
                              _hd2368323720_)))
                         (___kont4630446305_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2356323666_ __tmp50415))))
                                           _var2346923528_
                                           _hd2345623486_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2345123475_
                                             _g2345223479_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2346423508_ _target2346123502_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2345123475_ _g2345223479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2345123475_
                                                     _g2345223479_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2345123475_ _g2345223479_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2345123475_ _g2345223479_)))))
                           (__tmp50420
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23446_)))))
                      (declare (not safe))
                      (_g2345023794_ __tmp50420)))))
          (let ((__tmp50421
                 (let ((__tmp50422 (gx#stx-length _tgt-lst23437_)))
                   (declare (not safe))
                   (_parse-body23440_ __tmp50422))))
            (declare (not safe))
            (_generate-body23442_ __tmp50421)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23337_ _tgt23339_ _clauses23340_)
        (letrec ((_reclause23342_
                  (lambda (_clause23345_)
                    (let* ((___stx4631546316_ _clause23345_)
                           (_g2335023365_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4631546316_))))
                      (let ((___kont4631846319_ (lambda () _clause23345_))
                            (___kont4632046321_
                             (lambda (_L23393_ _L23395_)
                               (gx#stx-wrap-source
                                (let ((__tmp50423
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23395_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50423 _L23393_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4632246323_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23337_
                                _clause23345_))))
                        (if (gx#stx-pair? ___stx4631546316_)
                            (let ((_e2335423417_
                                   (gx#syntax-e ___stx4631546316_)))
                              (let ((_tl2335223424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2335423417_)))
                                    (_hd2335323421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2335423417_))))
                                (if (gx#identifier? _hd2335323421_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50424_|
                                         _hd2335323421_)
                                        (___kont4631846319_)
                                        (___kont4632046321_
                                         _tl2335223424_
                                         _hd2335323421_))
                                    (___kont4632046321_
                                     _tl2335223424_
                                     _hd2335323421_))))
                            (___kont4632246323_)))))))
          (let ((__tmp50426
                 (let () (declare (not safe)) (cons _tgt23339_ '())))
                (__tmp50425 (gx#stx-map _reclause23342_ _clauses23340_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23337_
             __tmp50426
             __tmp50425)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30568_)
        (let* ((___stx4634346344_ _stx30568_)
               (_g3057330602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4634346344_))))
          (let ((___kont4634646347_
                 (lambda (_L30842_)
                   (let* ((_g3085530863_
                           (lambda (_g3085630859_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3085630859_)))
                          (_g3085430916_
                           (lambda (_g3085630867_)
                             ((lambda (_L30870_)
                                (let ()
                                  (let* ((_g3088230890_
                                          (lambda (_g3088330886_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3088330886_)))
                                         (_g3088130912_
                                          (lambda (_g3088330894_)
                                            ((lambda (_L30897_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50430
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50427
                                                          (let ((__tmp50429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30870_ '())))
                        (__tmp50428
                         (let () (declare (not safe)) (cons _L30897_ '()))))
                    (declare (not safe))
                    (cons __tmp50429 __tmp50428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50430
                                                           __tmp50427)))))
                                             _g3088330894_))))
                                    (_g3088130912_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50432
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50431
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30870_ _L30842_))))
                                        (declare (not safe))
                                        (cons __tmp50432 __tmp50431))
                                      (gx#stx-source _stx30568_))))))
                              _g3085630867_))))
                     (_g3085430916_ (gx#genident 'e)))))
                (___kont4634846349_
                 (lambda (_L30737_)
                   (let* ((_g3075030758_
                           (lambda (_g3075130754_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3075130754_)))
                          (_g3074930811_
                           (lambda (_g3075130762_)
                             ((lambda (_L30765_)
                                (let ()
                                  (let* ((_g3077730785_
                                          (lambda (_g3077830781_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3077830781_)))
                                         (_g3077630807_
                                          (lambda (_g3077830789_)
                                            ((lambda (_L30792_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50435
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50433
                                                          (let ((__tmp50434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30792_ '()))))
                    (declare (not safe))
                    (cons _L30765_ __tmp50434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50435
                                                           __tmp50433)))))
                                             _g3077830789_))))
                                    (_g3077630807_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50437
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50436
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30765_ _L30737_))))
                                        (declare (not safe))
                                        (cons __tmp50437 __tmp50436))
                                      (gx#stx-source _stx30568_))))))
                              _g3075130762_))))
                     (_g3074930811_ (gx#genident 'args)))))
                (___kont4635046351_
                 (lambda (_L30629_ _L30631_)
                   (let* ((_g3064530653_
                           (lambda (_g3064630649_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3064630649_)))
                          (_g3064430706_
                           (lambda (_g3064630657_)
                             ((lambda (_L30660_)
                                (let ()
                                  (let* ((_g3067230680_
                                          (lambda (_g3067330676_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3067330676_)))
                                         (_g3067130702_
                                          (lambda (_g3067330684_)
                                            ((lambda (_L30687_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50443
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50438
                                                          (let ((__tmp50440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50441
                                (let ((__tmp50442
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30631_ '()))))
                                  (declare (not safe))
                                  (cons _L30660_ __tmp50442))))
                           (declare (not safe))
                           (cons __tmp50441 '())))
                        (__tmp50439
                         (let () (declare (not safe)) (cons _L30687_ '()))))
                    (declare (not safe))
                    (cons __tmp50440 __tmp50439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50443
                                                           __tmp50438)))))
                                             _g3067330684_))))
                                    (_g3067130702_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30568_
                                        _L30660_
                                        _L30629_))))))
                              _g3064630657_))))
                     (_g3064430706_ (gx#genident _L30631_))))))
            (let* ((___match4639646397_
                    (lambda (_e3059330609_
                             _hd3059230613_
                             _tl3059130616_
                             _e3059630619_
                             _hd3059530623_
                             _tl3059430626_)
                      (let ((_L30629_ _tl3059430626_)
                            (_L30631_ _hd3059530623_))
                        (if (gx#stx-list? _L30629_)
                            (___kont4635046351_ _L30629_ _L30631_)
                            (let () (declare (not safe)) (_g3057330602_))))))
                   (___match4638446385_
                    (lambda (_e3058530717_
                             _hd3058430721_
                             _tl3058330724_
                             _e3058830727_
                             _hd3058730731_
                             _tl3058630734_)
                      (let ((_L30737_ _tl3058630734_))
                        (if (gx#stx-list? _L30737_)
                            (___kont4634846349_ _L30737_)
                            (___match4639646397_
                             _e3058530717_
                             _hd3058430721_
                             _tl3058330724_
                             _e3058830727_
                             _hd3058730731_
                             _tl3058630734_)))))
                   (___match4636846369_
                    (lambda (_e3057830822_
                             _hd3057730826_
                             _tl3057630829_
                             _e3058130832_
                             _hd3058030836_
                             _tl3057930839_)
                      (let ((_L30842_ _tl3057930839_))
                        (if (gx#stx-list? _L30842_)
                            (___kont4634646347_ _L30842_)
                            (___match4639646397_
                             _e3057830822_
                             _hd3057730826_
                             _tl3057630829_
                             _e3058130832_
                             _hd3058030836_
                             _tl3057930839_))))))
              (if (gx#stx-pair? ___stx4634346344_)
                  (let ((_e3057830822_ (gx#syntax-e ___stx4634346344_)))
                    (let ((_tl3057630829_
                           (let () (declare (not safe)) (##cdr _e3057830822_)))
                          (_hd3057730826_
                           (let ()
                             (declare (not safe))
                             (##car _e3057830822_))))
                      (if (gx#stx-pair? _tl3057630829_)
                          (let ((_e3058130832_ (gx#syntax-e _tl3057630829_)))
                            (let ((_tl3057930839_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3058130832_)))
                                  (_hd3058030836_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3058130832_))))
                              (if (gx#identifier? _hd3058030836_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50445_|
                                       _hd3058030836_)
                                      (___match4636846369_
                                       _e3057830822_
                                       _hd3057730826_
                                       _tl3057630829_
                                       _e3058130832_
                                       _hd3058030836_
                                       _tl3057930839_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50444_|
                                           _hd3058030836_)
                                          (___match4638446385_
                                           _e3057830822_
                                           _hd3057730826_
                                           _tl3057630829_
                                           _e3058130832_
                                           _hd3058030836_
                                           _tl3057930839_)
                                          (___match4639646397_
                                           _e3057830822_
                                           _hd3057730826_
                                           _tl3057630829_
                                           _e3058130832_
                                           _hd3058030836_
                                           _tl3057930839_)))
                                  (___match4639646397_
                                   _e3057830822_
                                   _hd3057730826_
                                   _tl3057630829_
                                   _e3058130832_
                                   _hd3058030836_
                                   _tl3057930839_))))
                          (let () (declare (not safe)) (_g3057330602_)))))
                  (let () (declare (not safe)) (_g3057330602_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30924_)
        (let* ((_g3092730951_
                (lambda (_g3092830947_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3092830947_)))
               (_g3092631163_
                (lambda (_g3092830955_)
                  (if (gx#stx-pair? _g3092830955_)
                      (let ((_e3093330958_ (gx#syntax-e _g3092830955_)))
                        (let ((_hd3093230962_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3093330958_)))
                              (_tl3093130965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3093330958_))))
                          (if (gx#stx-pair? _tl3093130965_)
                              (let ((_e3093630968_
                                     (gx#syntax-e _tl3093130965_)))
                                (let ((_hd3093530972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3093630968_)))
                                      (_tl3093430975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3093630968_))))
                                  (if (gx#stx-pair/null? _hd3093530972_)
                                      (let ((_g50446_
                                             (gx#syntax-split-splice
                                              _hd3093530972_
                                              '0)))
                                        (begin
                                          (let ((_g50447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50446_)
                                                       (##vector-length
                                                        _g50446_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50447_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50447_)))
                                          (let ((_target3093730978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50446_ 0)))
                                                (_tl3093930981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50446_ 1))))
                                            (if (gx#stx-null? _tl3093930981_)
                                                (letrec ((_loop3094030984_
                                                          (lambda (_hd3093830988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3094430991_)
                    (if (gx#stx-pair? _hd3093830988_)
                        (let ((_e3094130994_ (gx#syntax-e _hd3093830988_)))
                          (let ((_lp-hd3094230998_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3094130994_)))
                                (_lp-tl3094331001_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3094130994_))))
                            (_loop3094030984_
                             _lp-tl3094331001_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3094230998_ _e3094430991_)))))
                        (let ((_e3094531004_ (reverse _e3094430991_)))
                          ((lambda (_L31008_ _L31010_)
                             (if (gx#stx-list? _L31008_)
                                 (let* ((_g3102831045_
                                         (lambda (_g3102931041_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3102931041_)))
                                        (_g3102731151_
                                         (lambda (_g3102931049_)
                                           (if (gx#stx-pair/null?
                                                _g3102931049_)
                                               (let ((_g50448_
                                                      (gx#syntax-split-splice
                                                       _g3102931049_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50449_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50448_)
                        (##vector-length _g50448_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50449_ 2)))
                 (error "Context expects 2 values" _g50449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3103131052_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50448_
                                                             0)))
                                                         (_tl3103331055_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50448_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3103331055_)
                                                         (letrec ((_loop3103431058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3103231062_ _$e3103831065_)
                             (if (gx#stx-pair? _hd3103231062_)
                                 (let ((_e3103531068_
                                        (gx#syntax-e _hd3103231062_)))
                                   (let ((_lp-hd3103631072_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3103531068_)))
                                         (_lp-tl3103731075_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3103531068_))))
                                     (_loop3103431058_
                                      _lp-tl3103731075_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3103631072_
                                              _$e3103831065_)))))
                                 (let ((_$e3103931078_
                                        (reverse _$e3103831065_)))
                                   ((lambda (_L31082_)
                                      (let ()
                                        (let* ((_g3109831106_
                                                (lambda (_g3109931102_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3109931102_)))
                                               (_g3109731139_
                                                (lambda (_g3109931110_)
                                                  ((lambda (_L31113_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50456
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50450
                        (let ((__tmp50452
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31010_
                                  _L31082_)
                                 (let ((__tmp50453
                                        (lambda (_g3112731131_
                                                 _g3112831134_
                                                 _g3112931136_)
                                          (let ((__tmp50454
                                                 (let ((__tmp50455
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3112731131_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3112831134_
                                                         __tmp50455))))
                                            (declare (not safe))
                                            (cons __tmp50454 _g3112931136_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50453 '() _L31010_ _L31082_))))
                              (__tmp50451
                               (let ()
                                 (declare (not safe))
                                 (cons _L31113_ '()))))
                          (declare (not safe))
                          (cons __tmp50452 __tmp50451))))
                   (declare (not safe))
                   (cons __tmp50456 __tmp50450)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3109931110_))))
                                          (_g3109731139_
                                           (let ((__tmp50457
                                                  (let ((__tmp50458
                                                         (lambda (_g3114231145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3114331148_)
                   (let ()
                     (declare (not safe))
                     (cons _g3114231145_ _g3114331148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50458
                                                            '()
                                                            _L31082_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30924_
                                              __tmp50457
                                              _L31008_))))))
                                    _$e3103931078_))))))
                   (_loop3103431058_ _target3103131052_ '()))
                 (_g3102831045_ _g3102931049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3102831045_
                                                _g3102931049_)))))
                                   (_g3102731151_
                                    (gx#gentemps
                                     (let ((__tmp50459
                                            (lambda (_g3115431157_
                                                     _g3115531160_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3115431157_
                                                      _g3115531160_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50459 '() _L31010_)))))
                                 (_g3092730951_ _g3092830955_)))
                           _tl3093430975_
                           _e3094531004_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3094030984_
                                                   _target3093730978_
                                                   '()))
                                                (_g3092730951_
                                                 _g3092830955_)))))
                                      (_g3092730951_ _g3092830955_))))
                              (_g3092730951_ _g3092830955_))))
                      (_g3092730951_ _g3092830955_)))))
          (_g3092631163_ _stx30924_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31169_)
        (let* ((___stx4639946400_ _$stx31169_)
               (_g3117531258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4639946400_))))
          (let ((___kont4640246403_
                 (lambda (_L31588_)
                   (let ((__tmp50463 (gx#datum->syntax '#f 'let))
                         (__tmp50460
                          (let ((__tmp50461
                                 (let ((__tmp50462
                                        (lambda (_g3160431607_ _g3160531610_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160431607_
                                                  _g3160531610_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50462 '() _L31588_))))
                            (declare (not safe))
                            (cons '() __tmp50461))))
                     (declare (not safe))
                     (cons __tmp50463 __tmp50460))))
                (___kont4640646407_
                 (lambda (_L31496_ _L31498_ _L31499_ _L31500_)
                   (let ((__tmp50464
                          (let ((__tmp50467
                                 (let ((__tmp50468
                                        (let ((__tmp50469
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31498_ '()))))
                                          (declare (not safe))
                                          (cons _L31499_ __tmp50469))))
                                   (declare (not safe))
                                   (cons __tmp50468 '())))
                                (__tmp50465
                                 (let ((__tmp50466
                                        (lambda (_g3152231525_ _g3152331528_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3152231525_
                                                  _g3152331528_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50466 '() _L31496_))))
                            (declare (not safe))
                            (cons __tmp50467 __tmp50465))))
                     (declare (not safe))
                     (cons _L31500_ __tmp50464))))
                (___kont4641046411_
                 (lambda (_L31369_ _L31371_ _L31372_)
                   (let ((__tmp50479 (gx#datum->syntax '#f 'match*))
                         (__tmp50470
                          (let ((__tmp50477
                                 (let ((__tmp50478
                                        (lambda (_g3139831401_ _g3139931404_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3139831401_
                                                  _g3139931404_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50478 '() _L31371_)))
                                (__tmp50471
                                 (let ((__tmp50472
                                        (let ((__tmp50475
                                               (let ((__tmp50476
                                                      (lambda (_g3139631407_
                                                               _g3139731410_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3139631407_
                                                                _g3139731410_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50476
                                                         '()
                                                         _L31372_)))
                                              (__tmp50473
                                               (let ((__tmp50474
                                                      (lambda (_g3139431413_
                                                               _g3139531416_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3139431413_
                                                                _g3139531416_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50474
                                                         '()
                                                         _L31369_))))
                                          (declare (not safe))
                                          (cons __tmp50475 __tmp50473))))
                                   (declare (not safe))
                                   (cons __tmp50472 '()))))
                            (declare (not safe))
                            (cons __tmp50477 __tmp50471))))
                     (declare (not safe))
                     (cons __tmp50479 __tmp50470)))))
            (let* ((___match4649246493_
                    (lambda (_e3122331265_
                             _hd3122231269_
                             _tl3122131272_
                             _e3122631275_
                             _hd3122531279_
                             _tl3122431282_
                             ___splice4641246413_
                             _target3122731285_
                             _tl3122931288_)
                      (letrec ((_loop3123031291_
                                (lambda (_hd3122831295_
                                         _expr3123431298_
                                         _hd3123531300_)
                                  (if (gx#stx-pair? _hd3122831295_)
                                      (let ((_e3123131303_
                                             (gx#syntax-e _hd3122831295_)))
                                        (let ((_lp-tl3123331310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3123131303_)))
                                              (_lp-hd3123231307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3123131303_))))
                                          (if (gx#stx-pair? _lp-hd3123231307_)
                                              (let ((_e3124031313_
                                                     (gx#syntax-e
                                                      _lp-hd3123231307_)))
                                                (let ((_tl3123831320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3124031313_)))
                                                      (_hd3123931317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3124031313_))))
                                                  (if (gx#stx-pair?
                                                       _tl3123831320_)
                                                      (let ((_e3124331323_
                                                             (gx#syntax-e
                                                              _tl3123831320_)))
                                                        (let ((_tl3124131330_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3124331323_)))
                      (_hd3124231327_
                       (let () (declare (not safe)) (##car _e3124331323_))))
                  (if (gx#stx-null? _tl3124131330_)
                      (_loop3123031291_
                       _lp-tl3123331310_
                       (let ()
                         (declare (not safe))
                         (cons _hd3124231327_ _expr3123431298_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3123931317_ _hd3123531300_)))
                      (let () (declare (not safe)) (_g3117531258_)))))
              (let () (declare (not safe)) (_g3117531258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3117531258_)))))
                                      (let ((_hd3123731336_
                                             (reverse _hd3123531300_))
                                            (_expr3123631333_
                                             (reverse _expr3123431298_)))
                                        (if (gx#stx-pair/null? _tl3122431282_)
                                            (let ((___splice4641446415_
                                                   (gx#syntax-split-splice
                                                    _tl3122431282_
                                                    '0)))
                                              (let ((_tl3124631342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4641446415_
                                                        '1)))
                                                    (_target3124431339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4641446415_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3124631342_)
                                                    (letrec ((_loop3124731345_
                                                              (lambda (_hd3124531349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3125131352_)
                        (if (gx#stx-pair? _hd3124531349_)
                            (let ((_e3124831355_ (gx#syntax-e _hd3124531349_)))
                              (let ((_lp-tl3125031362_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3124831355_)))
                                    (_lp-hd3124931359_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3124831355_))))
                                (_loop3124731345_
                                 _lp-tl3125031362_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3124931359_
                                         _body3125131352_)))))
                            (let ((_body3125231365_
                                   (reverse _body3125131352_)))
                              (___kont4641046411_
                               _body3125231365_
                               _expr3123631333_
                               _hd3123731336_))))))
              (_loop3124731345_ _target3124431339_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3117531258_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3117531258_))))))))
                        (_loop3123031291_ _target3122731285_ '() '()))))
                   (___match4648446485_
                    (lambda (_e3122331265_
                             _hd3122231269_
                             _tl3122131272_
                             _e3122631275_
                             _hd3122531279_
                             _tl3122431282_)
                      (if (gx#stx-pair/null? _hd3122531279_)
                          (let ((___splice4641246413_
                                 (gx#syntax-split-splice _hd3122531279_ '0)))
                            (let ((_tl3122931288_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4641246413_ '1)))
                                  (_target3122731285_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4641246413_ '0))))
                              (if (gx#stx-null? _tl3122931288_)
                                  (___match4649246493_
                                   _e3122331265_
                                   _hd3122231269_
                                   _tl3122131272_
                                   _e3122631275_
                                   _hd3122531279_
                                   _tl3122431282_
                                   ___splice4641246413_
                                   _target3122731285_
                                   _tl3122931288_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3117531258_)))))
                          (let () (declare (not safe)) (_g3117531258_)))))
                   (___match4647246473_
                    (lambda (_e3119931426_
                             _hd3119831430_
                             _tl3119731433_
                             _e3120231436_
                             _hd3120131440_
                             _tl3120031443_
                             _e3120531446_
                             _hd3120431450_
                             _tl3120331453_
                             _e3120831456_
                             _hd3120731460_
                             _tl3120631463_
                             ___splice4640846409_
                             _target3120931466_
                             _tl3121131469_)
                      (letrec ((_loop3121231472_
                                (lambda (_hd3121031476_ _body3121631479_)
                                  (if (gx#stx-pair? _hd3121031476_)
                                      (let ((_e3121331482_
                                             (gx#syntax-e _hd3121031476_)))
                                        (let ((_lp-tl3121531489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3121331482_)))
                                              (_lp-hd3121431486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3121331482_))))
                                          (_loop3121231472_
                                           _lp-tl3121531489_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3121431486_
                                                   _body3121631479_)))))
                                      (let ((_body3121731492_
                                             (reverse _body3121631479_)))
                                        (let ((_L31496_ _body3121731492_)
                                              (_L31498_ _hd3120731460_)
                                              (_L31499_ _hd3120431450_)
                                              (_L31500_ _hd3119831430_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31499_))
                                              (___kont4640646407_
                                               _L31496_
                                               _L31498_
                                               _L31499_
                                               _L31500_)
                                              (___match4648446485_
                                               _e3119931426_
                                               _hd3119831430_
                                               _tl3119731433_
                                               _e3120231436_
                                               _hd3120131440_
                                               _tl3120031443_))))))))
                        (_loop3121231472_ _target3120931466_ '()))))
                   (___match4643846439_
                    (lambda (_e3118031538_
                             _hd3117931542_
                             _tl3117831545_
                             _e3118331548_
                             _hd3118231552_
                             _tl3118131555_
                             ___splice4640446405_
                             _target3118431558_
                             _tl3118631561_)
                      (letrec ((_loop3118731564_
                                (lambda (_hd3118531568_ _body3119131571_)
                                  (if (gx#stx-pair? _hd3118531568_)
                                      (let ((_e3118831574_
                                             (gx#syntax-e _hd3118531568_)))
                                        (let ((_lp-tl3119031581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3118831574_)))
                                              (_lp-hd3118931578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3118831574_))))
                                          (_loop3118731564_
                                           _lp-tl3119031581_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3118931578_
                                                   _body3119131571_)))))
                                      (let ((_body3119231584_
                                             (reverse _body3119131571_)))
                                        (___kont4640246403_
                                         _body3119231584_))))))
                        (_loop3118731564_ _target3118431558_ '())))))
              (if (gx#stx-pair? ___stx4639946400_)
                  (let ((_e3118031538_ (gx#syntax-e ___stx4639946400_)))
                    (let ((_tl3117831545_
                           (let () (declare (not safe)) (##cdr _e3118031538_)))
                          (_hd3117931542_
                           (let ()
                             (declare (not safe))
                             (##car _e3118031538_))))
                      (if (gx#stx-pair? _tl3117831545_)
                          (let ((_e3118331548_ (gx#syntax-e _tl3117831545_)))
                            (let ((_tl3118131555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3118331548_)))
                                  (_hd3118231552_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3118331548_))))
                              (if (gx#stx-null? _hd3118231552_)
                                  (if (gx#stx-pair/null? _tl3118131555_)
                                      (let ((___splice4640446405_
                                             (gx#syntax-split-splice
                                              _tl3118131555_
                                              '0)))
                                        (let ((_tl3118631561_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4640446405_
                                                  '1)))
                                              (_target3118431558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4640446405_
                                                  '0))))
                                          (if (gx#stx-null? _tl3118631561_)
                                              (___match4643846439_
                                               _e3118031538_
                                               _hd3117931542_
                                               _tl3117831545_
                                               _e3118331548_
                                               _hd3118231552_
                                               _tl3118131555_
                                               ___splice4640446405_
                                               _target3118431558_
                                               _tl3118631561_)
                                              (if (gx#stx-pair/null?
                                                   _hd3118231552_)
                                                  (let ((___splice4641246413_
                                                         (gx#syntax-split-splice
                                                          _hd3118231552_
                                                          '0)))
                                                    (let ((_tl3122931288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4641246413_
                                                              '1)))
                                                          (_target3122731285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4641246413_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3122931288_)
                                                          (___match4649246493_
                                                           _e3118031538_
                                                           _hd3117931542_
                                                           _tl3117831545_
                                                           _e3118331548_
                                                           _hd3118231552_
                                                           _tl3118131555_
                                                           ___splice4641246413_
                                                           _target3122731285_
                                                           _tl3122931288_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3117531258_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3117531258_))))))
                                      (if (gx#stx-pair/null? _hd3118231552_)
                                          (let ((___splice4641246413_
                                                 (gx#syntax-split-splice
                                                  _hd3118231552_
                                                  '0)))
                                            (let ((_tl3122931288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641246413_
                                                      '1)))
                                                  (_target3122731285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641246413_
                                                      '0))))
                                              (if (gx#stx-null? _tl3122931288_)
                                                  (___match4649246493_
                                                   _e3118031538_
                                                   _hd3117931542_
                                                   _tl3117831545_
                                                   _e3118331548_
                                                   _hd3118231552_
                                                   _tl3118131555_
                                                   ___splice4641246413_
                                                   _target3122731285_
                                                   _tl3122931288_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3117531258_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3117531258_))))
                                  (if (gx#stx-pair? _hd3118231552_)
                                      (let ((_e3120531446_
                                             (gx#syntax-e _hd3118231552_)))
                                        (let ((_tl3120331453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3120531446_)))
                                              (_hd3120431450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3120531446_))))
                                          (if (gx#stx-pair? _tl3120331453_)
                                              (let ((_e3120831456_
                                                     (gx#syntax-e
                                                      _tl3120331453_)))
                                                (let ((_tl3120631463_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3120831456_)))
                                                      (_hd3120731460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3120831456_))))
                                                  (if (gx#stx-null?
                                                       _tl3120631463_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3118131555_)
                                                          (let ((___splice4640846409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3118131555_ '0)))
                    (let ((_tl3121131469_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4640846409_ '1)))
                          (_target3120931466_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4640846409_ '0))))
                      (if (gx#stx-null? _tl3121131469_)
                          (___match4647246473_
                           _e3118031538_
                           _hd3117931542_
                           _tl3117831545_
                           _e3118331548_
                           _hd3118231552_
                           _tl3118131555_
                           _e3120531446_
                           _hd3120431450_
                           _tl3120331453_
                           _e3120831456_
                           _hd3120731460_
                           _tl3120631463_
                           ___splice4640846409_
                           _target3120931466_
                           _tl3121131469_)
                          (if (gx#stx-pair/null? _hd3118231552_)
                              (let ((___splice4641246413_
                                     (gx#syntax-split-splice
                                      _hd3118231552_
                                      '0)))
                                (let ((_tl3122931288_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4641246413_
                                          '1)))
                                      (_target3122731285_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4641246413_
                                          '0))))
                                  (if (gx#stx-null? _tl3122931288_)
                                      (___match4649246493_
                                       _e3118031538_
                                       _hd3117931542_
                                       _tl3117831545_
                                       _e3118331548_
                                       _hd3118231552_
                                       _tl3118131555_
                                       ___splice4641246413_
                                       _target3122731285_
                                       _tl3122931288_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3117531258_)))))
                              (let () (declare (not safe)) (_g3117531258_))))))
                  (if (gx#stx-pair/null? _hd3118231552_)
                      (let ((___splice4641246413_
                             (gx#syntax-split-splice _hd3118231552_ '0)))
                        (let ((_tl3122931288_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4641246413_ '1)))
                              (_target3122731285_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4641246413_ '0))))
                          (if (gx#stx-null? _tl3122931288_)
                              (___match4649246493_
                               _e3118031538_
                               _hd3117931542_
                               _tl3117831545_
                               _e3118331548_
                               _hd3118231552_
                               _tl3118131555_
                               ___splice4641246413_
                               _target3122731285_
                               _tl3122931288_)
                              (let () (declare (not safe)) (_g3117531258_)))))
                      (let () (declare (not safe)) (_g3117531258_))))
              (if (gx#stx-pair/null? _hd3118231552_)
                  (let ((___splice4641246413_
                         (gx#syntax-split-splice _hd3118231552_ '0)))
                    (let ((_tl3122931288_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4641246413_ '1)))
                          (_target3122731285_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4641246413_ '0))))
                      (if (gx#stx-null? _tl3122931288_)
                          (___match4649246493_
                           _e3118031538_
                           _hd3117931542_
                           _tl3117831545_
                           _e3118331548_
                           _hd3118231552_
                           _tl3118131555_
                           ___splice4641246413_
                           _target3122731285_
                           _tl3122931288_)
                          (let () (declare (not safe)) (_g3117531258_)))))
                  (let () (declare (not safe)) (_g3117531258_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3118231552_)
                                                  (let ((___splice4641246413_
                                                         (gx#syntax-split-splice
                                                          _hd3118231552_
                                                          '0)))
                                                    (let ((_tl3122931288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4641246413_
                                                              '1)))
                                                          (_target3122731285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4641246413_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3122931288_)
                                                          (___match4649246493_
                                                           _e3118031538_
                                                           _hd3117931542_
                                                           _tl3117831545_
                                                           _e3118331548_
                                                           _hd3118231552_
                                                           _tl3118131555_
                                                           ___splice4641246413_
                                                           _target3122731285_
                                                           _tl3122931288_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3117531258_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3117531258_))))))
                                      (if (gx#stx-pair/null? _hd3118231552_)
                                          (let ((___splice4641246413_
                                                 (gx#syntax-split-splice
                                                  _hd3118231552_
                                                  '0)))
                                            (let ((_tl3122931288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641246413_
                                                      '1)))
                                                  (_target3122731285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641246413_
                                                      '0))))
                                              (if (gx#stx-null? _tl3122931288_)
                                                  (___match4649246493_
                                                   _e3118031538_
                                                   _hd3117931542_
                                                   _tl3117831545_
                                                   _e3118331548_
                                                   _hd3118231552_
                                                   _tl3118131555_
                                                   ___splice4641246413_
                                                   _target3122731285_
                                                   _tl3122931288_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3117531258_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3117531258_)))))))
                          (let () (declare (not safe)) (_g3117531258_)))))
                  (let () (declare (not safe)) (_g3117531258_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31621_)
        (let* ((___stx4649546496_ _$stx31621_)
               (_g3162631678_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4649546496_))))
          (let ((___kont4649846499_
                 (lambda (_L31848_ _L31850_ _L31851_ _L31852_ _L31853_)
                   (let ((__tmp50489 (gx#datum->syntax '#f 'with))
                         (__tmp50480
                          (let ((__tmp50486
                                 (let ((__tmp50487
                                        (let ((__tmp50488
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31851_ '()))))
                                          (declare (not safe))
                                          (cons _L31852_ __tmp50488))))
                                   (declare (not safe))
                                   (cons __tmp50487 '())))
                                (__tmp50481
                                 (let ((__tmp50482
                                        (let ((__tmp50483
                                               (let ((__tmp50484
                                                      (let ((__tmp50485
                                                             (lambda (_g3187831881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3187931884_)
                       (let ()
                         (declare (not safe))
                         (cons _g3187831881_ _g3187931884_)))))
                (declare (not safe))
                (foldr1 __tmp50485 '() _L31848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31850_ __tmp50484))))
                                          (declare (not safe))
                                          (cons _L31853_ __tmp50483))))
                                   (declare (not safe))
                                   (cons __tmp50482 '()))))
                            (declare (not safe))
                            (cons __tmp50486 __tmp50481))))
                     (declare (not safe))
                     (cons __tmp50489 __tmp50480))))
                (___kont4650246503_
                 (lambda (_L31735_)
                   (let ((__tmp50493 (gx#datum->syntax '#f 'let))
                         (__tmp50490
                          (let ((__tmp50491
                                 (let ((__tmp50492
                                        (lambda (_g3175231755_ _g3175331758_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3175231755_
                                                  _g3175331758_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50492 '() _L31735_))))
                            (declare (not safe))
                            (cons '() __tmp50491))))
                     (declare (not safe))
                     (cons __tmp50493 __tmp50490)))))
            (let* ((___match4656846569_
                    (lambda (_e3166031685_
                             _hd3165931689_
                             _tl3165831692_
                             _e3166331695_
                             _hd3166231699_
                             _tl3166131702_
                             ___splice4650446505_
                             _target3166431705_
                             _tl3166631708_)
                      (letrec ((_loop3166731711_
                                (lambda (_hd3166531715_ _body3167131718_)
                                  (if (gx#stx-pair? _hd3166531715_)
                                      (let ((_e3166831721_
                                             (gx#syntax-e _hd3166531715_)))
                                        (let ((_lp-tl3167031728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3166831721_)))
                                              (_lp-hd3166931725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3166831721_))))
                                          (_loop3166731711_
                                           _lp-tl3167031728_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3166931725_
                                                   _body3167131718_)))))
                                      (let ((_body3167231731_
                                             (reverse _body3167131718_)))
                                        (___kont4650246503_
                                         _body3167231731_))))))
                        (_loop3166731711_ _target3166431705_ '()))))
                   (___match4654646547_
                    (lambda (_e3163531768_
                             _hd3163431772_
                             _tl3163331775_
                             _e3163831778_
                             _hd3163731782_
                             _tl3163631785_
                             _e3164131788_
                             _hd3164031792_
                             _tl3163931795_
                             _e3164431798_
                             _hd3164331802_
                             _tl3164231805_
                             _e3164731808_
                             _hd3164631812_
                             _tl3164531815_
                             ___splice4650046501_
                             _target3164831818_
                             _tl3165031821_)
                      (letrec ((_loop3165131824_
                                (lambda (_hd3164931828_ _body3165531831_)
                                  (if (gx#stx-pair? _hd3164931828_)
                                      (let ((_e3165231834_
                                             (gx#syntax-e _hd3164931828_)))
                                        (let ((_lp-tl3165431841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3165231834_)))
                                              (_lp-hd3165331838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3165231834_))))
                                          (_loop3165131824_
                                           _lp-tl3165431841_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3165331838_
                                                   _body3165531831_)))))
                                      (let ((_body3165631844_
                                             (reverse _body3165531831_)))
                                        (___kont4649846499_
                                         _body3165631844_
                                         _tl3163931795_
                                         _hd3164631812_
                                         _hd3164331802_
                                         _hd3163431772_))))))
                        (_loop3165131824_ _target3164831818_ '())))))
              (if (gx#stx-pair? ___stx4649546496_)
                  (let ((_e3163531768_ (gx#syntax-e ___stx4649546496_)))
                    (let ((_tl3163331775_
                           (let () (declare (not safe)) (##cdr _e3163531768_)))
                          (_hd3163431772_
                           (let ()
                             (declare (not safe))
                             (##car _e3163531768_))))
                      (if (gx#stx-pair? _tl3163331775_)
                          (let ((_e3163831778_ (gx#syntax-e _tl3163331775_)))
                            (let ((_tl3163631785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3163831778_)))
                                  (_hd3163731782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3163831778_))))
                              (if (gx#stx-pair? _hd3163731782_)
                                  (let ((_e3164131788_
                                         (gx#syntax-e _hd3163731782_)))
                                    (let ((_tl3163931795_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3164131788_)))
                                          (_hd3164031792_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3164131788_))))
                                      (if (gx#stx-pair? _hd3164031792_)
                                          (let ((_e3164431798_
                                                 (gx#syntax-e _hd3164031792_)))
                                            (let ((_tl3164231805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3164431798_)))
                                                  (_hd3164331802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3164431798_))))
                                              (if (gx#stx-pair? _tl3164231805_)
                                                  (let ((_e3164731808_
                                                         (gx#syntax-e
                                                          _tl3164231805_)))
                                                    (let ((_tl3164531815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3164731808_)))
                                                          (_hd3164631812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3164731808_))))
                                                      (if (gx#stx-null?
                                                           _tl3164531815_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3163631785_)
                                                              (let ((___splice4650046501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3163631785_ '0)))
                        (let ((_tl3165031821_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4650046501_ '1)))
                              (_target3164831818_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4650046501_ '0))))
                          (if (gx#stx-null? _tl3165031821_)
                              (___match4654646547_
                               _e3163531768_
                               _hd3163431772_
                               _tl3163331775_
                               _e3163831778_
                               _hd3163731782_
                               _tl3163631785_
                               _e3164131788_
                               _hd3164031792_
                               _tl3163931795_
                               _e3164431798_
                               _hd3164331802_
                               _tl3164231805_
                               _e3164731808_
                               _hd3164631812_
                               _tl3164531815_
                               ___splice4650046501_
                               _target3164831818_
                               _tl3165031821_)
                              (let () (declare (not safe)) (_g3162631678_)))))
                      (let () (declare (not safe)) (_g3162631678_)))
                  (let () (declare (not safe)) (_g3162631678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162631678_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162631678_)))))
                                  (if (gx#stx-null? _hd3163731782_)
                                      (if (gx#stx-pair/null? _tl3163631785_)
                                          (let ((___splice4650446505_
                                                 (gx#syntax-split-splice
                                                  _tl3163631785_
                                                  '0)))
                                            (let ((_tl3166631708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4650446505_
                                                      '1)))
                                                  (_target3166431705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4650446505_
                                                      '0))))
                                              (if (gx#stx-null? _tl3166631708_)
                                                  (___match4656846569_
                                                   _e3163531768_
                                                   _hd3163431772_
                                                   _tl3163331775_
                                                   _e3163831778_
                                                   _hd3163731782_
                                                   _tl3163631785_
                                                   ___splice4650446505_
                                                   _target3166431705_
                                                   _tl3166631708_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162631678_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162631678_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162631678_))))))
                          (let () (declare (not safe)) (_g3162631678_)))))
                  (let () (declare (not safe)) (_g3162631678_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31893_)
        (let* ((___stx4657146572_ _$stx31893_)
               (_g3190432050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4657146572_))))
          (let ((___kont4657446575_
                 (lambda (_L32654_ _L32656_ _L32657_)
                   (let ((__tmp50499 (gx#datum->syntax '#f 'and))
                         (__tmp50494
                          (let ((__tmp50495
                                 (lambda (_g3267832681_ _g3267932684_)
                                   (let ((__tmp50496
                                          (let ((__tmp50497
                                                 (let ((__tmp50498
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32654_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3267832681_
                                                         __tmp50498))))
                                            (declare (not safe))
                                            (cons _L32657_ __tmp50497))))
                                     (declare (not safe))
                                     (cons __tmp50496 _g3267932684_)))))
                            (declare (not safe))
                            (foldr1 __tmp50495 '() _L32656_))))
                     (declare (not safe))
                     (cons __tmp50499 __tmp50494))))
                (___kont4657846579_
                 (lambda (_L32544_ _L32546_ _L32547_)
                   (let ((__tmp50505 (gx#datum->syntax '#f 'or))
                         (__tmp50500
                          (let ((__tmp50501
                                 (lambda (_g3256832571_ _g3256932574_)
                                   (let ((__tmp50502
                                          (let ((__tmp50503
                                                 (let ((__tmp50504
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32544_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3256832571_
                                                         __tmp50504))))
                                            (declare (not safe))
                                            (cons _L32547_ __tmp50503))))
                                     (declare (not safe))
                                     (cons __tmp50502 _g3256932574_)))))
                            (declare (not safe))
                            (foldr1 __tmp50501 '() _L32546_))))
                     (declare (not safe))
                     (cons __tmp50505 __tmp50500))))
                (___kont4658246583_
                 (lambda (_L32444_ _L32446_ _L32447_)
                   (let ((__tmp50510 (gx#datum->syntax '#f 'not))
                         (__tmp50506
                          (let ((__tmp50507
                                 (let ((__tmp50508
                                        (let ((__tmp50509
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32444_ '()))))
                                          (declare (not safe))
                                          (cons _L32446_ __tmp50509))))
                                   (declare (not safe))
                                   (cons _L32447_ __tmp50508))))
                            (declare (not safe))
                            (cons __tmp50507 '()))))
                     (declare (not safe))
                     (cons __tmp50510 __tmp50506))))
                (___kont4658446585_
                 (lambda (_L32370_ _L32372_)
                   (let ((__tmp50511
                          (let () (declare (not safe)) (cons _L32370_ '()))))
                     (declare (not safe))
                     (cons _L32372_ __tmp50511))))
                (___kont4658646587_
                 (lambda (_L32318_ _L32320_)
                   (let ((__tmp50520 (gx#datum->syntax '#f 'lambda))
                         (__tmp50512
                          (let ((__tmp50518
                                 (let ((__tmp50519
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50519 '())))
                                (__tmp50513
                                 (let ((__tmp50514
                                        (let ((__tmp50515
                                               (let ((__tmp50516
                                                      (let ((__tmp50517
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50517
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32318_ __tmp50516))))
                                          (declare (not safe))
                                          (cons _L32320_ __tmp50515))))
                                   (declare (not safe))
                                   (cons __tmp50514 '()))))
                            (declare (not safe))
                            (cons __tmp50518 __tmp50513))))
                     (declare (not safe))
                     (cons __tmp50520 __tmp50512))))
                (___kont4658846589_
                 (lambda (_L32270_ _L32272_ _L32273_)
                   (let ((__tmp50539 (gx#datum->syntax '#f 'lambda))
                         (__tmp50521
                          (let ((__tmp50537
                                 (let ((__tmp50538
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50538 '())))
                                (__tmp50522
                                 (let ((__tmp50523
                                        (let ((__tmp50536
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50524
                                               (let ((__tmp50529
                                                      (let ((__tmp50535
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50530
                                                             (let ((__tmp50531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50532
                                   (let ((__tmp50533
                                          (let ((__tmp50534
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50534 '()))))
                                     (declare (not safe))
                                     (cons _L32272_ __tmp50533))))
                              (declare (not safe))
                              (cons _L32273_ __tmp50532))))
                       (declare (not safe))
                       (cons __tmp50531 '()))))
                (declare (not safe))
                (cons __tmp50535 __tmp50530)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50525
                                                      (let ((__tmp50526
                                                             (let ((__tmp50527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50528 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50528 '()))))
                       (declare (not safe))
                       (cons _L32270_ __tmp50527))))
                (declare (not safe))
                (cons __tmp50526 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50529
                                                       __tmp50525))))
                                          (declare (not safe))
                                          (cons __tmp50536 __tmp50524))))
                                   (declare (not safe))
                                   (cons __tmp50523 '()))))
                            (declare (not safe))
                            (cons __tmp50537 __tmp50522))))
                     (declare (not safe))
                     (cons __tmp50539 __tmp50521))))
                (___kont4659046591_
                 (lambda (_L32201_ _L32203_ _L32204_)
                   (let ((__tmp50555 (gx#datum->syntax '#f 'lambda))
                         (__tmp50540
                          (let ((__tmp50553
                                 (let ((__tmp50554
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50554 '())))
                                (__tmp50541
                                 (let ((__tmp50542
                                        (let ((__tmp50552
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50543
                                               (let ((__tmp50548
                                                      (let ((__tmp50549
                                                             (let ((__tmp50550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50551 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50551 '()))))
                       (declare (not safe))
                       (cons _L32203_ __tmp50550))))
                (declare (not safe))
                (cons _L32204_ __tmp50549)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50544
                                                      (let ((__tmp50545
                                                             (let ((__tmp50546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50547 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50547 '()))))
                       (declare (not safe))
                       (cons _L32201_ __tmp50546))))
                (declare (not safe))
                (cons __tmp50545 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50548
                                                       __tmp50544))))
                                          (declare (not safe))
                                          (cons __tmp50552 __tmp50543))))
                                   (declare (not safe))
                                   (cons __tmp50542 '()))))
                            (declare (not safe))
                            (cons __tmp50553 __tmp50541))))
                     (declare (not safe))
                     (cons __tmp50555 __tmp50540))))
                (___kont4659246593_
                 (lambda (_L32121_ _L32123_ _L32124_ _L32125_)
                   (let ((__tmp50573 (gx#datum->syntax '#f 'lambda))
                         (__tmp50556
                          (let ((__tmp50571
                                 (let ((__tmp50572
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50572 '())))
                                (__tmp50557
                                 (let ((__tmp50558
                                        (let ((__tmp50570
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50559
                                               (let ((__tmp50566
                                                      (let ((__tmp50567
                                                             (let ((__tmp50568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50569 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50569 '()))))
                       (declare (not safe))
                       (cons _L32124_ __tmp50568))))
                (declare (not safe))
                (cons _L32125_ __tmp50567)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50560
                                                      (let ((__tmp50561
                                                             (let ((__tmp50562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50563
                                   (let ((__tmp50564
                                          (let ((__tmp50565
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50565 '()))))
                                     (declare (not safe))
                                     (cons _L32123_ __tmp50564))))
                              (declare (not safe))
                              (cons __tmp50563 '()))))
                       (declare (not safe))
                       (cons _L32121_ __tmp50562))))
                (declare (not safe))
                (cons __tmp50561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50566
                                                       __tmp50560))))
                                          (declare (not safe))
                                          (cons __tmp50570 __tmp50559))))
                                   (declare (not safe))
                                   (cons __tmp50558 '()))))
                            (declare (not safe))
                            (cons __tmp50571 __tmp50557))))
                     (declare (not safe))
                     (cons __tmp50573 __tmp50556)))))
            (let* ((___match4674446745_
                    (lambda (_e3199632230_
                             _hd3199532234_
                             _tl3199432237_
                             _e3199932240_
                             _hd3199832244_
                             _tl3199732247_
                             _e3200232250_
                             _hd3200132254_
                             _tl3200032257_)
                      (if (gx#identifier? _hd3200132254_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50575_|
                               _hd3200132254_)
                              (if (gx#stx-pair? _tl3200032257_)
                                  (let ((_e3200532260_
                                         (gx#syntax-e _tl3200032257_)))
                                    (let ((_tl3200332267_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200532260_)))
                                          (_hd3200432264_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200532260_))))
                                      (if (gx#stx-null? _tl3200332267_)
                                          (___kont4658846589_
                                           _hd3200432264_
                                           _hd3199832244_
                                           _hd3199532234_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))
                              (let () (declare (not safe)) (_g3190432050_)))
                          (if (gx#stx-datum? _hd3200132254_)
                              (let ((_e3201832187_ (gx#stx-e _hd3200132254_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3201832187_ '::))
                                    (if (gx#stx-pair? _tl3200032257_)
                                        (let ((_e3202132191_
                                               (gx#syntax-e _tl3200032257_)))
                                          (let ((_tl3201932198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3202132191_)))
                                                (_hd3202032195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3202132191_))))
                                            (if (gx#stx-null? _tl3201932198_)
                                                (___kont4659046591_
                                                 _hd3202032195_
                                                 _hd3199832244_
                                                 _hd3199532234_)
                                                (if (gx#stx-pair?
                                                     _tl3201932198_)
                                                    (let ((_e3204132101_
                                                           (gx#syntax-e
                                                            _tl3201932198_)))
                                                      (let ((_tl3203932108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3204132101_)))
                    (_hd3204032105_
                     (let () (declare (not safe)) (##car _e3204132101_))))
                (if (gx#identifier? _hd3204032105_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50574_|
                         _hd3204032105_)
                        (if (gx#stx-pair? _tl3203932108_)
                            (let ((_e3204432111_ (gx#syntax-e _tl3203932108_)))
                              (let ((_tl3204232118_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3204432111_)))
                                    (_hd3204332115_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3204432111_))))
                                (if (gx#stx-null? _tl3204232118_)
                                    (___kont4659246593_
                                     _hd3204332115_
                                     _hd3202032195_
                                     _hd3199832244_
                                     _hd3199532234_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))))
                            (let () (declare (not safe)) (_g3190432050_)))
                        (let () (declare (not safe)) (_g3190432050_)))
                    (let () (declare (not safe)) (_g3190432050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_))))
                              (let () (declare (not safe)) (_g3190432050_))))))
                   (___match4672446725_
                    (lambda (_e3198732298_
                             _hd3198632302_
                             _tl3198532305_
                             _e3199032308_
                             _hd3198932312_
                             _tl3198832315_)
                      (if (gx#stx-null? _tl3198832315_)
                          (___kont4658646587_ _hd3198932312_ _hd3198632302_)
                          (if (gx#stx-pair? _tl3198832315_)
                              (let ((_e3200232250_
                                     (gx#syntax-e _tl3198832315_)))
                                (let ((_tl3200032257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3200232250_)))
                                      (_hd3200132254_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3200232250_))))
                                  (if (gx#identifier? _hd3200132254_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50575_|
                                           _hd3200132254_)
                                          (if (gx#stx-pair? _tl3200032257_)
                                              (let ((_e3200532260_
                                                     (gx#syntax-e
                                                      _tl3200032257_)))
                                                (let ((_tl3200332267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3200532260_)))
                                                      (_hd3200432264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3200532260_))))
                                                  (if (gx#stx-null?
                                                       _tl3200332267_)
                                                      (___kont4658846589_
                                                       _hd3200432264_
                                                       _hd3198932312_
                                                       _hd3198632302_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3190432050_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))
                                      (if (gx#stx-datum? _hd3200132254_)
                                          (let ((_e3201832187_
                                                 (gx#stx-e _hd3200132254_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3201832187_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3200032257_)
                                                    (let ((_e3202132191_
                                                           (gx#syntax-e
                                                            _tl3200032257_)))
                                                      (let ((_tl3201932198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3202132191_)))
                    (_hd3202032195_
                     (let () (declare (not safe)) (##car _e3202132191_))))
                (if (gx#stx-null? _tl3201932198_)
                    (___kont4659046591_
                     _hd3202032195_
                     _hd3198932312_
                     _hd3198632302_)
                    (if (gx#stx-pair? _tl3201932198_)
                        (let ((_e3204132101_ (gx#syntax-e _tl3201932198_)))
                          (let ((_tl3203932108_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3204132101_)))
                                (_hd3204032105_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3204132101_))))
                            (if (gx#identifier? _hd3204032105_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50574_|
                                     _hd3204032105_)
                                    (if (gx#stx-pair? _tl3203932108_)
                                        (let ((_e3204432111_
                                               (gx#syntax-e _tl3203932108_)))
                                          (let ((_tl3204232118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3204432111_)))
                                                (_hd3204332115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3204432111_))))
                                            (if (gx#stx-null? _tl3204232118_)
                                                (___kont4659246593_
                                                 _hd3204332115_
                                                 _hd3202032195_
                                                 _hd3198932312_
                                                 _hd3198632302_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3190432050_)))))
                        (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_))))))
                              (let () (declare (not safe)) (_g3190432050_))))))
                   (___match4665446655_
                    (lambda (_e3193532474_
                             _hd3193432478_
                             _tl3193332481_
                             _e3193832484_
                             _hd3193732488_
                             _tl3193632491_
                             _e3194132494_
                             _hd3194032498_
                             _tl3193932501_
                             ___splice4658046581_
                             _target3194232504_
                             _tl3194432507_)
                      (letrec ((_loop3194532510_
                                (lambda (_hd3194332514_ _pred3194932517_)
                                  (if (gx#stx-pair? _hd3194332514_)
                                      (let ((_e3194632520_
                                             (gx#syntax-e _hd3194332514_)))
                                        (let ((_lp-tl3194832527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3194632520_)))
                                              (_lp-hd3194732524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3194632520_))))
                                          (_loop3194532510_
                                           _lp-tl3194832527_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3194732524_
                                                   _pred3194932517_)))))
                                      (let ((_pred3195032530_
                                             (reverse _pred3194932517_)))
                                        (if (gx#stx-pair? _tl3193632491_)
                                            (let ((_e3195332534_
                                                   (gx#syntax-e
                                                    _tl3193632491_)))
                                              (let ((_tl3195132541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3195332534_)))
                                                    (_hd3195232538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3195332534_))))
                                                (if (gx#stx-null?
                                                     _tl3195132541_)
                                                    (___kont4657846579_
                                                     _hd3195232538_
                                                     _pred3195032530_
                                                     _hd3193432478_)
                                                    (___match4674446745_
                                                     _e3193532474_
                                                     _hd3193432478_
                                                     _tl3193332481_
                                                     _e3193832484_
                                                     _hd3193732488_
                                                     _tl3193632491_
                                                     _e3195332534_
                                                     _hd3195232538_
                                                     _tl3195132541_))))
                                            (___match4672446725_
                                             _e3193532474_
                                             _hd3193432478_
                                             _tl3193332481_
                                             _e3193832484_
                                             _hd3193732488_
                                             _tl3193632491_)))))))
                        (_loop3194532510_ _target3194232504_ '()))))
                   (___match4662446625_
                    (lambda (_e3191132584_
                             _hd3191032588_
                             _tl3190932591_
                             _e3191432594_
                             _hd3191332598_
                             _tl3191232601_
                             _e3191732604_
                             _hd3191632608_
                             _tl3191532611_
                             ___splice4657646577_
                             _target3191832614_
                             _tl3192032617_)
                      (letrec ((_loop3192132620_
                                (lambda (_hd3191932624_ _pred3192532627_)
                                  (if (gx#stx-pair? _hd3191932624_)
                                      (let ((_e3192232630_
                                             (gx#syntax-e _hd3191932624_)))
                                        (let ((_lp-tl3192432637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3192232630_)))
                                              (_lp-hd3192332634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3192232630_))))
                                          (_loop3192132620_
                                           _lp-tl3192432637_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3192332634_
                                                   _pred3192532627_)))))
                                      (let ((_pred3192632640_
                                             (reverse _pred3192532627_)))
                                        (if (gx#stx-pair? _tl3191232601_)
                                            (let ((_e3192932644_
                                                   (gx#syntax-e
                                                    _tl3191232601_)))
                                              (let ((_tl3192732651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3192932644_)))
                                                    (_hd3192832648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3192932644_))))
                                                (if (gx#stx-null?
                                                     _tl3192732651_)
                                                    (___kont4657446575_
                                                     _hd3192832648_
                                                     _pred3192632640_
                                                     _hd3191032588_)
                                                    (___match4674446745_
                                                     _e3191132584_
                                                     _hd3191032588_
                                                     _tl3190932591_
                                                     _e3191432594_
                                                     _hd3191332598_
                                                     _tl3191232601_
                                                     _e3192932644_
                                                     _hd3192832648_
                                                     _tl3192732651_))))
                                            (___match4672446725_
                                             _e3191132584_
                                             _hd3191032588_
                                             _tl3190932591_
                                             _e3191432594_
                                             _hd3191332598_
                                             _tl3191232601_)))))))
                        (_loop3192132620_ _target3191832614_ '())))))
              (if (gx#stx-pair? ___stx4657146572_)
                  (let ((_e3191132584_ (gx#syntax-e ___stx4657146572_)))
                    (let ((_tl3190932591_
                           (let () (declare (not safe)) (##cdr _e3191132584_)))
                          (_hd3191032588_
                           (let ()
                             (declare (not safe))
                             (##car _e3191132584_))))
                      (if (gx#stx-pair? _tl3190932591_)
                          (let ((_e3191432594_ (gx#syntax-e _tl3190932591_)))
                            (let ((_tl3191232601_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3191432594_)))
                                  (_hd3191332598_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3191432594_))))
                              (if (gx#stx-pair? _hd3191332598_)
                                  (let ((_e3191732604_
                                         (gx#syntax-e _hd3191332598_)))
                                    (let ((_tl3191532611_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3191732604_)))
                                          (_hd3191632608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3191732604_))))
                                      (if (gx#identifier? _hd3191632608_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50578_|
                                               _hd3191632608_)
                                              (if (gx#stx-pair/null?
                                                   _tl3191532611_)
                                                  (let ((___splice4657646577_
                                                         (gx#syntax-split-splice
                                                          _tl3191532611_
                                                          '0)))
                                                    (let ((_tl3192032617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4657646577_
                                                              '1)))
                                                          (_target3191832614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4657646577_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3192032617_)
                                                          (___match4662446625_
                                                           _e3191132584_
                                                           _hd3191032588_
                                                           _tl3190932591_
                                                           _e3191432594_
                                                           _hd3191332598_
                                                           _tl3191232601_
                                                           _e3191732604_
                                                           _hd3191632608_
                                                           _tl3191532611_
                                                           ___splice4657646577_
                                                           _target3191832614_
                                                           _tl3192032617_)
                                                          (if (gx#stx-pair?
                                                               _tl3191232601_)
                                                              (let ((_e3198232360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3191232601_)))
                        (let ((_tl3198032367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3198232360_)))
                              (_hd3198132364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3198232360_))))
                          (if (gx#stx-null? _tl3198032367_)
                              (___kont4658446585_
                               _hd3198132364_
                               _hd3191332598_)
                              (if (gx#identifier? _hd3198132364_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50575_|
                                       _hd3198132364_)
                                      (if (gx#stx-pair? _tl3198032367_)
                                          (let ((_e3200532260_
                                                 (gx#syntax-e _tl3198032367_)))
                                            (let ((_tl3200332267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3200532260_)))
                                                  (_hd3200432264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3200532260_))))
                                              (if (gx#stx-null? _tl3200332267_)
                                                  (___kont4658846589_
                                                   _hd3200432264_
                                                   _hd3191332598_
                                                   _hd3191032588_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3190432050_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))
                                  (if (gx#stx-datum? _hd3198132364_)
                                      (let ((_e3201832187_
                                             (gx#stx-e _hd3198132364_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3201832187_ '::))
                                            (if (gx#stx-pair? _tl3198032367_)
                                                (let ((_e3202132191_
                                                       (gx#syntax-e
                                                        _tl3198032367_)))
                                                  (let ((_tl3201932198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3202132191_)))
                                                        (_hd3202032195_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3202132191_))))
                                                    (if (gx#stx-null?
                                                         _tl3201932198_)
                                                        (___kont4659046591_
                                                         _hd3202032195_
                                                         _hd3191332598_
                                                         _hd3191032588_)
                                                        (if (gx#stx-pair?
                                                             _tl3201932198_)
                                                            (let ((_e3204132101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3201932198_)))
                      (let ((_tl3203932108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3204132101_)))
                            (_hd3204032105_
                             (let ()
                               (declare (not safe))
                               (##car _e3204132101_))))
                        (if (gx#identifier? _hd3204032105_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50574_|
                                 _hd3204032105_)
                                (if (gx#stx-pair? _tl3203932108_)
                                    (let ((_e3204432111_
                                           (gx#syntax-e _tl3203932108_)))
                                      (let ((_tl3204232118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3204432111_)))
                                            (_hd3204332115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3204432111_))))
                                        (if (gx#stx-null? _tl3204232118_)
                                            (___kont4659246593_
                                             _hd3204332115_
                                             _hd3202032195_
                                             _hd3191332598_
                                             _hd3191032588_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))
                                (let () (declare (not safe)) (_g3190432050_)))
                            (let () (declare (not safe)) (_g3190432050_)))))
                    (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))))))
                      (if (gx#stx-null? _tl3191232601_)
                          (___kont4658646587_ _hd3191332598_ _hd3191032588_)
                          (let () (declare (not safe)) (_g3190432050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3191232601_)
                                                      (let ((_e3198232360_
                                                             (gx#syntax-e
                                                              _tl3191232601_)))
                                                        (let ((_tl3198032367_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3198232360_)))
                      (_hd3198132364_
                       (let () (declare (not safe)) (##car _e3198232360_))))
                  (if (gx#stx-null? _tl3198032367_)
                      (___kont4658446585_ _hd3198132364_ _hd3191332598_)
                      (if (gx#identifier? _hd3198132364_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50575_|
                               _hd3198132364_)
                              (if (gx#stx-pair? _tl3198032367_)
                                  (let ((_e3200532260_
                                         (gx#syntax-e _tl3198032367_)))
                                    (let ((_tl3200332267_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200532260_)))
                                          (_hd3200432264_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200532260_))))
                                      (if (gx#stx-null? _tl3200332267_)
                                          (___kont4658846589_
                                           _hd3200432264_
                                           _hd3191332598_
                                           _hd3191032588_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))
                              (let () (declare (not safe)) (_g3190432050_)))
                          (if (gx#stx-datum? _hd3198132364_)
                              (let ((_e3201832187_ (gx#stx-e _hd3198132364_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3201832187_ '::))
                                    (if (gx#stx-pair? _tl3198032367_)
                                        (let ((_e3202132191_
                                               (gx#syntax-e _tl3198032367_)))
                                          (let ((_tl3201932198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3202132191_)))
                                                (_hd3202032195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3202132191_))))
                                            (if (gx#stx-null? _tl3201932198_)
                                                (___kont4659046591_
                                                 _hd3202032195_
                                                 _hd3191332598_
                                                 _hd3191032588_)
                                                (if (gx#stx-pair?
                                                     _tl3201932198_)
                                                    (let ((_e3204132101_
                                                           (gx#syntax-e
                                                            _tl3201932198_)))
                                                      (let ((_tl3203932108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3204132101_)))
                    (_hd3204032105_
                     (let () (declare (not safe)) (##car _e3204132101_))))
                (if (gx#identifier? _hd3204032105_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50574_|
                         _hd3204032105_)
                        (if (gx#stx-pair? _tl3203932108_)
                            (let ((_e3204432111_ (gx#syntax-e _tl3203932108_)))
                              (let ((_tl3204232118_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3204432111_)))
                                    (_hd3204332115_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3204432111_))))
                                (if (gx#stx-null? _tl3204232118_)
                                    (___kont4659246593_
                                     _hd3204332115_
                                     _hd3202032195_
                                     _hd3191332598_
                                     _hd3191032588_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))))
                            (let () (declare (not safe)) (_g3190432050_)))
                        (let () (declare (not safe)) (_g3190432050_)))
                    (let () (declare (not safe)) (_g3190432050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_))))
                              (let ()
                                (declare (not safe))
                                (_g3190432050_)))))))
              (if (gx#stx-null? _tl3191232601_)
                  (___kont4658646587_ _hd3191332598_ _hd3191032588_)
                  (let () (declare (not safe)) (_g3190432050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50577_|
                                                   _hd3191632608_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3191532611_)
                                                      (let ((___splice4658046581_
                                                             (gx#syntax-split-splice
                                                              _tl3191532611_
                                                              '0)))
                                                        (let ((_tl3194432507_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4658046581_ '1)))
                      (_target3194232504_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4658046581_ '0))))
                  (if (gx#stx-null? _tl3194432507_)
                      (___match4665446655_
                       _e3191132584_
                       _hd3191032588_
                       _tl3190932591_
                       _e3191432594_
                       _hd3191332598_
                       _tl3191232601_
                       _e3191732604_
                       _hd3191632608_
                       _tl3191532611_
                       ___splice4658046581_
                       _target3194232504_
                       _tl3194432507_)
                      (if (gx#stx-pair? _tl3191232601_)
                          (let ((_e3198232360_ (gx#syntax-e _tl3191232601_)))
                            (let ((_tl3198032367_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3198232360_)))
                                  (_hd3198132364_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3198232360_))))
                              (if (gx#stx-null? _tl3198032367_)
                                  (___kont4658446585_
                                   _hd3198132364_
                                   _hd3191332598_)
                                  (if (gx#identifier? _hd3198132364_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50575_|
                                           _hd3198132364_)
                                          (if (gx#stx-pair? _tl3198032367_)
                                              (let ((_e3200532260_
                                                     (gx#syntax-e
                                                      _tl3198032367_)))
                                                (let ((_tl3200332267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3200532260_)))
                                                      (_hd3200432264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3200532260_))))
                                                  (if (gx#stx-null?
                                                       _tl3200332267_)
                                                      (___kont4658846589_
                                                       _hd3200432264_
                                                       _hd3191332598_
                                                       _hd3191032588_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3190432050_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))
                                      (if (gx#stx-datum? _hd3198132364_)
                                          (let ((_e3201832187_
                                                 (gx#stx-e _hd3198132364_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3201832187_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3198032367_)
                                                    (let ((_e3202132191_
                                                           (gx#syntax-e
                                                            _tl3198032367_)))
                                                      (let ((_tl3201932198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3202132191_)))
                    (_hd3202032195_
                     (let () (declare (not safe)) (##car _e3202132191_))))
                (if (gx#stx-null? _tl3201932198_)
                    (___kont4659046591_
                     _hd3202032195_
                     _hd3191332598_
                     _hd3191032588_)
                    (if (gx#stx-pair? _tl3201932198_)
                        (let ((_e3204132101_ (gx#syntax-e _tl3201932198_)))
                          (let ((_tl3203932108_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3204132101_)))
                                (_hd3204032105_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3204132101_))))
                            (if (gx#identifier? _hd3204032105_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50574_|
                                     _hd3204032105_)
                                    (if (gx#stx-pair? _tl3203932108_)
                                        (let ((_e3204432111_
                                               (gx#syntax-e _tl3203932108_)))
                                          (let ((_tl3204232118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3204432111_)))
                                                (_hd3204332115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3204432111_))))
                                            (if (gx#stx-null? _tl3204232118_)
                                                (___kont4659246593_
                                                 _hd3204332115_
                                                 _hd3202032195_
                                                 _hd3191332598_
                                                 _hd3191032588_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3190432050_)))))
                        (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))))))
                          (if (gx#stx-null? _tl3191232601_)
                              (___kont4658646587_
                               _hd3191332598_
                               _hd3191032588_)
                              (let ()
                                (declare (not safe))
                                (_g3190432050_)))))))
              (if (gx#stx-pair? _tl3191232601_)
                  (let ((_e3198232360_ (gx#syntax-e _tl3191232601_)))
                    (let ((_tl3198032367_
                           (let () (declare (not safe)) (##cdr _e3198232360_)))
                          (_hd3198132364_
                           (let ()
                             (declare (not safe))
                             (##car _e3198232360_))))
                      (if (gx#stx-null? _tl3198032367_)
                          (___kont4658446585_ _hd3198132364_ _hd3191332598_)
                          (if (gx#identifier? _hd3198132364_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50575_|
                                   _hd3198132364_)
                                  (if (gx#stx-pair? _tl3198032367_)
                                      (let ((_e3200532260_
                                             (gx#syntax-e _tl3198032367_)))
                                        (let ((_tl3200332267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200532260_)))
                                              (_hd3200432264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200532260_))))
                                          (if (gx#stx-null? _tl3200332267_)
                                              (___kont4658846589_
                                               _hd3200432264_
                                               _hd3191332598_
                                               _hd3191032588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))
                              (if (gx#stx-datum? _hd3198132364_)
                                  (let ((_e3201832187_
                                         (gx#stx-e _hd3198132364_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3201832187_ '::))
                                        (if (gx#stx-pair? _tl3198032367_)
                                            (let ((_e3202132191_
                                                   (gx#syntax-e
                                                    _tl3198032367_)))
                                              (let ((_tl3201932198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3202132191_)))
                                                    (_hd3202032195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3202132191_))))
                                                (if (gx#stx-null?
                                                     _tl3201932198_)
                                                    (___kont4659046591_
                                                     _hd3202032195_
                                                     _hd3191332598_
                                                     _hd3191032588_)
                                                    (if (gx#stx-pair?
                                                         _tl3201932198_)
                                                        (let ((_e3204132101_
                                                               (gx#syntax-e
                                                                _tl3201932198_)))
                                                          (let ((_tl3203932108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3204132101_)))
                        (_hd3204032105_
                         (let () (declare (not safe)) (##car _e3204132101_))))
                    (if (gx#identifier? _hd3204032105_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50574_|
                             _hd3204032105_)
                            (if (gx#stx-pair? _tl3203932108_)
                                (let ((_e3204432111_
                                       (gx#syntax-e _tl3203932108_)))
                                  (let ((_tl3204232118_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3204432111_)))
                                        (_hd3204332115_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3204432111_))))
                                    (if (gx#stx-null? _tl3204232118_)
                                        (___kont4659246593_
                                         _hd3204332115_
                                         _hd3202032195_
                                         _hd3191332598_
                                         _hd3191032588_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))))
                                (let () (declare (not safe)) (_g3190432050_)))
                            (let () (declare (not safe)) (_g3190432050_)))
                        (let () (declare (not safe)) (_g3190432050_)))))
                (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))))))
                  (if (gx#stx-null? _tl3191232601_)
                      (___kont4658646587_ _hd3191332598_ _hd3191032588_)
                      (let () (declare (not safe)) (_g3190432050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50576_|
                                                       _hd3191632608_)
                                                      (if (gx#stx-pair?
                                                           _tl3191532611_)
                                                          (let ((_e3196832424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3191532611_)))
                    (let ((_tl3196632431_
                           (let () (declare (not safe)) (##cdr _e3196832424_)))
                          (_hd3196732428_
                           (let ()
                             (declare (not safe))
                             (##car _e3196832424_))))
                      (if (gx#stx-null? _tl3196632431_)
                          (if (gx#stx-pair? _tl3191232601_)
                              (let ((_e3197132434_
                                     (gx#syntax-e _tl3191232601_)))
                                (let ((_tl3196932441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3197132434_)))
                                      (_hd3197032438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3197132434_))))
                                  (if (gx#stx-null? _tl3196932441_)
                                      (___kont4658246583_
                                       _hd3197032438_
                                       _hd3196732428_
                                       _hd3191032588_)
                                      (if (gx#identifier? _hd3197032438_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50575_|
                                               _hd3197032438_)
                                              (if (gx#stx-pair? _tl3196932441_)
                                                  (let ((_e3200532260_
                                                         (gx#syntax-e
                                                          _tl3196932441_)))
                                                    (let ((_tl3200332267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3200532260_)))
                                                          (_hd3200432264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3200532260_))))
                                                      (if (gx#stx-null?
                                                           _tl3200332267_)
                                                          (___kont4658846589_
                                                           _hd3200432264_
                                                           _hd3191332598_
                                                           _hd3191032588_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3190432050_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3190432050_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))
                                          (if (gx#stx-datum? _hd3197032438_)
                                              (let ((_e3201832187_
                                                     (gx#stx-e
                                                      _hd3197032438_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3201832187_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3196932441_)
                                                        (let ((_e3202132191_
                                                               (gx#syntax-e
                                                                _tl3196932441_)))
                                                          (let ((_tl3201932198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3202132191_)))
                        (_hd3202032195_
                         (let () (declare (not safe)) (##car _e3202132191_))))
                    (if (gx#stx-null? _tl3201932198_)
                        (___kont4659046591_
                         _hd3202032195_
                         _hd3191332598_
                         _hd3191032588_)
                        (if (gx#stx-pair? _tl3201932198_)
                            (let ((_e3204132101_ (gx#syntax-e _tl3201932198_)))
                              (let ((_tl3203932108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3204132101_)))
                                    (_hd3204032105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3204132101_))))
                                (if (gx#identifier? _hd3204032105_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50574_|
                                         _hd3204032105_)
                                        (if (gx#stx-pair? _tl3203932108_)
                                            (let ((_e3204432111_
                                                   (gx#syntax-e
                                                    _tl3203932108_)))
                                              (let ((_tl3204232118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3204432111_)))
                                                    (_hd3204332115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3204432111_))))
                                                (if (gx#stx-null?
                                                     _tl3204232118_)
                                                    (___kont4659246593_
                                                     _hd3204332115_
                                                     _hd3202032195_
                                                     _hd3191332598_
                                                     _hd3191032588_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))))
                            (let () (declare (not safe)) (_g3190432050_))))))
                (let () (declare (not safe)) (_g3190432050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))))))
                              (if (gx#stx-null? _tl3191232601_)
                                  (___kont4658646587_
                                   _hd3191332598_
                                   _hd3191032588_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_))))
                          (if (gx#stx-pair? _tl3191232601_)
                              (let ((_e3198232360_
                                     (gx#syntax-e _tl3191232601_)))
                                (let ((_tl3198032367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3198232360_)))
                                      (_hd3198132364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3198232360_))))
                                  (if (gx#stx-null? _tl3198032367_)
                                      (___kont4658446585_
                                       _hd3198132364_
                                       _hd3191332598_)
                                      (if (gx#identifier? _hd3198132364_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50575_|
                                               _hd3198132364_)
                                              (if (gx#stx-pair? _tl3198032367_)
                                                  (let ((_e3200532260_
                                                         (gx#syntax-e
                                                          _tl3198032367_)))
                                                    (let ((_tl3200332267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3200532260_)))
                                                          (_hd3200432264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3200532260_))))
                                                      (if (gx#stx-null?
                                                           _tl3200332267_)
                                                          (___kont4658846589_
                                                           _hd3200432264_
                                                           _hd3191332598_
                                                           _hd3191032588_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3190432050_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3190432050_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))
                                          (if (gx#stx-datum? _hd3198132364_)
                                              (let ((_e3201832187_
                                                     (gx#stx-e
                                                      _hd3198132364_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3201832187_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3198032367_)
                                                        (let ((_e3202132191_
                                                               (gx#syntax-e
                                                                _tl3198032367_)))
                                                          (let ((_tl3201932198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3202132191_)))
                        (_hd3202032195_
                         (let () (declare (not safe)) (##car _e3202132191_))))
                    (if (gx#stx-null? _tl3201932198_)
                        (___kont4659046591_
                         _hd3202032195_
                         _hd3191332598_
                         _hd3191032588_)
                        (if (gx#stx-pair? _tl3201932198_)
                            (let ((_e3204132101_ (gx#syntax-e _tl3201932198_)))
                              (let ((_tl3203932108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3204132101_)))
                                    (_hd3204032105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3204132101_))))
                                (if (gx#identifier? _hd3204032105_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50574_|
                                         _hd3204032105_)
                                        (if (gx#stx-pair? _tl3203932108_)
                                            (let ((_e3204432111_
                                                   (gx#syntax-e
                                                    _tl3203932108_)))
                                              (let ((_tl3204232118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3204432111_)))
                                                    (_hd3204332115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3204432111_))))
                                                (if (gx#stx-null?
                                                     _tl3204232118_)
                                                    (___kont4659246593_
                                                     _hd3204332115_
                                                     _hd3202032195_
                                                     _hd3191332598_
                                                     _hd3191032588_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))))
                            (let () (declare (not safe)) (_g3190432050_))))))
                (let () (declare (not safe)) (_g3190432050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))))))
                              (if (gx#stx-null? _tl3191232601_)
                                  (___kont4658646587_
                                   _hd3191332598_
                                   _hd3191032588_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))))))
                  (if (gx#stx-pair? _tl3191232601_)
                      (let ((_e3198232360_ (gx#syntax-e _tl3191232601_)))
                        (let ((_tl3198032367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3198232360_)))
                              (_hd3198132364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3198232360_))))
                          (if (gx#stx-null? _tl3198032367_)
                              (___kont4658446585_
                               _hd3198132364_
                               _hd3191332598_)
                              (if (gx#identifier? _hd3198132364_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50575_|
                                       _hd3198132364_)
                                      (if (gx#stx-pair? _tl3198032367_)
                                          (let ((_e3200532260_
                                                 (gx#syntax-e _tl3198032367_)))
                                            (let ((_tl3200332267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3200532260_)))
                                                  (_hd3200432264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3200532260_))))
                                              (if (gx#stx-null? _tl3200332267_)
                                                  (___kont4658846589_
                                                   _hd3200432264_
                                                   _hd3191332598_
                                                   _hd3191032588_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3190432050_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))
                                  (if (gx#stx-datum? _hd3198132364_)
                                      (let ((_e3201832187_
                                             (gx#stx-e _hd3198132364_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3201832187_ '::))
                                            (if (gx#stx-pair? _tl3198032367_)
                                                (let ((_e3202132191_
                                                       (gx#syntax-e
                                                        _tl3198032367_)))
                                                  (let ((_tl3201932198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3202132191_)))
                                                        (_hd3202032195_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3202132191_))))
                                                    (if (gx#stx-null?
                                                         _tl3201932198_)
                                                        (___kont4659046591_
                                                         _hd3202032195_
                                                         _hd3191332598_
                                                         _hd3191032588_)
                                                        (if (gx#stx-pair?
                                                             _tl3201932198_)
                                                            (let ((_e3204132101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3201932198_)))
                      (let ((_tl3203932108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3204132101_)))
                            (_hd3204032105_
                             (let ()
                               (declare (not safe))
                               (##car _e3204132101_))))
                        (if (gx#identifier? _hd3204032105_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50574_|
                                 _hd3204032105_)
                                (if (gx#stx-pair? _tl3203932108_)
                                    (let ((_e3204432111_
                                           (gx#syntax-e _tl3203932108_)))
                                      (let ((_tl3204232118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3204432111_)))
                                            (_hd3204332115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3204432111_))))
                                        (if (gx#stx-null? _tl3204232118_)
                                            (___kont4659246593_
                                             _hd3204332115_
                                             _hd3202032195_
                                             _hd3191332598_
                                             _hd3191032588_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_)))
                                (let () (declare (not safe)) (_g3190432050_)))
                            (let () (declare (not safe)) (_g3190432050_)))))
                    (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))))))
                      (if (gx#stx-null? _tl3191232601_)
                          (___kont4658646587_ _hd3191332598_ _hd3191032588_)
                          (let () (declare (not safe)) (_g3190432050_)))))
              (if (gx#stx-pair? _tl3191232601_)
                  (let ((_e3198232360_ (gx#syntax-e _tl3191232601_)))
                    (let ((_tl3198032367_
                           (let () (declare (not safe)) (##cdr _e3198232360_)))
                          (_hd3198132364_
                           (let ()
                             (declare (not safe))
                             (##car _e3198232360_))))
                      (if (gx#stx-null? _tl3198032367_)
                          (___kont4658446585_ _hd3198132364_ _hd3191332598_)
                          (if (gx#identifier? _hd3198132364_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50575_|
                                   _hd3198132364_)
                                  (if (gx#stx-pair? _tl3198032367_)
                                      (let ((_e3200532260_
                                             (gx#syntax-e _tl3198032367_)))
                                        (let ((_tl3200332267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200532260_)))
                                              (_hd3200432264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200532260_))))
                                          (if (gx#stx-null? _tl3200332267_)
                                              (___kont4658846589_
                                               _hd3200432264_
                                               _hd3191332598_
                                               _hd3191032588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3190432050_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3190432050_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))
                              (if (gx#stx-datum? _hd3198132364_)
                                  (let ((_e3201832187_
                                         (gx#stx-e _hd3198132364_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3201832187_ '::))
                                        (if (gx#stx-pair? _tl3198032367_)
                                            (let ((_e3202132191_
                                                   (gx#syntax-e
                                                    _tl3198032367_)))
                                              (let ((_tl3201932198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3202132191_)))
                                                    (_hd3202032195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3202132191_))))
                                                (if (gx#stx-null?
                                                     _tl3201932198_)
                                                    (___kont4659046591_
                                                     _hd3202032195_
                                                     _hd3191332598_
                                                     _hd3191032588_)
                                                    (if (gx#stx-pair?
                                                         _tl3201932198_)
                                                        (let ((_e3204132101_
                                                               (gx#syntax-e
                                                                _tl3201932198_)))
                                                          (let ((_tl3203932108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3204132101_)))
                        (_hd3204032105_
                         (let () (declare (not safe)) (##car _e3204132101_))))
                    (if (gx#identifier? _hd3204032105_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50574_|
                             _hd3204032105_)
                            (if (gx#stx-pair? _tl3203932108_)
                                (let ((_e3204432111_
                                       (gx#syntax-e _tl3203932108_)))
                                  (let ((_tl3204232118_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3204432111_)))
                                        (_hd3204332115_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3204432111_))))
                                    (if (gx#stx-null? _tl3204232118_)
                                        (___kont4659246593_
                                         _hd3204332115_
                                         _hd3202032195_
                                         _hd3191332598_
                                         _hd3191032588_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_)))))
                                (let () (declare (not safe)) (_g3190432050_)))
                            (let () (declare (not safe)) (_g3190432050_)))
                        (let () (declare (not safe)) (_g3190432050_)))))
                (let () (declare (not safe)) (_g3190432050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3190432050_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))))))
                  (if (gx#stx-null? _tl3191232601_)
                      (___kont4658646587_ _hd3191332598_ _hd3191032588_)
                      (let () (declare (not safe)) (_g3190432050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3191232601_)
                                              (let ((_e3198232360_
                                                     (gx#syntax-e
                                                      _tl3191232601_)))
                                                (let ((_tl3198032367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3198232360_)))
                                                      (_hd3198132364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3198232360_))))
                                                  (if (gx#stx-null?
                                                       _tl3198032367_)
                                                      (___kont4658446585_
                                                       _hd3198132364_
                                                       _hd3191332598_)
                                                      (if (gx#identifier?
                                                           _hd3198132364_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50575_|
                                                               _hd3198132364_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3198032367_)
                          (let ((_e3200532260_ (gx#syntax-e _tl3198032367_)))
                            (let ((_tl3200332267_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3200532260_)))
                                  (_hd3200432264_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3200532260_))))
                              (if (gx#stx-null? _tl3200332267_)
                                  (___kont4658846589_
                                   _hd3200432264_
                                   _hd3191332598_
                                   _hd3191032588_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3190432050_)))))
                          (let () (declare (not safe)) (_g3190432050_)))
                      (let () (declare (not safe)) (_g3190432050_)))
                  (if (gx#stx-datum? _hd3198132364_)
                      (let ((_e3201832187_ (gx#stx-e _hd3198132364_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3201832187_ '::))
                            (if (gx#stx-pair? _tl3198032367_)
                                (let ((_e3202132191_
                                       (gx#syntax-e _tl3198032367_)))
                                  (let ((_tl3201932198_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3202132191_)))
                                        (_hd3202032195_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3202132191_))))
                                    (if (gx#stx-null? _tl3201932198_)
                                        (___kont4659046591_
                                         _hd3202032195_
                                         _hd3191332598_
                                         _hd3191032588_)
                                        (if (gx#stx-pair? _tl3201932198_)
                                            (let ((_e3204132101_
                                                   (gx#syntax-e
                                                    _tl3201932198_)))
                                              (let ((_tl3203932108_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3204132101_)))
                                                    (_hd3204032105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3204132101_))))
                                                (if (gx#identifier?
                                                     _hd3204032105_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50574_|
                                                         _hd3204032105_)
                                                        (if (gx#stx-pair?
                                                             _tl3203932108_)
                                                            (let ((_e3204432111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3203932108_)))
                      (let ((_tl3204232118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3204432111_)))
                            (_hd3204332115_
                             (let ()
                               (declare (not safe))
                               (##car _e3204432111_))))
                        (if (gx#stx-null? _tl3204232118_)
                            (___kont4659246593_
                             _hd3204332115_
                             _hd3202032195_
                             _hd3191332598_
                             _hd3191032588_)
                            (let () (declare (not safe)) (_g3190432050_)))))
                    (let () (declare (not safe)) (_g3190432050_)))
                (let () (declare (not safe)) (_g3190432050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_))))))
                                (let () (declare (not safe)) (_g3190432050_)))
                            (let () (declare (not safe)) (_g3190432050_))))
                      (let () (declare (not safe)) (_g3190432050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3191232601_)
                                                  (___kont4658646587_
                                                   _hd3191332598_
                                                   _hd3191032588_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3190432050_)))))))
                                  (if (gx#stx-pair? _tl3191232601_)
                                      (let ((_e3198232360_
                                             (gx#syntax-e _tl3191232601_)))
                                        (let ((_tl3198032367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3198232360_)))
                                              (_hd3198132364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3198232360_))))
                                          (if (gx#stx-null? _tl3198032367_)
                                              (___kont4658446585_
                                               _hd3198132364_
                                               _hd3191332598_)
                                              (if (gx#identifier?
                                                   _hd3198132364_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50575_|
                                                       _hd3198132364_)
                                                      (if (gx#stx-pair?
                                                           _tl3198032367_)
                                                          (let ((_e3200532260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3198032367_)))
                    (let ((_tl3200332267_
                           (let () (declare (not safe)) (##cdr _e3200532260_)))
                          (_hd3200432264_
                           (let ()
                             (declare (not safe))
                             (##car _e3200532260_))))
                      (if (gx#stx-null? _tl3200332267_)
                          (___kont4658846589_
                           _hd3200432264_
                           _hd3191332598_
                           _hd3191032588_)
                          (let () (declare (not safe)) (_g3190432050_)))))
                  (let () (declare (not safe)) (_g3190432050_)))
              (let () (declare (not safe)) (_g3190432050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3198132364_)
                                                      (let ((_e3201832187_
                                                             (gx#stx-e
                                                              _hd3198132364_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3201832187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3198032367_)
                        (let ((_e3202132191_ (gx#syntax-e _tl3198032367_)))
                          (let ((_tl3201932198_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3202132191_)))
                                (_hd3202032195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3202132191_))))
                            (if (gx#stx-null? _tl3201932198_)
                                (___kont4659046591_
                                 _hd3202032195_
                                 _hd3191332598_
                                 _hd3191032588_)
                                (if (gx#stx-pair? _tl3201932198_)
                                    (let ((_e3204132101_
                                           (gx#syntax-e _tl3201932198_)))
                                      (let ((_tl3203932108_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3204132101_)))
                                            (_hd3204032105_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3204132101_))))
                                        (if (gx#identifier? _hd3204032105_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50574_|
                                                 _hd3204032105_)
                                                (if (gx#stx-pair?
                                                     _tl3203932108_)
                                                    (let ((_e3204432111_
                                                           (gx#syntax-e
                                                            _tl3203932108_)))
                                                      (let ((_tl3204232118_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3204432111_)))
                    (_hd3204332115_
                     (let () (declare (not safe)) (##car _e3204432111_))))
                (if (gx#stx-null? _tl3204232118_)
                    (___kont4659246593_
                     _hd3204332115_
                     _hd3202032195_
                     _hd3191332598_
                     _hd3191032588_)
                    (let () (declare (not safe)) (_g3190432050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3190432050_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3190432050_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3190432050_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3190432050_))))))
                        (let () (declare (not safe)) (_g3190432050_)))
                    (let () (declare (not safe)) (_g3190432050_))))
              (let () (declare (not safe)) (_g3190432050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3191232601_)
                                          (___kont4658646587_
                                           _hd3191332598_
                                           _hd3191032588_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3190432050_)))))))
                          (let () (declare (not safe)) (_g3190432050_)))))
                  (let () (declare (not safe)) (_g3190432050_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32693_)
        (let* ((___stx4683946840_ _$stx32693_)
               (_g3269832732_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4683946840_))))
          (let ((___kont4684246843_
                 (lambda (_L32836_ _L32838_ _L32839_)
                   (let ((__tmp50640 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50579
                          (let ((__tmp50580
                                 (let ((__tmp50581
                                        (let ((__tmp50639
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50582
                                               (let ((__tmp50583
                                                      (let ((__tmp50584
                                                             (let ((__tmp50638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50585
                            (let ((__tmp50630
                                   (let ((__tmp50635
                                          (let ((__tmp50637
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50636
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32838_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50637 __tmp50636)))
                                         (__tmp50631
                                          (let ((__tmp50632
                                                 (let ((__tmp50634
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50633
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32836_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50634
                                                         __tmp50633))))
                                            (declare (not safe))
                                            (cons __tmp50632 '()))))
                                     (declare (not safe))
                                     (cons __tmp50635 __tmp50631)))
                                  (__tmp50586
                                   (let ((__tmp50587
                                          (let ((__tmp50629
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50588
                                                 (let ((__tmp50627
                                                        (let ((__tmp50628
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50628
                                                                '())))
                                                       (__tmp50589
                                                        (let ((__tmp50590
                                                               (let ((__tmp50626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50591
                              (let ((__tmp50625 (gx#datum->syntax '#f '$stx))
                                    (__tmp50592
                                     (let ((__tmp50593
                                            (let ((__tmp50604
                                                   (let ((__tmp50623
                                                          (let ((__tmp50624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50624)))
                 (__tmp50605
                  (let ((__tmp50606
                         (let ((__tmp50622
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50607
                                (let ((__tmp50621
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50608
                                       (let ((__tmp50609
                                              (let ((__tmp50620
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50610
                                                     (let ((__tmp50616
                                                            (let ((__tmp50619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50617
                           (let ((__tmp50618 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50618 '()))))
                      (declare (not safe))
                      (cons __tmp50619 __tmp50617)))
                   (__tmp50611
                    (let ((__tmp50612
                           (let ((__tmp50615
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50613
                                  (let ((__tmp50614
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50614 '()))))
                             (declare (not safe))
                             (cons __tmp50615 __tmp50613))))
                      (declare (not safe))
                      (cons __tmp50612 '()))))
               (declare (not safe))
               (cons __tmp50616 __tmp50611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50620 __tmp50610))))
                                         (declare (not safe))
                                         (cons __tmp50609 '()))))
                                  (declare (not safe))
                                  (cons __tmp50621 __tmp50608))))
                           (declare (not safe))
                           (cons __tmp50622 __tmp50607))))
                    (declare (not safe))
                    (cons __tmp50606 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50623
                                                           __tmp50605)))
                                                  (__tmp50594
                                                   (let ((__tmp50595
                                                          (let ((__tmp50603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50596
                         (let ((__tmp50597
                                (let ((__tmp50602
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50598
                                       (let ((__tmp50601
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50599
                                              (let ((__tmp50600
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50600 '()))))
                                         (declare (not safe))
                                         (cons __tmp50601 __tmp50599))))
                                  (declare (not safe))
                                  (cons __tmp50602 __tmp50598))))
                           (declare (not safe))
                           (cons __tmp50597 '()))))
                    (declare (not safe))
                    (cons __tmp50603 __tmp50596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50595 '()))))
                                              (declare (not safe))
                                              (cons __tmp50604 __tmp50594))))
                                       (declare (not safe))
                                       (cons '() __tmp50593))))
                                (declare (not safe))
                                (cons __tmp50625 __tmp50592))))
                         (declare (not safe))
                         (cons __tmp50626 __tmp50591))))
                  (declare (not safe))
                  (cons __tmp50590 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50627
                                                         __tmp50589))))
                                            (declare (not safe))
                                            (cons __tmp50629 __tmp50588))))
                                     (declare (not safe))
                                     (cons __tmp50587 '()))))
                              (declare (not safe))
                              (cons __tmp50630 __tmp50586))))
                       (declare (not safe))
                       (cons __tmp50638 __tmp50585))))
                (declare (not safe))
                (cons __tmp50584 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50583))))
                                          (declare (not safe))
                                          (cons __tmp50639 __tmp50582))))
                                   (declare (not safe))
                                   (cons __tmp50581 '()))))
                            (declare (not safe))
                            (cons _L32839_ __tmp50580))))
                     (declare (not safe))
                     (cons __tmp50640 __tmp50579))))
                (___kont4684446845_
                 (lambda (_L32769_ _L32771_ _L32772_)
                   (let ((__tmp50641
                          (let ((__tmp50642
                                 (let ((__tmp50643
                                        (let ((__tmp50644
                                               (let ((__tmp50655
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50645
                                                      (let ((__tmp50653
                                                             (let ((__tmp50654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50654 '())))
                    (__tmp50646
                     (let ((__tmp50647
                            (let ((__tmp50652
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50648
                                   (let ((__tmp50649
                                          (let ((__tmp50650
                                                 (let ((__tmp50651
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50651 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50650))))
                                     (declare (not safe))
                                     (cons '#f __tmp50649))))
                              (declare (not safe))
                              (cons __tmp50652 __tmp50648))))
                       (declare (not safe))
                       (cons __tmp50647 '()))))
                (declare (not safe))
                (cons __tmp50653 __tmp50646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50655
                                                       __tmp50645))))
                                          (declare (not safe))
                                          (cons __tmp50644 '()))))
                                   (declare (not safe))
                                   (cons _L32769_ __tmp50643))))
                            (declare (not safe))
                            (cons _L32771_ __tmp50642))))
                     (declare (not safe))
                     (cons _L32772_ __tmp50641)))))
            (let ((___match4687246873_
                   (lambda (_e3270532796_
                            _hd3270432800_
                            _tl3270332803_
                            _e3270832806_
                            _hd3270732810_
                            _tl3270632813_
                            _e3271132816_
                            _hd3271032820_
                            _tl3270932823_
                            _e3271432826_
                            _hd3271332830_
                            _tl3271232833_)
                     (let ((_L32836_ _hd3271332830_)
                           (_L32838_ _hd3271032820_)
                           (_L32839_ _hd3270732810_))
                       (if (gx#identifier? _L32839_)
                           (___kont4684246843_ _L32836_ _L32838_ _L32839_)
                           (let () (declare (not safe)) (_g3269832732_)))))))
              (if (gx#stx-pair? ___stx4683946840_)
                  (let ((_e3270532796_ (gx#syntax-e ___stx4683946840_)))
                    (let ((_tl3270332803_
                           (let () (declare (not safe)) (##cdr _e3270532796_)))
                          (_hd3270432800_
                           (let ()
                             (declare (not safe))
                             (##car _e3270532796_))))
                      (if (gx#stx-pair? _tl3270332803_)
                          (let ((_e3270832806_ (gx#syntax-e _tl3270332803_)))
                            (let ((_tl3270632813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3270832806_)))
                                  (_hd3270732810_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3270832806_))))
                              (if (gx#stx-pair? _tl3270632813_)
                                  (let ((_e3271132816_
                                         (gx#syntax-e _tl3270632813_)))
                                    (let ((_tl3270932823_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3271132816_)))
                                          (_hd3271032820_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3271132816_))))
                                      (if (gx#stx-pair? _tl3270932823_)
                                          (let ((_e3271432826_
                                                 (gx#syntax-e _tl3270932823_)))
                                            (let ((_tl3271232833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3271432826_)))
                                                  (_hd3271332830_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3271432826_))))
                                              (if (gx#stx-null? _tl3271232833_)
                                                  (___match4687246873_
                                                   _e3270532796_
                                                   _hd3270432800_
                                                   _tl3270332803_
                                                   _e3270832806_
                                                   _hd3270732810_
                                                   _tl3270632813_
                                                   _e3271132816_
                                                   _hd3271032820_
                                                   _tl3270932823_
                                                   _e3271432826_
                                                   _hd3271332830_
                                                   _tl3271232833_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3269832732_)))))
                                          (if (gx#stx-null? _tl3270932823_)
                                              (___kont4684446845_
                                               _hd3271032820_
                                               _hd3270732810_
                                               _hd3270432800_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3269832732_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3269832732_)))))
                          (let () (declare (not safe)) (_g3269832732_)))))
                  (let () (declare (not safe)) (_g3269832732_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32861_)
        (let* ((_g3286532880_
                (lambda (_g3286632876_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3286632876_)))
               (_g3286432923_
                (lambda (_g3286632884_)
                  (if (gx#stx-pair? _g3286632884_)
                      (let ((_e3287132887_ (gx#syntax-e _g3286632884_)))
                        (let ((_hd3287032891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3287132887_)))
                              (_tl3286932894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3287132887_))))
                          (if (gx#stx-pair? _tl3286932894_)
                              (let ((_e3287432897_
                                     (gx#syntax-e _tl3286932894_)))
                                (let ((_hd3287332901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3287432897_)))
                                      (_tl3287232904_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3287432897_))))
                                  ((lambda (_L32907_ _L32909_)
                                     (let ((__tmp50660
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50656
                                            (let ((__tmp50657
                                                   (let ((__tmp50658
                                                          (let ((__tmp50659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50659 _L32907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50658 '()))))
                                              (declare (not safe))
                                              (cons _L32909_ __tmp50657))))
                                       (declare (not safe))
                                       (cons __tmp50660 __tmp50656)))
                                   _tl3287232904_
                                   _hd3287332901_)))
                              (_g3286532880_ _g3286632884_))))
                      (_g3286532880_ _g3286632884_)))))
          (_g3286432923_ _$stx32861_))))))
