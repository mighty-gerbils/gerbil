(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#annotate-class|
    (lambda (_stx83877_)
      (let* ((_g8388083894_
              (lambda (_g8388183890_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8388183890_)))
             (_g8387983967_
              (lambda (_g8388183898_)
                (if (gx#stx-pair? _g8388183898_)
                    (let ((_e8388583901_ (gx#syntax-e _g8388183898_)))
                      (let ((_hd8388483905_
                             (let ()
                               (declare (not safe))
                               (##car _e8388583901_)))
                            (_tl8388383908_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8388583901_))))
                        (if (gx#stx-pair? _tl8388383908_)
                            (let ((_e8388883911_ (gx#syntax-e _tl8388383908_)))
                              (let ((_hd8388783915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8388883911_)))
                                    (_tl8388683918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8388883911_))))
                                (if (gx#stx-null? _tl8388683918_)
                                    ((lambda (_L83921_)
                                       (let* ((_g8393683944_
                                               (lambda (_g8393783940_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8393783940_)))
                                              (_g8393583963_
                                               (lambda (_g8393783948_)
                                                 ((lambda (_L83951_)
                                                    (let ()
                                                      (let ((__tmp90832
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp90820
                                                             (let ((__tmp90822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp90831
                                   (gx#datum->syntax '#f '@mop.class))
                                  (__tmp90823
                                   (let ((__tmp90830
                                          (gx#datum->syntax
                                           '#f
                                           'gerbil#class::t))
                                         (__tmp90824
                                          (let ((__tmp90825
                                                 (let ((__tmp90826
                                                        (let ((__tmp90827
                                                               (let ((__tmp90828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp90829
                                     (let ()
                                       (declare (not safe))
                                       (cons '#f '()))))
                                (declare (not safe))
                                (cons '#f __tmp90829))))
                         (declare (not safe))
                         (cons '#t __tmp90828))))
                  (declare (not safe))
                  (cons '#f __tmp90827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83951_
                                                         __tmp90826))))
                                            (declare (not safe))
                                            (cons '() __tmp90825))))
                                     (declare (not safe))
                                     (cons __tmp90830 __tmp90824))))
                              (declare (not safe))
                              (cons __tmp90831 __tmp90823)))
                           (__tmp90821
                            (let () (declare (not safe)) (cons _L83921_ '()))))
                       (declare (not safe))
                       (cons __tmp90822 __tmp90821))))
                (declare (not safe))
                (cons __tmp90832 __tmp90820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8393783948_))))
                                         (_g8393583963_
                                          '(id name
                                               super
                                               flags
                                               fields
                                               precedence-list
                                               slot-vector
                                               slot-table
                                               properties
                                               constructor
                                               methods))))
                                     _hd8388783915_)
                                    (_g8388083894_ _g8388183898_))))
                            (_g8388083894_ _g8388183898_))))
                    (_g8388083894_ _g8388183898_)))))
        (_g8387983967_ _stx83877_))))
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83971_)
      (let* ((___stx9057090571_ _$stx83971_)
             (_g8397684005_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9057090571_))))
        (let ((___kont9057390574_
               (lambda (_L84097_ _L84099_)
                 (let ((__tmp90839 (gx#datum->syntax '#f '##fx=))
                       (__tmp90833
                        (let ((__tmp90835
                               (let ((__tmp90838
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90836
                                      (let ((__tmp90837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84097_ '()))))
                                        (declare (not safe))
                                        (cons _L84099_ __tmp90837))))
                                 (declare (not safe))
                                 (cons __tmp90838 __tmp90836)))
                              (__tmp90834
                               (let ()
                                 (declare (not safe))
                                 (cons _L84097_ '()))))
                          (declare (not safe))
                          (cons __tmp90835 __tmp90834))))
                   (declare (not safe))
                   (cons __tmp90839 __tmp90833))))
              (___kont9057590576_
               (lambda (_L84042_ _L84044_)
                 (let ((__tmp90852 (gx#datum->syntax '#f 'let))
                       (__tmp90840
                        (let ((__tmp90850
                               (let ((__tmp90851
                                      (let ()
                                        (declare (not safe))
                                        (cons _L84042_ '()))))
                                 (declare (not safe))
                                 (cons _L84042_ __tmp90851)))
                              (__tmp90841
                               (let ((__tmp90842
                                      (let ((__tmp90849
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90843
                                             (let ((__tmp90845
                                                    (let ((__tmp90848
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90846
                                                           (let ((__tmp90847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L84042_ '()))))
                     (declare (not safe))
                     (cons _L84044_ __tmp90847))))
              (declare (not safe))
              (cons __tmp90848 __tmp90846)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90844
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L84042_ '()))))
                                               (declare (not safe))
                                               (cons __tmp90845 __tmp90844))))
                                        (declare (not safe))
                                        (cons __tmp90849 __tmp90843))))
                                 (declare (not safe))
                                 (cons __tmp90842 '()))))
                          (declare (not safe))
                          (cons __tmp90850 __tmp90841))))
                   (declare (not safe))
                   (cons __tmp90852 __tmp90840)))))
          (let ((___match9059790598_
                 (lambda (_e8398284067_
                          _hd8398184071_
                          _tl8398084074_
                          _e8398584077_
                          _hd8398484081_
                          _tl8398384084_
                          _e8398884087_
                          _hd8398784091_
                          _tl8398684094_)
                   (let ((_L84097_ _hd8398784091_) (_L84099_ _hd8398484081_))
                     (if (or (gx#identifier? _L84097_)
                             (gx#stx-fixnum? _L84097_))
                         (___kont9057390574_ _L84097_ _L84099_)
                         (___kont9057590576_
                          _hd8398784091_
                          _hd8398484081_))))))
            (if (gx#stx-pair? ___stx9057090571_)
                (let ((_e8398284067_ (gx#syntax-e ___stx9057090571_)))
                  (let ((_tl8398084074_
                         (let () (declare (not safe)) (##cdr _e8398284067_)))
                        (_hd8398184071_
                         (let () (declare (not safe)) (##car _e8398284067_))))
                    (if (gx#stx-pair? _tl8398084074_)
                        (let ((_e8398584077_ (gx#syntax-e _tl8398084074_)))
                          (let ((_tl8398384084_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8398584077_)))
                                (_hd8398484081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8398584077_))))
                            (if (gx#stx-pair? _tl8398384084_)
                                (let ((_e8398884087_
                                       (gx#syntax-e _tl8398384084_)))
                                  (let ((_tl8398684094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8398884087_)))
                                        (_hd8398784091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8398884087_))))
                                    (if (gx#stx-null? _tl8398684094_)
                                        (___match9059790598_
                                         _e8398284067_
                                         _hd8398184071_
                                         _tl8398084074_
                                         _e8398584077_
                                         _hd8398484081_
                                         _tl8398384084_
                                         _e8398884087_
                                         _hd8398784091_
                                         _tl8398684094_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8397684005_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8397684005_)))))
                        (let () (declare (not safe)) (_g8397684005_)))))
                (let () (declare (not safe)) (_g8397684005_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx84122_)
      (let* ((___stx9062090621_ _$stx84122_)
             (_g8412784156_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9062090621_))))
        (let ((___kont9062390624_
               (lambda (_L84248_ _L84250_)
                 (let ((__tmp90859 (gx#datum->syntax '#f '##fx=))
                       (__tmp90853
                        (let ((__tmp90855
                               (let ((__tmp90858
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90856
                                      (let ((__tmp90857
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84248_ '()))))
                                        (declare (not safe))
                                        (cons _L84250_ __tmp90857))))
                                 (declare (not safe))
                                 (cons __tmp90858 __tmp90856)))
                              (__tmp90854
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp90855 __tmp90854))))
                   (declare (not safe))
                   (cons __tmp90859 __tmp90853))))
              (___kont9062590626_
               (lambda (_L84193_ _L84195_)
                 (let ((__tmp90872 (gx#datum->syntax '#f 'let))
                       (__tmp90860
                        (let ((__tmp90870
                               (let ((__tmp90871
                                      (let ()
                                        (declare (not safe))
                                        (cons _L84193_ '()))))
                                 (declare (not safe))
                                 (cons _L84193_ __tmp90871)))
                              (__tmp90861
                               (let ((__tmp90862
                                      (let ((__tmp90869
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90863
                                             (let ((__tmp90865
                                                    (let ((__tmp90868
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90866
                                                           (let ((__tmp90867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L84193_ '()))))
                     (declare (not safe))
                     (cons _L84195_ __tmp90867))))
              (declare (not safe))
              (cons __tmp90868 __tmp90866)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp90865 __tmp90864))))
                                        (declare (not safe))
                                        (cons __tmp90869 __tmp90863))))
                                 (declare (not safe))
                                 (cons __tmp90862 '()))))
                          (declare (not safe))
                          (cons __tmp90870 __tmp90861))))
                   (declare (not safe))
                   (cons __tmp90872 __tmp90860)))))
          (let ((___match9064790648_
                 (lambda (_e8413384218_
                          _hd8413284222_
                          _tl8413184225_
                          _e8413684228_
                          _hd8413584232_
                          _tl8413484235_
                          _e8413984238_
                          _hd8413884242_
                          _tl8413784245_)
                   (let ((_L84248_ _hd8413884242_) (_L84250_ _hd8413584232_))
                     (if (or (gx#identifier? _L84248_)
                             (gx#stx-fixnum? _L84248_))
                         (___kont9062390624_ _L84248_ _L84250_)
                         (___kont9062590626_
                          _hd8413884242_
                          _hd8413584232_))))))
            (if (gx#stx-pair? ___stx9062090621_)
                (let ((_e8413384218_ (gx#syntax-e ___stx9062090621_)))
                  (let ((_tl8413184225_
                         (let () (declare (not safe)) (##cdr _e8413384218_)))
                        (_hd8413284222_
                         (let () (declare (not safe)) (##car _e8413384218_))))
                    (if (gx#stx-pair? _tl8413184225_)
                        (let ((_e8413684228_ (gx#syntax-e _tl8413184225_)))
                          (let ((_tl8413484235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8413684228_)))
                                (_hd8413584232_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8413684228_))))
                            (if (gx#stx-pair? _tl8413484235_)
                                (let ((_e8413984238_
                                       (gx#syntax-e _tl8413484235_)))
                                  (let ((_tl8413784245_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8413984238_)))
                                        (_hd8413884242_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8413984238_))))
                                    (if (gx#stx-null? _tl8413784245_)
                                        (___match9064790648_
                                         _e8413384218_
                                         _hd8413284222_
                                         _tl8413184225_
                                         _e8413684228_
                                         _hd8413584232_
                                         _tl8413484235_
                                         _e8413984238_
                                         _hd8413884242_
                                         _tl8413784245_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8412784156_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8412784156_)))))
                        (let () (declare (not safe)) (_g8412784156_)))))
                (let () (declare (not safe)) (_g8412784156_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx84273_)
      (let* ((_g8427684297_
              (lambda (_g8427784293_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8427784293_)))
             (_g8427584525_
              (lambda (_g8427784301_)
                (if (gx#stx-pair? _g8427784301_)
                    (let ((_e8428284304_ (gx#syntax-e _g8427784301_)))
                      (let ((_hd8428184308_
                             (let ()
                               (declare (not safe))
                               (##car _e8428284304_)))
                            (_tl8428084311_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8428284304_))))
                        (if (gx#stx-pair? _tl8428084311_)
                            (let ((_e8428584314_ (gx#syntax-e _tl8428084311_)))
                              (let ((_hd8428484318_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8428584314_)))
                                    (_tl8428384321_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8428584314_))))
                                (if (gx#stx-pair? _hd8428484318_)
                                    (let ((_e8428884324_
                                           (gx#syntax-e _hd8428484318_)))
                                      (let ((_hd8428784328_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8428884324_)))
                                            (_tl8428684331_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8428884324_))))
                                        (if (gx#stx-pair? _tl8428684331_)
                                            (let ((_e8429184334_
                                                   (gx#syntax-e
                                                    _tl8428684331_)))
                                              (let ((_hd8429084338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8429184334_)))
                                                    (_tl8428984341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8429184334_))))
                                                (if (gx#stx-null?
                                                     _tl8428984341_)
                                                    (if (gx#stx-null?
                                                         _tl8428384321_)
                                                        ((lambda (_L84344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L84346_)
                   (let* ((_g8436484372_
                           (lambda (_g8436584368_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8436584368_)))
                          (_g8436384521_
                           (lambda (_g8436584376_)
                             ((lambda (_L84379_)
                                (let ()
                                  (let* ((_g8439184399_
                                          (lambda (_g8439284395_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8439284395_)))
                                         (_g8439084517_
                                          (lambda (_g8439284403_)
                                            ((lambda (_L84406_)
                                               (let ()
                                                 (let* ((_g8441984427_
                                                         (lambda (_g8442084423_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8442084423_)))
                                                        (_g8441884513_
                                                         (lambda (_g8442084431_)
                                                           ((lambda (_L84434_)
                                                              (let ()
                                                                (let* ((_g8444784455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8444884451_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8444884451_)))
                               (_g8444684509_
                                (lambda (_g8444884459_)
                                  ((lambda (_L84462_)
                                     (let ()
                                       (let* ((_g8447584483_
                                               (lambda (_g8447684479_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8447684479_)))
                                              (_g8447484505_
                                               (lambda (_g8447684487_)
                                                 ((lambda (_L84490_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp91005
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp90873
                                                               (let ((__tmp90975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp91004 (gx#datum->syntax '#f 'def))
                                    (__tmp90976
                                     (let ((__tmp90977
                                            (let ((__tmp90978
                                                   (let ((__tmp91003
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp90979
                                                          (let ((__tmp90998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp91002
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp90999
                                (let ((__tmp91000
                                       (let ((__tmp91001
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L84346_ __tmp91001))))
                                  (declare (not safe))
                                  (cons _L84379_ __tmp91000))))
                           (declare (not safe))
                           (cons __tmp91002 __tmp90999)))
                        (__tmp90980
                         (let ((__tmp90981
                                (let ((__tmp90997
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp90982
                                       (let ((__tmp90995
                                              (let ((__tmp90996
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp90996 '())))
                                             (__tmp90983
                                              (let ((__tmp90984
                                                     (let ((__tmp90994
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp90985
                                                            (let ((__tmp90993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp90986
                           (let ((__tmp90987
                                  (let ((__tmp90992
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp90988
                                         (let ((__tmp90989
                                                (let ((__tmp90991
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp90990
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L84346_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp90991
                                                        __tmp90990))))
                                           (declare (not safe))
                                           (cons __tmp90989 '()))))
                                    (declare (not safe))
                                    (cons __tmp90992 __tmp90988))))
                             (declare (not safe))
                             (cons _L84344_ __tmp90987))))
                      (declare (not safe))
                      (cons __tmp90993 __tmp90986))))
               (declare (not safe))
               (cons __tmp90994 __tmp90985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90984 '()))))
                                         (declare (not safe))
                                         (cons __tmp90995 __tmp90983))))
                                  (declare (not safe))
                                  (cons __tmp90997 __tmp90982))))
                           (declare (not safe))
                           (cons __tmp90981 '()))))
                    (declare (not safe))
                    (cons __tmp90998 __tmp90980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp91003
                                                           __tmp90979))))
                                              (declare (not safe))
                                              (cons __tmp90978 '()))))
                                       (declare (not safe))
                                       (cons _L84406_ __tmp90977))))
                                (declare (not safe))
                                (cons __tmp91004 __tmp90976)))
                             (__tmp90874
                              (let ((__tmp90945
                                     (let ((__tmp90974
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp90946
                                            (let ((__tmp90947
                                                   (let ((__tmp90948
                                                          (let ((__tmp90973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp90949
                         (let ((__tmp90968
                                (let ((__tmp90972
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp90969
                                       (let ((__tmp90970
                                              (let ((__tmp90971
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L84346_ __tmp90971))))
                                         (declare (not safe))
                                         (cons _L84379_ __tmp90970))))
                                  (declare (not safe))
                                  (cons __tmp90972 __tmp90969)))
                               (__tmp90950
                                (let ((__tmp90951
                                       (let ((__tmp90967
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp90952
                                              (let ((__tmp90965
                                                     (let ((__tmp90966
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp90966 '())))
                                                    (__tmp90953
                                                     (let ((__tmp90954
                                                            (let ((__tmp90964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp90955
                           (let ((__tmp90963 (gx#datum->syntax '#f 'klass))
                                 (__tmp90956
                                  (let ((__tmp90957
                                         (let ((__tmp90962
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp90958
                                                (let ((__tmp90959
                                                       (let ((__tmp90961
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp90960
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L84346_ '()))))
                 (declare (not safe))
                 (cons __tmp90961 __tmp90960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp90959 '()))))
                                           (declare (not safe))
                                           (cons __tmp90962 __tmp90958))))
                                    (declare (not safe))
                                    (cons _L84344_ __tmp90957))))
                             (declare (not safe))
                             (cons __tmp90963 __tmp90956))))
                      (declare (not safe))
                      (cons __tmp90964 __tmp90955))))
               (declare (not safe))
               (cons __tmp90954 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90965 __tmp90953))))
                                         (declare (not safe))
                                         (cons __tmp90967 __tmp90952))))
                                  (declare (not safe))
                                  (cons __tmp90951 '()))))
                           (declare (not safe))
                           (cons __tmp90968 __tmp90950))))
                    (declare (not safe))
                    (cons __tmp90973 __tmp90949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90948 '()))))
                                              (declare (not safe))
                                              (cons _L84434_ __tmp90947))))
                                       (declare (not safe))
                                       (cons __tmp90974 __tmp90946)))
                                    (__tmp90875
                                     (let ((__tmp90911
                                            (let ((__tmp90944
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp90912
                                                   (let ((__tmp90913
                                                          (let ((__tmp90914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp90943
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp90915
                                (let ((__tmp90938
                                       (let ((__tmp90942
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp90939
                                              (let ((__tmp90940
                                                     (let ((__tmp90941
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L84346_
                                                             __tmp90941))))
                                                (declare (not safe))
                                                (cons _L84379_ __tmp90940))))
                                         (declare (not safe))
                                         (cons __tmp90942 __tmp90939)))
                                      (__tmp90916
                                       (let ((__tmp90917
                                              (let ((__tmp90937
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp90918
                                                     (let ((__tmp90933
                                                            (let ((__tmp90936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp90934
                           (let ((__tmp90935 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp90935 '()))))
                      (declare (not safe))
                      (cons __tmp90936 __tmp90934)))
                   (__tmp90919
                    (let ((__tmp90920
                           (let ((__tmp90932
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp90921
                                  (let ((__tmp90931
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp90922
                                         (let ((__tmp90930
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp90923
                                                (let ((__tmp90924
                                                       (let ((__tmp90929
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp90925
                                                              (let ((__tmp90926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp90928 (gx#datum->syntax '#f 'quote))
                                   (__tmp90927
                                    (let ()
                                      (declare (not safe))
                                      (cons _L84346_ '()))))
                               (declare (not safe))
                               (cons __tmp90928 __tmp90927))))
                        (declare (not safe))
                        (cons __tmp90926 '()))))
                 (declare (not safe))
                 (cons __tmp90929 __tmp90925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L84344_ __tmp90924))))
                                           (declare (not safe))
                                           (cons __tmp90930 __tmp90923))))
                                    (declare (not safe))
                                    (cons __tmp90931 __tmp90922))))
                             (declare (not safe))
                             (cons __tmp90932 __tmp90921))))
                      (declare (not safe))
                      (cons __tmp90920 '()))))
               (declare (not safe))
               (cons __tmp90933 __tmp90919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90937 __tmp90918))))
                                         (declare (not safe))
                                         (cons __tmp90917 '()))))
                                  (declare (not safe))
                                  (cons __tmp90938 __tmp90916))))
                           (declare (not safe))
                           (cons __tmp90943 __tmp90915))))
                    (declare (not safe))
                    (cons __tmp90914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84462_
                                                           __tmp90913))))
                                              (declare (not safe))
                                              (cons __tmp90944 __tmp90912)))
                                           (__tmp90876
                                            (let ((__tmp90877
                                                   (let ((__tmp90910
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp90878
                                                          (let ((__tmp90879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp90880
                                (let ((__tmp90909
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp90881
                                       (let ((__tmp90904
                                              (let ((__tmp90908
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp90905
                                                     (let ((__tmp90906
                                                            (let ((__tmp90907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L84346_ __tmp90907))))
               (declare (not safe))
               (cons _L84379_ __tmp90906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90908 __tmp90905)))
                                             (__tmp90882
                                              (let ((__tmp90883
                                                     (let ((__tmp90903
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp90884
                                                            (let ((__tmp90899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp90902 (gx#datum->syntax '#f 'klass))
                                 (__tmp90900
                                  (let ((__tmp90901
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp90901 '()))))
                             (declare (not safe))
                             (cons __tmp90902 __tmp90900)))
                          (__tmp90885
                           (let ((__tmp90886
                                  (let ((__tmp90898
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp90887
                                         (let ((__tmp90897
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp90888
                                                (let ((__tmp90896
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp90889
                                                       (let ((__tmp90890
                                                              (let ((__tmp90895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp90891
                             (let ((__tmp90892
                                    (let ((__tmp90894
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp90893
                                           (let ()
                                             (declare (not safe))
                                             (cons _L84346_ '()))))
                                      (declare (not safe))
                                      (cons __tmp90894 __tmp90893))))
                               (declare (not safe))
                               (cons __tmp90892 '()))))
                        (declare (not safe))
                        (cons __tmp90895 __tmp90891))))
                 (declare (not safe))
                 (cons _L84344_ __tmp90890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp90896
                                                        __tmp90889))))
                                           (declare (not safe))
                                           (cons __tmp90897 __tmp90888))))
                                    (declare (not safe))
                                    (cons __tmp90898 __tmp90887))))
                             (declare (not safe))
                             (cons __tmp90886 '()))))
                      (declare (not safe))
                      (cons __tmp90899 __tmp90885))))
               (declare (not safe))
               (cons __tmp90903 __tmp90884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90883 '()))))
                                         (declare (not safe))
                                         (cons __tmp90904 __tmp90882))))
                                  (declare (not safe))
                                  (cons __tmp90909 __tmp90881))))
                           (declare (not safe))
                           (cons __tmp90880 '()))))
                    (declare (not safe))
                    (cons _L84490_ __tmp90879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90910
                                                           __tmp90878))))
                                              (declare (not safe))
                                              (cons __tmp90877 '()))))
                                       (declare (not safe))
                                       (cons __tmp90911 __tmp90876))))
                                (declare (not safe))
                                (cons __tmp90945 __tmp90875))))
                         (declare (not safe))
                         (cons __tmp90975 __tmp90874))))
                  (declare (not safe))
                  (cons __tmp91005 __tmp90873)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8447684487_))))
                                         (_g8447484505_
                                          (gx#stx-identifier
                                           _L84346_
                                           '"&"
                                           _L84462_)))))
                                   _g8444884459_))))
                          (_g8444684509_
                           (gx#stx-identifier _L84346_ _L84406_ '"-set!")))))
                    _g8442084431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8441884513_
                                                    (gx#stx-identifier
                                                     _L84346_
                                                     '"&"
                                                     _L84406_)))))
                                             _g8439284403_))))
                                    (_g8439084517_
                                     (gx#stx-identifier
                                      _L84346_
                                      '"class-type-"
                                      _L84346_)))))
                              _g8436584376_))))
                     (_g8436384521_ (gx#core-quote-syntax 'class::t))))
                 _hd8429084338_
                 _hd8428784328_)
                (_g8427684297_ _g8427784301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8427684297_
                                                     _g8427784301_))))
                                            (_g8427684297_ _g8427784301_))))
                                    (_g8427684297_ _g8427784301_))))
                            (_g8427684297_ _g8427784301_))))
                    (_g8427684297_ _g8427784301_)))))
        (_g8427584525_ _stx84273_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx84529_)
      (let* ((_g8453384562_
              (lambda (_g8453484558_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8453484558_)))
             (_g8453284662_
              (lambda (_g8453484566_)
                (if (gx#stx-pair? _g8453484566_)
                    (let ((_e8453984569_ (gx#syntax-e _g8453484566_)))
                      (let ((_hd8453884573_
                             (let ()
                               (declare (not safe))
                               (##car _e8453984569_)))
                            (_tl8453784576_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8453984569_))))
                        (if (gx#stx-pair/null? _tl8453784576_)
                            (let ((_g91006_
                                   (gx#syntax-split-splice _tl8453784576_ '0)))
                              (begin
                                (let ((_g91007_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g91006_)
                                             (##vector-length _g91006_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g91007_ 2)))
                                      (error "Context expects 2 values"
                                             _g91007_)))
                                (let ((_target8454084579_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g91006_ 0)))
                                      (_tl8454284582_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g91006_ 1))))
                                  (if (gx#stx-null? _tl8454284582_)
                                      (letrec ((_loop8454384585_
                                                (lambda (_hd8454184589_
                                                         _field8454784592_
                                                         _slot8454884594_)
                                                  (if (gx#stx-pair?
                                                       _hd8454184589_)
                                                      (let ((_e8454484597_
                                                             (gx#syntax-e
                                                              _hd8454184589_)))
                                                        (let ((_lp-hd8454584601_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8454484597_)))
                      (_lp-tl8454684604_
                       (let () (declare (not safe)) (##cdr _e8454484597_))))
                  (if (gx#stx-pair? _lp-hd8454584601_)
                      (let ((_e8455384607_ (gx#syntax-e _lp-hd8454584601_)))
                        (let ((_hd8455284611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8455384607_)))
                              (_tl8455184614_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8455384607_))))
                          (if (gx#stx-pair? _tl8455184614_)
                              (let ((_e8455684617_
                                     (gx#syntax-e _tl8455184614_)))
                                (let ((_hd8455584621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8455684617_)))
                                      (_tl8455484624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8455684617_))))
                                  (if (gx#stx-null? _tl8455484624_)
                                      (_loop8454384585_
                                       _lp-tl8454684604_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8455584621_
                                               _field8454784592_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8455284611_
                                               _slot8454884594_)))
                                      (_g8453384562_ _g8453484566_))))
                              (_g8453384562_ _g8453484566_))))
                      (_g8453384562_ _g8453484566_))))
              (let ((_field8454984627_ (reverse _field8454784592_))
                    (_slot8455084630_ (reverse _slot8454884594_)))
                ((lambda (_L84633_ _L84635_)
                   (let ((__tmp91015 (gx#datum->syntax '#f 'begin))
                         (__tmp91008
                          (begin
                            (gx#syntax-check-splice-targets _L84633_ _L84635_)
                            (let ((__tmp91009
                                   (lambda (_g8465084654_
                                            _g8465184657_
                                            _g8465284659_)
                                     (let ((__tmp91010
                                            (let ((__tmp91014
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp91011
                                                   (let ((__tmp91012
                                                          (let ((__tmp91013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8465084654_ '()))))
                    (declare (not safe))
                    (cons _g8465184657_ __tmp91013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp91012 '()))))
                                              (declare (not safe))
                                              (cons __tmp91014 __tmp91011))))
                                       (declare (not safe))
                                       (cons __tmp91010 _g8465284659_)))))
                              (declare (not safe))
                              (foldr2 __tmp91009 '() _L84633_ _L84635_)))))
                     (declare (not safe))
                     (cons __tmp91015 __tmp91008)))
                 _field8454984627_
                 _slot8455084630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8454384585_
                                         _target8454084579_
                                         '()
                                         '()))
                                      (_g8453384562_ _g8453484566_)))))
                            (_g8453384562_ _g8453484566_))))
                    (_g8453384562_ _g8453484566_)))))
        (_g8453284662_ _$stx84529_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84667_)
      (let* ((_g8467184697_
              (lambda (_g8467284693_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8467284693_)))
             (_g8467084780_
              (lambda (_g8467284701_)
                (if (gx#stx-pair? _g8467284701_)
                    (let ((_e8467984704_ (gx#syntax-e _g8467284701_)))
                      (let ((_hd8467884708_
                             (let ()
                               (declare (not safe))
                               (##car _e8467984704_)))
                            (_tl8467784711_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8467984704_))))
                        (if (gx#stx-pair? _tl8467784711_)
                            (let ((_e8468284714_ (gx#syntax-e _tl8467784711_)))
                              (let ((_hd8468184718_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8468284714_)))
                                    (_tl8468084721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8468284714_))))
                                (if (gx#stx-pair? _tl8468084721_)
                                    (let ((_e8468584724_
                                           (gx#syntax-e _tl8468084721_)))
                                      (let ((_hd8468484728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8468584724_)))
                                            (_tl8468384731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8468584724_))))
                                        (if (gx#stx-pair? _tl8468384731_)
                                            (let ((_e8468884734_
                                                   (gx#syntax-e
                                                    _tl8468384731_)))
                                              (let ((_hd8468784738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8468884734_)))
                                                    (_tl8468684741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8468884734_))))
                                                (if (gx#stx-pair?
                                                     _tl8468684741_)
                                                    (let ((_e8469184744_
                                                           (gx#syntax-e
                                                            _tl8468684741_)))
                                                      (let ((_hd8469084748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8469184744_)))
                    (_tl8468984751_
                     (let () (declare (not safe)) (##cdr _e8469184744_))))
                (if (gx#stx-null? _tl8468984751_)
                    ((lambda (_L84754_ _L84756_ _L84757_ _L84758_)
                       (let ((__tmp91062 (gx#datum->syntax '#f 'if))
                             (__tmp91016
                              (let ((__tmp91059
                                     (let ((__tmp91061
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp91060
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84758_ '()))))
                                       (declare (not safe))
                                       (cons __tmp91061 __tmp91060)))
                                    (__tmp91017
                                     (let ((__tmp91022
                                            (let ((__tmp91058
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp91023
                                                   (let ((__tmp91052
                                                          (let ((__tmp91057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp91053
                         (let ((__tmp91054
                                (let ((__tmp91056
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp91055
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84758_ '()))))
                                  (declare (not safe))
                                  (cons __tmp91056 __tmp91055))))
                           (declare (not safe))
                           (cons __tmp91054 '()))))
                    (declare (not safe))
                    (cons __tmp91057 __tmp91053)))
                 (__tmp91024
                  (let ((__tmp91025
                         (let ((__tmp91051 (gx#datum->syntax '#f 'cond))
                               (__tmp91026
                                (let ((__tmp91034
                                       (let ((__tmp91038
                                              (let ((__tmp91050
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp91039
                                                     (let ((__tmp91046
                                                            (let ((__tmp91049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp91047
                           (let ((__tmp91048 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp91048 '()))))
                      (declare (not safe))
                      (cons __tmp91049 __tmp91047)))
                   (__tmp91040
                    (let ((__tmp91041
                           (let ((__tmp91045
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp91042
                                  (let ((__tmp91044
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp91043
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84757_ '()))))
                                    (declare (not safe))
                                    (cons __tmp91044 __tmp91043))))
                             (declare (not safe))
                             (cons __tmp91045 __tmp91042))))
                      (declare (not safe))
                      (cons __tmp91041 '()))))
               (declare (not safe))
               (cons __tmp91046 __tmp91040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp91050 __tmp91039)))
                                             (__tmp91035
                                              (let ((__tmp91037
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp91036
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84756_ '()))))
                                                (declare (not safe))
                                                (cons __tmp91037 __tmp91036))))
                                         (declare (not safe))
                                         (cons __tmp91038 __tmp91035)))
                                      (__tmp91027
                                       (let ((__tmp91028
                                              (let ((__tmp91033
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp91029
                                                     (let ((__tmp91030
                                                            (let ((__tmp91031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp91032
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84757_ '()))))
                             (declare (not safe))
                             (cons _L84758_ __tmp91032))))
                      (declare (not safe))
                      (cons _L84754_ __tmp91031))))
               (declare (not safe))
               (cons __tmp91030 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp91033 __tmp91029))))
                                         (declare (not safe))
                                         (cons __tmp91028 '()))))
                                  (declare (not safe))
                                  (cons __tmp91034 __tmp91027))))
                           (declare (not safe))
                           (cons __tmp91051 __tmp91026))))
                    (declare (not safe))
                    (cons __tmp91025 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp91052
                                                           __tmp91024))))
                                              (declare (not safe))
                                              (cons __tmp91058 __tmp91023)))
                                           (__tmp91018
                                            (let ((__tmp91019
                                                   (let ((__tmp91020
                                                          (let ((__tmp91021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84757_ '()))))
                    (declare (not safe))
                    (cons _L84758_ __tmp91021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84754_
                                                           __tmp91020))))
                                              (declare (not safe))
                                              (cons __tmp91019 '()))))
                                       (declare (not safe))
                                       (cons __tmp91022 __tmp91018))))
                                (declare (not safe))
                                (cons __tmp91059 __tmp91017))))
                         (declare (not safe))
                         (cons __tmp91062 __tmp91016)))
                     _hd8469084748_
                     _hd8468784738_
                     _hd8468484728_
                     _hd8468184718_)
                    (_g8467184697_ _g8467284701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8467184697_
                                                     _g8467284701_))))
                                            (_g8467184697_ _g8467284701_))))
                                    (_g8467184697_ _g8467284701_))))
                            (_g8467184697_ _g8467284701_))))
                    (_g8467184697_ _g8467284701_)))))
        (_g8467084780_ _$stx84667_)))))
