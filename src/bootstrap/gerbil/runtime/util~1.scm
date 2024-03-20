(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g58159_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g58160_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53888_)
        (let* ((_g5389253906_
                (lambda (_g5389353902_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5389353902_)))
               (_g5389153948_
                (lambda (_g5389353910_)
                  (if (gx#stx-pair? _g5389353910_)
                      (let ((_e5389753913_ (gx#syntax-e _g5389353910_)))
                        (let ((_hd5389653917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5389753913_)))
                              (_tl5389553920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5389753913_))))
                          (if (gx#stx-pair? _tl5389553920_)
                              (let ((_e5390053923_
                                     (gx#syntax-e _tl5389553920_)))
                                (let ((_hd5389953927_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5390053923_)))
                                      (_tl5389853930_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5390053923_))))
                                  (if (gx#stx-null? _tl5389853930_)
                                      ((lambda (_L53933_)
                                         (let ((__tmp57864
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57829
                                                (let ((__tmp57830
                                                       (let ((__tmp57857
                                                              (let ((__tmp57863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57858
                             (let ((__tmp57859
                                    (let ((__tmp57862
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57860
                                           (let ((__tmp57861
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57861 '()))))
                                      (declare (not safe))
                                      (cons __tmp57862 __tmp57860))))
                               (declare (not safe))
                               (cons __tmp57859 '()))))
                        (declare (not safe))
                        (cons __tmp57863 __tmp57858)))
                     (__tmp57831
                      (let ((__tmp57832
                             (let ((__tmp57856 (gx#datum->syntax '#f 'let))
                                   (__tmp57833
                                    (let ((__tmp57855
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57834
                                           (let ((__tmp57835
                                                  (let ((__tmp57836
                                                         (let ((__tmp57854
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57837
                        (let ((__tmp57844
                               (let ((__tmp57853 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57845
                                      (let ((__tmp57847
                                             (let ((__tmp57852
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57848
                                                    (let ((__tmp57849
                                                           (let ((__tmp57850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57851
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57851))))
                     (declare (not safe))
                     (cons '0 __tmp57850))))
              (declare (not safe))
              (cons _L53933_ __tmp57849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57852 __tmp57848)))
                                            (__tmp57846
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57847 __tmp57846))))
                                 (declare (not safe))
                                 (cons __tmp57853 __tmp57845)))
                              (__tmp57838
                               (let ((__tmp57842
                                      (let ((__tmp57843
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57843 '())))
                                     (__tmp57839
                                      (let ((__tmp57840
                                             (let ((__tmp57841
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57841 '()))))
                                        (declare (not safe))
                                        (cons __tmp57840 '()))))
                                 (declare (not safe))
                                 (cons __tmp57842 __tmp57839))))
                          (declare (not safe))
                          (cons __tmp57844 __tmp57838))))
                   (declare (not safe))
                   (cons __tmp57854 __tmp57837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57836 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57835))))
                                      (declare (not safe))
                                      (cons __tmp57855 __tmp57834))))
                               (declare (not safe))
                               (cons __tmp57856 __tmp57833))))
                        (declare (not safe))
                        (cons __tmp57832 '()))))
                 (declare (not safe))
                 (cons __tmp57857 __tmp57831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57830))))
                                           (declare (not safe))
                                           (cons __tmp57864 __tmp57829)))
                                       _hd5389953927_)
                                      (_g5389253906_ _g5389353910_))))
                              (_g5389253906_ _g5389353910_))))
                      (_g5389253906_ _g5389353910_)))))
          (_g5389153948_ _$stx53888_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53952_)
        (let* ((_g5395653970_
                (lambda (_g5395753966_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5395753966_)))
               (_g5395554011_
                (lambda (_g5395753974_)
                  (if (gx#stx-pair? _g5395753974_)
                      (let ((_e5396153977_ (gx#syntax-e _g5395753974_)))
                        (let ((_hd5396053981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5396153977_)))
                              (_tl5395953984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5396153977_))))
                          (if (gx#stx-pair? _tl5395953984_)
                              (let ((_e5396453987_
                                     (gx#syntax-e _tl5395953984_)))
                                (let ((_hd5396353991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5396453987_)))
                                      (_tl5396253994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5396453987_))))
                                  (if (gx#stx-null? _tl5396253994_)
                                      ((lambda (_L53997_)
                                         (let ((__tmp57869
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57865
                                                (let ((__tmp57866
                                                       (let ((__tmp57867
                                                              (let ((__tmp57868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57868))))
                 (declare (not safe))
                 (cons '0 __tmp57867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53997_ __tmp57866))))
                                           (declare (not safe))
                                           (cons __tmp57869 __tmp57865)))
                                       _hd5396353991_)
                                      (_g5395653970_ _g5395753974_))))
                              (_g5395653970_ _g5395753974_))))
                      (_g5395653970_ _g5395753974_)))))
          (_g5395554011_ _$stx53952_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx54015_)
        (let* ((_g5401954029_
                (lambda (_g5402054025_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5402054025_)))
               (_g5401854050_
                (lambda (_g5402054033_)
                  (if (gx#stx-pair? _g5402054033_)
                      (let ((_e5402354036_ (gx#syntax-e _g5402054033_)))
                        (let ((_hd5402254040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5402354036_)))
                              (_tl5402154043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5402354036_))))
                          (if (gx#stx-null? _tl5402154043_)
                              ((lambda ()
                                 (let ((__tmp57871
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp57870
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp57871 __tmp57870))))
                              (_g5401954029_ _g5402054033_))))
                      (_g5401954029_ _g5402054033_)))))
          (_g5401854050_ _$stx54015_))))
    (define |[:0:]#defassget|
      (lambda (_$stx54054_)
        (let* ((_g5405854076_
                (lambda (_g5405954072_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5405954072_)))
               (_g5405754131_
                (lambda (_g5405954080_)
                  (if (gx#stx-pair? _g5405954080_)
                      (let ((_e5406454083_ (gx#syntax-e _g5405954080_)))
                        (let ((_hd5406354087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5406454083_)))
                              (_tl5406254090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5406454083_))))
                          (if (gx#stx-pair? _tl5406254090_)
                              (let ((_e5406754093_
                                     (gx#syntax-e _tl5406254090_)))
                                (let ((_hd5406654097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5406754093_)))
                                      (_tl5406554100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5406754093_))))
                                  (if (gx#stx-pair? _tl5406554100_)
                                      (let ((_e5407054103_
                                             (gx#syntax-e _tl5406554100_)))
                                        (let ((_hd5406954107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5407054103_)))
                                              (_tl5406854110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5407054103_))))
                                          (if (gx#stx-null? _tl5406854110_)
                                              ((lambda (_L54113_ _L54115_)
                                                 (let ((__tmp57920
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57872
                                                        (let ((__tmp57911
                                                               (let ((__tmp57912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57919 (gx#datum->syntax '#f 'key))
                                    (__tmp57913
                                     (let ((__tmp57918
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57914
                                            (let ((__tmp57915
                                                   (let ((__tmp57917
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57917
                                                           __tmp57916))))
                                              (declare (not safe))
                                              (cons __tmp57915 '()))))
                                       (declare (not safe))
                                       (cons __tmp57918 __tmp57914))))
                                (declare (not safe))
                                (cons __tmp57919 __tmp57913))))
                         (declare (not safe))
                         (cons _L54115_ __tmp57912)))
                      (__tmp57873
                       (let ((__tmp57874
                              (let ((__tmp57910 (gx#datum->syntax '#f 'cond))
                                    (__tmp57875
                                     (let ((__tmp57892
                                            (let ((__tmp57897
                                                   (let ((__tmp57909
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57898
                                                          (let ((__tmp57905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57908 (gx#datum->syntax '#f 'pair?))
                               (__tmp57906
                                (let ((__tmp57907 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57907 '()))))
                           (declare (not safe))
                           (cons __tmp57908 __tmp57906)))
                        (__tmp57899
                         (let ((__tmp57900
                                (let ((__tmp57901
                                       (let ((__tmp57904
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57902
                                              (let ((__tmp57903
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57903 '()))))
                                         (declare (not safe))
                                         (cons __tmp57904 __tmp57902))))
                                  (declare (not safe))
                                  (cons _L54113_ __tmp57901))))
                           (declare (not safe))
                           (cons __tmp57900 '()))))
                    (declare (not safe))
                    (cons __tmp57905 __tmp57899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57909
                                                           __tmp57898)))
                                                  (__tmp57893
                                                   (let ((__tmp57896
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57894
                                                          (let ((__tmp57895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57895 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57896
                                                           __tmp57894))))
                                              (declare (not safe))
                                              (cons __tmp57897 __tmp57893)))
                                           (__tmp57876
                                            (let ((__tmp57882
                                                   (let ((__tmp57888
                                                          (let ((__tmp57891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57889
                         (let ((__tmp57890 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57890 '()))))
                    (declare (not safe))
                    (cons __tmp57891 __tmp57889)))
                 (__tmp57883
                  (let ((__tmp57884
                         (let ((__tmp57887 (gx#datum->syntax '#f 'default))
                               (__tmp57885
                                (let ((__tmp57886 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57886 '()))))
                           (declare (not safe))
                           (cons __tmp57887 __tmp57885))))
                    (declare (not safe))
                    (cons __tmp57884 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57888
                                                           __tmp57883)))
                                                  (__tmp57877
                                                   (let ((__tmp57878
                                                          (let ((__tmp57881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57879
                         (let ((__tmp57880 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57880 '()))))
                    (declare (not safe))
                    (cons __tmp57881 __tmp57879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57878 '()))))
                                              (declare (not safe))
                                              (cons __tmp57882 __tmp57877))))
                                       (declare (not safe))
                                       (cons __tmp57892 __tmp57876))))
                                (declare (not safe))
                                (cons __tmp57910 __tmp57875))))
                         (declare (not safe))
                         (cons __tmp57874 '()))))
                  (declare (not safe))
                  (cons __tmp57911 __tmp57873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57920
                                                         __tmp57872)))
                                               _hd5406954107_
                                               _hd5406654097_)
                                              (_g5405854076_ _g5405954080_))))
                                      (_g5405854076_ _g5405954080_))))
                              (_g5405854076_ _g5405954080_))))
                      (_g5405854076_ _g5405954080_)))))
          (_g5405754131_ _$stx54054_))))
    (define |[:0:]#defpget|
      (lambda (_$stx54135_)
        (let* ((_g5413954157_
                (lambda (_g5414054153_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5414054153_)))
               (_g5413854212_
                (lambda (_g5414054161_)
                  (if (gx#stx-pair? _g5414054161_)
                      (let ((_e5414554164_ (gx#syntax-e _g5414054161_)))
                        (let ((_hd5414454168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5414554164_)))
                              (_tl5414354171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5414554164_))))
                          (if (gx#stx-pair? _tl5414354171_)
                              (let ((_e5414854174_
                                     (gx#syntax-e _tl5414354171_)))
                                (let ((_hd5414754178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5414854174_)))
                                      (_tl5414654181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5414854174_))))
                                  (if (gx#stx-pair? _tl5414654181_)
                                      (let ((_e5415154184_
                                             (gx#syntax-e _tl5414654181_)))
                                        (let ((_hd5415054188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5415154184_)))
                                              (_tl5414954191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5415154184_))))
                                          (if (gx#stx-null? _tl5414954191_)
                                              ((lambda (_L54194_ _L54196_)
                                                 (let ((__tmp57990
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57921
                                                        (let ((__tmp57981
                                                               (let ((__tmp57982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57989 (gx#datum->syntax '#f 'key))
                                    (__tmp57983
                                     (let ((__tmp57988
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57984
                                            (let ((__tmp57985
                                                   (let ((__tmp57987
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57986
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57987
                                                           __tmp57986))))
                                              (declare (not safe))
                                              (cons __tmp57985 '()))))
                                       (declare (not safe))
                                       (cons __tmp57988 __tmp57984))))
                                (declare (not safe))
                                (cons __tmp57989 __tmp57983))))
                         (declare (not safe))
                         (cons _L54196_ __tmp57982)))
                      (__tmp57922
                       (let ((__tmp57923
                              (let ((__tmp57980 (gx#datum->syntax '#f 'let))
                                    (__tmp57924
                                     (let ((__tmp57979
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57925
                                            (let ((__tmp57974
                                                   (let ((__tmp57975
                                                          (let ((__tmp57978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57976
                         (let ((__tmp57977 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57977 '()))))
                    (declare (not safe))
                    (cons __tmp57978 __tmp57976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57975 '())))
                                                  (__tmp57926
                                                   (let ((__tmp57927
                                                          (let ((__tmp57973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57928
                         (let ((__tmp57972 (gx#datum->syntax '#f 'rest))
                               (__tmp57929
                                (let ((__tmp57948
                                       (let ((__tmp57965
                                              (let ((__tmp57971
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57966
                                                     (let ((__tmp57970
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57967
                                                            (let ((__tmp57969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57968 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57969 __tmp57968))))
               (declare (not safe))
               (cons __tmp57970 __tmp57967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57971 __tmp57966)))
                                             (__tmp57949
                                              (let ((__tmp57950
                                                     (let ((__tmp57964
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57951
                                                            (let ((__tmp57959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57960
                                  (let ((__tmp57963 (gx#datum->syntax '#f 'k))
                                        (__tmp57961
                                         (let ((__tmp57962
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57962 '()))))
                                    (declare (not safe))
                                    (cons __tmp57963 __tmp57961))))
                             (declare (not safe))
                             (cons _L54194_ __tmp57960)))
                          (__tmp57952
                           (let ((__tmp57958 (gx#datum->syntax '#f 'v))
                                 (__tmp57953
                                  (let ((__tmp57954
                                         (let ((__tmp57957
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57955
                                                (let ((__tmp57956
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57956 '()))))
                                           (declare (not safe))
                                           (cons __tmp57957 __tmp57955))))
                                    (declare (not safe))
                                    (cons __tmp57954 '()))))
                             (declare (not safe))
                             (cons __tmp57958 __tmp57953))))
                      (declare (not safe))
                      (cons __tmp57959 __tmp57952))))
               (declare (not safe))
               (cons __tmp57964 __tmp57951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57950 '()))))
                                         (declare (not safe))
                                         (cons __tmp57965 __tmp57949)))
                                      (__tmp57930
                                       (let ((__tmp57931
                                              (let ((__tmp57947
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57932
                                                     (let ((__tmp57933
                                                            (let ((__tmp57946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57934
                           (let ((__tmp57942
                                  (let ((__tmp57945
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57943
                                         (let ((__tmp57944
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57944 '()))))
                                    (declare (not safe))
                                    (cons __tmp57945 __tmp57943)))
                                 (__tmp57935
                                  (let ((__tmp57938
                                         (let ((__tmp57941
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57939
                                                (let ((__tmp57940
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57940 '()))))
                                           (declare (not safe))
                                           (cons __tmp57941 __tmp57939)))
                                        (__tmp57936
                                         (let ((__tmp57937
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57937 '()))))
                                    (declare (not safe))
                                    (cons __tmp57938 __tmp57936))))
                             (declare (not safe))
                             (cons __tmp57942 __tmp57935))))
                      (declare (not safe))
                      (cons __tmp57946 __tmp57934))))
               (declare (not safe))
               (cons __tmp57933 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57947 __tmp57932))))
                                         (declare (not safe))
                                         (cons __tmp57931 '()))))
                                  (declare (not safe))
                                  (cons __tmp57948 __tmp57930))))
                           (declare (not safe))
                           (cons __tmp57972 __tmp57929))))
                    (declare (not safe))
                    (cons __tmp57973 __tmp57928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57927 '()))))
                                              (declare (not safe))
                                              (cons __tmp57974 __tmp57926))))
                                       (declare (not safe))
                                       (cons __tmp57979 __tmp57925))))
                                (declare (not safe))
                                (cons __tmp57980 __tmp57924))))
                         (declare (not safe))
                         (cons __tmp57923 '()))))
                  (declare (not safe))
                  (cons __tmp57981 __tmp57922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57990
                                                         __tmp57921)))
                                               _hd5415054188_
                                               _hd5414754178_)
                                              (_g5413954157_ _g5414054161_))))
                                      (_g5413954157_ _g5414054161_))))
                              (_g5413954157_ _g5414054161_))))
                      (_g5413954157_ _g5414054161_)))))
          (_g5413854212_ _$stx54135_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx54216_)
        (let* ((_g5422054238_
                (lambda (_g5422154234_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5422154234_)))
               (_g5421954293_
                (lambda (_g5422154242_)
                  (if (gx#stx-pair? _g5422154242_)
                      (let ((_e5422654245_ (gx#syntax-e _g5422154242_)))
                        (let ((_hd5422554249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5422654245_)))
                              (_tl5422454252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5422654245_))))
                          (if (gx#stx-pair? _tl5422454252_)
                              (let ((_e5422954255_
                                     (gx#syntax-e _tl5422454252_)))
                                (let ((_hd5422854259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5422954255_)))
                                      (_tl5422754262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5422954255_))))
                                  (if (gx#stx-pair? _tl5422754262_)
                                      (let ((_e5423254265_
                                             (gx#syntax-e _tl5422754262_)))
                                        (let ((_hd5423154269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5423254265_)))
                                              (_tl5423054272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5423254265_))))
                                          (if (gx#stx-null? _tl5423054272_)
                                              ((lambda (_L54275_ _L54277_)
                                                 (let ((__tmp58061
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57991
                                                        (let ((__tmp58056
                                                               (let ((__tmp58057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp58060 (gx#datum->syntax '#f 'el))
                                    (__tmp58058
                                     (let ((__tmp58059
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp58059 '()))))
                                (declare (not safe))
                                (cons __tmp58060 __tmp58058))))
                         (declare (not safe))
                         (cons _L54277_ __tmp58057)))
                      (__tmp57992
                       (let ((__tmp57993
                              (let ((__tmp58055 (gx#datum->syntax '#f 'let))
                                    (__tmp57994
                                     (let ((__tmp58054
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57995
                                            (let ((__tmp58043
                                                   (let ((__tmp58050
                                                          (let ((__tmp58053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp58051
                         (let ((__tmp58052 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp58052 '()))))
                    (declare (not safe))
                    (cons __tmp58053 __tmp58051)))
                 (__tmp58044
                  (let ((__tmp58045
                         (let ((__tmp58049 (gx#datum->syntax '#f 'r))
                               (__tmp58046
                                (let ((__tmp58047
                                       (let ((__tmp58048
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp58048 '()))))
                                  (declare (not safe))
                                  (cons __tmp58047 '()))))
                           (declare (not safe))
                           (cons __tmp58049 __tmp58046))))
                    (declare (not safe))
                    (cons __tmp58045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp58050
                                                           __tmp58044)))
                                                  (__tmp57996
                                                   (let ((__tmp57997
                                                          (let ((__tmp58042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57998
                         (let ((__tmp58041 (gx#datum->syntax '#f 'rest))
                               (__tmp57999
                                (let ((__tmp58005
                                       (let ((__tmp58036
                                              (let ((__tmp58040
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp58037
                                                     (let ((__tmp58039
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp58038
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp58039
                                                             __tmp58038))))
                                                (declare (not safe))
                                                (cons __tmp58040 __tmp58037)))
                                             (__tmp58006
                                              (let ((__tmp58007
                                                     (let ((__tmp58035
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp58008
                                                            (let ((__tmp58030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp58031
                                  (let ((__tmp58034 (gx#datum->syntax '#f 'el))
                                        (__tmp58032
                                         (let ((__tmp58033
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp58033 '()))))
                                    (declare (not safe))
                                    (cons __tmp58034 __tmp58032))))
                             (declare (not safe))
                             (cons _L54275_ __tmp58031)))
                          (__tmp58009
                           (let ((__tmp58022
                                  (let ((__tmp58029
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp58023
                                         (let ((__tmp58028
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp58024
                                                (let ((__tmp58027
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp58025
                                                       (let ((__tmp58026
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp58026
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp58027
                                                        __tmp58025))))
                                           (declare (not safe))
                                           (cons __tmp58028 __tmp58024))))
                                    (declare (not safe))
                                    (cons __tmp58029 __tmp58023)))
                                 (__tmp58010
                                  (let ((__tmp58011
                                         (let ((__tmp58021
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp58012
                                                (let ((__tmp58020
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp58013
                                                       (let ((__tmp58014
                                                              (let ((__tmp58019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp58015
                             (let ((__tmp58018 (gx#datum->syntax '#f 'hd))
                                   (__tmp58016
                                    (let ((__tmp58017
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp58017 '()))))
                               (declare (not safe))
                               (cons __tmp58018 __tmp58016))))
                        (declare (not safe))
                        (cons __tmp58019 __tmp58015))))
                 (declare (not safe))
                 (cons __tmp58014 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp58020
                                                        __tmp58013))))
                                           (declare (not safe))
                                           (cons __tmp58021 __tmp58012))))
                                    (declare (not safe))
                                    (cons __tmp58011 '()))))
                             (declare (not safe))
                             (cons __tmp58022 __tmp58010))))
                      (declare (not safe))
                      (cons __tmp58030 __tmp58009))))
               (declare (not safe))
               (cons __tmp58035 __tmp58008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp58007 '()))))
                                         (declare (not safe))
                                         (cons __tmp58036 __tmp58006)))
                                      (__tmp58000
                                       (let ((__tmp58001
                                              (let ((__tmp58004
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp58002
                                                     (let ((__tmp58003
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp58003 '()))))
                                                (declare (not safe))
                                                (cons __tmp58004 __tmp58002))))
                                         (declare (not safe))
                                         (cons __tmp58001 '()))))
                                  (declare (not safe))
                                  (cons __tmp58005 __tmp58000))))
                           (declare (not safe))
                           (cons __tmp58041 __tmp57999))))
                    (declare (not safe))
                    (cons __tmp58042 __tmp57998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57997 '()))))
                                              (declare (not safe))
                                              (cons __tmp58043 __tmp57996))))
                                       (declare (not safe))
                                       (cons __tmp58054 __tmp57995))))
                                (declare (not safe))
                                (cons __tmp58055 __tmp57994))))
                         (declare (not safe))
                         (cons __tmp57993 '()))))
                  (declare (not safe))
                  (cons __tmp58056 __tmp57992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58061
                                                         __tmp57991)))
                                               _hd5423154269_
                                               _hd5422854259_)
                                              (_g5422054238_ _g5422154242_))))
                                      (_g5422054238_ _g5422154242_))))
                              (_g5422054238_ _g5422154242_))))
                      (_g5422054238_ _g5422154242_)))))
          (_g5421954293_ _$stx54216_))))
    (define |[:0:]#DBG|
      (lambda (_$stx54297_)
        (let* ((_g5430154312_
                (lambda (_g5430254308_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5430254308_)))
               (_g5430054341_
                (lambda (_g5430254316_)
                  (if (gx#stx-pair? _g5430254316_)
                      (let ((_e5430654319_ (gx#syntax-e _g5430254316_)))
                        (let ((_hd5430554323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5430654319_)))
                              (_tl5430454326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5430654319_))))
                          ((lambda (_L54329_)
                             (let ((__tmp58063 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp58062
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L54329_))))
                               (declare (not safe))
                               (cons __tmp58063 __tmp58062)))
                           _tl5430454326_)))
                      (_g5430154312_ _g5430254316_)))))
          (_g5430054341_ _$stx54297_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx54345_)
        (let* ((___stx5737157372_ _$stx54345_)
               (_g5435654570_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5737157372_))))
          (let ((___kont5737457375_
                 (lambda (_L55423_ _L55425_ _L55426_ _L55427_ _L55428_)
                   (let ((__tmp58064
                          (let ((__tmp58065
                                 (let ((__tmp58066
                                        (let ((__tmp58070
                                               (let ((__tmp58071
                                                      (lambda (_g5545855461_
                                                               _g5545955464_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5545855461_
                                                                _g5545955464_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp58071
                                                         '()
                                                         _L55426_)))
                                              (__tmp58067
                                               (let ((__tmp58068
                                                      (let ((__tmp58069
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55423_ '()))))
                (declare (not safe))
                (cons _L55425_ __tmp58069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55427_ __tmp58068))))
                                          (declare (not safe))
                                          (cons __tmp58070 __tmp58067))))
                                   (declare (not safe))
                                   (cons '() __tmp58066))))
                            (declare (not safe))
                            (cons '2 __tmp58065))))
                     (declare (not safe))
                     (cons _L55428_ __tmp58064))))
                (___kont5737857379_
                 (lambda (_L55276_ _L55278_ _L55279_ _L55280_)
                   (let ((__tmp58072
                          (let ((__tmp58073
                                 (let ((__tmp58074
                                        (let ((__tmp58078
                                               (let ((__tmp58079
                                                      (lambda (_g5530355306_
                                                               _g5530455309_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5530355306_
                                                                _g5530455309_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp58079
                                                         '()
                                                         _L55278_)))
                                              (__tmp58075
                                               (let ((__tmp58076
                                                      (let ((__tmp58077
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55276_ '()))))
                (declare (not safe))
                (cons _L55276_ __tmp58077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55279_ __tmp58076))))
                                          (declare (not safe))
                                          (cons __tmp58078 __tmp58075))))
                                   (declare (not safe))
                                   (cons '() __tmp58074))))
                            (declare (not safe))
                            (cons '2 __tmp58073))))
                     (declare (not safe))
                     (cons _L55280_ __tmp58072))))
                (___kont5738257383_
                 (lambda (_L55179_)
                   (let ((__tmp58091 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp58080
                          (let ((__tmp58081
                                 (let ((__tmp58088
                                        (let ((__tmp58090
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp58089
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp58090 __tmp58089)))
                                       (__tmp58082
                                        (let ((__tmp58085
                                               (let ((__tmp58087
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp58086
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp58087 __tmp58086)))
                                              (__tmp58083
                                               (let ((__tmp58084
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp58084))))
                                          (declare (not safe))
                                          (cons __tmp58085 __tmp58083))))
                                   (declare (not safe))
                                   (cons __tmp58088 __tmp58082))))
                            (declare (not safe))
                            (cons _L55179_ __tmp58081))))
                     (declare (not safe))
                     (cons __tmp58091 __tmp58080))))
                (___kont5738457385_
                 (lambda (_L55102_
                          _L55104_
                          _L55105_
                          _L55106_
                          _L55107_
                          _L55108_)
                   (let ((__tmp58092
                          (let ((__tmp58093
                                 (let ((__tmp58095
                                        (let ((__tmp58096
                                               (let ((__tmp58097
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55105_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55106_ __tmp58097))))
                                          (declare (not safe))
                                          (cons __tmp58096 _L55107_)))
                                       (__tmp58094
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55104_ _L55102_))))
                                   (declare (not safe))
                                   (cons __tmp58095 __tmp58094))))
                            (declare (not safe))
                            (cons '2 __tmp58093))))
                     (declare (not safe))
                     (cons _L55108_ __tmp58092))))
                (___kont5738657387_
                 (lambda (_L54983_ _L54985_ _L54986_ _L54987_ _L54988_)
                   (let ((__tmp58098
                          (let ((__tmp58099
                                 (let ((__tmp58101
                                        (let ((__tmp58102
                                               (let ((__tmp58103
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54986_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54986_ __tmp58103))))
                                          (declare (not safe))
                                          (cons __tmp58102 _L54987_)))
                                       (__tmp58100
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54985_ _L54983_))))
                                   (declare (not safe))
                                   (cons __tmp58101 __tmp58100))))
                            (declare (not safe))
                            (cons '2 __tmp58099))))
                     (declare (not safe))
                     (cons _L54988_ __tmp58098))))
                (___kont5738857389_
                 (lambda (_L54900_ _L54902_ _L54903_)
                   (let ((__tmp58104
                          (let ((__tmp58105
                                 (let ((__tmp58106
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54902_ _L54900_))))
                                   (declare (not safe))
                                   (cons '() __tmp58106))))
                            (declare (not safe))
                            (cons '3 __tmp58105))))
                     (declare (not safe))
                     (cons _L54903_ __tmp58104))))
                (___kont5739057391_
                 (lambda (_L54821_ _L54823_ _L54824_ _L54825_ _L54826_)
                   (let ((__tmp58107
                          (let ((__tmp58108
                                 (let ((__tmp58110
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54824_ _L54825_)))
                                       (__tmp58109
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54823_ _L54821_))))
                                   (declare (not safe))
                                   (cons __tmp58110 __tmp58109))))
                            (declare (not safe))
                            (cons '3 __tmp58108))))
                     (declare (not safe))
                     (cons _L54826_ __tmp58107))))
                (___kont5739257393_
                 (lambda (_L54705_
                          _L54707_
                          _L54708_
                          _L54709_
                          _L54710_
                          _L54711_)
                   (let ((__tmp58158 (gx#datum->syntax '#f 'let))
                         (__tmp58111
                          (let ((__tmp58146
                                 (let ((__tmp58155
                                        (let ((__tmp58157
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp58156
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L54708_ '()))))
                                          (declare (not safe))
                                          (cons __tmp58157 __tmp58156)))
                                       (__tmp58147
                                        (let ((__tmp58148
                                               (let ((__tmp58154
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp58149
                                                      (let ((__tmp58150
                                                             (let ((__tmp58153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp58151
                            (let ((__tmp58152
                                   (let ()
                                     (declare (not safe))
                                     (cons _L54705_ '()))))
                              (declare (not safe))
                              (cons '() __tmp58152))))
                       (declare (not safe))
                       (cons __tmp58153 __tmp58151))))
                (declare (not safe))
                (cons __tmp58150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58154
                                                       __tmp58149))))
                                          (declare (not safe))
                                          (cons __tmp58148 '()))))
                                   (declare (not safe))
                                   (cons __tmp58155 __tmp58147)))
                                (__tmp58112
                                 (let ((__tmp58113
                                        (let ((__tmp58145
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp58114
                                               (let ((__tmp58144
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp58115
                                                      (let ((__tmp58119
                                                             (let ((__tmp58143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp58120
                            (let ((__tmp58142 (gx#datum->syntax '#f 'tagval))
                                  (__tmp58121
                                   (let ((__tmp58137
                                          (let ((__tmp58141
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp58138
                                                 (let ((__tmp58139
                                                        (let ((__tmp58140
                                                               (lambda (_g5474554748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5474654751_)
                         (let ()
                           (declare (not safe))
                           (cons _g5474554748_ _g5474654751_)))))
                  (declare (not safe))
                  (foldr1 __tmp58140 '() _L54710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58139 '()))))
                                            (declare (not safe))
                                            (cons __tmp58141 __tmp58138)))
                                         (__tmp58122
                                          (let ((__tmp58129
                                                 (let ((__tmp58136
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp58130
                                                        (let ((__tmp58131
                                                               (lambda (_g5474354754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5474454757_)
                         (let ((__tmp58132
                                (let ((__tmp58135
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp58133
                                       (let ((__tmp58134
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5474354754_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp58134))))
                                  (declare (not safe))
                                  (cons __tmp58135 __tmp58133))))
                           (declare (not safe))
                           (cons __tmp58132 _g5474454757_)))))
                  (declare (not safe))
                  (foldr1 __tmp58131 '() _L54709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58136
                                                         __tmp58130)))
                                                (__tmp58123
                                                 (let ((__tmp58126
                                                        (let ((__tmp58128
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp58127
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L54707_ '()))))
                  (declare (not safe))
                  (cons __tmp58128 __tmp58127)))
               (__tmp58124
                (let ((__tmp58125 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp58125 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp58126
                                                         __tmp58124))))
                                            (declare (not safe))
                                            (cons __tmp58129 __tmp58123))))
                                     (declare (not safe))
                                     (cons __tmp58137 __tmp58122))))
                              (declare (not safe))
                              (cons __tmp58142 __tmp58121))))
                       (declare (not safe))
                       (cons __tmp58143 __tmp58120)))
                    (__tmp58116
                     (let ((__tmp58117
                            (let ((__tmp58118 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp58118 '()))))
                       (declare (not safe))
                       (cons __tmp58117 '()))))
                (declare (not safe))
                (cons __tmp58119 __tmp58116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp58144
                                                       __tmp58115))))
                                          (declare (not safe))
                                          (cons __tmp58145 __tmp58114))))
                                   (declare (not safe))
                                   (cons __tmp58113 '()))))
                            (declare (not safe))
                            (cons __tmp58146 __tmp58112))))
                     (declare (not safe))
                     (cons __tmp58158 __tmp58111)))))
            (let* ((___match5772257723_
                    (lambda (_e5452854577_
                             _hd5452754581_
                             _tl5452654584_
                             _e5453154587_
                             _hd5453054591_
                             _tl5452954594_
                             _e5453254597_
                             _e5453554601_
                             _hd5453454605_
                             _tl5453354608_
                             ___splice5739457395_
                             _target5453654611_
                             _tl5453854614_)
                      (letrec ((_loop5453954617_
                                (lambda (_hd5453754621_
                                         _exprs5454354624_
                                         _names5454454626_)
                                  (if (gx#stx-pair? _hd5453754621_)
                                      (let ((_e5454054629_
                                             (gx#syntax-e _hd5453754621_)))
                                        (let ((_lp-tl5454254636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5454054629_)))
                                              (_lp-hd5454154633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5454054629_))))
                                          (if (gx#stx-pair? _lp-hd5454154633_)
                                              (let ((_e5454954639_
                                                     (gx#syntax-e
                                                      _lp-hd5454154633_)))
                                                (let ((_tl5454754646_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5454954639_)))
                                                      (_hd5454854643_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5454954639_))))
                                                  (if (gx#stx-pair?
                                                       _tl5454754646_)
                                                      (let ((_e5455254649_
                                                             (gx#syntax-e
                                                              _tl5454754646_)))
                                                        (let ((_tl5455054656_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5455254649_)))
                      (_hd5455154653_
                       (let () (declare (not safe)) (##car _e5455254649_))))
                  (if (gx#stx-null? _tl5455054656_)
                      (_loop5453954617_
                       _lp-tl5454254636_
                       (let ()
                         (declare (not safe))
                         (cons _hd5455154653_ _exprs5454354624_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5454854643_ _names5454454626_)))
                      (let () (declare (not safe)) (_g5435654570_)))))
              (let () (declare (not safe)) (_g5435654570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5435654570_)))))
                                      (let ((_names5454654662_
                                             (reverse _names5454454626_))
                                            (_exprs5454554659_
                                             (reverse _exprs5454354624_)))
                                        (if (gx#stx-pair? _tl5453354608_)
                                            (let ((_e5455554665_
                                                   (gx#syntax-e
                                                    _tl5453354608_)))
                                              (let ((_tl5455354672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5455554665_)))
                                                    (_hd5455454669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5455554665_))))
                                                (if (gx#stx-null?
                                                     _hd5455454669_)
                                                    (if (gx#stx-pair?
                                                         _tl5455354672_)
                                                        (let ((_e5455854675_
                                                               (gx#syntax-e
                                                                _tl5455354672_)))
                                                          (let ((_tl5455654682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5455854675_)))
                        (_hd5455754679_
                         (let () (declare (not safe)) (##car _e5455854675_))))
                    (if (gx#stx-pair? _tl5455654682_)
                        (let ((_e5456154685_ (gx#syntax-e _tl5455654682_)))
                          (let ((_tl5455954692_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5456154685_)))
                                (_hd5456054689_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5456154685_))))
                            (if (gx#stx-pair? _tl5455954692_)
                                (let ((_e5456454695_
                                       (gx#syntax-e _tl5455954692_)))
                                  (let ((_tl5456254702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5456454695_)))
                                        (_hd5456354699_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5456454695_))))
                                    (if (gx#stx-null? _tl5456254702_)
                                        (___kont5739257393_
                                         _hd5456354699_
                                         _hd5456054689_
                                         _hd5455754679_
                                         _exprs5454554659_
                                         _names5454654662_
                                         _hd5452754581_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_)))))
                        (let () (declare (not safe)) (_g5435654570_)))))
                (let () (declare (not safe)) (_g5435654570_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5435654570_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5435654570_))))))))
                        (_loop5453954617_ _target5453654611_ '() '()))))
                   (___match5750057501_
                    (lambda (_e5440055202_
                             _hd5439955206_
                             _tl5439855209_
                             _e5440355212_
                             _hd5440255216_
                             _tl5440155219_
                             _e5440455222_
                             _e5440755226_
                             _hd5440655230_
                             _tl5440555233_
                             ___splice5738057381_
                             _target5440855236_
                             _tl5441055239_
                             _e5441955242_
                             _hd5441855246_
                             _tl5441755249_)
                      (letrec ((_loop5441155252_
                                (lambda (_hd5440955256_ _exprs5441555259_)
                                  (if (gx#stx-pair? _hd5440955256_)
                                      (let ((_e5441255262_
                                             (gx#syntax-e _hd5440955256_)))
                                        (let ((_lp-tl5441455269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5441255262_)))
                                              (_lp-hd5441355266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5441255262_))))
                                          (_loop5441155252_
                                           _lp-tl5441455269_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5441355266_
                                                   _exprs5441555259_)))))
                                      (let ((_exprs5441655272_
                                             (reverse _exprs5441555259_)))
                                        (___kont5737857379_
                                         _hd5441855246_
                                         _exprs5441655272_
                                         _hd5440655230_
                                         _hd5439955206_))))))
                        (_loop5441155252_ _target5440855236_ '()))))
                   (___match5746057461_
                    (lambda (_e5436555319_
                             _hd5436455323_
                             _tl5436355326_
                             _e5436855329_
                             _hd5436755333_
                             _tl5436655336_
                             _e5436955339_
                             _e5437255343_
                             _hd5437155347_
                             _tl5437055350_
                             ___splice5737657377_
                             _target5437355353_
                             _tl5437555356_
                             _e5438455359_
                             _hd5438355363_
                             _tl5438255366_
                             _e5438755369_
                             _hd5438655373_
                             _tl5438555376_
                             _e5439055379_
                             _hd5438955383_
                             _tl5438855386_
                             _e5439355389_
                             _hd5439255393_
                             _tl5439155396_)
                      (letrec ((_loop5437655399_
                                (lambda (_hd5437455403_ _exprs5438055406_)
                                  (if (gx#stx-pair? _hd5437455403_)
                                      (let ((_e5437755409_
                                             (gx#syntax-e _hd5437455403_)))
                                        (let ((_lp-tl5437955416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5437755409_)))
                                              (_lp-hd5437855413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5437755409_))))
                                          (_loop5437655399_
                                           _lp-tl5437955416_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5437855413_
                                                   _exprs5438055406_)))))
                                      (let ((_exprs5438155419_
                                             (reverse _exprs5438055406_)))
                                        (___kont5737457375_
                                         _hd5439255393_
                                         _hd5438955383_
                                         _exprs5438155419_
                                         _hd5437155347_
                                         _hd5436455323_))))))
                        (_loop5437655399_ _target5437355353_ '())))))
              (if (gx#stx-pair? ___stx5737157372_)
                  (let ((_e5436555319_ (gx#syntax-e ___stx5737157372_)))
                    (let ((_tl5436355326_
                           (let () (declare (not safe)) (##cdr _e5436555319_)))
                          (_hd5436455323_
                           (let ()
                             (declare (not safe))
                             (##car _e5436555319_))))
                      (if (gx#stx-pair? _tl5436355326_)
                          (let ((_e5436855329_ (gx#syntax-e _tl5436355326_)))
                            (let ((_tl5436655336_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5436855329_)))
                                  (_hd5436755333_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5436855329_))))
                              (if (gx#stx-datum? _hd5436755333_)
                                  (let ((_e5436955339_
                                         (gx#stx-e _hd5436755333_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5436955339_ '1))
                                        (if (gx#stx-pair? _tl5436655336_)
                                            (let ((_e5437255343_
                                                   (gx#syntax-e
                                                    _tl5436655336_)))
                                              (let ((_tl5437055350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5437255343_)))
                                                    (_hd5437155347_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5437255343_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5437055350_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5437055350_)
                                                              '2)
                                                        (let ((___splice5737657377_
                                                               (gx#syntax-split-splice
                                                                _tl5437055350_
                                                                '2)))
                                                          (let ((_tl5437555356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5737657377_ '1)))
                        (_target5437355353_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5737657377_ '0))))
                    (if (gx#stx-pair? _tl5437555356_)
                        (let ((_e5438455359_ (gx#syntax-e _tl5437555356_)))
                          (let ((_tl5438255366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5438455359_)))
                                (_hd5438355363_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5438455359_))))
                            (if (gx#stx-pair? _hd5438355363_)
                                (let ((_e5438755369_
                                       (gx#syntax-e _hd5438355363_)))
                                  (let ((_tl5438555376_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5438755369_)))
                                        (_hd5438655373_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5438755369_))))
                                    (if (gx#identifier? _hd5438655373_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g58160_|
                                             _hd5438655373_)
                                            (if (gx#stx-pair? _tl5438555376_)
                                                (let ((_e5439055379_
                                                       (gx#syntax-e
                                                        _tl5438555376_)))
                                                  (let ((_tl5438855386_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5439055379_)))
                                                        (_hd5438955383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5439055379_))))
                                                    (if (gx#stx-null?
                                                         _tl5438855386_)
                                                        (if (gx#stx-pair?
                                                             _tl5438255366_)
                                                            (let ((_e5439355389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5438255366_)))
                      (let ((_tl5439155396_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5439355389_)))
                            (_hd5439255393_
                             (let ()
                               (declare (not safe))
                               (##car _e5439355389_))))
                        (if (gx#stx-null? _tl5439155396_)
                            (___match5746057461_
                             _e5436555319_
                             _hd5436455323_
                             _tl5436355326_
                             _e5436855329_
                             _hd5436755333_
                             _tl5436655336_
                             _e5436955339_
                             _e5437255343_
                             _hd5437155347_
                             _tl5437055350_
                             ___splice5737657377_
                             _target5437355353_
                             _tl5437555356_
                             _e5438455359_
                             _hd5438355363_
                             _tl5438255366_
                             _e5438755369_
                             _hd5438655373_
                             _tl5438555376_
                             _e5439055379_
                             _hd5438955383_
                             _tl5438855386_
                             _e5439355389_
                             _hd5439255393_
                             _tl5439155396_)
                            (if (fx>= (gx#stx-length _tl5437055350_) '1)
                                (let ((___splice5738057381_
                                       (gx#syntax-split-splice
                                        _tl5437055350_
                                        '1)))
                                  (let ((_tl5441055239_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5738057381_
                                            '1)))
                                        (_target5440855236_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5738057381_
                                            '0))))
                                    (if (gx#stx-pair? _tl5441055239_)
                                        (let ((_e5441955242_
                                               (gx#syntax-e _tl5441055239_)))
                                          (let ((_tl5441755249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5441955242_)))
                                                (_hd5441855246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5441955242_))))
                                            (if (gx#stx-null? _tl5441755249_)
                                                (___match5750057501_
                                                 _e5436555319_
                                                 _hd5436455323_
                                                 _tl5436355326_
                                                 _e5436855329_
                                                 _hd5436755333_
                                                 _tl5436655336_
                                                 _e5436955339_
                                                 _e5437255343_
                                                 _hd5437155347_
                                                 _tl5437055350_
                                                 ___splice5738057381_
                                                 _target5440855236_
                                                 _tl5441055239_
                                                 _e5441955242_
                                                 _hd5441855246_
                                                 _tl5441755249_)
                                                (if (gx#stx-null?
                                                     _tl5437055350_)
                                                    (___kont5738257383_
                                                     _hd5437155347_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5435654570_))))))
                                        (if (gx#stx-null? _tl5437055350_)
                                            (___kont5738257383_ _hd5437155347_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5435654570_))))))
                                (if (gx#stx-null? _tl5437055350_)
                                    (___kont5738257383_ _hd5437155347_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5435654570_)))))))
                    (if (fx>= (gx#stx-length _tl5437055350_) '1)
                        (let ((___splice5738057381_
                               (gx#syntax-split-splice _tl5437055350_ '1)))
                          (let ((_tl5441055239_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5738057381_ '1)))
                                (_target5440855236_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5738057381_ '0))))
                            (if (gx#stx-pair? _tl5441055239_)
                                (let ((_e5441955242_
                                       (gx#syntax-e _tl5441055239_)))
                                  (let ((_tl5441755249_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5441955242_)))
                                        (_hd5441855246_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5441955242_))))
                                    (if (gx#stx-null? _tl5441755249_)
                                        (___match5750057501_
                                         _e5436555319_
                                         _hd5436455323_
                                         _tl5436355326_
                                         _e5436855329_
                                         _hd5436755333_
                                         _tl5436655336_
                                         _e5436955339_
                                         _e5437255343_
                                         _hd5437155347_
                                         _tl5437055350_
                                         ___splice5738057381_
                                         _target5440855236_
                                         _tl5441055239_
                                         _e5441955242_
                                         _hd5441855246_
                                         _tl5441755249_)
                                        (if (gx#stx-null? _tl5437055350_)
                                            (___kont5738257383_ _hd5437155347_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5435654570_))))))
                                (if (gx#stx-null? _tl5437055350_)
                                    (___kont5738257383_ _hd5437155347_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5435654570_))))))
                        (if (gx#stx-null? _tl5437055350_)
                            (___kont5738257383_ _hd5437155347_)
                            (let () (declare (not safe)) (_g5435654570_)))))
                (if (fx>= (gx#stx-length _tl5437055350_) '1)
                    (let ((___splice5738057381_
                           (gx#syntax-split-splice _tl5437055350_ '1)))
                      (let ((_tl5441055239_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5738057381_ '1)))
                            (_target5440855236_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5738057381_ '0))))
                        (if (gx#stx-pair? _tl5441055239_)
                            (let ((_e5441955242_ (gx#syntax-e _tl5441055239_)))
                              (let ((_tl5441755249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5441955242_)))
                                    (_hd5441855246_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5441955242_))))
                                (if (gx#stx-null? _tl5441755249_)
                                    (___match5750057501_
                                     _e5436555319_
                                     _hd5436455323_
                                     _tl5436355326_
                                     _e5436855329_
                                     _hd5436755333_
                                     _tl5436655336_
                                     _e5436955339_
                                     _e5437255343_
                                     _hd5437155347_
                                     _tl5437055350_
                                     ___splice5738057381_
                                     _target5440855236_
                                     _tl5441055239_
                                     _e5441955242_
                                     _hd5441855246_
                                     _tl5441755249_)
                                    (if (gx#stx-null? _tl5437055350_)
                                        (___kont5738257383_ _hd5437155347_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_))))))
                            (if (gx#stx-null? _tl5437055350_)
                                (___kont5738257383_ _hd5437155347_)
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_))))))
                    (if (gx#stx-null? _tl5437055350_)
                        (___kont5738257383_ _hd5437155347_)
                        (let () (declare (not safe)) (_g5435654570_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5437055350_)
                                                          '1)
                                                    (let ((___splice5738057381_
                                                           (gx#syntax-split-splice
                                                            _tl5437055350_
                                                            '1)))
                                                      (let ((_tl5441055239_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5738057381_ '1)))
                    (_target5440855236_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5738057381_ '0))))
                (if (gx#stx-pair? _tl5441055239_)
                    (let ((_e5441955242_ (gx#syntax-e _tl5441055239_)))
                      (let ((_tl5441755249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5441955242_)))
                            (_hd5441855246_
                             (let ()
                               (declare (not safe))
                               (##car _e5441955242_))))
                        (if (gx#stx-null? _tl5441755249_)
                            (___match5750057501_
                             _e5436555319_
                             _hd5436455323_
                             _tl5436355326_
                             _e5436855329_
                             _hd5436755333_
                             _tl5436655336_
                             _e5436955339_
                             _e5437255343_
                             _hd5437155347_
                             _tl5437055350_
                             ___splice5738057381_
                             _target5440855236_
                             _tl5441055239_
                             _e5441955242_
                             _hd5441855246_
                             _tl5441755249_)
                            (if (gx#stx-null? _tl5437055350_)
                                (___kont5738257383_ _hd5437155347_)
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_))))))
                    (if (gx#stx-null? _tl5437055350_)
                        (___kont5738257383_ _hd5437155347_)
                        (let () (declare (not safe)) (_g5435654570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5437055350_)
                                                        (___kont5738257383_
                                                         _hd5437155347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5435654570_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5437055350_)
                                                      '1)
                                                (let ((___splice5738057381_
                                                       (gx#syntax-split-splice
                                                        _tl5437055350_
                                                        '1)))
                                                  (let ((_tl5441055239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5738057381_
                                                            '1)))
                                                        (_target5440855236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5738057381_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5441055239_)
                                                        (let ((_e5441955242_
                                                               (gx#syntax-e
                                                                _tl5441055239_)))
                                                          (let ((_tl5441755249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5441955242_)))
                        (_hd5441855246_
                         (let () (declare (not safe)) (##car _e5441955242_))))
                    (if (gx#stx-null? _tl5441755249_)
                        (___match5750057501_
                         _e5436555319_
                         _hd5436455323_
                         _tl5436355326_
                         _e5436855329_
                         _hd5436755333_
                         _tl5436655336_
                         _e5436955339_
                         _e5437255343_
                         _hd5437155347_
                         _tl5437055350_
                         ___splice5738057381_
                         _target5440855236_
                         _tl5441055239_
                         _e5441955242_
                         _hd5441855246_
                         _tl5441755249_)
                        (if (gx#stx-null? _tl5437055350_)
                            (___kont5738257383_ _hd5437155347_)
                            (let () (declare (not safe)) (_g5435654570_))))))
                (if (gx#stx-null? _tl5437055350_)
                    (___kont5738257383_ _hd5437155347_)
                    (let () (declare (not safe)) (_g5435654570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5437055350_)
                                                    (___kont5738257383_
                                                     _hd5437155347_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5435654570_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5437055350_)
                                                  '1)
                                            (let ((___splice5738057381_
                                                   (gx#syntax-split-splice
                                                    _tl5437055350_
                                                    '1)))
                                              (let ((_tl5441055239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5738057381_
                                                        '1)))
                                                    (_target5440855236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5738057381_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5441055239_)
                                                    (let ((_e5441955242_
                                                           (gx#syntax-e
                                                            _tl5441055239_)))
                                                      (let ((_tl5441755249_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5441955242_)))
                    (_hd5441855246_
                     (let () (declare (not safe)) (##car _e5441955242_))))
                (if (gx#stx-null? _tl5441755249_)
                    (___match5750057501_
                     _e5436555319_
                     _hd5436455323_
                     _tl5436355326_
                     _e5436855329_
                     _hd5436755333_
                     _tl5436655336_
                     _e5436955339_
                     _e5437255343_
                     _hd5437155347_
                     _tl5437055350_
                     ___splice5738057381_
                     _target5440855236_
                     _tl5441055239_
                     _e5441955242_
                     _hd5441855246_
                     _tl5441755249_)
                    (if (gx#stx-null? _tl5437055350_)
                        (___kont5738257383_ _hd5437155347_)
                        (let () (declare (not safe)) (_g5435654570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5437055350_)
                                                        (___kont5738257383_
                                                         _hd5437155347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5435654570_))))))
                                            (if (gx#stx-null? _tl5437055350_)
                                                (___kont5738257383_
                                                 _hd5437155347_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5435654570_)))))))
                                (if (fx>= (gx#stx-length _tl5437055350_) '1)
                                    (let ((___splice5738057381_
                                           (gx#syntax-split-splice
                                            _tl5437055350_
                                            '1)))
                                      (let ((_tl5441055239_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5738057381_
                                                '1)))
                                            (_target5440855236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5738057381_
                                                '0))))
                                        (if (gx#stx-pair? _tl5441055239_)
                                            (let ((_e5441955242_
                                                   (gx#syntax-e
                                                    _tl5441055239_)))
                                              (let ((_tl5441755249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5441955242_)))
                                                    (_hd5441855246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5441955242_))))
                                                (if (gx#stx-null?
                                                     _tl5441755249_)
                                                    (___match5750057501_
                                                     _e5436555319_
                                                     _hd5436455323_
                                                     _tl5436355326_
                                                     _e5436855329_
                                                     _hd5436755333_
                                                     _tl5436655336_
                                                     _e5436955339_
                                                     _e5437255343_
                                                     _hd5437155347_
                                                     _tl5437055350_
                                                     ___splice5738057381_
                                                     _target5440855236_
                                                     _tl5441055239_
                                                     _e5441955242_
                                                     _hd5441855246_
                                                     _tl5441755249_)
                                                    (if (gx#stx-null?
                                                         _tl5437055350_)
                                                        (___kont5738257383_
                                                         _hd5437155347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5435654570_))))))
                                            (if (gx#stx-null? _tl5437055350_)
                                                (___kont5738257383_
                                                 _hd5437155347_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5435654570_))))))
                                    (if (gx#stx-null? _tl5437055350_)
                                        (___kont5738257383_ _hd5437155347_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_)))))))
                        (if (fx>= (gx#stx-length _tl5437055350_) '1)
                            (let ((___splice5738057381_
                                   (gx#syntax-split-splice _tl5437055350_ '1)))
                              (let ((_tl5441055239_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5738057381_ '1)))
                                    (_target5440855236_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5738057381_
                                        '0))))
                                (if (gx#stx-pair? _tl5441055239_)
                                    (let ((_e5441955242_
                                           (gx#syntax-e _tl5441055239_)))
                                      (let ((_tl5441755249_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5441955242_)))
                                            (_hd5441855246_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5441955242_))))
                                        (if (gx#stx-null? _tl5441755249_)
                                            (___match5750057501_
                                             _e5436555319_
                                             _hd5436455323_
                                             _tl5436355326_
                                             _e5436855329_
                                             _hd5436755333_
                                             _tl5436655336_
                                             _e5436955339_
                                             _e5437255343_
                                             _hd5437155347_
                                             _tl5437055350_
                                             ___splice5738057381_
                                             _target5440855236_
                                             _tl5441055239_
                                             _e5441955242_
                                             _hd5441855246_
                                             _tl5441755249_)
                                            (if (gx#stx-null? _tl5437055350_)
                                                (___kont5738257383_
                                                 _hd5437155347_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5435654570_))))))
                                    (if (gx#stx-null? _tl5437055350_)
                                        (___kont5738257383_ _hd5437155347_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_))))))
                            (if (gx#stx-null? _tl5437055350_)
                                (___kont5738257383_ _hd5437155347_)
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_)))))))
                (if (fx>= (gx#stx-length _tl5437055350_) '1)
                    (let ((___splice5738057381_
                           (gx#syntax-split-splice _tl5437055350_ '1)))
                      (let ((_tl5441055239_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5738057381_ '1)))
                            (_target5440855236_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5738057381_ '0))))
                        (if (gx#stx-pair? _tl5441055239_)
                            (let ((_e5441955242_ (gx#syntax-e _tl5441055239_)))
                              (let ((_tl5441755249_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5441955242_)))
                                    (_hd5441855246_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5441955242_))))
                                (if (gx#stx-null? _tl5441755249_)
                                    (___match5750057501_
                                     _e5436555319_
                                     _hd5436455323_
                                     _tl5436355326_
                                     _e5436855329_
                                     _hd5436755333_
                                     _tl5436655336_
                                     _e5436955339_
                                     _e5437255343_
                                     _hd5437155347_
                                     _tl5437055350_
                                     ___splice5738057381_
                                     _target5440855236_
                                     _tl5441055239_
                                     _e5441955242_
                                     _hd5441855246_
                                     _tl5441755249_)
                                    (if (gx#stx-null? _tl5437055350_)
                                        (___kont5738257383_ _hd5437155347_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_))))))
                            (if (gx#stx-null? _tl5437055350_)
                                (___kont5738257383_ _hd5437155347_)
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_))))))
                    (if (gx#stx-null? _tl5437055350_)
                        (___kont5738257383_ _hd5437155347_)
                        (let () (declare (not safe)) (_g5435654570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5437055350_)
                                                        (___kont5738257383_
                                                         _hd5437155347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5435654570_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5435654570_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5436955339_ '2))
                                            (if (gx#stx-pair? _tl5436655336_)
                                                (let ((_e5444655042_
                                                       (gx#syntax-e
                                                        _tl5436655336_)))
                                                  (let ((_tl5444455049_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5444655042_)))
                                                        (_hd5444555046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5444655042_))))
                                                    (if (gx#stx-pair?
                                                         _tl5444455049_)
                                                        (let ((_e5444955052_
                                                               (gx#syntax-e
                                                                _tl5444455049_)))
                                                          (let ((_tl5444755059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5444955052_)))
                        (_hd5444855056_
                         (let () (declare (not safe)) (##car _e5444955052_))))
                    (if (gx#stx-pair? _hd5444855056_)
                        (let ((_e5445255062_ (gx#syntax-e _hd5444855056_)))
                          (let ((_tl5445055069_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5445255062_)))
                                (_hd5445155066_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5445255062_))))
                            (if (gx#stx-pair? _hd5445155066_)
                                (let ((_e5445555072_
                                       (gx#syntax-e _hd5445155066_)))
                                  (let ((_tl5445355079_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5445555072_)))
                                        (_hd5445455076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5445555072_))))
                                    (if (gx#identifier? _hd5445455076_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g58159_|
                                             _hd5445455076_)
                                            (if (gx#stx-pair? _tl5445355079_)
                                                (let ((_e5445855082_
                                                       (gx#syntax-e
                                                        _tl5445355079_)))
                                                  (let ((_tl5445655089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5445855082_)))
                                                        (_hd5445755086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5445855082_))))
                                                    (if (gx#stx-null?
                                                         _tl5445655089_)
                                                        (if (gx#stx-pair?
                                                             _tl5445055069_)
                                                            (let ((_e5446155092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5445055069_)))
                      (let ((_tl5445955099_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5446155092_)))
                            (_hd5446055096_
                             (let ()
                               (declare (not safe))
                               (##car _e5446155092_))))
                        (___kont5738457385_
                         _tl5444755059_
                         _tl5445955099_
                         _hd5446055096_
                         _hd5445755086_
                         _hd5444555046_
                         _hd5436455323_)))
                    (___kont5738657387_
                     _tl5444755059_
                     _tl5445055069_
                     _hd5445155066_
                     _hd5444555046_
                     _hd5436455323_))
                (___kont5738657387_
                 _tl5444755059_
                 _tl5445055069_
                 _hd5445155066_
                 _hd5444555046_
                 _hd5436455323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5738657387_
                                                 _tl5444755059_
                                                 _tl5445055069_
                                                 _hd5445155066_
                                                 _hd5444555046_
                                                 _hd5436455323_))
                                            (___kont5738657387_
                                             _tl5444755059_
                                             _tl5445055069_
                                             _hd5445155066_
                                             _hd5444555046_
                                             _hd5436455323_))
                                        (___kont5738657387_
                                         _tl5444755059_
                                         _tl5445055069_
                                         _hd5445155066_
                                         _hd5444555046_
                                         _hd5436455323_))))
                                (___kont5738657387_
                                 _tl5444755059_
                                 _tl5445055069_
                                 _hd5445155066_
                                 _hd5444555046_
                                 _hd5436455323_))))
                        (if (gx#stx-null? _hd5444855056_)
                            (___kont5738857389_
                             _tl5444755059_
                             _hd5444555046_
                             _hd5436455323_)
                            (let () (declare (not safe)) (_g5435654570_))))))
                (let () (declare (not safe)) (_g5435654570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5435654570_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5436955339_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5436655336_)
                                                    (let ((_e5451354791_
                                                           (gx#syntax-e
                                                            _tl5436655336_)))
                                                      (let ((_tl5451154798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5451354791_)))
                    (_hd5451254795_
                     (let () (declare (not safe)) (##car _e5451354791_))))
                (if (gx#stx-pair? _tl5451154798_)
                    (let ((_e5451654801_ (gx#syntax-e _tl5451154798_)))
                      (let ((_tl5451454808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5451654801_)))
                            (_hd5451554805_
                             (let ()
                               (declare (not safe))
                               (##car _e5451654801_))))
                        (if (gx#stx-pair? _hd5451554805_)
                            (let ((_e5451954811_ (gx#syntax-e _hd5451554805_)))
                              (let ((_tl5451754818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5451954811_)))
                                    (_hd5451854815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5451954811_))))
                                (___kont5739057391_
                                 _tl5451454808_
                                 _tl5451754818_
                                 _hd5451854815_
                                 _hd5451254795_
                                 _hd5436455323_)))
                            (if (gx#stx-pair/null? _hd5451254795_)
                                (let ((___splice5739457395_
                                       (gx#syntax-split-splice
                                        _hd5451254795_
                                        '0)))
                                  (let ((_tl5453854614_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5739457395_
                                            '1)))
                                        (_target5453654611_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5739457395_
                                            '0))))
                                    (if (gx#stx-null? _tl5453854614_)
                                        (___match5772257723_
                                         _e5436555319_
                                         _hd5436455323_
                                         _tl5436355326_
                                         _e5436855329_
                                         _hd5436755333_
                                         _tl5436655336_
                                         _e5436955339_
                                         _e5451354791_
                                         _hd5451254795_
                                         _tl5451154798_
                                         ___splice5739457395_
                                         _target5453654611_
                                         _tl5453854614_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5435654570_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_))))))
                    (if (gx#stx-pair/null? _hd5451254795_)
                        (let ((___splice5739457395_
                               (gx#syntax-split-splice _hd5451254795_ '0)))
                          (let ((_tl5453854614_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5739457395_ '1)))
                                (_target5453654611_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5739457395_ '0))))
                            (if (gx#stx-null? _tl5453854614_)
                                (___match5772257723_
                                 _e5436555319_
                                 _hd5436455323_
                                 _tl5436355326_
                                 _e5436855329_
                                 _hd5436755333_
                                 _tl5436655336_
                                 _e5436955339_
                                 _e5451354791_
                                 _hd5451254795_
                                 _tl5451154798_
                                 ___splice5739457395_
                                 _target5453654611_
                                 _tl5453854614_)
                                (let ()
                                  (declare (not safe))
                                  (_g5435654570_)))))
                        (let () (declare (not safe)) (_g5435654570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5435654570_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5435654570_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5435654570_)))))
                          (let () (declare (not safe)) (_g5435654570_)))))
                  (let () (declare (not safe)) (_g5435654570_))))))))))
