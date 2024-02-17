(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx287353_)
      (let* ((_g287357287375_
              (lambda (_g287358287371_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287358287371_))))
             (_g287356287430_
              (lambda (_g287358287379_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287358287379_))
                    (let ((_e287363287382_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287358287379_))))
                      (let ((_hd287362287386_
                             (let ()
                               (declare (not safe))
                               (##car _e287363287382_)))
                            (_tl287361287389_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287363287382_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287361287389_))
                            (let ((_e287366287392_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287361287389_))))
                              (let ((_hd287365287396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287366287392_)))
                                    (_tl287364287399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287366287392_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl287364287399_))
                                    (let ((_e287369287402_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl287364287399_))))
                                      (let ((_hd287368287406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e287369287402_)))
                                            (_tl287367287409_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e287369287402_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl287367287409_))
                                            ((lambda (_L287412_ _L287414_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L287414_))
                                                   (let ((__tmp294961
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp294956
                                                          (let ((__tmp294958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp294960
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp294959
                                (let ()
                                  (declare (not safe))
                                  (cons _L287414_ '()))))
                           (declare (not safe))
                           (cons __tmp294960 __tmp294959)))
                        (__tmp294957
                         (let () (declare (not safe)) (cons _L287412_ '()))))
                    (declare (not safe))
                    (cons __tmp294958 __tmp294957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp294961
                                                           __tmp294956))
                                                   (_g287357287375_
                                                    _g287358287379_)))
                                             _hd287368287406_
                                             _hd287365287396_)
                                            (_g287357287375_
                                             _g287358287379_))))
                                    (_g287357287375_ _g287358287379_))))
                            (_g287357287375_ _g287358287379_))))
                    (_g287357287375_ _g287358287379_)))))
        (_g287356287430_ _$stx287353_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx287434_)
      (let* ((_g287438287467_
              (lambda (_g287439287463_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287439287463_))))
             (_g287437287567_
              (lambda (_g287439287471_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287439287471_))
                    (let ((_e287444287474_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287439287471_))))
                      (let ((_hd287443287478_
                             (let ()
                               (declare (not safe))
                               (##car _e287444287474_)))
                            (_tl287442287481_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287444287474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287442287481_))
                            (let ((_g294962_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287442287481_
                                      '0))))
                              (begin
                                (let ((_g294963_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294962_)
                                             (##vector-length _g294962_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294963_ 2)))
                                      (error "Context expects 2 values"
                                             _g294963_)))
                                (let ((_target287445287484_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294962_ 0)))
                                      (_tl287447287487_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294962_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287447287487_))
                                      (letrec ((_loop287448287490_
                                                (lambda (_hd287446287494_
                                                         _type287452287497_
                                                         _symbol287453287499_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287446287494_))
                                                      (let ((_e287449287502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287446287494_))))
                (let ((_lp-hd287450287506_
                       (let () (declare (not safe)) (##car _e287449287502_)))
                      (_lp-tl287451287509_
                       (let () (declare (not safe)) (##cdr _e287449287502_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287450287506_))
                      (let ((_e287458287512_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287450287506_))))
                        (let ((_hd287457287516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287458287512_)))
                              (_tl287456287519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287458287512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287456287519_))
                              (let ((_e287461287522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287456287519_))))
                                (let ((_hd287460287526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287461287522_)))
                                      (_tl287459287529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287461287522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287459287529_))
                                      (_loop287448287490_
                                       _lp-tl287451287509_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287460287526_
                                               _type287452287497_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287457287516_
                                               _symbol287453287499_)))
                                      (_g287438287467_ _g287439287471_))))
                              (_g287438287467_ _g287439287471_))))
                      (_g287438287467_ _g287439287471_))))
              (let ((_type287454287532_ (reverse _type287452287497_))
                    (_symbol287455287535_ (reverse _symbol287453287499_)))
                ((lambda (_L287538_ _L287540_)
                   (let ((__tmp294970
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294964
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287538_
                               _L287540_))
                            (let ((__tmp294965
                                   (lambda (_g287555287559_
                                            _g287556287562_
                                            _g287557287564_)
                                     (let ((__tmp294966
                                            (let ((__tmp294969
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp294967
                                                   (let ((__tmp294968
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g287555287559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287556287562_
                                                           __tmp294968))))
                                              (declare (not safe))
                                              (cons __tmp294969 __tmp294967))))
                                       (declare (not safe))
                                       (cons __tmp294966 _g287557287564_)))))
                              (declare (not safe))
                              (foldr2 __tmp294965 '() _L287538_ _L287540_)))))
                     (declare (not safe))
                     (cons __tmp294970 __tmp294964)))
                 _type287454287532_
                 _symbol287455287535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287448287490_
                                         _target287445287484_
                                         '()
                                         '()))
                                      (_g287438287467_ _g287439287471_)))))
                            (_g287438287467_ _g287439287471_))))
                    (_g287438287467_ _g287439287471_)))))
        (_g287437287567_ _$stx287434_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx287572_)
      (let* ((___stx294521294522_ _$stx287572_)
             (_g287577287619_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294521294522_)))))
        (let ((___kont294524294525_
               (lambda (_L287747_ _L287749_ _L287750_ _L287751_)
                 (let ((__tmp294984
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp294971
                        (let ((__tmp294981
                               (let ((__tmp294983
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294982
                                      (let ()
                                        (declare (not safe))
                                        (cons _L287751_ '()))))
                                 (declare (not safe))
                                 (cons __tmp294983 __tmp294982)))
                              (__tmp294972
                               (let ((__tmp294978
                                      (let ((__tmp294980
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294979
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287750_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294980 __tmp294979)))
                                     (__tmp294973
                                      (let ((__tmp294975
                                             (let ((__tmp294977
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294976
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L287749_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294977 __tmp294976)))
                                            (__tmp294974
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287747_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294975 __tmp294974))))
                                 (declare (not safe))
                                 (cons __tmp294978 __tmp294973))))
                          (declare (not safe))
                          (cons __tmp294981 __tmp294972))))
                   (declare (not safe))
                   (cons __tmp294984 __tmp294971))))
              (___kont294526294527_
               (lambda (_L287666_ _L287668_ _L287669_ _L287670_)
                 (let ((__tmp294985
                        (let ((__tmp294986
                               (let ((__tmp294987
                                      (let ((__tmp294988
                                             (let ((__tmp294989
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp294989 '()))))
                                        (declare (not safe))
                                        (cons _L287666_ __tmp294988))))
                                 (declare (not safe))
                                 (cons _L287668_ __tmp294987))))
                          (declare (not safe))
                          (cons _L287669_ __tmp294986))))
                   (declare (not safe))
                   (cons _L287670_ __tmp294985)))))
          (let ((___match294560294561_
                 (lambda (_e287585287697_
                          _hd287584287701_
                          _tl287583287704_
                          _e287588287707_
                          _hd287587287711_
                          _tl287586287714_
                          _e287591287717_
                          _hd287590287721_
                          _tl287589287724_
                          _e287594287727_
                          _hd287593287731_
                          _tl287592287734_
                          _e287597287737_
                          _hd287596287741_
                          _tl287595287744_)
                   (let ((_L287747_ _hd287596287741_)
                         (_L287749_ _hd287593287731_)
                         (_L287750_ _hd287590287721_)
                         (_L287751_ _hd287587287711_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L287751_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287750_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287749_)))
                         (___kont294524294525_
                          _L287747_
                          _L287749_
                          _L287750_
                          _L287751_)
                         (let () (declare (not safe)) (_g287577287619_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294521294522_))
                (let ((_e287585287697_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294521294522_))))
                  (let ((_tl287583287704_
                         (let () (declare (not safe)) (##cdr _e287585287697_)))
                        (_hd287584287701_
                         (let ()
                           (declare (not safe))
                           (##car _e287585287697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl287583287704_))
                        (let ((_e287588287707_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl287583287704_))))
                          (let ((_tl287586287714_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e287588287707_)))
                                (_hd287587287711_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e287588287707_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl287586287714_))
                                (let ((_e287591287717_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl287586287714_))))
                                  (let ((_tl287589287724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e287591287717_)))
                                        (_hd287590287721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e287591287717_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl287589287724_))
                                        (let ((_e287594287727_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl287589287724_))))
                                          (let ((_tl287592287734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e287594287727_)))
                                                (_hd287593287731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e287594287727_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl287592287734_))
                                                (let ((_e287597287737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl287592287734_))))
                                                  (let ((_tl287595287744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e287597287737_)))
                                                        (_hd287596287741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e287597287737_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl287595287744_))
                                                        (___match294560294561_
                                                         _e287585287697_
                                                         _hd287584287701_
                                                         _tl287583287704_
                                                         _e287588287707_
                                                         _hd287587287711_
                                                         _tl287586287714_
                                                         _e287591287717_
                                                         _hd287590287721_
                                                         _tl287589287724_
                                                         _e287594287727_
                                                         _hd287593287731_
                                                         _tl287592287734_
                                                         _e287597287737_
                                                         _hd287596287741_
                                                         _tl287595287744_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g287577287619_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl287592287734_))
                                                    (___kont294526294527_
                                                     _hd287593287731_
                                                     _hd287590287721_
                                                     _hd287587287711_
                                                     _hd287584287701_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g287577287619_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g287577287619_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g287577287619_)))))
                        (let () (declare (not safe)) (_g287577287619_)))))
                (let () (declare (not safe)) (_g287577287619_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx287776_)
      (let* ((_g287780287815_
              (lambda (_g287781287811_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287781287811_))))
             (_g287779287934_
              (lambda (_g287781287819_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287781287819_))
                    (let ((_e287787287822_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287781287819_))))
                      (let ((_hd287786287826_
                             (let ()
                               (declare (not safe))
                               (##car _e287787287822_)))
                            (_tl287785287829_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287787287822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287785287829_))
                            (let ((_g294990_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287785287829_
                                      '0))))
                              (begin
                                (let ((_g294991_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294990_)
                                             (##vector-length _g294990_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294991_ 2)))
                                      (error "Context expects 2 values"
                                             _g294991_)))
                                (let ((_target287788287832_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294990_ 0)))
                                      (_tl287790287835_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294990_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287790287835_))
                                      (letrec ((_loop287791287838_
                                                (lambda (_hd287789287842_
                                                         _symbol287795287845_
                                                         _method287796287847_
                                                         _type-t287797287849_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287789287842_))
                                                      (let ((_e287792287852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287789287842_))))
                (let ((_lp-hd287793287856_
                       (let () (declare (not safe)) (##car _e287792287852_)))
                      (_lp-tl287794287859_
                       (let () (declare (not safe)) (##cdr _e287792287852_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287793287856_))
                      (let ((_e287803287862_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287793287856_))))
                        (let ((_hd287802287866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287803287862_)))
                              (_tl287801287869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287803287862_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287801287869_))
                              (let ((_e287806287872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287801287869_))))
                                (let ((_hd287805287876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287806287872_)))
                                      (_tl287804287879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287806287872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287804287879_))
                                      (let ((_e287809287882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287804287879_))))
                                        (let ((_hd287808287886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287809287882_)))
                                              (_tl287807287889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287809287882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287807287889_))
                                              (_loop287791287838_
                                               _lp-tl287794287859_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287808287886_
                                                       _symbol287795287845_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287805287876_
                                                       _method287796287847_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287802287866_
                                                       _type-t287797287849_)))
                                              (_g287780287815_
                                               _g287781287819_))))
                                      (_g287780287815_ _g287781287819_))))
                              (_g287780287815_ _g287781287819_))))
                      (_g287780287815_ _g287781287819_))))
              (let ((_symbol287798287892_ (reverse _symbol287795287845_))
                    (_method287799287895_ (reverse _method287796287847_))
                    (_type-t287800287897_ (reverse _type-t287797287849_)))
                ((lambda (_L287900_ _L287902_ _L287903_)
                   (let ((__tmp294999
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294992
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287900_
                               _L287902_
                               _L287903_))
                            (let ((__tmp294993
                                   (lambda (_g287919287924_
                                            _g287920287927_
                                            _g287921287929_
                                            _g287922287931_)
                                     (let ((__tmp294994
                                            (let ((__tmp294998
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp294995
                                                   (let ((__tmp294996
                                                          (let ((__tmp294997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g287919287924_ '()))))
                    (declare (not safe))
                    (cons _g287920287927_ __tmp294997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287921287929_
                                                           __tmp294996))))
                                              (declare (not safe))
                                              (cons __tmp294998 __tmp294995))))
                                       (declare (not safe))
                                       (cons __tmp294994 _g287922287931_)))))
                              (declare (not safe))
                              (foldr* __tmp294993
                                      '()
                                      _L287900_
                                      _L287902_
                                      _L287903_)))))
                     (declare (not safe))
                     (cons __tmp294999 __tmp294992)))
                 _symbol287798287892_
                 _method287799287895_
                 _type-t287800287897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287791287838_
                                         _target287788287832_
                                         '()
                                         '()
                                         '()))
                                      (_g287780287815_ _g287781287819_)))))
                            (_g287780287815_ _g287781287819_))))
                    (_g287780287815_ _g287781287819_)))))
        (_g287779287934_ _$stx287776_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx287939_)
      (let* ((_g287943287976_
              (lambda (_g287944287972_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287944287972_))))
             (_g287942288090_
              (lambda (_g287944287980_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287944287980_))
                    (let ((_e287950287983_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287944287980_))))
                      (let ((_hd287949287987_
                             (let ()
                               (declare (not safe))
                               (##car _e287950287983_)))
                            (_tl287948287990_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287950287983_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287948287990_))
                            (let ((_e287953287993_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287948287990_))))
                              (let ((_hd287952287997_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287953287993_)))
                                    (_tl287951288000_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287953287993_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl287951288000_))
                                    (let ((_g295000_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl287951288000_
                                              '0))))
                                      (begin
                                        (let ((_g295001_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g295000_)
                                                     (##vector-length
                                                      _g295000_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g295001_ 2)))
                                              (error "Context expects 2 values"
                                                     _g295001_)))
                                        (let ((_target287954288003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295000_ 0)))
                                              (_tl287956288006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g295000_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287956288006_))
                                              (letrec ((_loop287957288009_
                                                        (lambda (_hd287955288013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol287961288016_
                         _method287962288018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd287955288013_))
                      (let ((_e287958288021_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd287955288013_))))
                        (let ((_lp-hd287959288025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287958288021_)))
                              (_lp-tl287960288028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287958288021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd287959288025_))
                              (let ((_e287967288031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd287959288025_))))
                                (let ((_hd287966288035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287967288031_)))
                                      (_tl287965288038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287967288031_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287965288038_))
                                      (let ((_e287970288041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287965288038_))))
                                        (let ((_hd287969288045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287970288041_)))
                                              (_tl287968288048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287970288041_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287968288048_))
                                              (_loop287957288009_
                                               _lp-tl287960288028_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287969288045_
                                                       _symbol287961288016_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287966288035_
                                                       _method287962288018_)))
                                              (_g287943287976_
                                               _g287944287980_))))
                                      (_g287943287976_ _g287944287980_))))
                              (_g287943287976_ _g287944287980_))))
                      (let ((_symbol287963288051_
                             (reverse _symbol287961288016_))
                            (_method287964288054_
                             (reverse _method287962288018_)))
                        ((lambda (_L288057_ _L288059_ _L288060_)
                           (let ((__tmp295009
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp295002
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L288057_
                                       _L288059_))
                                    (let ((__tmp295003
                                           (lambda (_g288078288082_
                                                    _g288079288085_
                                                    _g288080288087_)
                                             (let ((__tmp295004
                                                    (let ((__tmp295008
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp295005
                                                           (let ((__tmp295006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295007
                                 (let ()
                                   (declare (not safe))
                                   (cons _g288078288082_ '()))))
                            (declare (not safe))
                            (cons _g288079288085_ __tmp295007))))
                     (declare (not safe))
                     (cons _L288060_ __tmp295006))))
              (declare (not safe))
              (cons __tmp295008 __tmp295005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295004
                                                     _g288080288087_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp295003
                                              '()
                                              _L288057_
                                              _L288059_)))))
                             (declare (not safe))
                             (cons __tmp295009 __tmp295002)))
                         _symbol287963288051_
                         _method287964288054_
                         _hd287952287997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop287957288009_
                                                 _target287954288003_
                                                 '()
                                                 '()))
                                              (_g287943287976_
                                               _g287944287980_)))))
                                    (_g287943287976_ _g287944287980_))))
                            (_g287943287976_ _g287944287980_))))
                    (_g287943287976_ _g287944287980_)))))
        (_g287942288090_ _$stx287939_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx288095_)
      (let* ((_g288099288113_
              (lambda (_g288100288109_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288100288109_))))
             (_g288098288154_
              (lambda (_g288100288117_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288100288117_))
                    (let ((_e288104288120_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288100288117_))))
                      (let ((_hd288103288124_
                             (let ()
                               (declare (not safe))
                               (##car _e288104288120_)))
                            (_tl288102288127_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288104288120_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288102288127_))
                            (let ((_e288107288130_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288102288127_))))
                              (let ((_hd288106288134_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288107288130_)))
                                    (_tl288105288137_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288107288130_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288105288137_))
                                    ((lambda (_L288140_)
                                       (let ((__tmp295014
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp295010
                                              (let ((__tmp295011
                                                     (let ((__tmp295013
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295012
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295013 __tmp295012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295011 '()))))
                                         (declare (not safe))
                                         (cons __tmp295014 __tmp295010)))
                                     _hd288106288134_)
                                    (_g288099288113_ _g288100288117_))))
                            (_g288099288113_ _g288100288117_))))
                    (_g288099288113_ _g288100288117_)))))
        (_g288098288154_ _$stx288095_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx288158_)
      (let* ((_g288162288212_
              (lambda (_g288163288208_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288163288208_))))
             (_g288161288379_
              (lambda (_g288163288216_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288163288216_))
                    (let ((_e288176288219_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288163288216_))))
                      (let ((_hd288175288223_
                             (let ()
                               (declare (not safe))
                               (##car _e288176288219_)))
                            (_tl288174288226_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288176288219_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288174288226_))
                            (let ((_e288179288229_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288174288226_))))
                              (let ((_hd288178288233_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288179288229_)))
                                    (_tl288177288236_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288179288229_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288177288236_))
                                    (let ((_e288182288239_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288177288236_))))
                                      (let ((_hd288181288243_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288182288239_)))
                                            (_tl288180288246_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288182288239_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288180288246_))
                                            (let ((_e288185288249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288180288246_))))
                                              (let ((_hd288184288253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288185288249_)))
                                                    (_tl288183288256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288185288249_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288183288256_))
                                                    (let ((_e288188288259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288183288256_))))
                                                      (let ((_hd288187288263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288188288259_)))
                    (_tl288186288266_
                     (let () (declare (not safe)) (##cdr _e288188288259_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288186288266_))
                    (let ((_e288191288269_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288186288266_))))
                      (let ((_hd288190288273_
                             (let ()
                               (declare (not safe))
                               (##car _e288191288269_)))
                            (_tl288189288276_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288191288269_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288189288276_))
                            (let ((_e288194288279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288189288276_))))
                              (let ((_hd288193288283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288194288279_)))
                                    (_tl288192288286_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288194288279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288192288286_))
                                    (let ((_e288197288289_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288192288286_))))
                                      (let ((_hd288196288293_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288197288289_)))
                                            (_tl288195288296_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288197288289_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288195288296_))
                                            (let ((_e288200288299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288195288296_))))
                                              (let ((_hd288199288303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288200288299_)))
                                                    (_tl288198288306_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288200288299_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288198288306_))
                                                    (let ((_e288203288309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288198288306_))))
                                                      (let ((_hd288202288313_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288203288309_)))
                    (_tl288201288316_
                     (let () (declare (not safe)) (##cdr _e288203288309_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288201288316_))
                    (let ((_e288206288319_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288201288316_))))
                      (let ((_hd288205288323_
                             (let ()
                               (declare (not safe))
                               (##car _e288206288319_)))
                            (_tl288204288326_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288206288319_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl288204288326_))
                            ((lambda (_L288329_
                                      _L288331_
                                      _L288332_
                                      _L288333_
                                      _L288334_
                                      _L288335_
                                      _L288336_
                                      _L288337_
                                      _L288338_
                                      _L288339_)
                               (let ((__tmp295049
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp295015
                                      (let ((__tmp295046
                                             (let ((__tmp295048
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295047
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288339_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295048 __tmp295047)))
                                            (__tmp295016
                                             (let ((__tmp295043
                                                    (let ((__tmp295045
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp295044
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L288338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp295045 __tmp295044)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp295017
                                                    (let ((__tmp295040
                                                           (let ((__tmp295042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295041
                          (let () (declare (not safe)) (cons _L288337_ '()))))
                     (declare (not safe))
                     (cons __tmp295042 __tmp295041)))
                  (__tmp295018
                   (let ((__tmp295037
                          (let ((__tmp295039
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp295038
                                 (let ()
                                   (declare (not safe))
                                   (cons _L288336_ '()))))
                            (declare (not safe))
                            (cons __tmp295039 __tmp295038)))
                         (__tmp295019
                          (let ((__tmp295034
                                 (let ((__tmp295036
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp295035
                                        (let ()
                                          (declare (not safe))
                                          (cons _L288335_ '()))))
                                   (declare (not safe))
                                   (cons __tmp295036 __tmp295035)))
                                (__tmp295020
                                 (let ((__tmp295031
                                        (let ((__tmp295033
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp295032
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L288334_ '()))))
                                          (declare (not safe))
                                          (cons __tmp295033 __tmp295032)))
                                       (__tmp295021
                                        (let ((__tmp295022
                                               (let ((__tmp295023
                                                      (let ((__tmp295028
                                                             (let ((__tmp295030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295029
                            (let ()
                              (declare (not safe))
                              (cons _L288331_ '()))))
                       (declare (not safe))
                       (cons __tmp295030 __tmp295029)))
                    (__tmp295024
                     (let ((__tmp295025
                            (let ((__tmp295027
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295026
                                   (let ()
                                     (declare (not safe))
                                     (cons _L288329_ '()))))
                              (declare (not safe))
                              (cons __tmp295027 __tmp295026))))
                       (declare (not safe))
                       (cons __tmp295025 '()))))
                (declare (not safe))
                (cons __tmp295028 __tmp295024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L288332_
                                                       __tmp295023))))
                                          (declare (not safe))
                                          (cons _L288333_ __tmp295022))))
                                   (declare (not safe))
                                   (cons __tmp295031 __tmp295021))))
                            (declare (not safe))
                            (cons __tmp295034 __tmp295020))))
                     (declare (not safe))
                     (cons __tmp295037 __tmp295019))))
              (declare (not safe))
              (cons __tmp295040 __tmp295018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295043
                                                     __tmp295017))))
                                        (declare (not safe))
                                        (cons __tmp295046 __tmp295016))))
                                 (declare (not safe))
                                 (cons __tmp295049 __tmp295015)))
                             _hd288205288323_
                             _hd288202288313_
                             _hd288199288303_
                             _hd288196288293_
                             _hd288193288283_
                             _hd288190288273_
                             _hd288187288263_
                             _hd288184288253_
                             _hd288181288243_
                             _hd288178288233_)
                            (_g288162288212_ _g288163288216_))))
                    (_g288162288212_ _g288163288216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288162288212_
                                                     _g288163288216_))))
                                            (_g288162288212_
                                             _g288163288216_))))
                                    (_g288162288212_ _g288163288216_))))
                            (_g288162288212_ _g288163288216_))))
                    (_g288162288212_ _g288163288216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g288162288212_
                                                     _g288163288216_))))
                                            (_g288162288212_
                                             _g288163288216_))))
                                    (_g288162288212_ _g288163288216_))))
                            (_g288162288212_ _g288163288216_))))
                    (_g288162288212_ _g288163288216_)))))
        (_g288161288379_ _$stx288158_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx288383_)
      (let* ((_g288387288401_
              (lambda (_g288388288397_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288388288397_))))
             (_g288386288442_
              (lambda (_g288388288405_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288388288405_))
                    (let ((_e288392288408_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288388288405_))))
                      (let ((_hd288391288412_
                             (let ()
                               (declare (not safe))
                               (##car _e288392288408_)))
                            (_tl288390288415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288392288408_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288390288415_))
                            (let ((_e288395288418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288390288415_))))
                              (let ((_hd288394288422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288395288418_)))
                                    (_tl288393288425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288395288418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288393288425_))
                                    ((lambda (_L288428_)
                                       (let ((__tmp295054
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp295050
                                              (let ((__tmp295051
                                                     (let ((__tmp295053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295052
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295053 __tmp295052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295051 '()))))
                                         (declare (not safe))
                                         (cons __tmp295054 __tmp295050)))
                                     _hd288394288422_)
                                    (_g288387288401_ _g288388288405_))))
                            (_g288387288401_ _g288388288405_))))
                    (_g288387288401_ _g288388288405_)))))
        (_g288386288442_ _$stx288383_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx288446_)
      (let* ((_g288450288464_
              (lambda (_g288451288460_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288451288460_))))
             (_g288449288505_
              (lambda (_g288451288468_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288451288468_))
                    (let ((_e288455288471_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288451288468_))))
                      (let ((_hd288454288475_
                             (let ()
                               (declare (not safe))
                               (##car _e288455288471_)))
                            (_tl288453288478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288455288471_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288453288478_))
                            (let ((_e288458288481_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288453288478_))))
                              (let ((_hd288457288485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288458288481_)))
                                    (_tl288456288488_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288458288481_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288456288488_))
                                    ((lambda (_L288491_)
                                       (let ((__tmp295059
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp295055
                                              (let ((__tmp295056
                                                     (let ((__tmp295058
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp295057
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp295058 __tmp295057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295056 '()))))
                                         (declare (not safe))
                                         (cons __tmp295059 __tmp295055)))
                                     _hd288457288485_)
                                    (_g288450288464_ _g288451288468_))))
                            (_g288450288464_ _g288451288468_))))
                    (_g288450288464_ _g288451288468_)))))
        (_g288449288505_ _$stx288446_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx288509_)
      (let* ((_g288513288535_
              (lambda (_g288514288531_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288514288531_))))
             (_g288512288604_
              (lambda (_g288514288539_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288514288539_))
                    (let ((_e288520288542_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288514288539_))))
                      (let ((_hd288519288546_
                             (let ()
                               (declare (not safe))
                               (##car _e288520288542_)))
                            (_tl288518288549_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288520288542_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288518288549_))
                            (let ((_e288523288552_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288518288549_))))
                              (let ((_hd288522288556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288523288552_)))
                                    (_tl288521288559_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288523288552_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288521288559_))
                                    (let ((_e288526288562_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288521288559_))))
                                      (let ((_hd288525288566_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288526288562_)))
                                            (_tl288524288569_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288526288562_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288524288569_))
                                            (let ((_e288529288572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288524288569_))))
                                              (let ((_hd288528288576_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288529288572_)))
                                                    (_tl288527288579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288529288572_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288527288579_))
                                                    ((lambda (_L288582_
                                                              _L288584_
                                                              _L288585_)
                                                       (let ((__tmp295069
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp295060
                      (let ((__tmp295066
                             (let ((__tmp295068
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295067
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288585_ '()))))
                               (declare (not safe))
                               (cons __tmp295068 __tmp295067)))
                            (__tmp295061
                             (let ((__tmp295063
                                    (let ((__tmp295065
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295064
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288584_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295065 __tmp295064)))
                                   (__tmp295062
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288582_ '()))))
                               (declare (not safe))
                               (cons __tmp295063 __tmp295062))))
                        (declare (not safe))
                        (cons __tmp295066 __tmp295061))))
                 (declare (not safe))
                 (cons __tmp295069 __tmp295060)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288528288576_
                                                     _hd288525288566_
                                                     _hd288522288556_)
                                                    (_g288513288535_
                                                     _g288514288539_))))
                                            (_g288513288535_
                                             _g288514288539_))))
                                    (_g288513288535_ _g288514288539_))))
                            (_g288513288535_ _g288514288539_))))
                    (_g288513288535_ _g288514288539_)))))
        (_g288512288604_ _$stx288509_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx288608_)
      (let* ((_g288612288634_
              (lambda (_g288613288630_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288613288630_))))
             (_g288611288703_
              (lambda (_g288613288638_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288613288638_))
                    (let ((_e288619288641_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288613288638_))))
                      (let ((_hd288618288645_
                             (let ()
                               (declare (not safe))
                               (##car _e288619288641_)))
                            (_tl288617288648_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288619288641_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288617288648_))
                            (let ((_e288622288651_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288617288648_))))
                              (let ((_hd288621288655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288622288651_)))
                                    (_tl288620288658_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288622288651_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288620288658_))
                                    (let ((_e288625288661_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288620288658_))))
                                      (let ((_hd288624288665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288625288661_)))
                                            (_tl288623288668_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288625288661_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288623288668_))
                                            (let ((_e288628288671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288623288668_))))
                                              (let ((_hd288627288675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288628288671_)))
                                                    (_tl288626288678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288628288671_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288626288678_))
                                                    ((lambda (_L288681_
                                                              _L288683_
                                                              _L288684_)
                                                       (let ((__tmp295079
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp295070
                      (let ((__tmp295076
                             (let ((__tmp295078
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp295077
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288684_ '()))))
                               (declare (not safe))
                               (cons __tmp295078 __tmp295077)))
                            (__tmp295071
                             (let ((__tmp295073
                                    (let ((__tmp295075
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp295074
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288683_ '()))))
                                      (declare (not safe))
                                      (cons __tmp295075 __tmp295074)))
                                   (__tmp295072
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288681_ '()))))
                               (declare (not safe))
                               (cons __tmp295073 __tmp295072))))
                        (declare (not safe))
                        (cons __tmp295076 __tmp295071))))
                 (declare (not safe))
                 (cons __tmp295079 __tmp295070)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288627288675_
                                                     _hd288624288665_
                                                     _hd288621288655_)
                                                    (_g288612288634_
                                                     _g288613288638_))))
                                            (_g288612288634_
                                             _g288613288638_))))
                                    (_g288612288634_ _g288613288638_))))
                            (_g288612288634_ _g288613288638_))))
                    (_g288612288634_ _g288613288638_)))))
        (_g288611288703_ _$stx288608_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx288707_)
      (let* ((___stx294589294590_ _$stx288707_)
             (_g288715288783_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294589294590_)))))
        (let ((___kont294592294593_
               (lambda (_L289061_ _L289063_)
                 (let ((__tmp295095
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295080
                        (let ((__tmp295091
                               (let ((__tmp295094
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295092
                                      (let ((__tmp295093
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295093 '()))))
                                 (declare (not safe))
                                 (cons __tmp295094 __tmp295092)))
                              (__tmp295081
                               (let ((__tmp295088
                                      (let ((__tmp295090
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295089
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289063_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295090 __tmp295089)))
                                     (__tmp295082
                                      (let ((__tmp295083
                                             (let ((__tmp295084
                                                    (let ((__tmp295085
                                                           (let ((__tmp295087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp295086
                          (let () (declare (not safe)) (cons _L289061_ '()))))
                     (declare (not safe))
                     (cons __tmp295087 __tmp295086))))
              (declare (not safe))
              (cons __tmp295085 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L289061_ __tmp295084))))
                                        (declare (not safe))
                                        (cons '#f __tmp295083))))
                                 (declare (not safe))
                                 (cons __tmp295088 __tmp295082))))
                          (declare (not safe))
                          (cons __tmp295091 __tmp295081))))
                   (declare (not safe))
                   (cons __tmp295095 __tmp295080))))
              (___kont294594294595_
               (lambda (_L288992_ _L288994_)
                 (let ((__tmp295096
                        (let ((__tmp295097
                               (let ((__tmp295098
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L288992_ __tmp295098))))
                          (declare (not safe))
                          (cons 'primitive: __tmp295097))))
                   (declare (not safe))
                   (cons _L288994_ __tmp295096))))
              (___kont294596294597_
               (lambda (_L288931_ _L288933_)
                 (let ((__tmp295112
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp295099
                        (let ((__tmp295108
                               (let ((__tmp295111
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295109
                                      (let ((__tmp295110
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295110 '()))))
                                 (declare (not safe))
                                 (cons __tmp295111 __tmp295109)))
                              (__tmp295100
                               (let ((__tmp295105
                                      (let ((__tmp295107
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295106
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288933_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295107 __tmp295106)))
                                     (__tmp295101
                                      (let ((__tmp295102
                                             (let ((__tmp295104
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295103
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288931_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295104
                                                     __tmp295103))))
                                        (declare (not safe))
                                        (cons __tmp295102 '()))))
                                 (declare (not safe))
                                 (cons __tmp295105 __tmp295101))))
                          (declare (not safe))
                          (cons __tmp295108 __tmp295100))))
                   (declare (not safe))
                   (cons __tmp295112 __tmp295099))))
              (___kont294598294599_
               (lambda (_L288863_ _L288865_)
                 (let ((__tmp295126
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp295113
                        (let ((__tmp295122
                               (let ((__tmp295125
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295123
                                      (let ((__tmp295124
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp295124 '()))))
                                 (declare (not safe))
                                 (cons __tmp295125 __tmp295123)))
                              (__tmp295114
                               (let ((__tmp295119
                                      (let ((__tmp295121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp295120
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288865_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295121 __tmp295120)))
                                     (__tmp295115
                                      (let ((__tmp295116
                                             (let ((__tmp295118
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp295117
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288863_ '()))))
                                               (declare (not safe))
                                               (cons __tmp295118
                                                     __tmp295117))))
                                        (declare (not safe))
                                        (cons __tmp295116 '()))))
                                 (declare (not safe))
                                 (cons __tmp295119 __tmp295115))))
                          (declare (not safe))
                          (cons __tmp295122 __tmp295114))))
                   (declare (not safe))
                   (cons __tmp295126 __tmp295113))))
              (___kont294600294601_
               (lambda (_L288810_ _L288812_)
                 (let ((__tmp295127
                        (let ((__tmp295128
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L288810_ __tmp295128))))
                   (declare (not safe))
                   (cons _L288812_ __tmp295127)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx294589294590_))
              (let ((_e288721289017_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx294589294590_))))
                (let ((_tl288719289024_
                       (let () (declare (not safe)) (##cdr _e288721289017_)))
                      (_hd288720289021_
                       (let () (declare (not safe)) (##car _e288721289017_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl288719289024_))
                      (let ((_e288724289027_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288719289024_))))
                        (let ((_tl288722289034_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288724289027_)))
                              (_hd288723289031_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288724289027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl288722289034_))
                              (let ((_e288727289037_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl288722289034_))))
                                (let ((_tl288725289044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288727289037_)))
                                      (_hd288726289041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288727289037_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd288726289041_))
                                      (let ((_e288728289047_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd288726289041_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e288728289047_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl288725289044_))
                                                (let ((_e288731289051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl288725289044_))))
                                                  (let ((_tl288729289058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e288731289051_)))
                                                        (_hd288730289055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e288731289051_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288729289058_))
                                                        (___kont294592294593_
                                                         _hd288730289055_
                                                         _hd288723289031_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd288723289031_))
                                                            (let ((_e288740288978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd288723289031_))))
                      (declare (not safe))
                      (_g288715288783_))
                    (let () (declare (not safe)) (_g288715288783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd288723289031_))
                                                    (let ((_e288740288978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd288723289031_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e288740288978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288725289044_))
                      (___kont294594294595_ _hd288726289041_ _hd288720289021_)
                      (let () (declare (not safe)) (_g288715288783_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288725289044_))
                      (___kont294598294599_ _hd288726289041_ _hd288723289031_)
                      (let () (declare (not safe)) (_g288715288783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288725289044_))
                                                        (___kont294598294599_
                                                         _hd288726289041_
                                                         _hd288723289031_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g288715288783_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd288723289031_))
                                                (let ((_e288740288978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd288723289031_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e288740288978_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl288725289044_))
                                                          (___kont294594294595_
                                                           _hd288726289041_
                                                           _hd288720289021_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl288725289044_))
                      (let ((_e288758288921_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288725289044_))))
                        (let ((_tl288756288928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288758288921_)))
                              (_hd288757288925_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288758288921_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl288756288928_))
                              (___kont294596294597_
                               _hd288757288925_
                               _hd288726289041_)
                              (let ()
                                (declare (not safe))
                                (_g288715288783_)))))
                      (let () (declare (not safe)) (_g288715288783_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl288725289044_))
                  (___kont294598294599_ _hd288726289041_ _hd288723289031_)
                  (let () (declare (not safe)) (_g288715288783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288725289044_))
                                                    (___kont294598294599_
                                                     _hd288726289041_
                                                     _hd288723289031_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288715288783_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd288723289031_))
                                          (let ((_e288740288978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd288723289031_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e288740288978_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288725289044_))
                                                    (___kont294594294595_
                                                     _hd288726289041_
                                                     _hd288720289021_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl288725289044_))
                                                        (let ((_e288758288921_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl288725289044_))))
                  (let ((_tl288756288928_
                         (let () (declare (not safe)) (##cdr _e288758288921_)))
                        (_hd288757288925_
                         (let ()
                           (declare (not safe))
                           (##car _e288758288921_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl288756288928_))
                        (___kont294596294597_
                         _hd288757288925_
                         _hd288726289041_)
                        (let () (declare (not safe)) (_g288715288783_)))))
                (let () (declare (not safe)) (_g288715288783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288725289044_))
                                                    (___kont294598294599_
                                                     _hd288726289041_
                                                     _hd288723289031_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288715288783_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288725289044_))
                                              (___kont294598294599_
                                               _hd288726289041_
                                               _hd288723289031_)
                                              (let ()
                                                (declare (not safe))
                                                (_g288715288783_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd288723289031_))
                                  (let ((_e288740288978_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd288723289031_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl288722289034_))
                                        (___kont294600294601_
                                         _hd288723289031_
                                         _hd288720289021_)
                                        (let ()
                                          (declare (not safe))
                                          (_g288715288783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl288722289034_))
                                      (___kont294600294601_
                                       _hd288723289031_
                                       _hd288720289021_)
                                      (let ()
                                        (declare (not safe))
                                        (_g288715288783_)))))))
                      (let () (declare (not safe)) (_g288715288783_)))))
              (let () (declare (not safe)) (_g288715288783_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx289085_)
      (let* ((___stx294729294730_ _$stx289085_)
             (_g289090289145_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294729294730_)))))
        (let ((___kont294732294733_
               (lambda (_L289330_ _L289332_)
                 (let ((__tmp295144
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp295129
                        (let ((__tmp295140
                               (let ((__tmp295143
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295141
                                      (let ((__tmp295142
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295142 '()))))
                                 (declare (not safe))
                                 (cons __tmp295143 __tmp295141)))
                              (__tmp295130
                               (let ((__tmp295131
                                      (let ((__tmp295139
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295132
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289330_
                                                  _L289332_))
                                               (let ((__tmp295133
                                                      (lambda (_g289349289353_
                                                               _g289350289356_
                                                               _g289351289358_)
                                                        (let ((__tmp295134
                                                               (let ((__tmp295138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295135
                              (let ((__tmp295136
                                     (let ((__tmp295137
                                            (let ()
                                              (declare (not safe))
                                              (cons _g289349289353_ '()))))
                                       (declare (not safe))
                                       (cons _g289350289356_ __tmp295137))))
                                (declare (not safe))
                                (cons 'primitive: __tmp295136))))
                         (declare (not safe))
                         (cons __tmp295138 __tmp295135))))
                  (declare (not safe))
                  (cons __tmp295134 _g289351289358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295133
                                                         '()
                                                         _L289330_
                                                         _L289332_)))))
                                        (declare (not safe))
                                        (cons __tmp295139 __tmp295132))))
                                 (declare (not safe))
                                 (cons __tmp295131 '()))))
                          (declare (not safe))
                          (cons __tmp295140 __tmp295130))))
                   (declare (not safe))
                   (cons __tmp295144 __tmp295129))))
              (___kont294736294737_
               (lambda (_L289216_ _L289218_)
                 (let ((__tmp295159
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp295145
                        (let ((__tmp295155
                               (let ((__tmp295158
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp295156
                                      (let ((__tmp295157
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp295157 '()))))
                                 (declare (not safe))
                                 (cons __tmp295158 __tmp295156)))
                              (__tmp295146
                               (let ((__tmp295147
                                      (let ((__tmp295154
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp295148
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289216_
                                                  _L289218_))
                                               (let ((__tmp295149
                                                      (lambda (_g289233289237_
                                                               _g289234289240_
                                                               _g289235289242_)
                                                        (let ((__tmp295150
                                                               (let ((__tmp295153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp295151
                              (let ((__tmp295152
                                     (let ()
                                       (declare (not safe))
                                       (cons _g289233289237_ '()))))
                                (declare (not safe))
                                (cons _g289234289240_ __tmp295152))))
                         (declare (not safe))
                         (cons __tmp295153 __tmp295151))))
                  (declare (not safe))
                  (cons __tmp295150 _g289235289242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp295149
                                                         '()
                                                         _L289216_
                                                         _L289218_)))))
                                        (declare (not safe))
                                        (cons __tmp295154 __tmp295148))))
                                 (declare (not safe))
                                 (cons __tmp295147 '()))))
                          (declare (not safe))
                          (cons __tmp295155 __tmp295146))))
                   (declare (not safe))
                   (cons __tmp295159 __tmp295145)))))
          (let* ((___match294780294781_
                  (lambda (_e289122289152_
                           _hd289121289156_
                           _tl289120289159_
                           ___splice294738294739_
                           _target289123289162_
                           _tl289125289165_)
                    (letrec ((_loop289126289168_
                              (lambda (_hd289124289172_
                                       _dispatch289130289175_
                                       _arity289131289177_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289124289172_))
                                    (let ((_e289127289180_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289124289172_))))
                                      (let ((_lp-tl289129289187_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289127289180_)))
                                            (_lp-hd289128289184_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289127289180_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289128289184_))
                                            (let ((_e289136289190_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289128289184_))))
                                              (let ((_tl289134289197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289136289190_)))
                                                    (_hd289135289194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289136289190_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289134289197_))
                                                    (let ((_e289139289200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289134289197_))))
                                                      (let ((_tl289137289207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289139289200_)))
                    (_hd289138289204_
                     (let () (declare (not safe)) (##car _e289139289200_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289137289207_))
                    (_loop289126289168_
                     _lp-tl289129289187_
                     (let ()
                       (declare (not safe))
                       (cons _hd289138289204_ _dispatch289130289175_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289135289194_ _arity289131289177_)))
                    (let () (declare (not safe)) (_g289090289145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289090289145_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289090289145_)))))
                                    (let ((_arity289133289213_
                                           (reverse _arity289131289177_))
                                          (_dispatch289132289210_
                                           (reverse _dispatch289130289175_)))
                                      (___kont294736294737_
                                       _dispatch289132289210_
                                       _arity289133289213_))))))
                      (_loop289126289168_ _target289123289162_ '() '()))))
                 (___match294772294773_
                  (lambda (_e289122289152_ _hd289121289156_ _tl289120289159_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl289120289159_))
                        (let ((___splice294738294739_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl289120289159_
                                  '0))))
                          (let ((_tl289125289165_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294738294739_ '1)))
                                (_target289123289162_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294738294739_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl289125289165_))
                                (___match294780294781_
                                 _e289122289152_
                                 _hd289121289156_
                                 _tl289120289159_
                                 ___splice294738294739_
                                 _target289123289162_
                                 _tl289125289165_)
                                (let ()
                                  (declare (not safe))
                                  (_g289090289145_)))))
                        (let () (declare (not safe)) (_g289090289145_)))))
                 (___match294766294767_
                  (lambda (_e289096289252_
                           _hd289095289256_
                           _tl289094289259_
                           _e289099289262_
                           _hd289098289266_
                           _tl289097289269_
                           _e289100289272_
                           ___splice294734294735_
                           _target289101289276_
                           _tl289103289279_)
                    (letrec ((_loop289104289282_
                              (lambda (_hd289102289286_
                                       _dispatch289108289289_
                                       _arity289109289291_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289102289286_))
                                    (let ((_e289105289294_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289102289286_))))
                                      (let ((_lp-tl289107289301_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289105289294_)))
                                            (_lp-hd289106289298_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289105289294_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd289106289298_))
                                            (let ((_e289114289304_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd289106289298_))))
                                              (let ((_tl289112289311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e289114289304_)))
                                                    (_hd289113289308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e289114289304_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl289112289311_))
                                                    (let ((_e289117289314_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl289112289311_))))
                                                      (let ((_tl289115289321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e289117289314_)))
                    (_hd289116289318_
                     (let () (declare (not safe)) (##car _e289117289314_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289115289321_))
                    (_loop289104289282_
                     _lp-tl289107289301_
                     (let ()
                       (declare (not safe))
                       (cons _hd289116289318_ _dispatch289108289289_))
                     (let ()
                       (declare (not safe))
                       (cons _hd289113289308_ _arity289109289291_)))
                    (___match294772294773_
                     _e289096289252_
                     _hd289095289256_
                     _tl289094289259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match294772294773_
                                                     _e289096289252_
                                                     _hd289095289256_
                                                     _tl289094289259_))))
                                            (___match294772294773_
                                             _e289096289252_
                                             _hd289095289256_
                                             _tl289094289259_))))
                                    (let ((_arity289111289327_
                                           (reverse _arity289109289291_))
                                          (_dispatch289110289324_
                                           (reverse _dispatch289108289289_)))
                                      (___kont294732294733_
                                       _dispatch289110289324_
                                       _arity289111289327_))))))
                      (_loop289104289282_ _target289101289276_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294729294730_))
                (let ((_e289096289252_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294729294730_))))
                  (let ((_tl289094289259_
                         (let () (declare (not safe)) (##cdr _e289096289252_)))
                        (_hd289095289256_
                         (let ()
                           (declare (not safe))
                           (##car _e289096289252_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289094289259_))
                        (let ((_e289099289262_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289094289259_))))
                          (let ((_tl289097289269_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289099289262_)))
                                (_hd289098289266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289099289262_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd289098289266_))
                                (let ((_e289100289272_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd289098289266_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e289100289272_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289097289269_))
                                          (let ((___splice294734294735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289097289269_
                                                    '0))))
                                            (let ((_tl289103289279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294734294735_
                                                      '1)))
                                                  (_target289101289276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294734294735_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289103289279_))
                                                  (___match294766294767_
                                                   _e289096289252_
                                                   _hd289095289256_
                                                   _tl289094289259_
                                                   _e289099289262_
                                                   _hd289098289266_
                                                   _tl289097289269_
                                                   _e289100289272_
                                                   ___splice294734294735_
                                                   _target289101289276_
                                                   _tl289103289279_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289094289259_))
                                                      (let ((___splice294738294739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289094289259_ '0))))
                (let ((_tl289125289165_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294738294739_ '1)))
                      (_target289123289162_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294738294739_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289125289165_))
                      (___match294780294781_
                       _e289096289252_
                       _hd289095289256_
                       _tl289094289259_
                       ___splice294738294739_
                       _target289123289162_
                       _tl289125289165_)
                      (let () (declare (not safe)) (_g289090289145_)))))
              (let () (declare (not safe)) (_g289090289145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl289094289259_))
                                              (let ((___splice294738294739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl289094289259_
                                                        '0))))
                                                (let ((_tl289125289165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294738294739_
                                                          '1)))
                                                      (_target289123289162_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294738294739_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl289125289165_))
                                                      (___match294780294781_
                                                       _e289096289252_
                                                       _hd289095289256_
                                                       _tl289094289259_
                                                       ___splice294738294739_
                                                       _target289123289162_
                                                       _tl289125289165_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g289090289145_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g289090289145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl289094289259_))
                                          (let ((___splice294738294739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl289094289259_
                                                    '0))))
                                            (let ((_tl289125289165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294738294739_
                                                      '1)))
                                                  (_target289123289162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294738294739_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289125289165_))
                                                  (___match294780294781_
                                                   _e289096289252_
                                                   _hd289095289256_
                                                   _tl289094289259_
                                                   ___splice294738294739_
                                                   _target289123289162_
                                                   _tl289125289165_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g289090289145_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g289090289145_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289094289259_))
                                    (let ((___splice294738294739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289094289259_
                                              '0))))
                                      (let ((_tl289125289165_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294738294739_
                                                '1)))
                                            (_target289123289162_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294738294739_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289125289165_))
                                            (___match294780294781_
                                             _e289096289252_
                                             _hd289095289256_
                                             _tl289094289259_
                                             ___splice294738294739_
                                             _target289123289162_
                                             _tl289125289165_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289090289145_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289090289145_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl289094289259_))
                            (let ((___splice294738294739_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl289094289259_
                                      '0))))
                              (let ((_tl289125289165_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294738294739_
                                        '1)))
                                    (_target289123289162_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294738294739_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl289125289165_))
                                    (___match294780294781_
                                     _e289096289252_
                                     _hd289095289256_
                                     _tl289094289259_
                                     ___splice294738294739_
                                     _target289123289162_
                                     _tl289125289165_)
                                    (let ()
                                      (declare (not safe))
                                      (_g289090289145_)))))
                            (let () (declare (not safe)) (_g289090289145_))))))
                (let () (declare (not safe)) (_g289090289145_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx289367_)
      (let* ((_g289371289389_
              (lambda (_g289372289385_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289372289385_))))
             (_g289370289444_
              (lambda (_g289372289393_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289372289393_))
                    (let ((_e289377289396_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289372289393_))))
                      (let ((_hd289376289400_
                             (let ()
                               (declare (not safe))
                               (##car _e289377289396_)))
                            (_tl289375289403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289377289396_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289375289403_))
                            (let ((_e289380289406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289375289403_))))
                              (let ((_hd289379289410_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289380289406_)))
                                    (_tl289378289413_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289380289406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289378289413_))
                                    (let ((_e289383289416_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289378289413_))))
                                      (let ((_hd289382289420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289383289416_)))
                                            (_tl289381289423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289383289416_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289381289423_))
                                            ((lambda (_L289426_ _L289428_)
                                               (let ((__tmp295173
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp295160
                                                      (let ((__tmp295169
                                                             (let ((__tmp295172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295170
                            (let ((__tmp295171
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp295171 '()))))
                       (declare (not safe))
                       (cons __tmp295172 __tmp295170)))
                    (__tmp295161
                     (let ((__tmp295166
                            (let ((__tmp295168
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295167
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289428_ '()))))
                              (declare (not safe))
                              (cons __tmp295168 __tmp295167)))
                           (__tmp295162
                            (let ((__tmp295163
                                   (let ((__tmp295165
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295164
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289426_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295165 __tmp295164))))
                              (declare (not safe))
                              (cons __tmp295163 '()))))
                       (declare (not safe))
                       (cons __tmp295166 __tmp295162))))
                (declare (not safe))
                (cons __tmp295169 __tmp295161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295173
                                                       __tmp295160)))
                                             _hd289382289420_
                                             _hd289379289410_)
                                            (_g289371289389_
                                             _g289372289393_))))
                                    (_g289371289389_ _g289372289393_))))
                            (_g289371289389_ _g289372289393_))))
                    (_g289371289389_ _g289372289393_)))))
        (_g289370289444_ _$stx289367_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx289448_)
      (let* ((_g289452289470_
              (lambda (_g289453289466_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289453289466_))))
             (_g289451289525_
              (lambda (_g289453289474_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289453289474_))
                    (let ((_e289458289477_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289453289474_))))
                      (let ((_hd289457289481_
                             (let ()
                               (declare (not safe))
                               (##car _e289458289477_)))
                            (_tl289456289484_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289458289477_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289456289484_))
                            (let ((_e289461289487_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289456289484_))))
                              (let ((_hd289460289491_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289461289487_)))
                                    (_tl289459289494_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289461289487_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289459289494_))
                                    (let ((_e289464289497_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289459289494_))))
                                      (let ((_hd289463289501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289464289497_)))
                                            (_tl289462289504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289464289497_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289462289504_))
                                            ((lambda (_L289507_ _L289509_)
                                               (let ((__tmp295187
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp295174
                                                      (let ((__tmp295183
                                                             (let ((__tmp295186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295184
                            (let ((__tmp295185
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp295185 '()))))
                       (declare (not safe))
                       (cons __tmp295186 __tmp295184)))
                    (__tmp295175
                     (let ((__tmp295180
                            (let ((__tmp295182
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295181
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289509_ '()))))
                              (declare (not safe))
                              (cons __tmp295182 __tmp295181)))
                           (__tmp295176
                            (let ((__tmp295177
                                   (let ((__tmp295179
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295178
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289507_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295179 __tmp295178))))
                              (declare (not safe))
                              (cons __tmp295177 '()))))
                       (declare (not safe))
                       (cons __tmp295180 __tmp295176))))
                (declare (not safe))
                (cons __tmp295183 __tmp295175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295187
                                                       __tmp295174)))
                                             _hd289463289501_
                                             _hd289460289491_)
                                            (_g289452289470_
                                             _g289453289474_))))
                                    (_g289452289470_ _g289453289474_))))
                            (_g289452289470_ _g289453289474_))))
                    (_g289452289470_ _g289453289474_)))))
        (_g289451289525_ _$stx289448_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx289529_)
      (let* ((___stx294783294784_ _$stx289529_)
             (_g289536289607_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294783294784_)))))
        (let ((___kont294786294787_
               (lambda (_L289898_ _L289900_)
                 (let ((__tmp295193
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295188
                        (let ((__tmp295189
                               (let ((__tmp295190
                                      (let ((__tmp295192
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295191
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289898_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295192 __tmp295191))))
                                 (declare (not safe))
                                 (cons __tmp295190 '()))))
                          (declare (not safe))
                          (cons _L289900_ __tmp295189))))
                   (declare (not safe))
                   (cons __tmp295193 __tmp295188))))
              (___kont294788294789_
               (lambda (_L289817_ _L289819_)
                 (let ((__tmp295202
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295194
                        (let ((__tmp295195
                               (let ((__tmp295196
                                      (let ((__tmp295201
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295197
                                             (let ((__tmp295198
                                                    (lambda (_g289838289841_
                                                             _g289839289844_)
                                                      (let ((__tmp295199
                                                             (let ((__tmp295200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g289838289841_ __tmp295200))))
                (declare (not safe))
                (cons __tmp295199 _g289839289844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295198
                                                       '()
                                                       _L289817_))))
                                        (declare (not safe))
                                        (cons __tmp295201 __tmp295197))))
                                 (declare (not safe))
                                 (cons __tmp295196 '()))))
                          (declare (not safe))
                          (cons _L289819_ __tmp295195))))
                   (declare (not safe))
                   (cons __tmp295202 __tmp295194))))
              (___kont294792294793_
               (lambda (_L289729_ _L289731_)
                 (let ((__tmp295209
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295203
                        (let ((__tmp295204
                               (let ((__tmp295205
                                      (let ((__tmp295208
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295206
                                             (let ((__tmp295207
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L289729_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295207))))
                                        (declare (not safe))
                                        (cons __tmp295208 __tmp295206))))
                                 (declare (not safe))
                                 (cons __tmp295205 '()))))
                          (declare (not safe))
                          (cons _L289731_ __tmp295204))))
                   (declare (not safe))
                   (cons __tmp295209 __tmp295203))))
              (___kont294794294795_
               (lambda (_L289664_ _L289666_)
                 (let ((__tmp295219
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295210
                        (let ((__tmp295211
                               (let ((__tmp295212
                                      (let ((__tmp295218
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295213
                                             (let ((__tmp295214
                                                    (let ((__tmp295215
                                                           (lambda (_g289683289686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g289684289689_)
                     (let ((__tmp295216
                            (let ((__tmp295217
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g289683289686_ __tmp295217))))
                       (declare (not safe))
                       (cons __tmp295216 _g289684289689_)))))
              (declare (not safe))
              (foldr1 __tmp295215 '() _L289664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295214))))
                                        (declare (not safe))
                                        (cons __tmp295218 __tmp295213))))
                                 (declare (not safe))
                                 (cons __tmp295212 '()))))
                          (declare (not safe))
                          (cons _L289666_ __tmp295211))))
                   (declare (not safe))
                   (cons __tmp295219 __tmp295210)))))
          (let* ((___match294902294903_
                  (lambda (_e289589289614_
                           _hd289588289618_
                           _tl289587289621_
                           _e289592289624_
                           _hd289591289628_
                           _tl289590289631_
                           ___splice294796294797_
                           _target289593289634_
                           _tl289595289637_)
                    (letrec ((_loop289596289640_
                              (lambda (_hd289594289644_ _arity289600289647_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289594289644_))
                                    (let ((_e289597289650_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289594289644_))))
                                      (let ((_lp-tl289599289657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289597289650_)))
                                            (_lp-hd289598289654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289597289650_))))
                                        (_loop289596289640_
                                         _lp-tl289599289657_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289598289654_
                                                 _arity289600289647_)))))
                                    (let ((_arity289601289660_
                                           (reverse _arity289600289647_)))
                                      (___kont294794294795_
                                       _arity289601289660_
                                       _hd289591289628_))))))
                      (_loop289596289640_ _target289593289634_ '()))))
                 (___match294862294863_
                  (lambda (_e289557289753_
                           _hd289556289757_
                           _tl289555289760_
                           _e289560289763_
                           _hd289559289767_
                           _tl289558289770_
                           _e289563289773_
                           _hd289562289777_
                           _tl289561289780_
                           _e289564289783_
                           ___splice294790294791_
                           _target289565289787_
                           _tl289567289790_)
                    (letrec ((_loop289568289793_
                              (lambda (_hd289566289797_ _arity289572289800_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289566289797_))
                                    (let ((_e289569289803_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289566289797_))))
                                      (let ((_lp-tl289571289810_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289569289803_)))
                                            (_lp-hd289570289807_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289569289803_))))
                                        (_loop289568289793_
                                         _lp-tl289571289810_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289570289807_
                                                 _arity289572289800_)))))
                                    (let ((_arity289573289813_
                                           (reverse _arity289572289800_)))
                                      (___kont294788294789_
                                       _arity289573289813_
                                       _hd289559289767_))))))
                      (_loop289568289793_ _target289565289787_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294783294784_))
                (let ((_e289542289854_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294783294784_))))
                  (let ((_tl289540289861_
                         (let () (declare (not safe)) (##cdr _e289542289854_)))
                        (_hd289541289858_
                         (let ()
                           (declare (not safe))
                           (##car _e289542289854_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289540289861_))
                        (let ((_e289545289864_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289540289861_))))
                          (let ((_tl289543289871_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289545289864_)))
                                (_hd289544289868_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289545289864_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289543289871_))
                                (let ((_e289548289874_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289543289871_))))
                                  (let ((_tl289546289881_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289548289874_)))
                                        (_hd289547289878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289548289874_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd289547289878_))
                                        (let ((_e289549289884_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd289547289878_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e289549289884_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289546289881_))
                                                  (let ((_e289552289888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl289546289881_))))
                                                    (let ((_tl289550289895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289552289888_)))
                                                          (_hd289551289892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289552289888_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl289550289895_))
                                                          (___kont294786294787_
                                                           _hd289551289892_
                                                           _hd289544289868_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl289546289881_))
                      (let ((___splice294790294791_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289546289881_ '0))))
                        (let ((_tl289567289790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294790294791_ '1)))
                              (_target289565289787_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294790294791_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289567289790_))
                              (___match294862294863_
                               _e289542289854_
                               _hd289541289858_
                               _tl289540289861_
                               _e289545289864_
                               _hd289544289868_
                               _tl289543289871_
                               _e289548289874_
                               _hd289547289878_
                               _tl289546289881_
                               _e289549289884_
                               ___splice294790294791_
                               _target289565289787_
                               _tl289567289790_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl289543289871_))
                                  (let ((___splice294796294797_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl289543289871_
                                            '0))))
                                    (let ((_tl289595289637_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294796294797_
                                              '1)))
                                          (_target289593289634_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294796294797_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl289595289637_))
                                          (___match294902294903_
                                           _e289542289854_
                                           _hd289541289858_
                                           _tl289540289861_
                                           _e289545289864_
                                           _hd289544289868_
                                           _tl289543289871_
                                           ___splice294796294797_
                                           _target289593289634_
                                           _tl289595289637_)
                                          (let ()
                                            (declare (not safe))
                                            (_g289536289607_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g289536289607_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl289543289871_))
                          (let ((___splice294796294797_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl289543289871_
                                    '0))))
                            (let ((_tl289595289637_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice294796294797_ '1)))
                                  (_target289593289634_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice294796294797_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl289595289637_))
                                  (___match294902294903_
                                   _e289542289854_
                                   _hd289541289858_
                                   _tl289540289861_
                                   _e289545289864_
                                   _hd289544289868_
                                   _tl289543289871_
                                   ___splice294796294797_
                                   _target289593289634_
                                   _tl289595289637_)
                                  (let ()
                                    (declare (not safe))
                                    (_g289536289607_)))))
                          (let () (declare (not safe)) (_g289536289607_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289546289881_))
                                                      (let ((___splice294790294791_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289546289881_ '0))))
                (let ((_tl289567289790_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294790294791_ '1)))
                      (_target289565289787_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294790294791_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289567289790_))
                      (___match294862294863_
                       _e289542289854_
                       _hd289541289858_
                       _tl289540289861_
                       _e289545289864_
                       _hd289544289868_
                       _tl289543289871_
                       _e289548289874_
                       _hd289547289878_
                       _tl289546289881_
                       _e289549289884_
                       ___splice294790294791_
                       _target289565289787_
                       _tl289567289790_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl289546289881_))
                          (___kont294792294793_
                           _hd289547289878_
                           _hd289544289868_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl289543289871_))
                              (let ((___splice294796294797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl289543289871_
                                        '0))))
                                (let ((_tl289595289637_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294796294797_
                                          '1)))
                                      (_target289593289634_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294796294797_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl289595289637_))
                                      (___match294902294903_
                                       _e289542289854_
                                       _hd289541289858_
                                       _tl289540289861_
                                       _e289545289864_
                                       _hd289544289868_
                                       _tl289543289871_
                                       ___splice294796294797_
                                       _target289593289634_
                                       _tl289595289637_)
                                      (let ()
                                        (declare (not safe))
                                        (_g289536289607_)))))
                              (let ()
                                (declare (not safe))
                                (_g289536289607_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl289546289881_))
                  (___kont294792294793_ _hd289547289878_ _hd289544289868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl289543289871_))
                      (let ((___splice294796294797_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289543289871_ '0))))
                        (let ((_tl289595289637_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294796294797_ '1)))
                              (_target289593289634_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294796294797_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289595289637_))
                              (___match294902294903_
                               _e289542289854_
                               _hd289541289858_
                               _tl289540289861_
                               _e289545289864_
                               _hd289544289868_
                               _tl289543289871_
                               ___splice294796294797_
                               _target289593289634_
                               _tl289595289637_)
                              (let ()
                                (declare (not safe))
                                (_g289536289607_)))))
                      (let () (declare (not safe)) (_g289536289607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289546289881_))
                                                  (___kont294792294793_
                                                   _hd289547289878_
                                                   _hd289544289868_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289543289871_))
                                                      (let ((___splice294796294797_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289543289871_ '0))))
                (let ((_tl289595289637_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294796294797_ '1)))
                      (_target289593289634_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294796294797_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289595289637_))
                      (___match294902294903_
                       _e289542289854_
                       _hd289541289858_
                       _tl289540289861_
                       _e289545289864_
                       _hd289544289868_
                       _tl289543289871_
                       ___splice294796294797_
                       _target289593289634_
                       _tl289595289637_)
                      (let () (declare (not safe)) (_g289536289607_)))))
              (let () (declare (not safe)) (_g289536289607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289546289881_))
                                            (___kont294792294793_
                                             _hd289547289878_
                                             _hd289544289868_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl289543289871_))
                                                (let ((___splice294796294797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl289543289871_
                                                          '0))))
                                                  (let ((_tl289595289637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294796294797_
                                                            '1)))
                                                        (_target289593289634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294796294797_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289595289637_))
                                                        (___match294902294903_
                                                         _e289542289854_
                                                         _hd289541289858_
                                                         _tl289540289861_
                                                         _e289545289864_
                                                         _hd289544289868_
                                                         _tl289543289871_
                                                         ___splice294796294797_
                                                         _target289593289634_
                                                         _tl289595289637_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289536289607_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289536289607_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289543289871_))
                                    (let ((___splice294796294797_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289543289871_
                                              '0))))
                                      (let ((_tl289595289637_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294796294797_
                                                '1)))
                                            (_target289593289634_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294796294797_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289595289637_))
                                            (___match294902294903_
                                             _e289542289854_
                                             _hd289541289858_
                                             _tl289540289861_
                                             _e289545289864_
                                             _hd289544289868_
                                             _tl289543289871_
                                             ___splice294796294797_
                                             _target289593289634_
                                             _tl289595289637_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289536289607_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289536289607_))))))
                        (let () (declare (not safe)) (_g289536289607_)))))
                (let () (declare (not safe)) (_g289536289607_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx289924_)
      (let* ((___stx294905294906_ _$stx289924_)
             (_g289929289964_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294905294906_)))))
        (let ((___kont294908294909_
               (lambda (_L290086_ _L290088_)
                 (let ((__tmp295225
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295220
                        (let ((__tmp295221
                               (let ((__tmp295222
                                      (let ((__tmp295224
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295223
                                             (let ()
                                               (declare (not safe))
                                               (cons _L290086_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295224 __tmp295223))))
                                 (declare (not safe))
                                 (cons __tmp295222 '()))))
                          (declare (not safe))
                          (cons _L290088_ __tmp295221))))
                   (declare (not safe))
                   (cons __tmp295225 __tmp295220))))
              (___kont294910294911_
               (lambda (_L290021_ _L290023_)
                 (let ((__tmp295234
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295226
                        (let ((__tmp295227
                               (let ((__tmp295228
                                      (let ((__tmp295233
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295229
                                             (let ((__tmp295230
                                                    (lambda (_g290040290043_
                                                             _g290041290046_)
                                                      (let ((__tmp295231
                                                             (let ((__tmp295232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g290040290043_ __tmp295232))))
                (declare (not safe))
                (cons __tmp295231 _g290041290046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295230
                                                       '()
                                                       _L290021_))))
                                        (declare (not safe))
                                        (cons __tmp295233 __tmp295229))))
                                 (declare (not safe))
                                 (cons __tmp295228 '()))))
                          (declare (not safe))
                          (cons _L290023_ __tmp295227))))
                   (declare (not safe))
                   (cons __tmp295234 __tmp295226)))))
          (let ((___match294954294955_
                 (lambda (_e289946289971_
                          _hd289945289975_
                          _tl289944289978_
                          _e289949289981_
                          _hd289948289985_
                          _tl289947289988_
                          ___splice294912294913_
                          _target289950289991_
                          _tl289952289994_)
                   (letrec ((_loop289953289997_
                             (lambda (_hd289951290001_ _arity289957290004_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd289951290001_))
                                   (let ((_e289954290007_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd289951290001_))))
                                     (let ((_lp-tl289956290014_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e289954290007_)))
                                           (_lp-hd289955290011_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e289954290007_))))
                                       (_loop289953289997_
                                        _lp-tl289956290014_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd289955290011_
                                                _arity289957290004_)))))
                                   (let ((_arity289958290017_
                                          (reverse _arity289957290004_)))
                                     (___kont294910294911_
                                      _arity289958290017_
                                      _hd289948289985_))))))
                     (_loop289953289997_ _target289950289991_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294905294906_))
                (let ((_e289935290056_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294905294906_))))
                  (let ((_tl289933290063_
                         (let () (declare (not safe)) (##cdr _e289935290056_)))
                        (_hd289934290060_
                         (let ()
                           (declare (not safe))
                           (##car _e289935290056_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289933290063_))
                        (let ((_e289938290066_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289933290063_))))
                          (let ((_tl289936290073_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289938290066_)))
                                (_hd289937290070_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289938290066_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289936290073_))
                                (let ((_e289941290076_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289936290073_))))
                                  (let ((_tl289939290083_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289941290076_)))
                                        (_hd289940290080_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289941290076_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl289939290083_))
                                        (___kont294908294909_
                                         _hd289940290080_
                                         _hd289937290070_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl289936290073_))
                                            (let ((___splice294912294913_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl289936290073_
                                                      '0))))
                                              (let ((_tl289952289994_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294912294913_
                                                        '1)))
                                                    (_target289950289991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294912294913_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl289952289994_))
                                                    (___match294954294955_
                                                     _e289935290056_
                                                     _hd289934290060_
                                                     _tl289933290063_
                                                     _e289938290066_
                                                     _hd289937290070_
                                                     _tl289936290073_
                                                     ___splice294912294913_
                                                     _target289950289991_
                                                     _tl289952289994_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289929289964_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289929289964_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289936290073_))
                                    (let ((___splice294912294913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289936290073_
                                              '0))))
                                      (let ((_tl289952289994_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294912294913_
                                                '1)))
                                            (_target289950289991_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294912294913_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289952289994_))
                                            (___match294954294955_
                                             _e289935290056_
                                             _hd289934290060_
                                             _tl289933290063_
                                             _e289938290066_
                                             _hd289937290070_
                                             _tl289936290073_
                                             ___splice294912294913_
                                             _target289950289991_
                                             _tl289952289994_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289929289964_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289929289964_))))))
                        (let () (declare (not safe)) (_g289929289964_)))))
                (let () (declare (not safe)) (_g289929289964_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx290108_)
      (let* ((_g290112290147_
              (lambda (_g290113290143_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290113290143_))))
             (_g290111290275_
              (lambda (_g290113290151_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290113290151_))
                    (let ((_e290118290154_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290113290151_))))
                      (let ((_hd290117290158_
                             (let ()
                               (declare (not safe))
                               (##car _e290118290154_)))
                            (_tl290116290161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290118290154_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290116290161_))
                            (let ((_g295235_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290116290161_
                                      '0))))
                              (begin
                                (let ((_g295236_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295235_)
                                             (##vector-length _g295235_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295236_ 2)))
                                      (error "Context expects 2 values"
                                             _g295236_)))
                                (let ((_target290119290164_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295235_ 0)))
                                      (_tl290121290167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295235_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290121290167_))
                                      (letrec ((_loop290122290170_
                                                (lambda (_hd290120290174_
                                                         _arity290126290177_
                                                         _prim290127290179_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290120290174_))
                                                      (let ((_e290123290182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290120290174_))))
                (let ((_lp-hd290124290186_
                       (let () (declare (not safe)) (##car _e290123290182_)))
                      (_lp-tl290125290189_
                       (let () (declare (not safe)) (##cdr _e290123290182_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290124290186_))
                      (let ((_e290132290192_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290124290186_))))
                        (let ((_hd290131290196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290132290192_)))
                              (_tl290130290199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290132290192_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290130290199_))
                              (let ((_g295245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290130290199_
                                        '0))))
                                (begin
                                  (let ((_g295246_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295245_)
                                               (##vector-length _g295245_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295246_ 2)))
                                        (error "Context expects 2 values"
                                               _g295246_)))
                                  (let ((_target290133290202_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295245_ 0)))
                                        (_tl290135290205_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295245_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290135290205_))
                                        (letrec ((_loop290136290208_
                                                  (lambda (_hd290134290212_
                                                           _arity290140290215_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290134290212_))
                                                        (let ((_e290137290218_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290134290212_))))
                  (let ((_lp-hd290138290222_
                         (let () (declare (not safe)) (##car _e290137290218_)))
                        (_lp-tl290139290225_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290137290218_))))
                    (_loop290136290208_
                     _lp-tl290139290225_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290138290222_ _arity290140290215_)))))
                (let ((_arity290141290228_ (reverse _arity290140290215_)))
                  (_loop290122290170_
                   _lp-tl290125290189_
                   (let ()
                     (declare (not safe))
                     (cons _arity290141290228_ _arity290126290177_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290131290196_ _prim290127290179_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290136290208_
                                           _target290133290202_
                                           '()))
                                        (_g290112290147_ _g290113290151_)))))
                              (_g290112290147_ _g290113290151_))))
                      (_g290112290147_ _g290113290151_))))
              (let ((_arity290128290232_ (reverse _arity290126290177_))
                    (_prim290129290235_ (reverse _prim290127290179_)))
                ((lambda (_L290238_ _L290240_)
                   (let ((__tmp295244
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295237
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290238_
                               _L290240_))
                            (let ((__tmp295238
                                   (lambda (_g290255290261_
                                            _g290256290264_
                                            _g290257290266_)
                                     (let ((__tmp295239
                                            (let ((__tmp295243
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp295240
                                                   (let ((__tmp295241
                                                          (let ((__tmp295242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290258290269_ _g290259290272_)
                           (let ()
                             (declare (not safe))
                             (cons _g290258290269_ _g290259290272_)))))
                    (declare (not safe))
                    (foldr1 __tmp295242 '() _g290255290261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290256290264_
                                                           __tmp295241))))
                                              (declare (not safe))
                                              (cons __tmp295243 __tmp295240))))
                                       (declare (not safe))
                                       (cons __tmp295239 _g290257290266_)))))
                              (declare (not safe))
                              (foldr2 __tmp295238 '() _L290238_ _L290240_)))))
                     (declare (not safe))
                     (cons __tmp295244 __tmp295237)))
                 _arity290128290232_
                 _prim290129290235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290122290170_
                                         _target290119290164_
                                         '()
                                         '()))
                                      (_g290112290147_ _g290113290151_)))))
                            (_g290112290147_ _g290113290151_))))
                    (_g290112290147_ _g290113290151_)))))
        (_g290111290275_ _$stx290108_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx290281_)
      (let* ((_g290285290320_
              (lambda (_g290286290316_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290286290316_))))
             (_g290284290448_
              (lambda (_g290286290324_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290286290324_))
                    (let ((_e290291290327_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290286290324_))))
                      (let ((_hd290290290331_
                             (let ()
                               (declare (not safe))
                               (##car _e290291290327_)))
                            (_tl290289290334_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290291290327_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290289290334_))
                            (let ((_g295247_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290289290334_
                                      '0))))
                              (begin
                                (let ((_g295248_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295247_)
                                             (##vector-length _g295247_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295248_ 2)))
                                      (error "Context expects 2 values"
                                             _g295248_)))
                                (let ((_target290292290337_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295247_ 0)))
                                      (_tl290294290340_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295247_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290294290340_))
                                      (letrec ((_loop290295290343_
                                                (lambda (_hd290293290347_
                                                         _arity290299290350_
                                                         _prim290300290352_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290293290347_))
                                                      (let ((_e290296290355_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290293290347_))))
                (let ((_lp-hd290297290359_
                       (let () (declare (not safe)) (##car _e290296290355_)))
                      (_lp-tl290298290362_
                       (let () (declare (not safe)) (##cdr _e290296290355_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290297290359_))
                      (let ((_e290305290365_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290297290359_))))
                        (let ((_hd290304290369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290305290365_)))
                              (_tl290303290372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290305290365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290303290372_))
                              (let ((_g295257_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290303290372_
                                        '0))))
                                (begin
                                  (let ((_g295258_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295257_)
                                               (##vector-length _g295257_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295258_ 2)))
                                        (error "Context expects 2 values"
                                               _g295258_)))
                                  (let ((_target290306290375_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295257_ 0)))
                                        (_tl290308290378_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295257_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290308290378_))
                                        (letrec ((_loop290309290381_
                                                  (lambda (_hd290307290385_
                                                           _arity290313290388_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290307290385_))
                                                        (let ((_e290310290391_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290307290385_))))
                  (let ((_lp-hd290311290395_
                         (let () (declare (not safe)) (##car _e290310290391_)))
                        (_lp-tl290312290398_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290310290391_))))
                    (_loop290309290381_
                     _lp-tl290312290398_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290311290395_ _arity290313290388_)))))
                (let ((_arity290314290401_ (reverse _arity290313290388_)))
                  (_loop290295290343_
                   _lp-tl290298290362_
                   (let ()
                     (declare (not safe))
                     (cons _arity290314290401_ _arity290299290350_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290304290369_ _prim290300290352_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290309290381_
                                           _target290306290375_
                                           '()))
                                        (_g290285290320_ _g290286290324_)))))
                              (_g290285290320_ _g290286290324_))))
                      (_g290285290320_ _g290286290324_))))
              (let ((_arity290301290405_ (reverse _arity290299290350_))
                    (_prim290302290408_ (reverse _prim290300290352_)))
                ((lambda (_L290411_ _L290413_)
                   (let ((__tmp295256
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295249
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290411_
                               _L290413_))
                            (let ((__tmp295250
                                   (lambda (_g290428290434_
                                            _g290429290437_
                                            _g290430290439_)
                                     (let ((__tmp295251
                                            (let ((__tmp295255
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp295252
                                                   (let ((__tmp295253
                                                          (let ((__tmp295254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290431290442_ _g290432290445_)
                           (let ()
                             (declare (not safe))
                             (cons _g290431290442_ _g290432290445_)))))
                    (declare (not safe))
                    (foldr1 __tmp295254 '() _g290428290434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290429290437_
                                                           __tmp295253))))
                                              (declare (not safe))
                                              (cons __tmp295255 __tmp295252))))
                                       (declare (not safe))
                                       (cons __tmp295251 _g290430290439_)))))
                              (declare (not safe))
                              (foldr2 __tmp295250 '() _L290411_ _L290413_)))))
                     (declare (not safe))
                     (cons __tmp295256 __tmp295249)))
                 _arity290301290405_
                 _prim290302290408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290295290343_
                                         _target290292290337_
                                         '()
                                         '()))
                                      (_g290285290320_ _g290286290324_)))))
                            (_g290285290320_ _g290286290324_))))
                    (_g290285290320_ _g290286290324_)))))
        (_g290284290448_ _$stx290281_)))))
