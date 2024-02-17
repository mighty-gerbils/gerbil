(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx287354_)
      (let* ((_g287358287376_
              (lambda (_g287359287372_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287359287372_))))
             (_g287357287431_
              (lambda (_g287359287380_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287359287380_))
                    (let ((_e287364287383_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287359287380_))))
                      (let ((_hd287363287387_
                             (let ()
                               (declare (not safe))
                               (##car _e287364287383_)))
                            (_tl287362287390_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287364287383_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287362287390_))
                            (let ((_e287367287393_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287362287390_))))
                              (let ((_hd287366287397_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287367287393_)))
                                    (_tl287365287400_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287367287393_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl287365287400_))
                                    (let ((_e287370287403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl287365287400_))))
                                      (let ((_hd287369287407_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e287370287403_)))
                                            (_tl287368287410_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e287370287403_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl287368287410_))
                                            ((lambda (_L287413_ _L287415_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L287415_))
                                                   (let ((__tmp294962
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp294957
                                                          (let ((__tmp294959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp294961
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp294960
                                (let ()
                                  (declare (not safe))
                                  (cons _L287415_ '()))))
                           (declare (not safe))
                           (cons __tmp294961 __tmp294960)))
                        (__tmp294958
                         (let () (declare (not safe)) (cons _L287413_ '()))))
                    (declare (not safe))
                    (cons __tmp294959 __tmp294958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp294962
                                                           __tmp294957))
                                                   (_g287358287376_
                                                    _g287359287380_)))
                                             _hd287369287407_
                                             _hd287366287397_)
                                            (_g287358287376_
                                             _g287359287380_))))
                                    (_g287358287376_ _g287359287380_))))
                            (_g287358287376_ _g287359287380_))))
                    (_g287358287376_ _g287359287380_)))))
        (_g287357287431_ _$stx287354_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx287435_)
      (let* ((_g287439287468_
              (lambda (_g287440287464_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287440287464_))))
             (_g287438287568_
              (lambda (_g287440287472_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287440287472_))
                    (let ((_e287445287475_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287440287472_))))
                      (let ((_hd287444287479_
                             (let ()
                               (declare (not safe))
                               (##car _e287445287475_)))
                            (_tl287443287482_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287445287475_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287443287482_))
                            (let ((_g294963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287443287482_
                                      '0))))
                              (begin
                                (let ((_g294964_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294963_)
                                             (##vector-length _g294963_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294964_ 2)))
                                      (error "Context expects 2 values"
                                             _g294964_)))
                                (let ((_target287446287485_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294963_ 0)))
                                      (_tl287448287488_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294963_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287448287488_))
                                      (letrec ((_loop287449287491_
                                                (lambda (_hd287447287495_
                                                         _type287453287498_
                                                         _symbol287454287500_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287447287495_))
                                                      (let ((_e287450287503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287447287495_))))
                (let ((_lp-hd287451287507_
                       (let () (declare (not safe)) (##car _e287450287503_)))
                      (_lp-tl287452287510_
                       (let () (declare (not safe)) (##cdr _e287450287503_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287451287507_))
                      (let ((_e287459287513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287451287507_))))
                        (let ((_hd287458287517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287459287513_)))
                              (_tl287457287520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287459287513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287457287520_))
                              (let ((_e287462287523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287457287520_))))
                                (let ((_hd287461287527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287462287523_)))
                                      (_tl287460287530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287462287523_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287460287530_))
                                      (_loop287449287491_
                                       _lp-tl287452287510_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287461287527_
                                               _type287453287498_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287458287517_
                                               _symbol287454287500_)))
                                      (_g287439287468_ _g287440287472_))))
                              (_g287439287468_ _g287440287472_))))
                      (_g287439287468_ _g287440287472_))))
              (let ((_type287455287533_ (reverse _type287453287498_))
                    (_symbol287456287536_ (reverse _symbol287454287500_)))
                ((lambda (_L287539_ _L287541_)
                   (let ((__tmp294971
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294965
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287539_
                               _L287541_))
                            (let ((__tmp294966
                                   (lambda (_g287556287560_
                                            _g287557287563_
                                            _g287558287565_)
                                     (let ((__tmp294967
                                            (let ((__tmp294970
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp294968
                                                   (let ((__tmp294969
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g287556287560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287557287563_
                                                           __tmp294969))))
                                              (declare (not safe))
                                              (cons __tmp294970 __tmp294968))))
                                       (declare (not safe))
                                       (cons __tmp294967 _g287558287565_)))))
                              (declare (not safe))
                              (foldr2 __tmp294966 '() _L287539_ _L287541_)))))
                     (declare (not safe))
                     (cons __tmp294971 __tmp294965)))
                 _type287455287533_
                 _symbol287456287536_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287449287491_
                                         _target287446287485_
                                         '()
                                         '()))
                                      (_g287439287468_ _g287440287472_)))))
                            (_g287439287468_ _g287440287472_))))
                    (_g287439287468_ _g287440287472_)))))
        (_g287438287568_ _$stx287435_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx287573_)
      (let* ((___stx294522294523_ _$stx287573_)
             (_g287578287620_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294522294523_)))))
        (let ((___kont294525294526_
               (lambda (_L287748_ _L287750_ _L287751_ _L287752_)
                 (let ((__tmp294985
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp294972
                        (let ((__tmp294982
                               (let ((__tmp294984
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294983
                                      (let ()
                                        (declare (not safe))
                                        (cons _L287752_ '()))))
                                 (declare (not safe))
                                 (cons __tmp294984 __tmp294983)))
                              (__tmp294973
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
                                               (cons _L287751_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294981 __tmp294980)))
                                     (__tmp294974
                                      (let ((__tmp294976
                                             (let ((__tmp294978
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294977
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L287750_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294978 __tmp294977)))
                                            (__tmp294975
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287748_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294976 __tmp294975))))
                                 (declare (not safe))
                                 (cons __tmp294979 __tmp294974))))
                          (declare (not safe))
                          (cons __tmp294982 __tmp294973))))
                   (declare (not safe))
                   (cons __tmp294985 __tmp294972))))
              (___kont294527294528_
               (lambda (_L287667_ _L287669_ _L287670_ _L287671_)
                 (let ((__tmp294986
                        (let ((__tmp294987
                               (let ((__tmp294988
                                      (let ((__tmp294989
                                             (let ((__tmp294990
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp294990 '()))))
                                        (declare (not safe))
                                        (cons _L287667_ __tmp294989))))
                                 (declare (not safe))
                                 (cons _L287669_ __tmp294988))))
                          (declare (not safe))
                          (cons _L287670_ __tmp294987))))
                   (declare (not safe))
                   (cons _L287671_ __tmp294986)))))
          (let ((___match294561294562_
                 (lambda (_e287586287698_
                          _hd287585287702_
                          _tl287584287705_
                          _e287589287708_
                          _hd287588287712_
                          _tl287587287715_
                          _e287592287718_
                          _hd287591287722_
                          _tl287590287725_
                          _e287595287728_
                          _hd287594287732_
                          _tl287593287735_
                          _e287598287738_
                          _hd287597287742_
                          _tl287596287745_)
                   (let ((_L287748_ _hd287597287742_)
                         (_L287750_ _hd287594287732_)
                         (_L287751_ _hd287591287722_)
                         (_L287752_ _hd287588287712_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L287752_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287751_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287750_)))
                         (___kont294525294526_
                          _L287748_
                          _L287750_
                          _L287751_
                          _L287752_)
                         (let () (declare (not safe)) (_g287578287620_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294522294523_))
                (let ((_e287586287698_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294522294523_))))
                  (let ((_tl287584287705_
                         (let () (declare (not safe)) (##cdr _e287586287698_)))
                        (_hd287585287702_
                         (let ()
                           (declare (not safe))
                           (##car _e287586287698_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl287584287705_))
                        (let ((_e287589287708_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl287584287705_))))
                          (let ((_tl287587287715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e287589287708_)))
                                (_hd287588287712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e287589287708_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl287587287715_))
                                (let ((_e287592287718_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl287587287715_))))
                                  (let ((_tl287590287725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e287592287718_)))
                                        (_hd287591287722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e287592287718_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl287590287725_))
                                        (let ((_e287595287728_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl287590287725_))))
                                          (let ((_tl287593287735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e287595287728_)))
                                                (_hd287594287732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e287595287728_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl287593287735_))
                                                (let ((_e287598287738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl287593287735_))))
                                                  (let ((_tl287596287745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e287598287738_)))
                                                        (_hd287597287742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e287598287738_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl287596287745_))
                                                        (___match294561294562_
                                                         _e287586287698_
                                                         _hd287585287702_
                                                         _tl287584287705_
                                                         _e287589287708_
                                                         _hd287588287712_
                                                         _tl287587287715_
                                                         _e287592287718_
                                                         _hd287591287722_
                                                         _tl287590287725_
                                                         _e287595287728_
                                                         _hd287594287732_
                                                         _tl287593287735_
                                                         _e287598287738_
                                                         _hd287597287742_
                                                         _tl287596287745_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g287578287620_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl287593287735_))
                                                    (___kont294527294528_
                                                     _hd287594287732_
                                                     _hd287591287722_
                                                     _hd287588287712_
                                                     _hd287585287702_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g287578287620_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g287578287620_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g287578287620_)))))
                        (let () (declare (not safe)) (_g287578287620_)))))
                (let () (declare (not safe)) (_g287578287620_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx287777_)
      (let* ((_g287781287816_
              (lambda (_g287782287812_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287782287812_))))
             (_g287780287935_
              (lambda (_g287782287820_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287782287820_))
                    (let ((_e287788287823_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287782287820_))))
                      (let ((_hd287787287827_
                             (let ()
                               (declare (not safe))
                               (##car _e287788287823_)))
                            (_tl287786287830_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287788287823_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287786287830_))
                            (let ((_g294991_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287786287830_
                                      '0))))
                              (begin
                                (let ((_g294992_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294991_)
                                             (##vector-length _g294991_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294992_ 2)))
                                      (error "Context expects 2 values"
                                             _g294992_)))
                                (let ((_target287789287833_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294991_ 0)))
                                      (_tl287791287836_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294991_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287791287836_))
                                      (letrec ((_loop287792287839_
                                                (lambda (_hd287790287843_
                                                         _symbol287796287846_
                                                         _method287797287848_
                                                         _type-t287798287850_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287790287843_))
                                                      (let ((_e287793287853_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287790287843_))))
                (let ((_lp-hd287794287857_
                       (let () (declare (not safe)) (##car _e287793287853_)))
                      (_lp-tl287795287860_
                       (let () (declare (not safe)) (##cdr _e287793287853_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287794287857_))
                      (let ((_e287804287863_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287794287857_))))
                        (let ((_hd287803287867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287804287863_)))
                              (_tl287802287870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287804287863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287802287870_))
                              (let ((_e287807287873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287802287870_))))
                                (let ((_hd287806287877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287807287873_)))
                                      (_tl287805287880_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287807287873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287805287880_))
                                      (let ((_e287810287883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287805287880_))))
                                        (let ((_hd287809287887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287810287883_)))
                                              (_tl287808287890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287810287883_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287808287890_))
                                              (_loop287792287839_
                                               _lp-tl287795287860_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287809287887_
                                                       _symbol287796287846_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287806287877_
                                                       _method287797287848_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287803287867_
                                                       _type-t287798287850_)))
                                              (_g287781287816_
                                               _g287782287820_))))
                                      (_g287781287816_ _g287782287820_))))
                              (_g287781287816_ _g287782287820_))))
                      (_g287781287816_ _g287782287820_))))
              (let ((_symbol287799287893_ (reverse _symbol287796287846_))
                    (_method287800287896_ (reverse _method287797287848_))
                    (_type-t287801287898_ (reverse _type-t287798287850_)))
                ((lambda (_L287901_ _L287903_ _L287904_)
                   (let ((__tmp295000
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294993
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287901_
                               _L287903_
                               _L287904_))
                            (let ((__tmp294994
                                   (lambda (_g287920287925_
                                            _g287921287928_
                                            _g287922287930_
                                            _g287923287932_)
                                     (let ((__tmp294995
                                            (let ((__tmp294999
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp294996
                                                   (let ((__tmp294997
                                                          (let ((__tmp294998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g287920287925_ '()))))
                    (declare (not safe))
                    (cons _g287921287928_ __tmp294998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287922287930_
                                                           __tmp294997))))
                                              (declare (not safe))
                                              (cons __tmp294999 __tmp294996))))
                                       (declare (not safe))
                                       (cons __tmp294995 _g287923287932_)))))
                              (declare (not safe))
                              (foldr* __tmp294994
                                      '()
                                      _L287901_
                                      _L287903_
                                      _L287904_)))))
                     (declare (not safe))
                     (cons __tmp295000 __tmp294993)))
                 _symbol287799287893_
                 _method287800287896_
                 _type-t287801287898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287792287839_
                                         _target287789287833_
                                         '()
                                         '()
                                         '()))
                                      (_g287781287816_ _g287782287820_)))))
                            (_g287781287816_ _g287782287820_))))
                    (_g287781287816_ _g287782287820_)))))
        (_g287780287935_ _$stx287777_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx287940_)
      (let* ((_g287944287977_
              (lambda (_g287945287973_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287945287973_))))
             (_g287943288091_
              (lambda (_g287945287981_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287945287981_))
                    (let ((_e287951287984_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287945287981_))))
                      (let ((_hd287950287988_
                             (let ()
                               (declare (not safe))
                               (##car _e287951287984_)))
                            (_tl287949287991_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287951287984_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287949287991_))
                            (let ((_e287954287994_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287949287991_))))
                              (let ((_hd287953287998_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287954287994_)))
                                    (_tl287952288001_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287954287994_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl287952288001_))
                                    (let ((_g295001_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl287952288001_
                                              '0))))
                                      (begin
                                        (let ((_g295002_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g295001_)
                                                     (##vector-length
                                                      _g295001_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g295002_ 2)))
                                              (error "Context expects 2 values"
                                                     _g295002_)))
                                        (let ((_target287955288004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295001_ 0)))
                                              (_tl287957288007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295001_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287957288007_))
                                              (letrec ((_loop287958288010_
                                                        (lambda (_hd287956288014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol287962288017_
                         _method287963288019_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd287956288014_))
                      (let ((_e287959288022_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd287956288014_))))
                        (let ((_lp-hd287960288026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287959288022_)))
                              (_lp-tl287961288029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287959288022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd287960288026_))
                              (let ((_e287968288032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd287960288026_))))
                                (let ((_hd287967288036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287968288032_)))
                                      (_tl287966288039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287968288032_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287966288039_))
                                      (let ((_e287971288042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287966288039_))))
                                        (let ((_hd287970288046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287971288042_)))
                                              (_tl287969288049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287971288042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287969288049_))
                                              (_loop287958288010_
                                               _lp-tl287961288029_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287970288046_
                                                       _symbol287962288017_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287967288036_
                                                       _method287963288019_)))
                                              (_g287944287977_
                                               _g287945287981_))))
                                      (_g287944287977_ _g287945287981_))))
                              (_g287944287977_ _g287945287981_))))
                      (let ((_symbol287964288052_
                             (reverse _symbol287962288017_))
                            (_method287965288055_
                             (reverse _method287963288019_)))
                        ((lambda (_L288058_ _L288060_ _L288061_)
                           (let ((__tmp295010
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp295003
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L288058_
                                       _L288060_))
                                    (let ((__tmp295004
                                           (lambda (_g288079288083_
                                                    _g288080288086_
                                                    _g288081288088_)
                                             (let ((__tmp295005
                                                    (let ((__tmp295009
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp295006
                                                           (let ((__tmp295007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295008
                                 (let ()
                                   (declare (not safe))
                                   (cons _g288079288083_ '()))))
                            (declare (not safe))
                            (cons _g288080288086_ __tmp295008))))
                     (declare (not safe))
                     (cons _L288061_ __tmp295007))))
              (declare (not safe))
              (cons __tmp295009 __tmp295006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295005
                                                     _g288081288088_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp295004
                                              '()
                                              _L288058_
                                              _L288060_)))))
                             (declare (not safe))
                             (cons __tmp295010 __tmp295003)))
                         _symbol287964288052_
                         _method287965288055_
                         _hd287953287998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop287958288010_
                                                 _target287955288004_
                                                 '()
                                                 '()))
                                              (_g287944287977_
                                               _g287945287981_)))))
                                    (_g287944287977_ _g287945287981_))))
                            (_g287944287977_ _g287945287981_))))
                    (_g287944287977_ _g287945287981_)))))
        (_g287943288091_ _$stx287940_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx288096_)
      (let* ((_g288100288114_
              (lambda (_g288101288110_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288101288110_))))
             (_g288099288155_
              (lambda (_g288101288118_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288101288118_))
                    (let ((_e288105288121_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288101288118_))))
                      (let ((_hd288104288125_
                             (let ()
                               (declare (not safe))
                               (##car _e288105288121_)))
                            (_tl288103288128_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288105288121_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288103288128_))
                            (let ((_e288108288131_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288103288128_))))
                              (let ((_hd288107288135_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288108288131_)))
                                    (_tl288106288138_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288108288131_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288106288138_))
                                    ((lambda (_L288141_)
                                       (let ((__tmp295015
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp295011
                                              (let ((__tmp295012
                                                     (let ((__tmp295014
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295013
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295014 __tmp295013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295012 '()))))
                                         (declare (not safe))
                                         (cons __tmp295015 __tmp295011)))
                                     _hd288107288135_)
                                    (_g288100288114_ _g288101288118_))))
                            (_g288100288114_ _g288101288118_))))
                    (_g288100288114_ _g288101288118_)))))
        (_g288099288155_ _$stx288096_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx288159_)
      (let* ((_g288163288213_
              (lambda (_g288164288209_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288164288209_))))
             (_g288162288380_
              (lambda (_g288164288217_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288164288217_))
                    (let ((_e288177288220_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288164288217_))))
                      (let ((_hd288176288224_
                             (let ()
                               (declare (not safe))
                               (##car _e288177288220_)))
                            (_tl288175288227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288177288220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288175288227_))
                            (let ((_e288180288230_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288175288227_))))
                              (let ((_hd288179288234_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288180288230_)))
                                    (_tl288178288237_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288180288230_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288178288237_))
                                    (let ((_e288183288240_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288178288237_))))
                                      (let ((_hd288182288244_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288183288240_)))
                                            (_tl288181288247_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288183288240_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288181288247_))
                                            (let ((_e288186288250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288181288247_))))
                                              (let ((_hd288185288254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288186288250_)))
                                                    (_tl288184288257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288186288250_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288184288257_))
                                                    (let ((_e288189288260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288184288257_))))
                                                      (let ((_hd288188288264_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288189288260_)))
                    (_tl288187288267_
                     (let () (declare (not safe)) (##cdr _e288189288260_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288187288267_))
                    (let ((_e288192288270_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288187288267_))))
                      (let ((_hd288191288274_
                             (let ()
                               (declare (not safe))
                               (##car _e288192288270_)))
                            (_tl288190288277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288192288270_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288190288277_))
                            (let ((_e288195288280_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288190288277_))))
                              (let ((_hd288194288284_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288195288280_)))
                                    (_tl288193288287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288195288280_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288193288287_))
                                    (let ((_e288198288290_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288193288287_))))
                                      (let ((_hd288197288294_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288198288290_)))
                                            (_tl288196288297_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288198288290_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288196288297_))
                                            (let ((_e288201288300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288196288297_))))
                                              (let ((_hd288200288304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288201288300_)))
                                                    (_tl288199288307_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288201288300_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288199288307_))
                                                    (let ((_e288204288310_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288199288307_))))
                                                      (let ((_hd288203288314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288204288310_)))
                    (_tl288202288317_
                     (let () (declare (not safe)) (##cdr _e288204288310_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288202288317_))
                    (let ((_e288207288320_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288202288317_))))
                      (let ((_hd288206288324_
                             (let ()
                               (declare (not safe))
                               (##car _e288207288320_)))
                            (_tl288205288327_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288207288320_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl288205288327_))
                            ((lambda (_L288330_
                                      _L288332_
                                      _L288333_
                                      _L288334_
                                      _L288335_
                                      _L288336_
                                      _L288337_
                                      _L288338_
                                      _L288339_
                                      _L288340_)
                               (let ((__tmp295050
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp295016
                                      (let ((__tmp295047
                                             (let ((__tmp295049
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295048
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288340_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295049 __tmp295048)))
                                            (__tmp295017
                                             (let ((__tmp295044
                                                    (let ((__tmp295046
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp295045
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L288339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp295046 __tmp295045)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp295018
                                                    (let ((__tmp295041
                                                           (let ((__tmp295043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295042
                          (let () (declare (not safe)) (cons _L288338_ '()))))
                     (declare (not safe))
                     (cons __tmp295043 __tmp295042)))
                  (__tmp295019
                   (let ((__tmp295038
                          (let ((__tmp295040
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp295039
                                 (let ()
                                   (declare (not safe))
                                   (cons _L288337_ '()))))
                            (declare (not safe))
                            (cons __tmp295040 __tmp295039)))
                         (__tmp295020
                          (let ((__tmp295035
                                 (let ((__tmp295037
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp295036
                                        (let ()
                                          (declare (not safe))
                                          (cons _L288336_ '()))))
                                   (declare (not safe))
                                   (cons __tmp295037 __tmp295036)))
                                (__tmp295021
                                 (let ((__tmp295032
                                        (let ((__tmp295034
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp295033
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L288335_ '()))))
                                          (declare (not safe))
                                          (cons __tmp295034 __tmp295033)))
                                       (__tmp295022
                                        (let ((__tmp295023
                                               (let ((__tmp295024
                                                      (let ((__tmp295029
                                                             (let ((__tmp295031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295030
                            (let ()
                              (declare (not safe))
                              (cons _L288332_ '()))))
                       (declare (not safe))
                       (cons __tmp295031 __tmp295030)))
                    (__tmp295025
                     (let ((__tmp295026
                            (let ((__tmp295028
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295027
                                   (let ()
                                     (declare (not safe))
                                     (cons _L288330_ '()))))
                              (declare (not safe))
                              (cons __tmp295028 __tmp295027))))
                       (declare (not safe))
                       (cons __tmp295026 '()))))
                (declare (not safe))
                (cons __tmp295029 __tmp295025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L288333_
                                                       __tmp295024))))
                                          (declare (not safe))
                                          (cons _L288334_ __tmp295023))))
                                   (declare (not safe))
                                   (cons __tmp295032 __tmp295022))))
                            (declare (not safe))
                            (cons __tmp295035 __tmp295021))))
                     (declare (not safe))
                     (cons __tmp295038 __tmp295020))))
              (declare (not safe))
              (cons __tmp295041 __tmp295019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295044
                                                     __tmp295018))))
                                        (declare (not safe))
                                        (cons __tmp295047 __tmp295017))))
                                 (declare (not safe))
                                 (cons __tmp295050 __tmp295016)))
                             _hd288206288324_
                             _hd288203288314_
                             _hd288200288304_
                             _hd288197288294_
                             _hd288194288284_
                             _hd288191288274_
                             _hd288188288264_
                             _hd288185288254_
                             _hd288182288244_
                             _hd288179288234_)
                            (_g288163288213_ _g288164288217_))))
                    (_g288163288213_ _g288164288217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288163288213_
                                                     _g288164288217_))))
                                            (_g288163288213_
                                             _g288164288217_))))
                                    (_g288163288213_ _g288164288217_))))
                            (_g288163288213_ _g288164288217_))))
                    (_g288163288213_ _g288164288217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288163288213_
                                                     _g288164288217_))))
                                            (_g288163288213_
                                             _g288164288217_))))
                                    (_g288163288213_ _g288164288217_))))
                            (_g288163288213_ _g288164288217_))))
                    (_g288163288213_ _g288164288217_)))))
        (_g288162288380_ _$stx288159_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx288384_)
      (let* ((_g288388288402_
              (lambda (_g288389288398_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288389288398_))))
             (_g288387288443_
              (lambda (_g288389288406_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288389288406_))
                    (let ((_e288393288409_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288389288406_))))
                      (let ((_hd288392288413_
                             (let ()
                               (declare (not safe))
                               (##car _e288393288409_)))
                            (_tl288391288416_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288393288409_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288391288416_))
                            (let ((_e288396288419_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288391288416_))))
                              (let ((_hd288395288423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288396288419_)))
                                    (_tl288394288426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288396288419_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288394288426_))
                                    ((lambda (_L288429_)
                                       (let ((__tmp295055
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp295051
                                              (let ((__tmp295052
                                                     (let ((__tmp295054
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295054 __tmp295053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295052 '()))))
                                         (declare (not safe))
                                         (cons __tmp295055 __tmp295051)))
                                     _hd288395288423_)
                                    (_g288388288402_ _g288389288406_))))
                            (_g288388288402_ _g288389288406_))))
                    (_g288388288402_ _g288389288406_)))))
        (_g288387288443_ _$stx288384_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx288447_)
      (let* ((_g288451288465_
              (lambda (_g288452288461_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288452288461_))))
             (_g288450288506_
              (lambda (_g288452288469_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288452288469_))
                    (let ((_e288456288472_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288452288469_))))
                      (let ((_hd288455288476_
                             (let ()
                               (declare (not safe))
                               (##car _e288456288472_)))
                            (_tl288454288479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288456288472_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288454288479_))
                            (let ((_e288459288482_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288454288479_))))
                              (let ((_hd288458288486_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288459288482_)))
                                    (_tl288457288489_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288459288482_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288457288489_))
                                    ((lambda (_L288492_)
                                       (let ((__tmp295060
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp295056
                                              (let ((__tmp295057
                                                     (let ((__tmp295059
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295058
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295059 __tmp295058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295057 '()))))
                                         (declare (not safe))
                                         (cons __tmp295060 __tmp295056)))
                                     _hd288458288486_)
                                    (_g288451288465_ _g288452288469_))))
                            (_g288451288465_ _g288452288469_))))
                    (_g288451288465_ _g288452288469_)))))
        (_g288450288506_ _$stx288447_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx288510_)
      (let* ((_g288514288536_
              (lambda (_g288515288532_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288515288532_))))
             (_g288513288605_
              (lambda (_g288515288540_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288515288540_))
                    (let ((_e288521288543_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288515288540_))))
                      (let ((_hd288520288547_
                             (let ()
                               (declare (not safe))
                               (##car _e288521288543_)))
                            (_tl288519288550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288521288543_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288519288550_))
                            (let ((_e288524288553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288519288550_))))
                              (let ((_hd288523288557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288524288553_)))
                                    (_tl288522288560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288524288553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288522288560_))
                                    (let ((_e288527288563_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288522288560_))))
                                      (let ((_hd288526288567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288527288563_)))
                                            (_tl288525288570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288527288563_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288525288570_))
                                            (let ((_e288530288573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288525288570_))))
                                              (let ((_hd288529288577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288530288573_)))
                                                    (_tl288528288580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288530288573_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288528288580_))
                                                    ((lambda (_L288583_
                                                              _L288585_
                                                              _L288586_)
                                                       (let ((__tmp295070
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp295061
                      (let ((__tmp295067
                             (let ((__tmp295069
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295068
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288586_ '()))))
                               (declare (not safe))
                               (cons __tmp295069 __tmp295068)))
                            (__tmp295062
                             (let ((__tmp295064
                                    (let ((__tmp295066
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295065
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288585_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295066 __tmp295065)))
                                   (__tmp295063
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288583_ '()))))
                               (declare (not safe))
                               (cons __tmp295064 __tmp295063))))
                        (declare (not safe))
                        (cons __tmp295067 __tmp295062))))
                 (declare (not safe))
                 (cons __tmp295070 __tmp295061)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288529288577_
                                                     _hd288526288567_
                                                     _hd288523288557_)
                                                    (_g288514288536_
                                                     _g288515288540_))))
                                            (_g288514288536_
                                             _g288515288540_))))
                                    (_g288514288536_ _g288515288540_))))
                            (_g288514288536_ _g288515288540_))))
                    (_g288514288536_ _g288515288540_)))))
        (_g288513288605_ _$stx288510_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx288609_)
      (let* ((_g288613288635_
              (lambda (_g288614288631_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288614288631_))))
             (_g288612288704_
              (lambda (_g288614288639_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288614288639_))
                    (let ((_e288620288642_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288614288639_))))
                      (let ((_hd288619288646_
                             (let ()
                               (declare (not safe))
                               (##car _e288620288642_)))
                            (_tl288618288649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288620288642_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288618288649_))
                            (let ((_e288623288652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288618288649_))))
                              (let ((_hd288622288656_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288623288652_)))
                                    (_tl288621288659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288623288652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288621288659_))
                                    (let ((_e288626288662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288621288659_))))
                                      (let ((_hd288625288666_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288626288662_)))
                                            (_tl288624288669_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288626288662_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288624288669_))
                                            (let ((_e288629288672_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288624288669_))))
                                              (let ((_hd288628288676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288629288672_)))
                                                    (_tl288627288679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288629288672_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288627288679_))
                                                    ((lambda (_L288682_
                                                              _L288684_
                                                              _L288685_)
                                                       (let ((__tmp295080
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp295071
                      (let ((__tmp295077
                             (let ((__tmp295079
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295078
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288685_ '()))))
                               (declare (not safe))
                               (cons __tmp295079 __tmp295078)))
                            (__tmp295072
                             (let ((__tmp295074
                                    (let ((__tmp295076
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295075
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288684_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295076 __tmp295075)))
                                   (__tmp295073
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288682_ '()))))
                               (declare (not safe))
                               (cons __tmp295074 __tmp295073))))
                        (declare (not safe))
                        (cons __tmp295077 __tmp295072))))
                 (declare (not safe))
                 (cons __tmp295080 __tmp295071)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288628288676_
                                                     _hd288625288666_
                                                     _hd288622288656_)
                                                    (_g288613288635_
                                                     _g288614288639_))))
                                            (_g288613288635_
                                             _g288614288639_))))
                                    (_g288613288635_ _g288614288639_))))
                            (_g288613288635_ _g288614288639_))))
                    (_g288613288635_ _g288614288639_)))))
        (_g288612288704_ _$stx288609_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx288708_)
      (let* ((___stx294590294591_ _$stx288708_)
             (_g288716288784_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294590294591_)))))
        (let ((___kont294593294594_
               (lambda (_L289062_ _L289064_)
                 (let ((__tmp295096
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295081
                        (let ((__tmp295092
                               (let ((__tmp295095
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295093
                                      (let ((__tmp295094
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295094 '()))))
                                 (declare (not safe))
                                 (cons __tmp295095 __tmp295093)))
                              (__tmp295082
                               (let ((__tmp295089
                                      (let ((__tmp295091
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295090
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289064_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295091 __tmp295090)))
                                     (__tmp295083
                                      (let ((__tmp295084
                                             (let ((__tmp295085
                                                    (let ((__tmp295086
                                                           (let ((__tmp295088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295087
                          (let () (declare (not safe)) (cons _L289062_ '()))))
                     (declare (not safe))
                     (cons __tmp295088 __tmp295087))))
              (declare (not safe))
              (cons __tmp295086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L289062_ __tmp295085))))
                                        (declare (not safe))
                                        (cons '#f __tmp295084))))
                                 (declare (not safe))
                                 (cons __tmp295089 __tmp295083))))
                          (declare (not safe))
                          (cons __tmp295092 __tmp295082))))
                   (declare (not safe))
                   (cons __tmp295096 __tmp295081))))
              (___kont294595294596_
               (lambda (_L288993_ _L288995_)
                 (let ((__tmp295097
                        (let ((__tmp295098
                               (let ((__tmp295099
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L288993_ __tmp295099))))
                          (declare (not safe))
                          (cons 'primitive: __tmp295098))))
                   (declare (not safe))
                   (cons _L288995_ __tmp295097))))
              (___kont294597294598_
               (lambda (_L288932_ _L288934_)
                 (let ((__tmp295113
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp295100
                        (let ((__tmp295109
                               (let ((__tmp295112
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295110
                                      (let ((__tmp295111
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295111 '()))))
                                 (declare (not safe))
                                 (cons __tmp295112 __tmp295110)))
                              (__tmp295101
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
                                               (cons _L288934_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295108 __tmp295107)))
                                     (__tmp295102
                                      (let ((__tmp295103
                                             (let ((__tmp295105
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295104
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288932_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295105
                                                     __tmp295104))))
                                        (declare (not safe))
                                        (cons __tmp295103 '()))))
                                 (declare (not safe))
                                 (cons __tmp295106 __tmp295102))))
                          (declare (not safe))
                          (cons __tmp295109 __tmp295101))))
                   (declare (not safe))
                   (cons __tmp295113 __tmp295100))))
              (___kont294599294600_
               (lambda (_L288864_ _L288866_)
                 (let ((__tmp295127
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295114
                        (let ((__tmp295123
                               (let ((__tmp295126
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295124
                                      (let ((__tmp295125
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295125 '()))))
                                 (declare (not safe))
                                 (cons __tmp295126 __tmp295124)))
                              (__tmp295115
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
                                               (cons _L288866_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295122 __tmp295121)))
                                     (__tmp295116
                                      (let ((__tmp295117
                                             (let ((__tmp295119
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295118
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288864_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295119
                                                     __tmp295118))))
                                        (declare (not safe))
                                        (cons __tmp295117 '()))))
                                 (declare (not safe))
                                 (cons __tmp295120 __tmp295116))))
                          (declare (not safe))
                          (cons __tmp295123 __tmp295115))))
                   (declare (not safe))
                   (cons __tmp295127 __tmp295114))))
              (___kont294601294602_
               (lambda (_L288811_ _L288813_)
                 (let ((__tmp295128
                        (let ((__tmp295129
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L288811_ __tmp295129))))
                   (declare (not safe))
                   (cons _L288813_ __tmp295128)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx294590294591_))
              (let ((_e288722289018_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx294590294591_))))
                (let ((_tl288720289025_
                       (let () (declare (not safe)) (##cdr _e288722289018_)))
                      (_hd288721289022_
                       (let () (declare (not safe)) (##car _e288722289018_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl288720289025_))
                      (let ((_e288725289028_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288720289025_))))
                        (let ((_tl288723289035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288725289028_)))
                              (_hd288724289032_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288725289028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl288723289035_))
                              (let ((_e288728289038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl288723289035_))))
                                (let ((_tl288726289045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288728289038_)))
                                      (_hd288727289042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288728289038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd288727289042_))
                                      (let ((_e288729289048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd288727289042_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e288729289048_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl288726289045_))
                                                (let ((_e288732289052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl288726289045_))))
                                                  (let ((_tl288730289059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e288732289052_)))
                                                        (_hd288731289056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e288732289052_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288730289059_))
                                                        (___kont294593294594_
                                                         _hd288731289056_
                                                         _hd288724289032_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd288724289032_))
                                                            (let ((_e288741288979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd288724289032_))))
                      (declare (not safe))
                      (_g288716288784_))
                    (let () (declare (not safe)) (_g288716288784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd288724289032_))
                                                    (let ((_e288741288979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd288724289032_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e288741288979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288726289045_))
                      (___kont294595294596_ _hd288727289042_ _hd288721289022_)
                      (let () (declare (not safe)) (_g288716288784_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288726289045_))
                      (___kont294599294600_ _hd288727289042_ _hd288724289032_)
                      (let () (declare (not safe)) (_g288716288784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288726289045_))
                                                        (___kont294599294600_
                                                         _hd288727289042_
                                                         _hd288724289032_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g288716288784_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd288724289032_))
                                                (let ((_e288741288979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd288724289032_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e288741288979_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl288726289045_))
                                                          (___kont294595294596_
                                                           _hd288727289042_
                                                           _hd288721289022_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl288726289045_))
                      (let ((_e288759288922_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288726289045_))))
                        (let ((_tl288757288929_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288759288922_)))
                              (_hd288758288926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288759288922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl288757288929_))
                              (___kont294597294598_
                               _hd288758288926_
                               _hd288727289042_)
                              (let ()
                                (declare (not safe))
                                (_g288716288784_)))))
                      (let () (declare (not safe)) (_g288716288784_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl288726289045_))
                  (___kont294599294600_ _hd288727289042_ _hd288724289032_)
                  (let () (declare (not safe)) (_g288716288784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288726289045_))
                                                    (___kont294599294600_
                                                     _hd288727289042_
                                                     _hd288724289032_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288716288784_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd288724289032_))
                                          (let ((_e288741288979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd288724289032_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e288741288979_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288726289045_))
                                                    (___kont294595294596_
                                                     _hd288727289042_
                                                     _hd288721289022_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl288726289045_))
                                                        (let ((_e288759288922_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl288726289045_))))
                  (let ((_tl288757288929_
                         (let () (declare (not safe)) (##cdr _e288759288922_)))
                        (_hd288758288926_
                         (let ()
                           (declare (not safe))
                           (##car _e288759288922_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl288757288929_))
                        (___kont294597294598_
                         _hd288758288926_
                         _hd288727289042_)
                        (let () (declare (not safe)) (_g288716288784_)))))
                (let () (declare (not safe)) (_g288716288784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288726289045_))
                                                    (___kont294599294600_
                                                     _hd288727289042_
                                                     _hd288724289032_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288716288784_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288726289045_))
                                              (___kont294599294600_
                                               _hd288727289042_
                                               _hd288724289032_)
                                              (let ()
                                                (declare (not safe))
                                                (_g288716288784_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd288724289032_))
                                  (let ((_e288741288979_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd288724289032_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl288723289035_))
                                        (___kont294601294602_
                                         _hd288724289032_
                                         _hd288721289022_)
                                        (let ()
                                          (declare (not safe))
                                          (_g288716288784_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl288723289035_))
                                      (___kont294601294602_
                                       _hd288724289032_
                                       _hd288721289022_)
                                      (let ()
                                        (declare (not safe))
                                        (_g288716288784_)))))))
                      (let () (declare (not safe)) (_g288716288784_)))))
              (let () (declare (not safe)) (_g288716288784_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx289086_)
      (let* ((___stx294730294731_ _$stx289086_)
             (_g289091289146_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294730294731_)))))
        (let ((___kont294733294734_
               (lambda (_L289331_ _L289333_)
                 (let ((__tmp295145
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp295130
                        (let ((__tmp295141
                               (let ((__tmp295144
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295142
                                      (let ((__tmp295143
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295143 '()))))
                                 (declare (not safe))
                                 (cons __tmp295144 __tmp295142)))
                              (__tmp295131
                               (let ((__tmp295132
                                      (let ((__tmp295140
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295133
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289331_
                                                  _L289333_))
                                               (let ((__tmp295134
                                                      (lambda (_g289350289354_
                                                               _g289351289357_
                                                               _g289352289359_)
                                                        (let ((__tmp295135
                                                               (let ((__tmp295139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295136
                              (let ((__tmp295137
                                     (let ((__tmp295138
                                            (let ()
                                              (declare (not safe))
                                              (cons _g289350289354_ '()))))
                                       (declare (not safe))
                                       (cons _g289351289357_ __tmp295138))))
                                (declare (not safe))
                                (cons 'primitive: __tmp295137))))
                         (declare (not safe))
                         (cons __tmp295139 __tmp295136))))
                  (declare (not safe))
                  (cons __tmp295135 _g289352289359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295134
                                                         '()
                                                         _L289331_
                                                         _L289333_)))))
                                        (declare (not safe))
                                        (cons __tmp295140 __tmp295133))))
                                 (declare (not safe))
                                 (cons __tmp295132 '()))))
                          (declare (not safe))
                          (cons __tmp295141 __tmp295131))))
                   (declare (not safe))
                   (cons __tmp295145 __tmp295130))))
              (___kont294737294738_
               (lambda (_L289217_ _L289219_)
                 (let ((__tmp295160
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp295146
                        (let ((__tmp295156
                               (let ((__tmp295159
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295157
                                      (let ((__tmp295158
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295158 '()))))
                                 (declare (not safe))
                                 (cons __tmp295159 __tmp295157)))
                              (__tmp295147
                               (let ((__tmp295148
                                      (let ((__tmp295155
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295149
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289217_
                                                  _L289219_))
                                               (let ((__tmp295150
                                                      (lambda (_g289234289238_
                                                               _g289235289241_
                                                               _g289236289243_)
                                                        (let ((__tmp295151
                                                               (let ((__tmp295154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295152
                              (let ((__tmp295153
                                     (let ()
                                       (declare (not safe))
                                       (cons _g289234289238_ '()))))
                                (declare (not safe))
                                (cons _g289235289241_ __tmp295153))))
                         (declare (not safe))
                         (cons __tmp295154 __tmp295152))))
                  (declare (not safe))
                  (cons __tmp295151 _g289236289243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295150
                                                         '()
                                                         _L289217_
                                                         _L289219_)))))
                                        (declare (not safe))
                                        (cons __tmp295155 __tmp295149))))
                                 (declare (not safe))
                                 (cons __tmp295148 '()))))
                          (declare (not safe))
                          (cons __tmp295156 __tmp295147))))
                   (declare (not safe))
                   (cons __tmp295160 __tmp295146)))))
          (let* ((___match294781294782_
                  (lambda (_e289123289153_
                           _hd289122289157_
                           _tl289121289160_
                           ___splice294739294740_
                           _target289124289163_
                           _tl289126289166_)
                    (letrec ((_loop289127289169_
                              (lambda (_hd289125289173_
                                       _dispatch289131289176_
                                       _arity289132289178_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289125289173_))
                                    (let ((_e289128289181_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289125289173_))))
                                      (let ((_lp-tl289130289188_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289128289181_)))
                                            (_lp-hd289129289185_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289128289181_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289129289185_))
                                            (let ((_e289137289191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289129289185_))))
                                              (let ((_tl289135289198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289137289191_)))
                                                    (_hd289136289195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289137289191_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289135289198_))
                                                    (let ((_e289140289201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289135289198_))))
                                                      (let ((_tl289138289208_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289140289201_)))
                    (_hd289139289205_
                     (let () (declare (not safe)) (##car _e289140289201_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289138289208_))
                    (_loop289127289169_
                     _lp-tl289130289188_
                     (let ()
                       (declare (not safe))
                       (cons _hd289139289205_ _dispatch289131289176_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289136289195_ _arity289132289178_)))
                    (let () (declare (not safe)) (_g289091289146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289091289146_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289091289146_)))))
                                    (let ((_arity289134289214_
                                           (reverse _arity289132289178_))
                                          (_dispatch289133289211_
                                           (reverse _dispatch289131289176_)))
                                      (___kont294737294738_
                                       _dispatch289133289211_
                                       _arity289134289214_))))))
                      (_loop289127289169_ _target289124289163_ '() '()))))
                 (___match294773294774_
                  (lambda (_e289123289153_ _hd289122289157_ _tl289121289160_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl289121289160_))
                        (let ((___splice294739294740_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl289121289160_
                                  '0))))
                          (let ((_tl289126289166_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294739294740_ '1)))
                                (_target289124289163_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294739294740_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl289126289166_))
                                (___match294781294782_
                                 _e289123289153_
                                 _hd289122289157_
                                 _tl289121289160_
                                 ___splice294739294740_
                                 _target289124289163_
                                 _tl289126289166_)
                                (let ()
                                  (declare (not safe))
                                  (_g289091289146_)))))
                        (let () (declare (not safe)) (_g289091289146_)))))
                 (___match294767294768_
                  (lambda (_e289097289253_
                           _hd289096289257_
                           _tl289095289260_
                           _e289100289263_
                           _hd289099289267_
                           _tl289098289270_
                           _e289101289273_
                           ___splice294735294736_
                           _target289102289277_
                           _tl289104289280_)
                    (letrec ((_loop289105289283_
                              (lambda (_hd289103289287_
                                       _dispatch289109289290_
                                       _arity289110289292_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289103289287_))
                                    (let ((_e289106289295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289103289287_))))
                                      (let ((_lp-tl289108289302_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289106289295_)))
                                            (_lp-hd289107289299_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289106289295_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289107289299_))
                                            (let ((_e289115289305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289107289299_))))
                                              (let ((_tl289113289312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289115289305_)))
                                                    (_hd289114289309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289115289305_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289113289312_))
                                                    (let ((_e289118289315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289113289312_))))
                                                      (let ((_tl289116289322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289118289315_)))
                    (_hd289117289319_
                     (let () (declare (not safe)) (##car _e289118289315_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289116289322_))
                    (_loop289105289283_
                     _lp-tl289108289302_
                     (let ()
                       (declare (not safe))
                       (cons _hd289117289319_ _dispatch289109289290_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289114289309_ _arity289110289292_)))
                    (___match294773294774_
                     _e289097289253_
                     _hd289096289257_
                     _tl289095289260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match294773294774_
                                                     _e289097289253_
                                                     _hd289096289257_
                                                     _tl289095289260_))))
                                            (___match294773294774_
                                             _e289097289253_
                                             _hd289096289257_
                                             _tl289095289260_))))
                                    (let ((_arity289112289328_
                                           (reverse _arity289110289292_))
                                          (_dispatch289111289325_
                                           (reverse _dispatch289109289290_)))
                                      (___kont294733294734_
                                       _dispatch289111289325_
                                       _arity289112289328_))))))
                      (_loop289105289283_ _target289102289277_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294730294731_))
                (let ((_e289097289253_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294730294731_))))
                  (let ((_tl289095289260_
                         (let () (declare (not safe)) (##cdr _e289097289253_)))
                        (_hd289096289257_
                         (let ()
                           (declare (not safe))
                           (##car _e289097289253_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289095289260_))
                        (let ((_e289100289263_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289095289260_))))
                          (let ((_tl289098289270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289100289263_)))
                                (_hd289099289267_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289100289263_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd289099289267_))
                                (let ((_e289101289273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd289099289267_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e289101289273_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289098289270_))
                                          (let ((___splice294735294736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289098289270_
                                                    '0))))
                                            (let ((_tl289104289280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294735294736_
                                                      '1)))
                                                  (_target289102289277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294735294736_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289104289280_))
                                                  (___match294767294768_
                                                   _e289097289253_
                                                   _hd289096289257_
                                                   _tl289095289260_
                                                   _e289100289263_
                                                   _hd289099289267_
                                                   _tl289098289270_
                                                   _e289101289273_
                                                   ___splice294735294736_
                                                   _target289102289277_
                                                   _tl289104289280_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289095289260_))
                                                      (let ((___splice294739294740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289095289260_ '0))))
                (let ((_tl289126289166_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294739294740_ '1)))
                      (_target289124289163_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294739294740_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289126289166_))
                      (___match294781294782_
                       _e289097289253_
                       _hd289096289257_
                       _tl289095289260_
                       ___splice294739294740_
                       _target289124289163_
                       _tl289126289166_)
                      (let () (declare (not safe)) (_g289091289146_)))))
              (let () (declare (not safe)) (_g289091289146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl289095289260_))
                                              (let ((___splice294739294740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl289095289260_
                                                        '0))))
                                                (let ((_tl289126289166_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294739294740_
                                                          '1)))
                                                      (_target289124289163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294739294740_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl289126289166_))
                                                      (___match294781294782_
                                                       _e289097289253_
                                                       _hd289096289257_
                                                       _tl289095289260_
                                                       ___splice294739294740_
                                                       _target289124289163_
                                                       _tl289126289166_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g289091289146_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g289091289146_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289095289260_))
                                          (let ((___splice294739294740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289095289260_
                                                    '0))))
                                            (let ((_tl289126289166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294739294740_
                                                      '1)))
                                                  (_target289124289163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294739294740_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289126289166_))
                                                  (___match294781294782_
                                                   _e289097289253_
                                                   _hd289096289257_
                                                   _tl289095289260_
                                                   ___splice294739294740_
                                                   _target289124289163_
                                                   _tl289126289166_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g289091289146_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g289091289146_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289095289260_))
                                    (let ((___splice294739294740_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289095289260_
                                              '0))))
                                      (let ((_tl289126289166_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294739294740_
                                                '1)))
                                            (_target289124289163_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294739294740_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289126289166_))
                                            (___match294781294782_
                                             _e289097289253_
                                             _hd289096289257_
                                             _tl289095289260_
                                             ___splice294739294740_
                                             _target289124289163_
                                             _tl289126289166_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289091289146_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289091289146_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl289095289260_))
                            (let ((___splice294739294740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl289095289260_
                                      '0))))
                              (let ((_tl289126289166_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294739294740_
                                        '1)))
                                    (_target289124289163_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294739294740_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl289126289166_))
                                    (___match294781294782_
                                     _e289097289253_
                                     _hd289096289257_
                                     _tl289095289260_
                                     ___splice294739294740_
                                     _target289124289163_
                                     _tl289126289166_)
                                    (let ()
                                      (declare (not safe))
                                      (_g289091289146_)))))
                            (let () (declare (not safe)) (_g289091289146_))))))
                (let () (declare (not safe)) (_g289091289146_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx289368_)
      (let* ((_g289372289390_
              (lambda (_g289373289386_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289373289386_))))
             (_g289371289445_
              (lambda (_g289373289394_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289373289394_))
                    (let ((_e289378289397_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289373289394_))))
                      (let ((_hd289377289401_
                             (let ()
                               (declare (not safe))
                               (##car _e289378289397_)))
                            (_tl289376289404_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289378289397_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289376289404_))
                            (let ((_e289381289407_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289376289404_))))
                              (let ((_hd289380289411_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289381289407_)))
                                    (_tl289379289414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289381289407_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289379289414_))
                                    (let ((_e289384289417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289379289414_))))
                                      (let ((_hd289383289421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289384289417_)))
                                            (_tl289382289424_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289384289417_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289382289424_))
                                            ((lambda (_L289427_ _L289429_)
                                               (let ((__tmp295174
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp295161
                                                      (let ((__tmp295170
                                                             (let ((__tmp295173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295171
                            (let ((__tmp295172
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp295172 '()))))
                       (declare (not safe))
                       (cons __tmp295173 __tmp295171)))
                    (__tmp295162
                     (let ((__tmp295167
                            (let ((__tmp295169
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295168
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289429_ '()))))
                              (declare (not safe))
                              (cons __tmp295169 __tmp295168)))
                           (__tmp295163
                            (let ((__tmp295164
                                   (let ((__tmp295166
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295165
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289427_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295166 __tmp295165))))
                              (declare (not safe))
                              (cons __tmp295164 '()))))
                       (declare (not safe))
                       (cons __tmp295167 __tmp295163))))
                (declare (not safe))
                (cons __tmp295170 __tmp295162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295174
                                                       __tmp295161)))
                                             _hd289383289421_
                                             _hd289380289411_)
                                            (_g289372289390_
                                             _g289373289394_))))
                                    (_g289372289390_ _g289373289394_))))
                            (_g289372289390_ _g289373289394_))))
                    (_g289372289390_ _g289373289394_)))))
        (_g289371289445_ _$stx289368_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx289449_)
      (let* ((_g289453289471_
              (lambda (_g289454289467_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289454289467_))))
             (_g289452289526_
              (lambda (_g289454289475_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289454289475_))
                    (let ((_e289459289478_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289454289475_))))
                      (let ((_hd289458289482_
                             (let ()
                               (declare (not safe))
                               (##car _e289459289478_)))
                            (_tl289457289485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289459289478_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289457289485_))
                            (let ((_e289462289488_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289457289485_))))
                              (let ((_hd289461289492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289462289488_)))
                                    (_tl289460289495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289462289488_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289460289495_))
                                    (let ((_e289465289498_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289460289495_))))
                                      (let ((_hd289464289502_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289465289498_)))
                                            (_tl289463289505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289465289498_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289463289505_))
                                            ((lambda (_L289508_ _L289510_)
                                               (let ((__tmp295188
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp295175
                                                      (let ((__tmp295184
                                                             (let ((__tmp295187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295185
                            (let ((__tmp295186
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp295186 '()))))
                       (declare (not safe))
                       (cons __tmp295187 __tmp295185)))
                    (__tmp295176
                     (let ((__tmp295181
                            (let ((__tmp295183
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295182
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289510_ '()))))
                              (declare (not safe))
                              (cons __tmp295183 __tmp295182)))
                           (__tmp295177
                            (let ((__tmp295178
                                   (let ((__tmp295180
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295179
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289508_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295180 __tmp295179))))
                              (declare (not safe))
                              (cons __tmp295178 '()))))
                       (declare (not safe))
                       (cons __tmp295181 __tmp295177))))
                (declare (not safe))
                (cons __tmp295184 __tmp295176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295188
                                                       __tmp295175)))
                                             _hd289464289502_
                                             _hd289461289492_)
                                            (_g289453289471_
                                             _g289454289475_))))
                                    (_g289453289471_ _g289454289475_))))
                            (_g289453289471_ _g289454289475_))))
                    (_g289453289471_ _g289454289475_)))))
        (_g289452289526_ _$stx289449_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx289530_)
      (let* ((___stx294784294785_ _$stx289530_)
             (_g289537289608_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294784294785_)))))
        (let ((___kont294787294788_
               (lambda (_L289899_ _L289901_)
                 (let ((__tmp295194
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295189
                        (let ((__tmp295190
                               (let ((__tmp295191
                                      (let ((__tmp295193
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295192
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289899_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295193 __tmp295192))))
                                 (declare (not safe))
                                 (cons __tmp295191 '()))))
                          (declare (not safe))
                          (cons _L289901_ __tmp295190))))
                   (declare (not safe))
                   (cons __tmp295194 __tmp295189))))
              (___kont294789294790_
               (lambda (_L289818_ _L289820_)
                 (let ((__tmp295203
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295195
                        (let ((__tmp295196
                               (let ((__tmp295197
                                      (let ((__tmp295202
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295198
                                             (let ((__tmp295199
                                                    (lambda (_g289839289842_
                                                             _g289840289845_)
                                                      (let ((__tmp295200
                                                             (let ((__tmp295201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g289839289842_ __tmp295201))))
                (declare (not safe))
                (cons __tmp295200 _g289840289845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295199
                                                       '()
                                                       _L289818_))))
                                        (declare (not safe))
                                        (cons __tmp295202 __tmp295198))))
                                 (declare (not safe))
                                 (cons __tmp295197 '()))))
                          (declare (not safe))
                          (cons _L289820_ __tmp295196))))
                   (declare (not safe))
                   (cons __tmp295203 __tmp295195))))
              (___kont294793294794_
               (lambda (_L289730_ _L289732_)
                 (let ((__tmp295210
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295204
                        (let ((__tmp295205
                               (let ((__tmp295206
                                      (let ((__tmp295209
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295207
                                             (let ((__tmp295208
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L289730_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295208))))
                                        (declare (not safe))
                                        (cons __tmp295209 __tmp295207))))
                                 (declare (not safe))
                                 (cons __tmp295206 '()))))
                          (declare (not safe))
                          (cons _L289732_ __tmp295205))))
                   (declare (not safe))
                   (cons __tmp295210 __tmp295204))))
              (___kont294795294796_
               (lambda (_L289665_ _L289667_)
                 (let ((__tmp295220
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295211
                        (let ((__tmp295212
                               (let ((__tmp295213
                                      (let ((__tmp295219
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295214
                                             (let ((__tmp295215
                                                    (let ((__tmp295216
                                                           (lambda (_g289684289687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g289685289690_)
                     (let ((__tmp295217
                            (let ((__tmp295218
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g289684289687_ __tmp295218))))
                       (declare (not safe))
                       (cons __tmp295217 _g289685289690_)))))
              (declare (not safe))
              (foldr1 __tmp295216 '() _L289665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295215))))
                                        (declare (not safe))
                                        (cons __tmp295219 __tmp295214))))
                                 (declare (not safe))
                                 (cons __tmp295213 '()))))
                          (declare (not safe))
                          (cons _L289667_ __tmp295212))))
                   (declare (not safe))
                   (cons __tmp295220 __tmp295211)))))
          (let* ((___match294903294904_
                  (lambda (_e289590289615_
                           _hd289589289619_
                           _tl289588289622_
                           _e289593289625_
                           _hd289592289629_
                           _tl289591289632_
                           ___splice294797294798_
                           _target289594289635_
                           _tl289596289638_)
                    (letrec ((_loop289597289641_
                              (lambda (_hd289595289645_ _arity289601289648_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289595289645_))
                                    (let ((_e289598289651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289595289645_))))
                                      (let ((_lp-tl289600289658_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289598289651_)))
                                            (_lp-hd289599289655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289598289651_))))
                                        (_loop289597289641_
                                         _lp-tl289600289658_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289599289655_
                                                 _arity289601289648_)))))
                                    (let ((_arity289602289661_
                                           (reverse _arity289601289648_)))
                                      (___kont294795294796_
                                       _arity289602289661_
                                       _hd289592289629_))))))
                      (_loop289597289641_ _target289594289635_ '()))))
                 (___match294863294864_
                  (lambda (_e289558289754_
                           _hd289557289758_
                           _tl289556289761_
                           _e289561289764_
                           _hd289560289768_
                           _tl289559289771_
                           _e289564289774_
                           _hd289563289778_
                           _tl289562289781_
                           _e289565289784_
                           ___splice294791294792_
                           _target289566289788_
                           _tl289568289791_)
                    (letrec ((_loop289569289794_
                              (lambda (_hd289567289798_ _arity289573289801_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289567289798_))
                                    (let ((_e289570289804_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289567289798_))))
                                      (let ((_lp-tl289572289811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289570289804_)))
                                            (_lp-hd289571289808_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289570289804_))))
                                        (_loop289569289794_
                                         _lp-tl289572289811_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289571289808_
                                                 _arity289573289801_)))))
                                    (let ((_arity289574289814_
                                           (reverse _arity289573289801_)))
                                      (___kont294789294790_
                                       _arity289574289814_
                                       _hd289560289768_))))))
                      (_loop289569289794_ _target289566289788_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294784294785_))
                (let ((_e289543289855_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294784294785_))))
                  (let ((_tl289541289862_
                         (let () (declare (not safe)) (##cdr _e289543289855_)))
                        (_hd289542289859_
                         (let ()
                           (declare (not safe))
                           (##car _e289543289855_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289541289862_))
                        (let ((_e289546289865_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289541289862_))))
                          (let ((_tl289544289872_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289546289865_)))
                                (_hd289545289869_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289546289865_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289544289872_))
                                (let ((_e289549289875_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289544289872_))))
                                  (let ((_tl289547289882_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289549289875_)))
                                        (_hd289548289879_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289549289875_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd289548289879_))
                                        (let ((_e289550289885_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd289548289879_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e289550289885_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289547289882_))
                                                  (let ((_e289553289889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl289547289882_))))
                                                    (let ((_tl289551289896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289553289889_)))
                                                          (_hd289552289893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289553289889_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl289551289896_))
                                                          (___kont294787294788_
                                                           _hd289552289893_
                                                           _hd289545289869_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl289547289882_))
                      (let ((___splice294791294792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289547289882_ '0))))
                        (let ((_tl289568289791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294791294792_ '1)))
                              (_target289566289788_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294791294792_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289568289791_))
                              (___match294863294864_
                               _e289543289855_
                               _hd289542289859_
                               _tl289541289862_
                               _e289546289865_
                               _hd289545289869_
                               _tl289544289872_
                               _e289549289875_
                               _hd289548289879_
                               _tl289547289882_
                               _e289550289885_
                               ___splice294791294792_
                               _target289566289788_
                               _tl289568289791_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl289544289872_))
                                  (let ((___splice294797294798_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl289544289872_
                                            '0))))
                                    (let ((_tl289596289638_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294797294798_
                                              '1)))
                                          (_target289594289635_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294797294798_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl289596289638_))
                                          (___match294903294904_
                                           _e289543289855_
                                           _hd289542289859_
                                           _tl289541289862_
                                           _e289546289865_
                                           _hd289545289869_
                                           _tl289544289872_
                                           ___splice294797294798_
                                           _target289594289635_
                                           _tl289596289638_)
                                          (let ()
                                            (declare (not safe))
                                            (_g289537289608_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g289537289608_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl289544289872_))
                          (let ((___splice294797294798_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl289544289872_
                                    '0))))
                            (let ((_tl289596289638_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice294797294798_ '1)))
                                  (_target289594289635_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice294797294798_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl289596289638_))
                                  (___match294903294904_
                                   _e289543289855_
                                   _hd289542289859_
                                   _tl289541289862_
                                   _e289546289865_
                                   _hd289545289869_
                                   _tl289544289872_
                                   ___splice294797294798_
                                   _target289594289635_
                                   _tl289596289638_)
                                  (let ()
                                    (declare (not safe))
                                    (_g289537289608_)))))
                          (let () (declare (not safe)) (_g289537289608_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289547289882_))
                                                      (let ((___splice294791294792_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289547289882_ '0))))
                (let ((_tl289568289791_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294791294792_ '1)))
                      (_target289566289788_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294791294792_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289568289791_))
                      (___match294863294864_
                       _e289543289855_
                       _hd289542289859_
                       _tl289541289862_
                       _e289546289865_
                       _hd289545289869_
                       _tl289544289872_
                       _e289549289875_
                       _hd289548289879_
                       _tl289547289882_
                       _e289550289885_
                       ___splice294791294792_
                       _target289566289788_
                       _tl289568289791_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl289547289882_))
                          (___kont294793294794_
                           _hd289548289879_
                           _hd289545289869_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl289544289872_))
                              (let ((___splice294797294798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl289544289872_
                                        '0))))
                                (let ((_tl289596289638_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294797294798_
                                          '1)))
                                      (_target289594289635_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294797294798_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl289596289638_))
                                      (___match294903294904_
                                       _e289543289855_
                                       _hd289542289859_
                                       _tl289541289862_
                                       _e289546289865_
                                       _hd289545289869_
                                       _tl289544289872_
                                       ___splice294797294798_
                                       _target289594289635_
                                       _tl289596289638_)
                                      (let ()
                                        (declare (not safe))
                                        (_g289537289608_)))))
                              (let ()
                                (declare (not safe))
                                (_g289537289608_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl289547289882_))
                  (___kont294793294794_ _hd289548289879_ _hd289545289869_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl289544289872_))
                      (let ((___splice294797294798_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289544289872_ '0))))
                        (let ((_tl289596289638_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294797294798_ '1)))
                              (_target289594289635_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294797294798_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289596289638_))
                              (___match294903294904_
                               _e289543289855_
                               _hd289542289859_
                               _tl289541289862_
                               _e289546289865_
                               _hd289545289869_
                               _tl289544289872_
                               ___splice294797294798_
                               _target289594289635_
                               _tl289596289638_)
                              (let ()
                                (declare (not safe))
                                (_g289537289608_)))))
                      (let () (declare (not safe)) (_g289537289608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289547289882_))
                                                  (___kont294793294794_
                                                   _hd289548289879_
                                                   _hd289545289869_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289544289872_))
                                                      (let ((___splice294797294798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289544289872_ '0))))
                (let ((_tl289596289638_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294797294798_ '1)))
                      (_target289594289635_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294797294798_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289596289638_))
                      (___match294903294904_
                       _e289543289855_
                       _hd289542289859_
                       _tl289541289862_
                       _e289546289865_
                       _hd289545289869_
                       _tl289544289872_
                       ___splice294797294798_
                       _target289594289635_
                       _tl289596289638_)
                      (let () (declare (not safe)) (_g289537289608_)))))
              (let () (declare (not safe)) (_g289537289608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289547289882_))
                                            (___kont294793294794_
                                             _hd289548289879_
                                             _hd289545289869_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl289544289872_))
                                                (let ((___splice294797294798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl289544289872_
                                                          '0))))
                                                  (let ((_tl289596289638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294797294798_
                                                            '1)))
                                                        (_target289594289635_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294797294798_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289596289638_))
                                                        (___match294903294904_
                                                         _e289543289855_
                                                         _hd289542289859_
                                                         _tl289541289862_
                                                         _e289546289865_
                                                         _hd289545289869_
                                                         _tl289544289872_
                                                         ___splice294797294798_
                                                         _target289594289635_
                                                         _tl289596289638_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289537289608_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289537289608_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289544289872_))
                                    (let ((___splice294797294798_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289544289872_
                                              '0))))
                                      (let ((_tl289596289638_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294797294798_
                                                '1)))
                                            (_target289594289635_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294797294798_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289596289638_))
                                            (___match294903294904_
                                             _e289543289855_
                                             _hd289542289859_
                                             _tl289541289862_
                                             _e289546289865_
                                             _hd289545289869_
                                             _tl289544289872_
                                             ___splice294797294798_
                                             _target289594289635_
                                             _tl289596289638_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289537289608_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289537289608_))))))
                        (let () (declare (not safe)) (_g289537289608_)))))
                (let () (declare (not safe)) (_g289537289608_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx289925_)
      (let* ((___stx294906294907_ _$stx289925_)
             (_g289930289965_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294906294907_)))))
        (let ((___kont294909294910_
               (lambda (_L290087_ _L290089_)
                 (let ((__tmp295226
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295221
                        (let ((__tmp295222
                               (let ((__tmp295223
                                      (let ((__tmp295225
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295224
                                             (let ()
                                               (declare (not safe))
                                               (cons _L290087_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295225 __tmp295224))))
                                 (declare (not safe))
                                 (cons __tmp295223 '()))))
                          (declare (not safe))
                          (cons _L290089_ __tmp295222))))
                   (declare (not safe))
                   (cons __tmp295226 __tmp295221))))
              (___kont294911294912_
               (lambda (_L290022_ _L290024_)
                 (let ((__tmp295235
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295227
                        (let ((__tmp295228
                               (let ((__tmp295229
                                      (let ((__tmp295234
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295230
                                             (let ((__tmp295231
                                                    (lambda (_g290041290044_
                                                             _g290042290047_)
                                                      (let ((__tmp295232
                                                             (let ((__tmp295233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g290041290044_ __tmp295233))))
                (declare (not safe))
                (cons __tmp295232 _g290042290047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295231
                                                       '()
                                                       _L290022_))))
                                        (declare (not safe))
                                        (cons __tmp295234 __tmp295230))))
                                 (declare (not safe))
                                 (cons __tmp295229 '()))))
                          (declare (not safe))
                          (cons _L290024_ __tmp295228))))
                   (declare (not safe))
                   (cons __tmp295235 __tmp295227)))))
          (let ((___match294955294956_
                 (lambda (_e289947289972_
                          _hd289946289976_
                          _tl289945289979_
                          _e289950289982_
                          _hd289949289986_
                          _tl289948289989_
                          ___splice294913294914_
                          _target289951289992_
                          _tl289953289995_)
                   (letrec ((_loop289954289998_
                             (lambda (_hd289952290002_ _arity289958290005_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd289952290002_))
                                   (let ((_e289955290008_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd289952290002_))))
                                     (let ((_lp-tl289957290015_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e289955290008_)))
                                           (_lp-hd289956290012_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e289955290008_))))
                                       (_loop289954289998_
                                        _lp-tl289957290015_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd289956290012_
                                                _arity289958290005_)))))
                                   (let ((_arity289959290018_
                                          (reverse _arity289958290005_)))
                                     (___kont294911294912_
                                      _arity289959290018_
                                      _hd289949289986_))))))
                     (_loop289954289998_ _target289951289992_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294906294907_))
                (let ((_e289936290057_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294906294907_))))
                  (let ((_tl289934290064_
                         (let () (declare (not safe)) (##cdr _e289936290057_)))
                        (_hd289935290061_
                         (let ()
                           (declare (not safe))
                           (##car _e289936290057_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289934290064_))
                        (let ((_e289939290067_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289934290064_))))
                          (let ((_tl289937290074_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289939290067_)))
                                (_hd289938290071_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289939290067_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289937290074_))
                                (let ((_e289942290077_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289937290074_))))
                                  (let ((_tl289940290084_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289942290077_)))
                                        (_hd289941290081_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289942290077_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl289940290084_))
                                        (___kont294909294910_
                                         _hd289941290081_
                                         _hd289938290071_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl289937290074_))
                                            (let ((___splice294913294914_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl289937290074_
                                                      '0))))
                                              (let ((_tl289953289995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294913294914_
                                                        '1)))
                                                    (_target289951289992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294913294914_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl289953289995_))
                                                    (___match294955294956_
                                                     _e289936290057_
                                                     _hd289935290061_
                                                     _tl289934290064_
                                                     _e289939290067_
                                                     _hd289938290071_
                                                     _tl289937290074_
                                                     ___splice294913294914_
                                                     _target289951289992_
                                                     _tl289953289995_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289930289965_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289930289965_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289937290074_))
                                    (let ((___splice294913294914_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289937290074_
                                              '0))))
                                      (let ((_tl289953289995_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294913294914_
                                                '1)))
                                            (_target289951289992_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294913294914_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289953289995_))
                                            (___match294955294956_
                                             _e289936290057_
                                             _hd289935290061_
                                             _tl289934290064_
                                             _e289939290067_
                                             _hd289938290071_
                                             _tl289937290074_
                                             ___splice294913294914_
                                             _target289951289992_
                                             _tl289953289995_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289930289965_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289930289965_))))))
                        (let () (declare (not safe)) (_g289930289965_)))))
                (let () (declare (not safe)) (_g289930289965_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx290109_)
      (let* ((_g290113290148_
              (lambda (_g290114290144_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290114290144_))))
             (_g290112290276_
              (lambda (_g290114290152_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290114290152_))
                    (let ((_e290119290155_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290114290152_))))
                      (let ((_hd290118290159_
                             (let ()
                               (declare (not safe))
                               (##car _e290119290155_)))
                            (_tl290117290162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290119290155_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290117290162_))
                            (let ((_g295236_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290117290162_
                                      '0))))
                              (begin
                                (let ((_g295237_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295236_)
                                             (##vector-length _g295236_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295237_ 2)))
                                      (error "Context expects 2 values"
                                             _g295237_)))
                                (let ((_target290120290165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295236_ 0)))
                                      (_tl290122290168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295236_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290122290168_))
                                      (letrec ((_loop290123290171_
                                                (lambda (_hd290121290175_
                                                         _arity290127290178_
                                                         _prim290128290180_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290121290175_))
                                                      (let ((_e290124290183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290121290175_))))
                (let ((_lp-hd290125290187_
                       (let () (declare (not safe)) (##car _e290124290183_)))
                      (_lp-tl290126290190_
                       (let () (declare (not safe)) (##cdr _e290124290183_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290125290187_))
                      (let ((_e290133290193_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290125290187_))))
                        (let ((_hd290132290197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290133290193_)))
                              (_tl290131290200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290133290193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290131290200_))
                              (let ((_g295246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290131290200_
                                        '0))))
                                (begin
                                  (let ((_g295247_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295246_)
                                               (##vector-length _g295246_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295247_ 2)))
                                        (error "Context expects 2 values"
                                               _g295247_)))
                                  (let ((_target290134290203_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295246_ 0)))
                                        (_tl290136290206_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295246_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290136290206_))
                                        (letrec ((_loop290137290209_
                                                  (lambda (_hd290135290213_
                                                           _arity290141290216_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290135290213_))
                                                        (let ((_e290138290219_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290135290213_))))
                  (let ((_lp-hd290139290223_
                         (let () (declare (not safe)) (##car _e290138290219_)))
                        (_lp-tl290140290226_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290138290219_))))
                    (_loop290137290209_
                     _lp-tl290140290226_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290139290223_ _arity290141290216_)))))
                (let ((_arity290142290229_ (reverse _arity290141290216_)))
                  (_loop290123290171_
                   _lp-tl290126290190_
                   (let ()
                     (declare (not safe))
                     (cons _arity290142290229_ _arity290127290178_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290132290197_ _prim290128290180_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290137290209_
                                           _target290134290203_
                                           '()))
                                        (_g290113290148_ _g290114290152_)))))
                              (_g290113290148_ _g290114290152_))))
                      (_g290113290148_ _g290114290152_))))
              (let ((_arity290129290233_ (reverse _arity290127290178_))
                    (_prim290130290236_ (reverse _prim290128290180_)))
                ((lambda (_L290239_ _L290241_)
                   (let ((__tmp295245
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295238
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290239_
                               _L290241_))
                            (let ((__tmp295239
                                   (lambda (_g290256290262_
                                            _g290257290265_
                                            _g290258290267_)
                                     (let ((__tmp295240
                                            (let ((__tmp295244
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp295241
                                                   (let ((__tmp295242
                                                          (let ((__tmp295243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290259290270_ _g290260290273_)
                           (let ()
                             (declare (not safe))
                             (cons _g290259290270_ _g290260290273_)))))
                    (declare (not safe))
                    (foldr1 __tmp295243 '() _g290256290262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290257290265_
                                                           __tmp295242))))
                                              (declare (not safe))
                                              (cons __tmp295244 __tmp295241))))
                                       (declare (not safe))
                                       (cons __tmp295240 _g290258290267_)))))
                              (declare (not safe))
                              (foldr2 __tmp295239 '() _L290239_ _L290241_)))))
                     (declare (not safe))
                     (cons __tmp295245 __tmp295238)))
                 _arity290129290233_
                 _prim290130290236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290123290171_
                                         _target290120290165_
                                         '()
                                         '()))
                                      (_g290113290148_ _g290114290152_)))))
                            (_g290113290148_ _g290114290152_))))
                    (_g290113290148_ _g290114290152_)))))
        (_g290112290276_ _$stx290109_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx290282_)
      (let* ((_g290286290321_
              (lambda (_g290287290317_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290287290317_))))
             (_g290285290449_
              (lambda (_g290287290325_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290287290325_))
                    (let ((_e290292290328_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290287290325_))))
                      (let ((_hd290291290332_
                             (let ()
                               (declare (not safe))
                               (##car _e290292290328_)))
                            (_tl290290290335_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290292290328_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290290290335_))
                            (let ((_g295248_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290290290335_
                                      '0))))
                              (begin
                                (let ((_g295249_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295248_)
                                             (##vector-length _g295248_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295249_ 2)))
                                      (error "Context expects 2 values"
                                             _g295249_)))
                                (let ((_target290293290338_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295248_ 0)))
                                      (_tl290295290341_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295248_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290295290341_))
                                      (letrec ((_loop290296290344_
                                                (lambda (_hd290294290348_
                                                         _arity290300290351_
                                                         _prim290301290353_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290294290348_))
                                                      (let ((_e290297290356_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290294290348_))))
                (let ((_lp-hd290298290360_
                       (let () (declare (not safe)) (##car _e290297290356_)))
                      (_lp-tl290299290363_
                       (let () (declare (not safe)) (##cdr _e290297290356_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290298290360_))
                      (let ((_e290306290366_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290298290360_))))
                        (let ((_hd290305290370_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290306290366_)))
                              (_tl290304290373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290306290366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290304290373_))
                              (let ((_g295258_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290304290373_
                                        '0))))
                                (begin
                                  (let ((_g295259_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295258_)
                                               (##vector-length _g295258_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295259_ 2)))
                                        (error "Context expects 2 values"
                                               _g295259_)))
                                  (let ((_target290307290376_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295258_ 0)))
                                        (_tl290309290379_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295258_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290309290379_))
                                        (letrec ((_loop290310290382_
                                                  (lambda (_hd290308290386_
                                                           _arity290314290389_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290308290386_))
                                                        (let ((_e290311290392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290308290386_))))
                  (let ((_lp-hd290312290396_
                         (let () (declare (not safe)) (##car _e290311290392_)))
                        (_lp-tl290313290399_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290311290392_))))
                    (_loop290310290382_
                     _lp-tl290313290399_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290312290396_ _arity290314290389_)))))
                (let ((_arity290315290402_ (reverse _arity290314290389_)))
                  (_loop290296290344_
                   _lp-tl290299290363_
                   (let ()
                     (declare (not safe))
                     (cons _arity290315290402_ _arity290300290351_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290305290370_ _prim290301290353_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290310290382_
                                           _target290307290376_
                                           '()))
                                        (_g290286290321_ _g290287290325_)))))
                              (_g290286290321_ _g290287290325_))))
                      (_g290286290321_ _g290287290325_))))
              (let ((_arity290302290406_ (reverse _arity290300290351_))
                    (_prim290303290409_ (reverse _prim290301290353_)))
                ((lambda (_L290412_ _L290414_)
                   (let ((__tmp295257
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295250
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290412_
                               _L290414_))
                            (let ((__tmp295251
                                   (lambda (_g290429290435_
                                            _g290430290438_
                                            _g290431290440_)
                                     (let ((__tmp295252
                                            (let ((__tmp295256
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp295253
                                                   (let ((__tmp295254
                                                          (let ((__tmp295255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290432290443_ _g290433290446_)
                           (let ()
                             (declare (not safe))
                             (cons _g290432290443_ _g290433290446_)))))
                    (declare (not safe))
                    (foldr1 __tmp295255 '() _g290429290435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290430290438_
                                                           __tmp295254))))
                                              (declare (not safe))
                                              (cons __tmp295256 __tmp295253))))
                                       (declare (not safe))
                                       (cons __tmp295252 _g290431290440_)))))
                              (declare (not safe))
                              (foldr2 __tmp295251 '() _L290412_ _L290414_)))))
                     (declare (not safe))
                     (cons __tmp295257 __tmp295250)))
                 _arity290302290406_
                 _prim290303290409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290296290344_
                                         _target290293290338_
                                         '()
                                         '()))
                                      (_g290286290321_ _g290287290325_)))))
                            (_g290286290321_ _g290287290325_))))
                    (_g290286290321_ _g290287290325_)))))
        (_g290285290449_ _$stx290282_)))))
