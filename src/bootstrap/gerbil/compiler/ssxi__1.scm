(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx287357_)
      (let* ((_g287361287379_
              (lambda (_g287362287375_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287362287375_))))
             (_g287360287434_
              (lambda (_g287362287383_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287362287383_))
                    (let ((_e287367287386_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287362287383_))))
                      (let ((_hd287366287390_
                             (let ()
                               (declare (not safe))
                               (##car _e287367287386_)))
                            (_tl287365287393_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287367287386_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287365287393_))
                            (let ((_e287370287396_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287365287393_))))
                              (let ((_hd287369287400_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287370287396_)))
                                    (_tl287368287403_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287370287396_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl287368287403_))
                                    (let ((_e287373287406_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl287368287403_))))
                                      (let ((_hd287372287410_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e287373287406_)))
                                            (_tl287371287413_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e287373287406_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl287371287413_))
                                            ((lambda (_L287416_ _L287418_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L287418_))
                                                   (let ((__tmp294965
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp294960
                                                          (let ((__tmp294962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp294964
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp294963
                                (let ()
                                  (declare (not safe))
                                  (cons _L287418_ '()))))
                           (declare (not safe))
                           (cons __tmp294964 __tmp294963)))
                        (__tmp294961
                         (let () (declare (not safe)) (cons _L287416_ '()))))
                    (declare (not safe))
                    (cons __tmp294962 __tmp294961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp294965
                                                           __tmp294960))
                                                   (_g287361287379_
                                                    _g287362287383_)))
                                             _hd287372287410_
                                             _hd287369287400_)
                                            (_g287361287379_
                                             _g287362287383_))))
                                    (_g287361287379_ _g287362287383_))))
                            (_g287361287379_ _g287362287383_))))
                    (_g287361287379_ _g287362287383_)))))
        (_g287360287434_ _$stx287357_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx287438_)
      (let* ((_g287442287471_
              (lambda (_g287443287467_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287443287467_))))
             (_g287441287571_
              (lambda (_g287443287475_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287443287475_))
                    (let ((_e287448287478_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287443287475_))))
                      (let ((_hd287447287482_
                             (let ()
                               (declare (not safe))
                               (##car _e287448287478_)))
                            (_tl287446287485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287448287478_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287446287485_))
                            (let ((_g294966_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287446287485_
                                      '0))))
                              (begin
                                (let ((_g294967_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294966_)
                                             (##vector-length _g294966_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294967_ 2)))
                                      (error "Context expects 2 values"
                                             _g294967_)))
                                (let ((_target287449287488_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294966_ 0)))
                                      (_tl287451287491_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294966_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287451287491_))
                                      (letrec ((_loop287452287494_
                                                (lambda (_hd287450287498_
                                                         _type287456287501_
                                                         _symbol287457287503_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287450287498_))
                                                      (let ((_e287453287506_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287450287498_))))
                (let ((_lp-hd287454287510_
                       (let () (declare (not safe)) (##car _e287453287506_)))
                      (_lp-tl287455287513_
                       (let () (declare (not safe)) (##cdr _e287453287506_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287454287510_))
                      (let ((_e287462287516_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287454287510_))))
                        (let ((_hd287461287520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287462287516_)))
                              (_tl287460287523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287462287516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287460287523_))
                              (let ((_e287465287526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287460287523_))))
                                (let ((_hd287464287530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287465287526_)))
                                      (_tl287463287533_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287465287526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287463287533_))
                                      (_loop287452287494_
                                       _lp-tl287455287513_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287464287530_
                                               _type287456287501_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287461287520_
                                               _symbol287457287503_)))
                                      (_g287442287471_ _g287443287475_))))
                              (_g287442287471_ _g287443287475_))))
                      (_g287442287471_ _g287443287475_))))
              (let ((_type287458287536_ (reverse _type287456287501_))
                    (_symbol287459287539_ (reverse _symbol287457287503_)))
                ((lambda (_L287542_ _L287544_)
                   (let ((__tmp294974
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294968
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287542_
                               _L287544_))
                            (let ((__tmp294969
                                   (lambda (_g287559287563_
                                            _g287560287566_
                                            _g287561287568_)
                                     (let ((__tmp294970
                                            (let ((__tmp294973
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp294971
                                                   (let ((__tmp294972
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g287559287563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287560287566_
                                                           __tmp294972))))
                                              (declare (not safe))
                                              (cons __tmp294973 __tmp294971))))
                                       (declare (not safe))
                                       (cons __tmp294970 _g287561287568_)))))
                              (declare (not safe))
                              (foldr2 __tmp294969 '() _L287542_ _L287544_)))))
                     (declare (not safe))
                     (cons __tmp294974 __tmp294968)))
                 _type287458287536_
                 _symbol287459287539_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287452287494_
                                         _target287449287488_
                                         '()
                                         '()))
                                      (_g287442287471_ _g287443287475_)))))
                            (_g287442287471_ _g287443287475_))))
                    (_g287442287471_ _g287443287475_)))))
        (_g287441287571_ _$stx287438_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx287576_)
      (let* ((___stx294525294526_ _$stx287576_)
             (_g287581287623_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294525294526_)))))
        (let ((___kont294528294529_
               (lambda (_L287751_ _L287753_ _L287754_ _L287755_)
                 (let ((__tmp294988
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp294975
                        (let ((__tmp294985
                               (let ((__tmp294987
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294986
                                      (let ()
                                        (declare (not safe))
                                        (cons _L287755_ '()))))
                                 (declare (not safe))
                                 (cons __tmp294987 __tmp294986)))
                              (__tmp294976
                               (let ((__tmp294982
                                      (let ((__tmp294984
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294983
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287754_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294984 __tmp294983)))
                                     (__tmp294977
                                      (let ((__tmp294979
                                             (let ((__tmp294981
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294980
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L287753_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294981 __tmp294980)))
                                            (__tmp294978
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287751_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294979 __tmp294978))))
                                 (declare (not safe))
                                 (cons __tmp294982 __tmp294977))))
                          (declare (not safe))
                          (cons __tmp294985 __tmp294976))))
                   (declare (not safe))
                   (cons __tmp294988 __tmp294975))))
              (___kont294530294531_
               (lambda (_L287670_ _L287672_ _L287673_ _L287674_)
                 (let ((__tmp294989
                        (let ((__tmp294990
                               (let ((__tmp294991
                                      (let ((__tmp294992
                                             (let ((__tmp294993
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp294993 '()))))
                                        (declare (not safe))
                                        (cons _L287670_ __tmp294992))))
                                 (declare (not safe))
                                 (cons _L287672_ __tmp294991))))
                          (declare (not safe))
                          (cons _L287673_ __tmp294990))))
                   (declare (not safe))
                   (cons _L287674_ __tmp294989)))))
          (let ((___match294564294565_
                 (lambda (_e287589287701_
                          _hd287588287705_
                          _tl287587287708_
                          _e287592287711_
                          _hd287591287715_
                          _tl287590287718_
                          _e287595287721_
                          _hd287594287725_
                          _tl287593287728_
                          _e287598287731_
                          _hd287597287735_
                          _tl287596287738_
                          _e287601287741_
                          _hd287600287745_
                          _tl287599287748_)
                   (let ((_L287751_ _hd287600287745_)
                         (_L287753_ _hd287597287735_)
                         (_L287754_ _hd287594287725_)
                         (_L287755_ _hd287591287715_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L287755_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287754_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287753_)))
                         (___kont294528294529_
                          _L287751_
                          _L287753_
                          _L287754_
                          _L287755_)
                         (let () (declare (not safe)) (_g287581287623_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294525294526_))
                (let ((_e287589287701_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294525294526_))))
                  (let ((_tl287587287708_
                         (let () (declare (not safe)) (##cdr _e287589287701_)))
                        (_hd287588287705_
                         (let ()
                           (declare (not safe))
                           (##car _e287589287701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl287587287708_))
                        (let ((_e287592287711_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl287587287708_))))
                          (let ((_tl287590287718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e287592287711_)))
                                (_hd287591287715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e287592287711_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl287590287718_))
                                (let ((_e287595287721_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl287590287718_))))
                                  (let ((_tl287593287728_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e287595287721_)))
                                        (_hd287594287725_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e287595287721_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl287593287728_))
                                        (let ((_e287598287731_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl287593287728_))))
                                          (let ((_tl287596287738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e287598287731_)))
                                                (_hd287597287735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e287598287731_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl287596287738_))
                                                (let ((_e287601287741_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl287596287738_))))
                                                  (let ((_tl287599287748_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e287601287741_)))
                                                        (_hd287600287745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e287601287741_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl287599287748_))
                                                        (___match294564294565_
                                                         _e287589287701_
                                                         _hd287588287705_
                                                         _tl287587287708_
                                                         _e287592287711_
                                                         _hd287591287715_
                                                         _tl287590287718_
                                                         _e287595287721_
                                                         _hd287594287725_
                                                         _tl287593287728_
                                                         _e287598287731_
                                                         _hd287597287735_
                                                         _tl287596287738_
                                                         _e287601287741_
                                                         _hd287600287745_
                                                         _tl287599287748_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g287581287623_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl287596287738_))
                                                    (___kont294530294531_
                                                     _hd287597287735_
                                                     _hd287594287725_
                                                     _hd287591287715_
                                                     _hd287588287705_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g287581287623_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g287581287623_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g287581287623_)))))
                        (let () (declare (not safe)) (_g287581287623_)))))
                (let () (declare (not safe)) (_g287581287623_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx287780_)
      (let* ((_g287784287819_
              (lambda (_g287785287815_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287785287815_))))
             (_g287783287938_
              (lambda (_g287785287823_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287785287823_))
                    (let ((_e287791287826_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287785287823_))))
                      (let ((_hd287790287830_
                             (let ()
                               (declare (not safe))
                               (##car _e287791287826_)))
                            (_tl287789287833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287791287826_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287789287833_))
                            (let ((_g294994_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287789287833_
                                      '0))))
                              (begin
                                (let ((_g294995_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294994_)
                                             (##vector-length _g294994_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294995_ 2)))
                                      (error "Context expects 2 values"
                                             _g294995_)))
                                (let ((_target287792287836_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294994_ 0)))
                                      (_tl287794287839_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294994_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287794287839_))
                                      (letrec ((_loop287795287842_
                                                (lambda (_hd287793287846_
                                                         _symbol287799287849_
                                                         _method287800287851_
                                                         _type-t287801287853_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287793287846_))
                                                      (let ((_e287796287856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287793287846_))))
                (let ((_lp-hd287797287860_
                       (let () (declare (not safe)) (##car _e287796287856_)))
                      (_lp-tl287798287863_
                       (let () (declare (not safe)) (##cdr _e287796287856_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287797287860_))
                      (let ((_e287807287866_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287797287860_))))
                        (let ((_hd287806287870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287807287866_)))
                              (_tl287805287873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287807287866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287805287873_))
                              (let ((_e287810287876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287805287873_))))
                                (let ((_hd287809287880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287810287876_)))
                                      (_tl287808287883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287810287876_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287808287883_))
                                      (let ((_e287813287886_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287808287883_))))
                                        (let ((_hd287812287890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287813287886_)))
                                              (_tl287811287893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287813287886_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287811287893_))
                                              (_loop287795287842_
                                               _lp-tl287798287863_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287812287890_
                                                       _symbol287799287849_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287809287880_
                                                       _method287800287851_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287806287870_
                                                       _type-t287801287853_)))
                                              (_g287784287819_
                                               _g287785287823_))))
                                      (_g287784287819_ _g287785287823_))))
                              (_g287784287819_ _g287785287823_))))
                      (_g287784287819_ _g287785287823_))))
              (let ((_symbol287802287896_ (reverse _symbol287799287849_))
                    (_method287803287899_ (reverse _method287800287851_))
                    (_type-t287804287901_ (reverse _type-t287801287853_)))
                ((lambda (_L287904_ _L287906_ _L287907_)
                   (let ((__tmp295003
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294996
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287904_
                               _L287906_
                               _L287907_))
                            (let ((__tmp294997
                                   (lambda (_g287923287928_
                                            _g287924287931_
                                            _g287925287933_
                                            _g287926287935_)
                                     (let ((__tmp294998
                                            (let ((__tmp295002
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp294999
                                                   (let ((__tmp295000
                                                          (let ((__tmp295001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g287923287928_ '()))))
                    (declare (not safe))
                    (cons _g287924287931_ __tmp295001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287925287933_
                                                           __tmp295000))))
                                              (declare (not safe))
                                              (cons __tmp295002 __tmp294999))))
                                       (declare (not safe))
                                       (cons __tmp294998 _g287926287935_)))))
                              (declare (not safe))
                              (foldr* __tmp294997
                                      '()
                                      _L287904_
                                      _L287906_
                                      _L287907_)))))
                     (declare (not safe))
                     (cons __tmp295003 __tmp294996)))
                 _symbol287802287896_
                 _method287803287899_
                 _type-t287804287901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287795287842_
                                         _target287792287836_
                                         '()
                                         '()
                                         '()))
                                      (_g287784287819_ _g287785287823_)))))
                            (_g287784287819_ _g287785287823_))))
                    (_g287784287819_ _g287785287823_)))))
        (_g287783287938_ _$stx287780_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx287943_)
      (let* ((_g287947287980_
              (lambda (_g287948287976_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287948287976_))))
             (_g287946288094_
              (lambda (_g287948287984_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287948287984_))
                    (let ((_e287954287987_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287948287984_))))
                      (let ((_hd287953287991_
                             (let ()
                               (declare (not safe))
                               (##car _e287954287987_)))
                            (_tl287952287994_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287954287987_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287952287994_))
                            (let ((_e287957287997_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287952287994_))))
                              (let ((_hd287956288001_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287957287997_)))
                                    (_tl287955288004_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287957287997_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl287955288004_))
                                    (let ((_g295004_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl287955288004_
                                              '0))))
                                      (begin
                                        (let ((_g295005_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g295004_)
                                                     (##vector-length
                                                      _g295004_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g295005_ 2)))
                                              (error "Context expects 2 values"
                                                     _g295005_)))
                                        (let ((_target287958288007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295004_ 0)))
                                              (_tl287960288010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295004_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287960288010_))
                                              (letrec ((_loop287961288013_
                                                        (lambda (_hd287959288017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol287965288020_
                         _method287966288022_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd287959288017_))
                      (let ((_e287962288025_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd287959288017_))))
                        (let ((_lp-hd287963288029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287962288025_)))
                              (_lp-tl287964288032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287962288025_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd287963288029_))
                              (let ((_e287971288035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd287963288029_))))
                                (let ((_hd287970288039_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287971288035_)))
                                      (_tl287969288042_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287971288035_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287969288042_))
                                      (let ((_e287974288045_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287969288042_))))
                                        (let ((_hd287973288049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287974288045_)))
                                              (_tl287972288052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287974288045_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287972288052_))
                                              (_loop287961288013_
                                               _lp-tl287964288032_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287973288049_
                                                       _symbol287965288020_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287970288039_
                                                       _method287966288022_)))
                                              (_g287947287980_
                                               _g287948287984_))))
                                      (_g287947287980_ _g287948287984_))))
                              (_g287947287980_ _g287948287984_))))
                      (let ((_symbol287967288055_
                             (reverse _symbol287965288020_))
                            (_method287968288058_
                             (reverse _method287966288022_)))
                        ((lambda (_L288061_ _L288063_ _L288064_)
                           (let ((__tmp295013
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp295006
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L288061_
                                       _L288063_))
                                    (let ((__tmp295007
                                           (lambda (_g288082288086_
                                                    _g288083288089_
                                                    _g288084288091_)
                                             (let ((__tmp295008
                                                    (let ((__tmp295012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp295009
                                                           (let ((__tmp295010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295011
                                 (let ()
                                   (declare (not safe))
                                   (cons _g288082288086_ '()))))
                            (declare (not safe))
                            (cons _g288083288089_ __tmp295011))))
                     (declare (not safe))
                     (cons _L288064_ __tmp295010))))
              (declare (not safe))
              (cons __tmp295012 __tmp295009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295008
                                                     _g288084288091_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp295007
                                              '()
                                              _L288061_
                                              _L288063_)))))
                             (declare (not safe))
                             (cons __tmp295013 __tmp295006)))
                         _symbol287967288055_
                         _method287968288058_
                         _hd287956288001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop287961288013_
                                                 _target287958288007_
                                                 '()
                                                 '()))
                                              (_g287947287980_
                                               _g287948287984_)))))
                                    (_g287947287980_ _g287948287984_))))
                            (_g287947287980_ _g287948287984_))))
                    (_g287947287980_ _g287948287984_)))))
        (_g287946288094_ _$stx287943_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx288099_)
      (let* ((_g288103288117_
              (lambda (_g288104288113_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288104288113_))))
             (_g288102288158_
              (lambda (_g288104288121_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288104288121_))
                    (let ((_e288108288124_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288104288121_))))
                      (let ((_hd288107288128_
                             (let ()
                               (declare (not safe))
                               (##car _e288108288124_)))
                            (_tl288106288131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288108288124_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288106288131_))
                            (let ((_e288111288134_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288106288131_))))
                              (let ((_hd288110288138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288111288134_)))
                                    (_tl288109288141_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288111288134_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288109288141_))
                                    ((lambda (_L288144_)
                                       (let ((__tmp295018
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp295014
                                              (let ((__tmp295015
                                                     (let ((__tmp295017
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295016
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295017 __tmp295016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295015 '()))))
                                         (declare (not safe))
                                         (cons __tmp295018 __tmp295014)))
                                     _hd288110288138_)
                                    (_g288103288117_ _g288104288121_))))
                            (_g288103288117_ _g288104288121_))))
                    (_g288103288117_ _g288104288121_)))))
        (_g288102288158_ _$stx288099_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx288162_)
      (let* ((_g288166288216_
              (lambda (_g288167288212_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288167288212_))))
             (_g288165288383_
              (lambda (_g288167288220_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288167288220_))
                    (let ((_e288180288223_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288167288220_))))
                      (let ((_hd288179288227_
                             (let ()
                               (declare (not safe))
                               (##car _e288180288223_)))
                            (_tl288178288230_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288180288223_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288178288230_))
                            (let ((_e288183288233_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288178288230_))))
                              (let ((_hd288182288237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288183288233_)))
                                    (_tl288181288240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288183288233_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288181288240_))
                                    (let ((_e288186288243_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288181288240_))))
                                      (let ((_hd288185288247_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288186288243_)))
                                            (_tl288184288250_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288186288243_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288184288250_))
                                            (let ((_e288189288253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288184288250_))))
                                              (let ((_hd288188288257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288189288253_)))
                                                    (_tl288187288260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288189288253_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288187288260_))
                                                    (let ((_e288192288263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288187288260_))))
                                                      (let ((_hd288191288267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288192288263_)))
                    (_tl288190288270_
                     (let () (declare (not safe)) (##cdr _e288192288263_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288190288270_))
                    (let ((_e288195288273_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288190288270_))))
                      (let ((_hd288194288277_
                             (let ()
                               (declare (not safe))
                               (##car _e288195288273_)))
                            (_tl288193288280_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288195288273_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288193288280_))
                            (let ((_e288198288283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288193288280_))))
                              (let ((_hd288197288287_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288198288283_)))
                                    (_tl288196288290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288198288283_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288196288290_))
                                    (let ((_e288201288293_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288196288290_))))
                                      (let ((_hd288200288297_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288201288293_)))
                                            (_tl288199288300_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288201288293_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288199288300_))
                                            (let ((_e288204288303_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288199288300_))))
                                              (let ((_hd288203288307_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288204288303_)))
                                                    (_tl288202288310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288204288303_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288202288310_))
                                                    (let ((_e288207288313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288202288310_))))
                                                      (let ((_hd288206288317_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288207288313_)))
                    (_tl288205288320_
                     (let () (declare (not safe)) (##cdr _e288207288313_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288205288320_))
                    (let ((_e288210288323_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288205288320_))))
                      (let ((_hd288209288327_
                             (let ()
                               (declare (not safe))
                               (##car _e288210288323_)))
                            (_tl288208288330_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288210288323_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl288208288330_))
                            ((lambda (_L288333_
                                      _L288335_
                                      _L288336_
                                      _L288337_
                                      _L288338_
                                      _L288339_
                                      _L288340_
                                      _L288341_
                                      _L288342_
                                      _L288343_)
                               (let ((__tmp295053
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp295019
                                      (let ((__tmp295050
                                             (let ((__tmp295052
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295051
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288343_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295052 __tmp295051)))
                                            (__tmp295020
                                             (let ((__tmp295047
                                                    (let ((__tmp295049
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp295048
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L288342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp295049 __tmp295048)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp295021
                                                    (let ((__tmp295044
                                                           (let ((__tmp295046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295045
                          (let () (declare (not safe)) (cons _L288341_ '()))))
                     (declare (not safe))
                     (cons __tmp295046 __tmp295045)))
                  (__tmp295022
                   (let ((__tmp295041
                          (let ((__tmp295043
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp295042
                                 (let ()
                                   (declare (not safe))
                                   (cons _L288340_ '()))))
                            (declare (not safe))
                            (cons __tmp295043 __tmp295042)))
                         (__tmp295023
                          (let ((__tmp295038
                                 (let ((__tmp295040
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp295039
                                        (let ()
                                          (declare (not safe))
                                          (cons _L288339_ '()))))
                                   (declare (not safe))
                                   (cons __tmp295040 __tmp295039)))
                                (__tmp295024
                                 (let ((__tmp295035
                                        (let ((__tmp295037
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp295036
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L288338_ '()))))
                                          (declare (not safe))
                                          (cons __tmp295037 __tmp295036)))
                                       (__tmp295025
                                        (let ((__tmp295026
                                               (let ((__tmp295027
                                                      (let ((__tmp295032
                                                             (let ((__tmp295034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295033
                            (let ()
                              (declare (not safe))
                              (cons _L288335_ '()))))
                       (declare (not safe))
                       (cons __tmp295034 __tmp295033)))
                    (__tmp295028
                     (let ((__tmp295029
                            (let ((__tmp295031
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295030
                                   (let ()
                                     (declare (not safe))
                                     (cons _L288333_ '()))))
                              (declare (not safe))
                              (cons __tmp295031 __tmp295030))))
                       (declare (not safe))
                       (cons __tmp295029 '()))))
                (declare (not safe))
                (cons __tmp295032 __tmp295028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L288336_
                                                       __tmp295027))))
                                          (declare (not safe))
                                          (cons _L288337_ __tmp295026))))
                                   (declare (not safe))
                                   (cons __tmp295035 __tmp295025))))
                            (declare (not safe))
                            (cons __tmp295038 __tmp295024))))
                     (declare (not safe))
                     (cons __tmp295041 __tmp295023))))
              (declare (not safe))
              (cons __tmp295044 __tmp295022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295047
                                                     __tmp295021))))
                                        (declare (not safe))
                                        (cons __tmp295050 __tmp295020))))
                                 (declare (not safe))
                                 (cons __tmp295053 __tmp295019)))
                             _hd288209288327_
                             _hd288206288317_
                             _hd288203288307_
                             _hd288200288297_
                             _hd288197288287_
                             _hd288194288277_
                             _hd288191288267_
                             _hd288188288257_
                             _hd288185288247_
                             _hd288182288237_)
                            (_g288166288216_ _g288167288220_))))
                    (_g288166288216_ _g288167288220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288166288216_
                                                     _g288167288220_))))
                                            (_g288166288216_
                                             _g288167288220_))))
                                    (_g288166288216_ _g288167288220_))))
                            (_g288166288216_ _g288167288220_))))
                    (_g288166288216_ _g288167288220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288166288216_
                                                     _g288167288220_))))
                                            (_g288166288216_
                                             _g288167288220_))))
                                    (_g288166288216_ _g288167288220_))))
                            (_g288166288216_ _g288167288220_))))
                    (_g288166288216_ _g288167288220_)))))
        (_g288165288383_ _$stx288162_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx288387_)
      (let* ((_g288391288405_
              (lambda (_g288392288401_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288392288401_))))
             (_g288390288446_
              (lambda (_g288392288409_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288392288409_))
                    (let ((_e288396288412_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288392288409_))))
                      (let ((_hd288395288416_
                             (let ()
                               (declare (not safe))
                               (##car _e288396288412_)))
                            (_tl288394288419_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288396288412_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288394288419_))
                            (let ((_e288399288422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288394288419_))))
                              (let ((_hd288398288426_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288399288422_)))
                                    (_tl288397288429_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288399288422_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288397288429_))
                                    ((lambda (_L288432_)
                                       (let ((__tmp295058
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp295054
                                              (let ((__tmp295055
                                                     (let ((__tmp295057
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295056
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295057 __tmp295056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295055 '()))))
                                         (declare (not safe))
                                         (cons __tmp295058 __tmp295054)))
                                     _hd288398288426_)
                                    (_g288391288405_ _g288392288409_))))
                            (_g288391288405_ _g288392288409_))))
                    (_g288391288405_ _g288392288409_)))))
        (_g288390288446_ _$stx288387_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx288450_)
      (let* ((_g288454288468_
              (lambda (_g288455288464_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288455288464_))))
             (_g288453288509_
              (lambda (_g288455288472_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288455288472_))
                    (let ((_e288459288475_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288455288472_))))
                      (let ((_hd288458288479_
                             (let ()
                               (declare (not safe))
                               (##car _e288459288475_)))
                            (_tl288457288482_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288459288475_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288457288482_))
                            (let ((_e288462288485_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288457288482_))))
                              (let ((_hd288461288489_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288462288485_)))
                                    (_tl288460288492_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288462288485_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288460288492_))
                                    ((lambda (_L288495_)
                                       (let ((__tmp295063
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp295059
                                              (let ((__tmp295060
                                                     (let ((__tmp295062
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295062 __tmp295061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295060 '()))))
                                         (declare (not safe))
                                         (cons __tmp295063 __tmp295059)))
                                     _hd288461288489_)
                                    (_g288454288468_ _g288455288472_))))
                            (_g288454288468_ _g288455288472_))))
                    (_g288454288468_ _g288455288472_)))))
        (_g288453288509_ _$stx288450_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx288513_)
      (let* ((_g288517288539_
              (lambda (_g288518288535_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288518288535_))))
             (_g288516288608_
              (lambda (_g288518288543_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288518288543_))
                    (let ((_e288524288546_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288518288543_))))
                      (let ((_hd288523288550_
                             (let ()
                               (declare (not safe))
                               (##car _e288524288546_)))
                            (_tl288522288553_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288524288546_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288522288553_))
                            (let ((_e288527288556_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288522288553_))))
                              (let ((_hd288526288560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288527288556_)))
                                    (_tl288525288563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288527288556_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288525288563_))
                                    (let ((_e288530288566_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288525288563_))))
                                      (let ((_hd288529288570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288530288566_)))
                                            (_tl288528288573_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288530288566_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288528288573_))
                                            (let ((_e288533288576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288528288573_))))
                                              (let ((_hd288532288580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288533288576_)))
                                                    (_tl288531288583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288533288576_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288531288583_))
                                                    ((lambda (_L288586_
                                                              _L288588_
                                                              _L288589_)
                                                       (let ((__tmp295073
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp295064
                      (let ((__tmp295070
                             (let ((__tmp295072
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295071
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288589_ '()))))
                               (declare (not safe))
                               (cons __tmp295072 __tmp295071)))
                            (__tmp295065
                             (let ((__tmp295067
                                    (let ((__tmp295069
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295068
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288588_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295069 __tmp295068)))
                                   (__tmp295066
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288586_ '()))))
                               (declare (not safe))
                               (cons __tmp295067 __tmp295066))))
                        (declare (not safe))
                        (cons __tmp295070 __tmp295065))))
                 (declare (not safe))
                 (cons __tmp295073 __tmp295064)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288532288580_
                                                     _hd288529288570_
                                                     _hd288526288560_)
                                                    (_g288517288539_
                                                     _g288518288543_))))
                                            (_g288517288539_
                                             _g288518288543_))))
                                    (_g288517288539_ _g288518288543_))))
                            (_g288517288539_ _g288518288543_))))
                    (_g288517288539_ _g288518288543_)))))
        (_g288516288608_ _$stx288513_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx288612_)
      (let* ((_g288616288638_
              (lambda (_g288617288634_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288617288634_))))
             (_g288615288707_
              (lambda (_g288617288642_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288617288642_))
                    (let ((_e288623288645_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288617288642_))))
                      (let ((_hd288622288649_
                             (let ()
                               (declare (not safe))
                               (##car _e288623288645_)))
                            (_tl288621288652_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288623288645_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288621288652_))
                            (let ((_e288626288655_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288621288652_))))
                              (let ((_hd288625288659_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288626288655_)))
                                    (_tl288624288662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288626288655_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288624288662_))
                                    (let ((_e288629288665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288624288662_))))
                                      (let ((_hd288628288669_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288629288665_)))
                                            (_tl288627288672_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288629288665_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288627288672_))
                                            (let ((_e288632288675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288627288672_))))
                                              (let ((_hd288631288679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288632288675_)))
                                                    (_tl288630288682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288632288675_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288630288682_))
                                                    ((lambda (_L288685_
                                                              _L288687_
                                                              _L288688_)
                                                       (let ((__tmp295083
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp295074
                      (let ((__tmp295080
                             (let ((__tmp295082
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295081
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288688_ '()))))
                               (declare (not safe))
                               (cons __tmp295082 __tmp295081)))
                            (__tmp295075
                             (let ((__tmp295077
                                    (let ((__tmp295079
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295078
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288687_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295079 __tmp295078)))
                                   (__tmp295076
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288685_ '()))))
                               (declare (not safe))
                               (cons __tmp295077 __tmp295076))))
                        (declare (not safe))
                        (cons __tmp295080 __tmp295075))))
                 (declare (not safe))
                 (cons __tmp295083 __tmp295074)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288631288679_
                                                     _hd288628288669_
                                                     _hd288625288659_)
                                                    (_g288616288638_
                                                     _g288617288642_))))
                                            (_g288616288638_
                                             _g288617288642_))))
                                    (_g288616288638_ _g288617288642_))))
                            (_g288616288638_ _g288617288642_))))
                    (_g288616288638_ _g288617288642_)))))
        (_g288615288707_ _$stx288612_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx288711_)
      (let* ((___stx294593294594_ _$stx288711_)
             (_g288719288787_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294593294594_)))))
        (let ((___kont294596294597_
               (lambda (_L289065_ _L289067_)
                 (let ((__tmp295099
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295084
                        (let ((__tmp295095
                               (let ((__tmp295098
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295096
                                      (let ((__tmp295097
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295097 '()))))
                                 (declare (not safe))
                                 (cons __tmp295098 __tmp295096)))
                              (__tmp295085
                               (let ((__tmp295092
                                      (let ((__tmp295094
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295093
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289067_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295094 __tmp295093)))
                                     (__tmp295086
                                      (let ((__tmp295087
                                             (let ((__tmp295088
                                                    (let ((__tmp295089
                                                           (let ((__tmp295091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295090
                          (let () (declare (not safe)) (cons _L289065_ '()))))
                     (declare (not safe))
                     (cons __tmp295091 __tmp295090))))
              (declare (not safe))
              (cons __tmp295089 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L289065_ __tmp295088))))
                                        (declare (not safe))
                                        (cons '#f __tmp295087))))
                                 (declare (not safe))
                                 (cons __tmp295092 __tmp295086))))
                          (declare (not safe))
                          (cons __tmp295095 __tmp295085))))
                   (declare (not safe))
                   (cons __tmp295099 __tmp295084))))
              (___kont294598294599_
               (lambda (_L288996_ _L288998_)
                 (let ((__tmp295100
                        (let ((__tmp295101
                               (let ((__tmp295102
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L288996_ __tmp295102))))
                          (declare (not safe))
                          (cons 'primitive: __tmp295101))))
                   (declare (not safe))
                   (cons _L288998_ __tmp295100))))
              (___kont294600294601_
               (lambda (_L288935_ _L288937_)
                 (let ((__tmp295116
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp295103
                        (let ((__tmp295112
                               (let ((__tmp295115
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295113
                                      (let ((__tmp295114
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295114 '()))))
                                 (declare (not safe))
                                 (cons __tmp295115 __tmp295113)))
                              (__tmp295104
                               (let ((__tmp295109
                                      (let ((__tmp295111
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295110
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288937_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295111 __tmp295110)))
                                     (__tmp295105
                                      (let ((__tmp295106
                                             (let ((__tmp295108
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295107
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288935_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295108
                                                     __tmp295107))))
                                        (declare (not safe))
                                        (cons __tmp295106 '()))))
                                 (declare (not safe))
                                 (cons __tmp295109 __tmp295105))))
                          (declare (not safe))
                          (cons __tmp295112 __tmp295104))))
                   (declare (not safe))
                   (cons __tmp295116 __tmp295103))))
              (___kont294602294603_
               (lambda (_L288867_ _L288869_)
                 (let ((__tmp295130
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295117
                        (let ((__tmp295126
                               (let ((__tmp295129
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295127
                                      (let ((__tmp295128
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295128 '()))))
                                 (declare (not safe))
                                 (cons __tmp295129 __tmp295127)))
                              (__tmp295118
                               (let ((__tmp295123
                                      (let ((__tmp295125
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295124
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288869_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295125 __tmp295124)))
                                     (__tmp295119
                                      (let ((__tmp295120
                                             (let ((__tmp295122
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295121
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288867_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295122
                                                     __tmp295121))))
                                        (declare (not safe))
                                        (cons __tmp295120 '()))))
                                 (declare (not safe))
                                 (cons __tmp295123 __tmp295119))))
                          (declare (not safe))
                          (cons __tmp295126 __tmp295118))))
                   (declare (not safe))
                   (cons __tmp295130 __tmp295117))))
              (___kont294604294605_
               (lambda (_L288814_ _L288816_)
                 (let ((__tmp295131
                        (let ((__tmp295132
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L288814_ __tmp295132))))
                   (declare (not safe))
                   (cons _L288816_ __tmp295131)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx294593294594_))
              (let ((_e288725289021_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx294593294594_))))
                (let ((_tl288723289028_
                       (let () (declare (not safe)) (##cdr _e288725289021_)))
                      (_hd288724289025_
                       (let () (declare (not safe)) (##car _e288725289021_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl288723289028_))
                      (let ((_e288728289031_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288723289028_))))
                        (let ((_tl288726289038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288728289031_)))
                              (_hd288727289035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288728289031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl288726289038_))
                              (let ((_e288731289041_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl288726289038_))))
                                (let ((_tl288729289048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288731289041_)))
                                      (_hd288730289045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288731289041_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd288730289045_))
                                      (let ((_e288732289051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd288730289045_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e288732289051_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl288729289048_))
                                                (let ((_e288735289055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl288729289048_))))
                                                  (let ((_tl288733289062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e288735289055_)))
                                                        (_hd288734289059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e288735289055_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288733289062_))
                                                        (___kont294596294597_
                                                         _hd288734289059_
                                                         _hd288727289035_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd288727289035_))
                                                            (let ((_e288744288982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd288727289035_))))
                      (declare (not safe))
                      (_g288719288787_))
                    (let () (declare (not safe)) (_g288719288787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd288727289035_))
                                                    (let ((_e288744288982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd288727289035_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e288744288982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288729289048_))
                      (___kont294598294599_ _hd288730289045_ _hd288724289025_)
                      (let () (declare (not safe)) (_g288719288787_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288729289048_))
                      (___kont294602294603_ _hd288730289045_ _hd288727289035_)
                      (let () (declare (not safe)) (_g288719288787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288729289048_))
                                                        (___kont294602294603_
                                                         _hd288730289045_
                                                         _hd288727289035_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g288719288787_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd288727289035_))
                                                (let ((_e288744288982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd288727289035_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e288744288982_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl288729289048_))
                                                          (___kont294598294599_
                                                           _hd288730289045_
                                                           _hd288724289025_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl288729289048_))
                      (let ((_e288762288925_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288729289048_))))
                        (let ((_tl288760288932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288762288925_)))
                              (_hd288761288929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288762288925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl288760288932_))
                              (___kont294600294601_
                               _hd288761288929_
                               _hd288730289045_)
                              (let ()
                                (declare (not safe))
                                (_g288719288787_)))))
                      (let () (declare (not safe)) (_g288719288787_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl288729289048_))
                  (___kont294602294603_ _hd288730289045_ _hd288727289035_)
                  (let () (declare (not safe)) (_g288719288787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288729289048_))
                                                    (___kont294602294603_
                                                     _hd288730289045_
                                                     _hd288727289035_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288719288787_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd288727289035_))
                                          (let ((_e288744288982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd288727289035_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e288744288982_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288729289048_))
                                                    (___kont294598294599_
                                                     _hd288730289045_
                                                     _hd288724289025_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl288729289048_))
                                                        (let ((_e288762288925_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl288729289048_))))
                  (let ((_tl288760288932_
                         (let () (declare (not safe)) (##cdr _e288762288925_)))
                        (_hd288761288929_
                         (let ()
                           (declare (not safe))
                           (##car _e288762288925_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl288760288932_))
                        (___kont294600294601_
                         _hd288761288929_
                         _hd288730289045_)
                        (let () (declare (not safe)) (_g288719288787_)))))
                (let () (declare (not safe)) (_g288719288787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288729289048_))
                                                    (___kont294602294603_
                                                     _hd288730289045_
                                                     _hd288727289035_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288719288787_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288729289048_))
                                              (___kont294602294603_
                                               _hd288730289045_
                                               _hd288727289035_)
                                              (let ()
                                                (declare (not safe))
                                                (_g288719288787_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd288727289035_))
                                  (let ((_e288744288982_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd288727289035_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl288726289038_))
                                        (___kont294604294605_
                                         _hd288727289035_
                                         _hd288724289025_)
                                        (let ()
                                          (declare (not safe))
                                          (_g288719288787_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl288726289038_))
                                      (___kont294604294605_
                                       _hd288727289035_
                                       _hd288724289025_)
                                      (let ()
                                        (declare (not safe))
                                        (_g288719288787_)))))))
                      (let () (declare (not safe)) (_g288719288787_)))))
              (let () (declare (not safe)) (_g288719288787_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx289089_)
      (let* ((___stx294733294734_ _$stx289089_)
             (_g289094289149_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294733294734_)))))
        (let ((___kont294736294737_
               (lambda (_L289334_ _L289336_)
                 (let ((__tmp295148
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp295133
                        (let ((__tmp295144
                               (let ((__tmp295147
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295145
                                      (let ((__tmp295146
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295146 '()))))
                                 (declare (not safe))
                                 (cons __tmp295147 __tmp295145)))
                              (__tmp295134
                               (let ((__tmp295135
                                      (let ((__tmp295143
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295136
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289334_
                                                  _L289336_))
                                               (let ((__tmp295137
                                                      (lambda (_g289353289357_
                                                               _g289354289360_
                                                               _g289355289362_)
                                                        (let ((__tmp295138
                                                               (let ((__tmp295142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295139
                              (let ((__tmp295140
                                     (let ((__tmp295141
                                            (let ()
                                              (declare (not safe))
                                              (cons _g289353289357_ '()))))
                                       (declare (not safe))
                                       (cons _g289354289360_ __tmp295141))))
                                (declare (not safe))
                                (cons 'primitive: __tmp295140))))
                         (declare (not safe))
                         (cons __tmp295142 __tmp295139))))
                  (declare (not safe))
                  (cons __tmp295138 _g289355289362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295137
                                                         '()
                                                         _L289334_
                                                         _L289336_)))))
                                        (declare (not safe))
                                        (cons __tmp295143 __tmp295136))))
                                 (declare (not safe))
                                 (cons __tmp295135 '()))))
                          (declare (not safe))
                          (cons __tmp295144 __tmp295134))))
                   (declare (not safe))
                   (cons __tmp295148 __tmp295133))))
              (___kont294740294741_
               (lambda (_L289220_ _L289222_)
                 (let ((__tmp295163
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp295149
                        (let ((__tmp295159
                               (let ((__tmp295162
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295160
                                      (let ((__tmp295161
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295161 '()))))
                                 (declare (not safe))
                                 (cons __tmp295162 __tmp295160)))
                              (__tmp295150
                               (let ((__tmp295151
                                      (let ((__tmp295158
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295152
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289220_
                                                  _L289222_))
                                               (let ((__tmp295153
                                                      (lambda (_g289237289241_
                                                               _g289238289244_
                                                               _g289239289246_)
                                                        (let ((__tmp295154
                                                               (let ((__tmp295157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295155
                              (let ((__tmp295156
                                     (let ()
                                       (declare (not safe))
                                       (cons _g289237289241_ '()))))
                                (declare (not safe))
                                (cons _g289238289244_ __tmp295156))))
                         (declare (not safe))
                         (cons __tmp295157 __tmp295155))))
                  (declare (not safe))
                  (cons __tmp295154 _g289239289246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295153
                                                         '()
                                                         _L289220_
                                                         _L289222_)))))
                                        (declare (not safe))
                                        (cons __tmp295158 __tmp295152))))
                                 (declare (not safe))
                                 (cons __tmp295151 '()))))
                          (declare (not safe))
                          (cons __tmp295159 __tmp295150))))
                   (declare (not safe))
                   (cons __tmp295163 __tmp295149)))))
          (let* ((___match294784294785_
                  (lambda (_e289126289156_
                           _hd289125289160_
                           _tl289124289163_
                           ___splice294742294743_
                           _target289127289166_
                           _tl289129289169_)
                    (letrec ((_loop289130289172_
                              (lambda (_hd289128289176_
                                       _dispatch289134289179_
                                       _arity289135289181_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289128289176_))
                                    (let ((_e289131289184_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289128289176_))))
                                      (let ((_lp-tl289133289191_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289131289184_)))
                                            (_lp-hd289132289188_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289131289184_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289132289188_))
                                            (let ((_e289140289194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289132289188_))))
                                              (let ((_tl289138289201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289140289194_)))
                                                    (_hd289139289198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289140289194_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289138289201_))
                                                    (let ((_e289143289204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289138289201_))))
                                                      (let ((_tl289141289211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289143289204_)))
                    (_hd289142289208_
                     (let () (declare (not safe)) (##car _e289143289204_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289141289211_))
                    (_loop289130289172_
                     _lp-tl289133289191_
                     (let ()
                       (declare (not safe))
                       (cons _hd289142289208_ _dispatch289134289179_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289139289198_ _arity289135289181_)))
                    (let () (declare (not safe)) (_g289094289149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289094289149_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289094289149_)))))
                                    (let ((_arity289137289217_
                                           (reverse _arity289135289181_))
                                          (_dispatch289136289214_
                                           (reverse _dispatch289134289179_)))
                                      (___kont294740294741_
                                       _dispatch289136289214_
                                       _arity289137289217_))))))
                      (_loop289130289172_ _target289127289166_ '() '()))))
                 (___match294776294777_
                  (lambda (_e289126289156_ _hd289125289160_ _tl289124289163_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl289124289163_))
                        (let ((___splice294742294743_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl289124289163_
                                  '0))))
                          (let ((_tl289129289169_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294742294743_ '1)))
                                (_target289127289166_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294742294743_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl289129289169_))
                                (___match294784294785_
                                 _e289126289156_
                                 _hd289125289160_
                                 _tl289124289163_
                                 ___splice294742294743_
                                 _target289127289166_
                                 _tl289129289169_)
                                (let ()
                                  (declare (not safe))
                                  (_g289094289149_)))))
                        (let () (declare (not safe)) (_g289094289149_)))))
                 (___match294770294771_
                  (lambda (_e289100289256_
                           _hd289099289260_
                           _tl289098289263_
                           _e289103289266_
                           _hd289102289270_
                           _tl289101289273_
                           _e289104289276_
                           ___splice294738294739_
                           _target289105289280_
                           _tl289107289283_)
                    (letrec ((_loop289108289286_
                              (lambda (_hd289106289290_
                                       _dispatch289112289293_
                                       _arity289113289295_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289106289290_))
                                    (let ((_e289109289298_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289106289290_))))
                                      (let ((_lp-tl289111289305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289109289298_)))
                                            (_lp-hd289110289302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289109289298_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289110289302_))
                                            (let ((_e289118289308_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289110289302_))))
                                              (let ((_tl289116289315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289118289308_)))
                                                    (_hd289117289312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289118289308_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289116289315_))
                                                    (let ((_e289121289318_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289116289315_))))
                                                      (let ((_tl289119289325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289121289318_)))
                    (_hd289120289322_
                     (let () (declare (not safe)) (##car _e289121289318_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289119289325_))
                    (_loop289108289286_
                     _lp-tl289111289305_
                     (let ()
                       (declare (not safe))
                       (cons _hd289120289322_ _dispatch289112289293_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289117289312_ _arity289113289295_)))
                    (___match294776294777_
                     _e289100289256_
                     _hd289099289260_
                     _tl289098289263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match294776294777_
                                                     _e289100289256_
                                                     _hd289099289260_
                                                     _tl289098289263_))))
                                            (___match294776294777_
                                             _e289100289256_
                                             _hd289099289260_
                                             _tl289098289263_))))
                                    (let ((_arity289115289331_
                                           (reverse _arity289113289295_))
                                          (_dispatch289114289328_
                                           (reverse _dispatch289112289293_)))
                                      (___kont294736294737_
                                       _dispatch289114289328_
                                       _arity289115289331_))))))
                      (_loop289108289286_ _target289105289280_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294733294734_))
                (let ((_e289100289256_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294733294734_))))
                  (let ((_tl289098289263_
                         (let () (declare (not safe)) (##cdr _e289100289256_)))
                        (_hd289099289260_
                         (let ()
                           (declare (not safe))
                           (##car _e289100289256_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289098289263_))
                        (let ((_e289103289266_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289098289263_))))
                          (let ((_tl289101289273_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289103289266_)))
                                (_hd289102289270_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289103289266_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd289102289270_))
                                (let ((_e289104289276_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd289102289270_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e289104289276_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289101289273_))
                                          (let ((___splice294738294739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289101289273_
                                                    '0))))
                                            (let ((_tl289107289283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294738294739_
                                                      '1)))
                                                  (_target289105289280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294738294739_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289107289283_))
                                                  (___match294770294771_
                                                   _e289100289256_
                                                   _hd289099289260_
                                                   _tl289098289263_
                                                   _e289103289266_
                                                   _hd289102289270_
                                                   _tl289101289273_
                                                   _e289104289276_
                                                   ___splice294738294739_
                                                   _target289105289280_
                                                   _tl289107289283_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289098289263_))
                                                      (let ((___splice294742294743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289098289263_ '0))))
                (let ((_tl289129289169_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294742294743_ '1)))
                      (_target289127289166_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294742294743_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289129289169_))
                      (___match294784294785_
                       _e289100289256_
                       _hd289099289260_
                       _tl289098289263_
                       ___splice294742294743_
                       _target289127289166_
                       _tl289129289169_)
                      (let () (declare (not safe)) (_g289094289149_)))))
              (let () (declare (not safe)) (_g289094289149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl289098289263_))
                                              (let ((___splice294742294743_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl289098289263_
                                                        '0))))
                                                (let ((_tl289129289169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294742294743_
                                                          '1)))
                                                      (_target289127289166_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294742294743_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl289129289169_))
                                                      (___match294784294785_
                                                       _e289100289256_
                                                       _hd289099289260_
                                                       _tl289098289263_
                                                       ___splice294742294743_
                                                       _target289127289166_
                                                       _tl289129289169_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g289094289149_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g289094289149_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289098289263_))
                                          (let ((___splice294742294743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289098289263_
                                                    '0))))
                                            (let ((_tl289129289169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294742294743_
                                                      '1)))
                                                  (_target289127289166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294742294743_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289129289169_))
                                                  (___match294784294785_
                                                   _e289100289256_
                                                   _hd289099289260_
                                                   _tl289098289263_
                                                   ___splice294742294743_
                                                   _target289127289166_
                                                   _tl289129289169_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g289094289149_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g289094289149_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289098289263_))
                                    (let ((___splice294742294743_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289098289263_
                                              '0))))
                                      (let ((_tl289129289169_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294742294743_
                                                '1)))
                                            (_target289127289166_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294742294743_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289129289169_))
                                            (___match294784294785_
                                             _e289100289256_
                                             _hd289099289260_
                                             _tl289098289263_
                                             ___splice294742294743_
                                             _target289127289166_
                                             _tl289129289169_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289094289149_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289094289149_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl289098289263_))
                            (let ((___splice294742294743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl289098289263_
                                      '0))))
                              (let ((_tl289129289169_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294742294743_
                                        '1)))
                                    (_target289127289166_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294742294743_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl289129289169_))
                                    (___match294784294785_
                                     _e289100289256_
                                     _hd289099289260_
                                     _tl289098289263_
                                     ___splice294742294743_
                                     _target289127289166_
                                     _tl289129289169_)
                                    (let ()
                                      (declare (not safe))
                                      (_g289094289149_)))))
                            (let () (declare (not safe)) (_g289094289149_))))))
                (let () (declare (not safe)) (_g289094289149_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx289371_)
      (let* ((_g289375289393_
              (lambda (_g289376289389_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289376289389_))))
             (_g289374289448_
              (lambda (_g289376289397_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289376289397_))
                    (let ((_e289381289400_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289376289397_))))
                      (let ((_hd289380289404_
                             (let ()
                               (declare (not safe))
                               (##car _e289381289400_)))
                            (_tl289379289407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289381289400_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289379289407_))
                            (let ((_e289384289410_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289379289407_))))
                              (let ((_hd289383289414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289384289410_)))
                                    (_tl289382289417_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289384289410_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289382289417_))
                                    (let ((_e289387289420_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289382289417_))))
                                      (let ((_hd289386289424_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289387289420_)))
                                            (_tl289385289427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289387289420_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289385289427_))
                                            ((lambda (_L289430_ _L289432_)
                                               (let ((__tmp295177
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp295164
                                                      (let ((__tmp295173
                                                             (let ((__tmp295176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295174
                            (let ((__tmp295175
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp295175 '()))))
                       (declare (not safe))
                       (cons __tmp295176 __tmp295174)))
                    (__tmp295165
                     (let ((__tmp295170
                            (let ((__tmp295172
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295171
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289432_ '()))))
                              (declare (not safe))
                              (cons __tmp295172 __tmp295171)))
                           (__tmp295166
                            (let ((__tmp295167
                                   (let ((__tmp295169
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295168
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289430_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295169 __tmp295168))))
                              (declare (not safe))
                              (cons __tmp295167 '()))))
                       (declare (not safe))
                       (cons __tmp295170 __tmp295166))))
                (declare (not safe))
                (cons __tmp295173 __tmp295165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295177
                                                       __tmp295164)))
                                             _hd289386289424_
                                             _hd289383289414_)
                                            (_g289375289393_
                                             _g289376289397_))))
                                    (_g289375289393_ _g289376289397_))))
                            (_g289375289393_ _g289376289397_))))
                    (_g289375289393_ _g289376289397_)))))
        (_g289374289448_ _$stx289371_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx289452_)
      (let* ((_g289456289474_
              (lambda (_g289457289470_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289457289470_))))
             (_g289455289529_
              (lambda (_g289457289478_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289457289478_))
                    (let ((_e289462289481_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289457289478_))))
                      (let ((_hd289461289485_
                             (let ()
                               (declare (not safe))
                               (##car _e289462289481_)))
                            (_tl289460289488_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289462289481_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289460289488_))
                            (let ((_e289465289491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289460289488_))))
                              (let ((_hd289464289495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289465289491_)))
                                    (_tl289463289498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289465289491_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289463289498_))
                                    (let ((_e289468289501_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289463289498_))))
                                      (let ((_hd289467289505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289468289501_)))
                                            (_tl289466289508_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289468289501_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289466289508_))
                                            ((lambda (_L289511_ _L289513_)
                                               (let ((__tmp295191
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp295178
                                                      (let ((__tmp295187
                                                             (let ((__tmp295190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295188
                            (let ((__tmp295189
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp295189 '()))))
                       (declare (not safe))
                       (cons __tmp295190 __tmp295188)))
                    (__tmp295179
                     (let ((__tmp295184
                            (let ((__tmp295186
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295185
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289513_ '()))))
                              (declare (not safe))
                              (cons __tmp295186 __tmp295185)))
                           (__tmp295180
                            (let ((__tmp295181
                                   (let ((__tmp295183
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295182
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289511_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295183 __tmp295182))))
                              (declare (not safe))
                              (cons __tmp295181 '()))))
                       (declare (not safe))
                       (cons __tmp295184 __tmp295180))))
                (declare (not safe))
                (cons __tmp295187 __tmp295179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295191
                                                       __tmp295178)))
                                             _hd289467289505_
                                             _hd289464289495_)
                                            (_g289456289474_
                                             _g289457289478_))))
                                    (_g289456289474_ _g289457289478_))))
                            (_g289456289474_ _g289457289478_))))
                    (_g289456289474_ _g289457289478_)))))
        (_g289455289529_ _$stx289452_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx289533_)
      (let* ((___stx294787294788_ _$stx289533_)
             (_g289540289611_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294787294788_)))))
        (let ((___kont294790294791_
               (lambda (_L289902_ _L289904_)
                 (let ((__tmp295197
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295192
                        (let ((__tmp295193
                               (let ((__tmp295194
                                      (let ((__tmp295196
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295195
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289902_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295196 __tmp295195))))
                                 (declare (not safe))
                                 (cons __tmp295194 '()))))
                          (declare (not safe))
                          (cons _L289904_ __tmp295193))))
                   (declare (not safe))
                   (cons __tmp295197 __tmp295192))))
              (___kont294792294793_
               (lambda (_L289821_ _L289823_)
                 (let ((__tmp295206
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295198
                        (let ((__tmp295199
                               (let ((__tmp295200
                                      (let ((__tmp295205
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295201
                                             (let ((__tmp295202
                                                    (lambda (_g289842289845_
                                                             _g289843289848_)
                                                      (let ((__tmp295203
                                                             (let ((__tmp295204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g289842289845_ __tmp295204))))
                (declare (not safe))
                (cons __tmp295203 _g289843289848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295202
                                                       '()
                                                       _L289821_))))
                                        (declare (not safe))
                                        (cons __tmp295205 __tmp295201))))
                                 (declare (not safe))
                                 (cons __tmp295200 '()))))
                          (declare (not safe))
                          (cons _L289823_ __tmp295199))))
                   (declare (not safe))
                   (cons __tmp295206 __tmp295198))))
              (___kont294796294797_
               (lambda (_L289733_ _L289735_)
                 (let ((__tmp295213
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295207
                        (let ((__tmp295208
                               (let ((__tmp295209
                                      (let ((__tmp295212
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295210
                                             (let ((__tmp295211
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L289733_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295211))))
                                        (declare (not safe))
                                        (cons __tmp295212 __tmp295210))))
                                 (declare (not safe))
                                 (cons __tmp295209 '()))))
                          (declare (not safe))
                          (cons _L289735_ __tmp295208))))
                   (declare (not safe))
                   (cons __tmp295213 __tmp295207))))
              (___kont294798294799_
               (lambda (_L289668_ _L289670_)
                 (let ((__tmp295223
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295214
                        (let ((__tmp295215
                               (let ((__tmp295216
                                      (let ((__tmp295222
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295217
                                             (let ((__tmp295218
                                                    (let ((__tmp295219
                                                           (lambda (_g289687289690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g289688289693_)
                     (let ((__tmp295220
                            (let ((__tmp295221
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g289687289690_ __tmp295221))))
                       (declare (not safe))
                       (cons __tmp295220 _g289688289693_)))))
              (declare (not safe))
              (foldr1 __tmp295219 '() _L289668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295218))))
                                        (declare (not safe))
                                        (cons __tmp295222 __tmp295217))))
                                 (declare (not safe))
                                 (cons __tmp295216 '()))))
                          (declare (not safe))
                          (cons _L289670_ __tmp295215))))
                   (declare (not safe))
                   (cons __tmp295223 __tmp295214)))))
          (let* ((___match294906294907_
                  (lambda (_e289593289618_
                           _hd289592289622_
                           _tl289591289625_
                           _e289596289628_
                           _hd289595289632_
                           _tl289594289635_
                           ___splice294800294801_
                           _target289597289638_
                           _tl289599289641_)
                    (letrec ((_loop289600289644_
                              (lambda (_hd289598289648_ _arity289604289651_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289598289648_))
                                    (let ((_e289601289654_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289598289648_))))
                                      (let ((_lp-tl289603289661_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289601289654_)))
                                            (_lp-hd289602289658_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289601289654_))))
                                        (_loop289600289644_
                                         _lp-tl289603289661_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289602289658_
                                                 _arity289604289651_)))))
                                    (let ((_arity289605289664_
                                           (reverse _arity289604289651_)))
                                      (___kont294798294799_
                                       _arity289605289664_
                                       _hd289595289632_))))))
                      (_loop289600289644_ _target289597289638_ '()))))
                 (___match294866294867_
                  (lambda (_e289561289757_
                           _hd289560289761_
                           _tl289559289764_
                           _e289564289767_
                           _hd289563289771_
                           _tl289562289774_
                           _e289567289777_
                           _hd289566289781_
                           _tl289565289784_
                           _e289568289787_
                           ___splice294794294795_
                           _target289569289791_
                           _tl289571289794_)
                    (letrec ((_loop289572289797_
                              (lambda (_hd289570289801_ _arity289576289804_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289570289801_))
                                    (let ((_e289573289807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289570289801_))))
                                      (let ((_lp-tl289575289814_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289573289807_)))
                                            (_lp-hd289574289811_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289573289807_))))
                                        (_loop289572289797_
                                         _lp-tl289575289814_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289574289811_
                                                 _arity289576289804_)))))
                                    (let ((_arity289577289817_
                                           (reverse _arity289576289804_)))
                                      (___kont294792294793_
                                       _arity289577289817_
                                       _hd289563289771_))))))
                      (_loop289572289797_ _target289569289791_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294787294788_))
                (let ((_e289546289858_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294787294788_))))
                  (let ((_tl289544289865_
                         (let () (declare (not safe)) (##cdr _e289546289858_)))
                        (_hd289545289862_
                         (let ()
                           (declare (not safe))
                           (##car _e289546289858_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289544289865_))
                        (let ((_e289549289868_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289544289865_))))
                          (let ((_tl289547289875_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289549289868_)))
                                (_hd289548289872_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289549289868_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289547289875_))
                                (let ((_e289552289878_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289547289875_))))
                                  (let ((_tl289550289885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289552289878_)))
                                        (_hd289551289882_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289552289878_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd289551289882_))
                                        (let ((_e289553289888_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd289551289882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e289553289888_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289550289885_))
                                                  (let ((_e289556289892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl289550289885_))))
                                                    (let ((_tl289554289899_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289556289892_)))
                                                          (_hd289555289896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289556289892_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl289554289899_))
                                                          (___kont294790294791_
                                                           _hd289555289896_
                                                           _hd289548289872_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl289550289885_))
                      (let ((___splice294794294795_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289550289885_ '0))))
                        (let ((_tl289571289794_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294794294795_ '1)))
                              (_target289569289791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294794294795_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289571289794_))
                              (___match294866294867_
                               _e289546289858_
                               _hd289545289862_
                               _tl289544289865_
                               _e289549289868_
                               _hd289548289872_
                               _tl289547289875_
                               _e289552289878_
                               _hd289551289882_
                               _tl289550289885_
                               _e289553289888_
                               ___splice294794294795_
                               _target289569289791_
                               _tl289571289794_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl289547289875_))
                                  (let ((___splice294800294801_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl289547289875_
                                            '0))))
                                    (let ((_tl289599289641_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294800294801_
                                              '1)))
                                          (_target289597289638_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294800294801_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl289599289641_))
                                          (___match294906294907_
                                           _e289546289858_
                                           _hd289545289862_
                                           _tl289544289865_
                                           _e289549289868_
                                           _hd289548289872_
                                           _tl289547289875_
                                           ___splice294800294801_
                                           _target289597289638_
                                           _tl289599289641_)
                                          (let ()
                                            (declare (not safe))
                                            (_g289540289611_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g289540289611_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl289547289875_))
                          (let ((___splice294800294801_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl289547289875_
                                    '0))))
                            (let ((_tl289599289641_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice294800294801_ '1)))
                                  (_target289597289638_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice294800294801_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl289599289641_))
                                  (___match294906294907_
                                   _e289546289858_
                                   _hd289545289862_
                                   _tl289544289865_
                                   _e289549289868_
                                   _hd289548289872_
                                   _tl289547289875_
                                   ___splice294800294801_
                                   _target289597289638_
                                   _tl289599289641_)
                                  (let ()
                                    (declare (not safe))
                                    (_g289540289611_)))))
                          (let () (declare (not safe)) (_g289540289611_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289550289885_))
                                                      (let ((___splice294794294795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289550289885_ '0))))
                (let ((_tl289571289794_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294794294795_ '1)))
                      (_target289569289791_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294794294795_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289571289794_))
                      (___match294866294867_
                       _e289546289858_
                       _hd289545289862_
                       _tl289544289865_
                       _e289549289868_
                       _hd289548289872_
                       _tl289547289875_
                       _e289552289878_
                       _hd289551289882_
                       _tl289550289885_
                       _e289553289888_
                       ___splice294794294795_
                       _target289569289791_
                       _tl289571289794_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl289550289885_))
                          (___kont294796294797_
                           _hd289551289882_
                           _hd289548289872_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl289547289875_))
                              (let ((___splice294800294801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl289547289875_
                                        '0))))
                                (let ((_tl289599289641_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294800294801_
                                          '1)))
                                      (_target289597289638_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294800294801_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl289599289641_))
                                      (___match294906294907_
                                       _e289546289858_
                                       _hd289545289862_
                                       _tl289544289865_
                                       _e289549289868_
                                       _hd289548289872_
                                       _tl289547289875_
                                       ___splice294800294801_
                                       _target289597289638_
                                       _tl289599289641_)
                                      (let ()
                                        (declare (not safe))
                                        (_g289540289611_)))))
                              (let ()
                                (declare (not safe))
                                (_g289540289611_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl289550289885_))
                  (___kont294796294797_ _hd289551289882_ _hd289548289872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl289547289875_))
                      (let ((___splice294800294801_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289547289875_ '0))))
                        (let ((_tl289599289641_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294800294801_ '1)))
                              (_target289597289638_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294800294801_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289599289641_))
                              (___match294906294907_
                               _e289546289858_
                               _hd289545289862_
                               _tl289544289865_
                               _e289549289868_
                               _hd289548289872_
                               _tl289547289875_
                               ___splice294800294801_
                               _target289597289638_
                               _tl289599289641_)
                              (let ()
                                (declare (not safe))
                                (_g289540289611_)))))
                      (let () (declare (not safe)) (_g289540289611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289550289885_))
                                                  (___kont294796294797_
                                                   _hd289551289882_
                                                   _hd289548289872_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289547289875_))
                                                      (let ((___splice294800294801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289547289875_ '0))))
                (let ((_tl289599289641_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294800294801_ '1)))
                      (_target289597289638_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294800294801_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289599289641_))
                      (___match294906294907_
                       _e289546289858_
                       _hd289545289862_
                       _tl289544289865_
                       _e289549289868_
                       _hd289548289872_
                       _tl289547289875_
                       ___splice294800294801_
                       _target289597289638_
                       _tl289599289641_)
                      (let () (declare (not safe)) (_g289540289611_)))))
              (let () (declare (not safe)) (_g289540289611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289550289885_))
                                            (___kont294796294797_
                                             _hd289551289882_
                                             _hd289548289872_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl289547289875_))
                                                (let ((___splice294800294801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl289547289875_
                                                          '0))))
                                                  (let ((_tl289599289641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294800294801_
                                                            '1)))
                                                        (_target289597289638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294800294801_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289599289641_))
                                                        (___match294906294907_
                                                         _e289546289858_
                                                         _hd289545289862_
                                                         _tl289544289865_
                                                         _e289549289868_
                                                         _hd289548289872_
                                                         _tl289547289875_
                                                         ___splice294800294801_
                                                         _target289597289638_
                                                         _tl289599289641_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289540289611_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289540289611_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289547289875_))
                                    (let ((___splice294800294801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289547289875_
                                              '0))))
                                      (let ((_tl289599289641_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294800294801_
                                                '1)))
                                            (_target289597289638_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294800294801_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289599289641_))
                                            (___match294906294907_
                                             _e289546289858_
                                             _hd289545289862_
                                             _tl289544289865_
                                             _e289549289868_
                                             _hd289548289872_
                                             _tl289547289875_
                                             ___splice294800294801_
                                             _target289597289638_
                                             _tl289599289641_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289540289611_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289540289611_))))))
                        (let () (declare (not safe)) (_g289540289611_)))))
                (let () (declare (not safe)) (_g289540289611_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx289928_)
      (let* ((___stx294909294910_ _$stx289928_)
             (_g289933289968_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294909294910_)))))
        (let ((___kont294912294913_
               (lambda (_L290090_ _L290092_)
                 (let ((__tmp295229
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295224
                        (let ((__tmp295225
                               (let ((__tmp295226
                                      (let ((__tmp295228
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295227
                                             (let ()
                                               (declare (not safe))
                                               (cons _L290090_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295228 __tmp295227))))
                                 (declare (not safe))
                                 (cons __tmp295226 '()))))
                          (declare (not safe))
                          (cons _L290092_ __tmp295225))))
                   (declare (not safe))
                   (cons __tmp295229 __tmp295224))))
              (___kont294914294915_
               (lambda (_L290025_ _L290027_)
                 (let ((__tmp295238
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295230
                        (let ((__tmp295231
                               (let ((__tmp295232
                                      (let ((__tmp295237
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295233
                                             (let ((__tmp295234
                                                    (lambda (_g290044290047_
                                                             _g290045290050_)
                                                      (let ((__tmp295235
                                                             (let ((__tmp295236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g290044290047_ __tmp295236))))
                (declare (not safe))
                (cons __tmp295235 _g290045290050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295234
                                                       '()
                                                       _L290025_))))
                                        (declare (not safe))
                                        (cons __tmp295237 __tmp295233))))
                                 (declare (not safe))
                                 (cons __tmp295232 '()))))
                          (declare (not safe))
                          (cons _L290027_ __tmp295231))))
                   (declare (not safe))
                   (cons __tmp295238 __tmp295230)))))
          (let ((___match294958294959_
                 (lambda (_e289950289975_
                          _hd289949289979_
                          _tl289948289982_
                          _e289953289985_
                          _hd289952289989_
                          _tl289951289992_
                          ___splice294916294917_
                          _target289954289995_
                          _tl289956289998_)
                   (letrec ((_loop289957290001_
                             (lambda (_hd289955290005_ _arity289961290008_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd289955290005_))
                                   (let ((_e289958290011_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd289955290005_))))
                                     (let ((_lp-tl289960290018_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e289958290011_)))
                                           (_lp-hd289959290015_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e289958290011_))))
                                       (_loop289957290001_
                                        _lp-tl289960290018_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd289959290015_
                                                _arity289961290008_)))))
                                   (let ((_arity289962290021_
                                          (reverse _arity289961290008_)))
                                     (___kont294914294915_
                                      _arity289962290021_
                                      _hd289952289989_))))))
                     (_loop289957290001_ _target289954289995_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294909294910_))
                (let ((_e289939290060_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294909294910_))))
                  (let ((_tl289937290067_
                         (let () (declare (not safe)) (##cdr _e289939290060_)))
                        (_hd289938290064_
                         (let ()
                           (declare (not safe))
                           (##car _e289939290060_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289937290067_))
                        (let ((_e289942290070_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289937290067_))))
                          (let ((_tl289940290077_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289942290070_)))
                                (_hd289941290074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289942290070_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289940290077_))
                                (let ((_e289945290080_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289940290077_))))
                                  (let ((_tl289943290087_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289945290080_)))
                                        (_hd289944290084_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289945290080_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl289943290087_))
                                        (___kont294912294913_
                                         _hd289944290084_
                                         _hd289941290074_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl289940290077_))
                                            (let ((___splice294916294917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl289940290077_
                                                      '0))))
                                              (let ((_tl289956289998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294916294917_
                                                        '1)))
                                                    (_target289954289995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294916294917_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl289956289998_))
                                                    (___match294958294959_
                                                     _e289939290060_
                                                     _hd289938290064_
                                                     _tl289937290067_
                                                     _e289942290070_
                                                     _hd289941290074_
                                                     _tl289940290077_
                                                     ___splice294916294917_
                                                     _target289954289995_
                                                     _tl289956289998_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289933289968_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289933289968_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289940290077_))
                                    (let ((___splice294916294917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289940290077_
                                              '0))))
                                      (let ((_tl289956289998_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294916294917_
                                                '1)))
                                            (_target289954289995_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294916294917_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289956289998_))
                                            (___match294958294959_
                                             _e289939290060_
                                             _hd289938290064_
                                             _tl289937290067_
                                             _e289942290070_
                                             _hd289941290074_
                                             _tl289940290077_
                                             ___splice294916294917_
                                             _target289954289995_
                                             _tl289956289998_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289933289968_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289933289968_))))))
                        (let () (declare (not safe)) (_g289933289968_)))))
                (let () (declare (not safe)) (_g289933289968_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx290112_)
      (let* ((_g290116290151_
              (lambda (_g290117290147_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290117290147_))))
             (_g290115290279_
              (lambda (_g290117290155_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290117290155_))
                    (let ((_e290122290158_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290117290155_))))
                      (let ((_hd290121290162_
                             (let ()
                               (declare (not safe))
                               (##car _e290122290158_)))
                            (_tl290120290165_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290122290158_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290120290165_))
                            (let ((_g295239_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290120290165_
                                      '0))))
                              (begin
                                (let ((_g295240_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295239_)
                                             (##vector-length _g295239_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295240_ 2)))
                                      (error "Context expects 2 values"
                                             _g295240_)))
                                (let ((_target290123290168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295239_ 0)))
                                      (_tl290125290171_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295239_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290125290171_))
                                      (letrec ((_loop290126290174_
                                                (lambda (_hd290124290178_
                                                         _arity290130290181_
                                                         _prim290131290183_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290124290178_))
                                                      (let ((_e290127290186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290124290178_))))
                (let ((_lp-hd290128290190_
                       (let () (declare (not safe)) (##car _e290127290186_)))
                      (_lp-tl290129290193_
                       (let () (declare (not safe)) (##cdr _e290127290186_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290128290190_))
                      (let ((_e290136290196_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290128290190_))))
                        (let ((_hd290135290200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290136290196_)))
                              (_tl290134290203_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290136290196_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290134290203_))
                              (let ((_g295249_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290134290203_
                                        '0))))
                                (begin
                                  (let ((_g295250_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295249_)
                                               (##vector-length _g295249_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295250_ 2)))
                                        (error "Context expects 2 values"
                                               _g295250_)))
                                  (let ((_target290137290206_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295249_ 0)))
                                        (_tl290139290209_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295249_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290139290209_))
                                        (letrec ((_loop290140290212_
                                                  (lambda (_hd290138290216_
                                                           _arity290144290219_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290138290216_))
                                                        (let ((_e290141290222_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290138290216_))))
                  (let ((_lp-hd290142290226_
                         (let () (declare (not safe)) (##car _e290141290222_)))
                        (_lp-tl290143290229_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290141290222_))))
                    (_loop290140290212_
                     _lp-tl290143290229_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290142290226_ _arity290144290219_)))))
                (let ((_arity290145290232_ (reverse _arity290144290219_)))
                  (_loop290126290174_
                   _lp-tl290129290193_
                   (let ()
                     (declare (not safe))
                     (cons _arity290145290232_ _arity290130290181_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290135290200_ _prim290131290183_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290140290212_
                                           _target290137290206_
                                           '()))
                                        (_g290116290151_ _g290117290155_)))))
                              (_g290116290151_ _g290117290155_))))
                      (_g290116290151_ _g290117290155_))))
              (let ((_arity290132290236_ (reverse _arity290130290181_))
                    (_prim290133290239_ (reverse _prim290131290183_)))
                ((lambda (_L290242_ _L290244_)
                   (let ((__tmp295248
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295241
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290242_
                               _L290244_))
                            (let ((__tmp295242
                                   (lambda (_g290259290265_
                                            _g290260290268_
                                            _g290261290270_)
                                     (let ((__tmp295243
                                            (let ((__tmp295247
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp295244
                                                   (let ((__tmp295245
                                                          (let ((__tmp295246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290262290273_ _g290263290276_)
                           (let ()
                             (declare (not safe))
                             (cons _g290262290273_ _g290263290276_)))))
                    (declare (not safe))
                    (foldr1 __tmp295246 '() _g290259290265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290260290268_
                                                           __tmp295245))))
                                              (declare (not safe))
                                              (cons __tmp295247 __tmp295244))))
                                       (declare (not safe))
                                       (cons __tmp295243 _g290261290270_)))))
                              (declare (not safe))
                              (foldr2 __tmp295242 '() _L290242_ _L290244_)))))
                     (declare (not safe))
                     (cons __tmp295248 __tmp295241)))
                 _arity290132290236_
                 _prim290133290239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290126290174_
                                         _target290123290168_
                                         '()
                                         '()))
                                      (_g290116290151_ _g290117290155_)))))
                            (_g290116290151_ _g290117290155_))))
                    (_g290116290151_ _g290117290155_)))))
        (_g290115290279_ _$stx290112_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx290285_)
      (let* ((_g290289290324_
              (lambda (_g290290290320_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290290290320_))))
             (_g290288290452_
              (lambda (_g290290290328_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290290290328_))
                    (let ((_e290295290331_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290290290328_))))
                      (let ((_hd290294290335_
                             (let ()
                               (declare (not safe))
                               (##car _e290295290331_)))
                            (_tl290293290338_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290295290331_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290293290338_))
                            (let ((_g295251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290293290338_
                                      '0))))
                              (begin
                                (let ((_g295252_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295251_)
                                             (##vector-length _g295251_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295252_ 2)))
                                      (error "Context expects 2 values"
                                             _g295252_)))
                                (let ((_target290296290341_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295251_ 0)))
                                      (_tl290298290344_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295251_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290298290344_))
                                      (letrec ((_loop290299290347_
                                                (lambda (_hd290297290351_
                                                         _arity290303290354_
                                                         _prim290304290356_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290297290351_))
                                                      (let ((_e290300290359_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290297290351_))))
                (let ((_lp-hd290301290363_
                       (let () (declare (not safe)) (##car _e290300290359_)))
                      (_lp-tl290302290366_
                       (let () (declare (not safe)) (##cdr _e290300290359_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290301290363_))
                      (let ((_e290309290369_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290301290363_))))
                        (let ((_hd290308290373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290309290369_)))
                              (_tl290307290376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290309290369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290307290376_))
                              (let ((_g295261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290307290376_
                                        '0))))
                                (begin
                                  (let ((_g295262_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295261_)
                                               (##vector-length _g295261_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295262_ 2)))
                                        (error "Context expects 2 values"
                                               _g295262_)))
                                  (let ((_target290310290379_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295261_ 0)))
                                        (_tl290312290382_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295261_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290312290382_))
                                        (letrec ((_loop290313290385_
                                                  (lambda (_hd290311290389_
                                                           _arity290317290392_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290311290389_))
                                                        (let ((_e290314290395_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290311290389_))))
                  (let ((_lp-hd290315290399_
                         (let () (declare (not safe)) (##car _e290314290395_)))
                        (_lp-tl290316290402_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290314290395_))))
                    (_loop290313290385_
                     _lp-tl290316290402_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290315290399_ _arity290317290392_)))))
                (let ((_arity290318290405_ (reverse _arity290317290392_)))
                  (_loop290299290347_
                   _lp-tl290302290366_
                   (let ()
                     (declare (not safe))
                     (cons _arity290318290405_ _arity290303290354_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290308290373_ _prim290304290356_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290313290385_
                                           _target290310290379_
                                           '()))
                                        (_g290289290324_ _g290290290328_)))))
                              (_g290289290324_ _g290290290328_))))
                      (_g290289290324_ _g290290290328_))))
              (let ((_arity290305290409_ (reverse _arity290303290354_))
                    (_prim290306290412_ (reverse _prim290304290356_)))
                ((lambda (_L290415_ _L290417_)
                   (let ((__tmp295260
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295253
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290415_
                               _L290417_))
                            (let ((__tmp295254
                                   (lambda (_g290432290438_
                                            _g290433290441_
                                            _g290434290443_)
                                     (let ((__tmp295255
                                            (let ((__tmp295259
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp295256
                                                   (let ((__tmp295257
                                                          (let ((__tmp295258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290435290446_ _g290436290449_)
                           (let ()
                             (declare (not safe))
                             (cons _g290435290446_ _g290436290449_)))))
                    (declare (not safe))
                    (foldr1 __tmp295258 '() _g290432290438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290433290441_
                                                           __tmp295257))))
                                              (declare (not safe))
                                              (cons __tmp295259 __tmp295256))))
                                       (declare (not safe))
                                       (cons __tmp295255 _g290434290443_)))))
                              (declare (not safe))
                              (foldr2 __tmp295254 '() _L290415_ _L290417_)))))
                     (declare (not safe))
                     (cons __tmp295260 __tmp295253)))
                 _arity290305290409_
                 _prim290306290412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290299290347_
                                         _target290296290341_
                                         '()
                                         '()))
                                      (_g290289290324_ _g290290290328_)))))
                            (_g290289290324_ _g290290290328_))))
                    (_g290289290324_ _g290290290328_)))))
        (_g290288290452_ _$stx290285_)))))
