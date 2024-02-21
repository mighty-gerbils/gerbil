(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157785_)
      (let* ((_g157789157807_
              (lambda (_g157790157803_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157790157803_))))
             (_g157788157862_
              (lambda (_g157790157811_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157790157811_))
                    (let ((_e157795157814_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157790157811_))))
                      (let ((_hd157794157818_
                             (let ()
                               (declare (not safe))
                               (##car _e157795157814_)))
                            (_tl157793157821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157795157814_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157793157821_))
                            (let ((_e157798157824_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157793157821_))))
                              (let ((_hd157797157828_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157798157824_)))
                                    (_tl157796157831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157798157824_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157796157831_))
                                    (let ((_e157801157834_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157796157831_))))
                                      (let ((_hd157800157838_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157801157834_)))
                                            (_tl157799157841_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157801157834_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157799157841_))
                                            ((lambda (_L157844_ _L157846_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L157846_))
                                                   (let ((__tmp161326
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161321
                                                          (let ((__tmp161323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161325
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161324
                                (let ()
                                  (declare (not safe))
                                  (cons _L157846_ '()))))
                           (declare (not safe))
                           (cons __tmp161325 __tmp161324)))
                        (__tmp161322
                         (let () (declare (not safe)) (cons _L157844_ '()))))
                    (declare (not safe))
                    (cons __tmp161323 __tmp161322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161326
                                                           __tmp161321))
                                                   (_g157789157807_
                                                    _g157790157811_)))
                                             _hd157800157838_
                                             _hd157797157828_)
                                            (_g157789157807_
                                             _g157790157811_))))
                                    (_g157789157807_ _g157790157811_))))
                            (_g157789157807_ _g157790157811_))))
                    (_g157789157807_ _g157790157811_)))))
        (_g157788157862_ _$stx157785_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx157866_)
      (let* ((_g157870157899_
              (lambda (_g157871157895_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157871157895_))))
             (_g157869157999_
              (lambda (_g157871157903_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157871157903_))
                    (let ((_e157876157906_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157871157903_))))
                      (let ((_hd157875157910_
                             (let ()
                               (declare (not safe))
                               (##car _e157876157906_)))
                            (_tl157874157913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157876157906_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157874157913_))
                            (let ((_g161327_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157874157913_
                                      '0))))
                              (begin
                                (let ((_g161328_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161327_)
                                             (##vector-length _g161327_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161328_ 2)))
                                      (error "Context expects 2 values"
                                             _g161328_)))
                                (let ((_target157877157916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161327_ 0)))
                                      (_tl157879157919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161327_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157879157919_))
                                      (letrec ((_loop157880157922_
                                                (lambda (_hd157878157926_
                                                         _type157884157929_
                                                         _symbol157885157931_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157878157926_))
                                                      (let ((_e157881157934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157878157926_))))
                (let ((_lp-hd157882157938_
                       (let () (declare (not safe)) (##car _e157881157934_)))
                      (_lp-tl157883157941_
                       (let () (declare (not safe)) (##cdr _e157881157934_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157882157938_))
                      (let ((_e157890157944_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157882157938_))))
                        (let ((_hd157889157948_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157890157944_)))
                              (_tl157888157951_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157890157944_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157888157951_))
                              (let ((_e157893157954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157888157951_))))
                                (let ((_hd157892157958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157893157954_)))
                                      (_tl157891157961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157893157954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157891157961_))
                                      (_loop157880157922_
                                       _lp-tl157883157941_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157892157958_
                                               _type157884157929_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157889157948_
                                               _symbol157885157931_)))
                                      (_g157870157899_ _g157871157903_))))
                              (_g157870157899_ _g157871157903_))))
                      (_g157870157899_ _g157871157903_))))
              (let ((_type157886157964_ (reverse _type157884157929_))
                    (_symbol157887157967_ (reverse _symbol157885157931_)))
                ((lambda (_L157970_ _L157972_)
                   (let ((__tmp161335
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161329
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L157970_
                               _L157972_))
                            (let ((__tmp161330
                                   (lambda (_g157987157991_
                                            _g157988157994_
                                            _g157989157996_)
                                     (let ((__tmp161331
                                            (let ((__tmp161334
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161332
                                                   (let ((__tmp161333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g157987157991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g157988157994_
                                                           __tmp161333))))
                                              (declare (not safe))
                                              (cons __tmp161334 __tmp161332))))
                                       (declare (not safe))
                                       (cons __tmp161331 _g157989157996_)))))
                              (declare (not safe))
                              (foldr2 __tmp161330 '() _L157970_ _L157972_)))))
                     (declare (not safe))
                     (cons __tmp161335 __tmp161329)))
                 _type157886157964_
                 _symbol157887157967_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157880157922_
                                         _target157877157916_
                                         '()
                                         '()))
                                      (_g157870157899_ _g157871157903_)))))
                            (_g157870157899_ _g157871157903_))))
                    (_g157870157899_ _g157871157903_)))))
        (_g157869157999_ _$stx157866_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158004_)
      (let* ((___stx160886160887_ _$stx158004_)
             (_g158009158051_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160886160887_)))))
        (let ((___kont160889160890_
               (lambda (_L158179_ _L158181_ _L158182_ _L158183_)
                 (let ((__tmp161349
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161336
                        (let ((__tmp161346
                               (let ((__tmp161348
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161347
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158183_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161348 __tmp161347)))
                              (__tmp161337
                               (let ((__tmp161343
                                      (let ((__tmp161345
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161344
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158182_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161345 __tmp161344)))
                                     (__tmp161338
                                      (let ((__tmp161340
                                             (let ((__tmp161342
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161341
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158181_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161342 __tmp161341)))
                                            (__tmp161339
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158179_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161340 __tmp161339))))
                                 (declare (not safe))
                                 (cons __tmp161343 __tmp161338))))
                          (declare (not safe))
                          (cons __tmp161346 __tmp161337))))
                   (declare (not safe))
                   (cons __tmp161349 __tmp161336))))
              (___kont160891160892_
               (lambda (_L158098_ _L158100_ _L158101_ _L158102_)
                 (let ((__tmp161350
                        (let ((__tmp161351
                               (let ((__tmp161352
                                      (let ((__tmp161353
                                             (let ((__tmp161354
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161354 '()))))
                                        (declare (not safe))
                                        (cons _L158098_ __tmp161353))))
                                 (declare (not safe))
                                 (cons _L158100_ __tmp161352))))
                          (declare (not safe))
                          (cons _L158101_ __tmp161351))))
                   (declare (not safe))
                   (cons _L158102_ __tmp161350)))))
          (let ((___match160925160926_
                 (lambda (_e158017158129_
                          _hd158016158133_
                          _tl158015158136_
                          _e158020158139_
                          _hd158019158143_
                          _tl158018158146_
                          _e158023158149_
                          _hd158022158153_
                          _tl158021158156_
                          _e158026158159_
                          _hd158025158163_
                          _tl158024158166_
                          _e158029158169_
                          _hd158028158173_
                          _tl158027158176_)
                   (let ((_L158179_ _hd158028158173_)
                         (_L158181_ _hd158025158163_)
                         (_L158182_ _hd158022158153_)
                         (_L158183_ _hd158019158143_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158183_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158182_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158181_)))
                         (___kont160889160890_
                          _L158179_
                          _L158181_
                          _L158182_
                          _L158183_)
                         (let () (declare (not safe)) (_g158009158051_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx160886160887_))
                (let ((_e158017158129_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx160886160887_))))
                  (let ((_tl158015158136_
                         (let () (declare (not safe)) (##cdr _e158017158129_)))
                        (_hd158016158133_
                         (let ()
                           (declare (not safe))
                           (##car _e158017158129_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158015158136_))
                        (let ((_e158020158139_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158015158136_))))
                          (let ((_tl158018158146_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158020158139_)))
                                (_hd158019158143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158020158139_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158018158146_))
                                (let ((_e158023158149_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158018158146_))))
                                  (let ((_tl158021158156_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158023158149_)))
                                        (_hd158022158153_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158023158149_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158021158156_))
                                        (let ((_e158026158159_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158021158156_))))
                                          (let ((_tl158024158166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158026158159_)))
                                                (_hd158025158163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158026158159_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158024158166_))
                                                (let ((_e158029158169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158024158166_))))
                                                  (let ((_tl158027158176_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158029158169_)))
                                                        (_hd158028158173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158029158169_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158027158176_))
                                                        (___match160925160926_
                                                         _e158017158129_
                                                         _hd158016158133_
                                                         _tl158015158136_
                                                         _e158020158139_
                                                         _hd158019158143_
                                                         _tl158018158146_
                                                         _e158023158149_
                                                         _hd158022158153_
                                                         _tl158021158156_
                                                         _e158026158159_
                                                         _hd158025158163_
                                                         _tl158024158166_
                                                         _e158029158169_
                                                         _hd158028158173_
                                                         _tl158027158176_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158009158051_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158024158166_))
                                                    (___kont160891160892_
                                                     _hd158025158163_
                                                     _hd158022158153_
                                                     _hd158019158143_
                                                     _hd158016158133_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158009158051_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158009158051_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158009158051_)))))
                        (let () (declare (not safe)) (_g158009158051_)))))
                (let () (declare (not safe)) (_g158009158051_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158208_)
      (let* ((_g158212158247_
              (lambda (_g158213158243_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158213158243_))))
             (_g158211158366_
              (lambda (_g158213158251_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158213158251_))
                    (let ((_e158219158254_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158213158251_))))
                      (let ((_hd158218158258_
                             (let ()
                               (declare (not safe))
                               (##car _e158219158254_)))
                            (_tl158217158261_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158219158254_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158217158261_))
                            (let ((_g161355_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158217158261_
                                      '0))))
                              (begin
                                (let ((_g161356_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161355_)
                                             (##vector-length _g161355_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161356_ 2)))
                                      (error "Context expects 2 values"
                                             _g161356_)))
                                (let ((_target158220158264_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161355_ 0)))
                                      (_tl158222158267_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161355_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158222158267_))
                                      (letrec ((_loop158223158270_
                                                (lambda (_hd158221158274_
                                                         _symbol158227158277_
                                                         _method158228158279_
                                                         _type-t158229158281_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158221158274_))
                                                      (let ((_e158224158284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158221158274_))))
                (let ((_lp-hd158225158288_
                       (let () (declare (not safe)) (##car _e158224158284_)))
                      (_lp-tl158226158291_
                       (let () (declare (not safe)) (##cdr _e158224158284_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158225158288_))
                      (let ((_e158235158294_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158225158288_))))
                        (let ((_hd158234158298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158235158294_)))
                              (_tl158233158301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158235158294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158233158301_))
                              (let ((_e158238158304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158233158301_))))
                                (let ((_hd158237158308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158238158304_)))
                                      (_tl158236158311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158238158304_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158236158311_))
                                      (let ((_e158241158314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158236158311_))))
                                        (let ((_hd158240158318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158241158314_)))
                                              (_tl158239158321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158241158314_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158239158321_))
                                              (_loop158223158270_
                                               _lp-tl158226158291_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158240158318_
                                                       _symbol158227158277_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158237158308_
                                                       _method158228158279_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158234158298_
                                                       _type-t158229158281_)))
                                              (_g158212158247_
                                               _g158213158251_))))
                                      (_g158212158247_ _g158213158251_))))
                              (_g158212158247_ _g158213158251_))))
                      (_g158212158247_ _g158213158251_))))
              (let ((_symbol158230158324_ (reverse _symbol158227158277_))
                    (_method158231158327_ (reverse _method158228158279_))
                    (_type-t158232158329_ (reverse _type-t158229158281_)))
                ((lambda (_L158332_ _L158334_ _L158335_)
                   (let ((__tmp161364
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161357
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158332_
                               _L158334_
                               _L158335_))
                            (let ((__tmp161358
                                   (lambda (_g158351158356_
                                            _g158352158359_
                                            _g158353158361_
                                            _g158354158363_)
                                     (let ((__tmp161359
                                            (let ((__tmp161363
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161360
                                                   (let ((__tmp161361
                                                          (let ((__tmp161362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158351158356_ '()))))
                    (declare (not safe))
                    (cons _g158352158359_ __tmp161362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158353158361_
                                                           __tmp161361))))
                                              (declare (not safe))
                                              (cons __tmp161363 __tmp161360))))
                                       (declare (not safe))
                                       (cons __tmp161359 _g158354158363_)))))
                              (declare (not safe))
                              (foldr* __tmp161358
                                      '()
                                      _L158332_
                                      _L158334_
                                      _L158335_)))))
                     (declare (not safe))
                     (cons __tmp161364 __tmp161357)))
                 _symbol158230158324_
                 _method158231158327_
                 _type-t158232158329_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158223158270_
                                         _target158220158264_
                                         '()
                                         '()
                                         '()))
                                      (_g158212158247_ _g158213158251_)))))
                            (_g158212158247_ _g158213158251_))))
                    (_g158212158247_ _g158213158251_)))))
        (_g158211158366_ _$stx158208_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158371_)
      (let* ((_g158375158408_
              (lambda (_g158376158404_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158376158404_))))
             (_g158374158522_
              (lambda (_g158376158412_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158376158412_))
                    (let ((_e158382158415_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158376158412_))))
                      (let ((_hd158381158419_
                             (let ()
                               (declare (not safe))
                               (##car _e158382158415_)))
                            (_tl158380158422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158382158415_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158380158422_))
                            (let ((_e158385158425_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158380158422_))))
                              (let ((_hd158384158429_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158385158425_)))
                                    (_tl158383158432_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158385158425_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158383158432_))
                                    (let ((_g161365_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158383158432_
                                              '0))))
                                      (begin
                                        (let ((_g161366_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161365_)
                                                     (##vector-length
                                                      _g161365_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161366_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161366_)))
                                        (let ((_target158386158435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161365_ 0)))
                                              (_tl158388158438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161365_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158388158438_))
                                              (letrec ((_loop158389158441_
                                                        (lambda (_hd158387158445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158393158448_
                         _method158394158450_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158387158445_))
                      (let ((_e158390158453_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158387158445_))))
                        (let ((_lp-hd158391158457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158390158453_)))
                              (_lp-tl158392158460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158390158453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158391158457_))
                              (let ((_e158399158463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158391158457_))))
                                (let ((_hd158398158467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158399158463_)))
                                      (_tl158397158470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158399158463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158397158470_))
                                      (let ((_e158402158473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158397158470_))))
                                        (let ((_hd158401158477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158402158473_)))
                                              (_tl158400158480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158402158473_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158400158480_))
                                              (_loop158389158441_
                                               _lp-tl158392158460_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158401158477_
                                                       _symbol158393158448_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158398158467_
                                                       _method158394158450_)))
                                              (_g158375158408_
                                               _g158376158412_))))
                                      (_g158375158408_ _g158376158412_))))
                              (_g158375158408_ _g158376158412_))))
                      (let ((_symbol158395158483_
                             (reverse _symbol158393158448_))
                            (_method158396158486_
                             (reverse _method158394158450_)))
                        ((lambda (_L158489_ _L158491_ _L158492_)
                           (let ((__tmp161374
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161367
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158489_
                                       _L158491_))
                                    (let ((__tmp161368
                                           (lambda (_g158510158514_
                                                    _g158511158517_
                                                    _g158512158519_)
                                             (let ((__tmp161369
                                                    (let ((__tmp161373
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161370
                                                           (let ((__tmp161371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161372
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158510158514_ '()))))
                            (declare (not safe))
                            (cons _g158511158517_ __tmp161372))))
                     (declare (not safe))
                     (cons _L158492_ __tmp161371))))
              (declare (not safe))
              (cons __tmp161373 __tmp161370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161369
                                                     _g158512158519_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161368
                                              '()
                                              _L158489_
                                              _L158491_)))))
                             (declare (not safe))
                             (cons __tmp161374 __tmp161367)))
                         _symbol158395158483_
                         _method158396158486_
                         _hd158384158429_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158389158441_
                                                 _target158386158435_
                                                 '()
                                                 '()))
                                              (_g158375158408_
                                               _g158376158412_)))))
                                    (_g158375158408_ _g158376158412_))))
                            (_g158375158408_ _g158376158412_))))
                    (_g158375158408_ _g158376158412_)))))
        (_g158374158522_ _$stx158371_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158527_)
      (let* ((_g158531158545_
              (lambda (_g158532158541_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158532158541_))))
             (_g158530158586_
              (lambda (_g158532158549_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158532158549_))
                    (let ((_e158536158552_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158532158549_))))
                      (let ((_hd158535158556_
                             (let ()
                               (declare (not safe))
                               (##car _e158536158552_)))
                            (_tl158534158559_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158536158552_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158534158559_))
                            (let ((_e158539158562_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158534158559_))))
                              (let ((_hd158538158566_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158539158562_)))
                                    (_tl158537158569_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158539158562_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158537158569_))
                                    ((lambda (_L158572_)
                                       (let ((__tmp161379
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161375
                                              (let ((__tmp161376
                                                     (let ((__tmp161378
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161377
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161378 __tmp161377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161376 '()))))
                                         (declare (not safe))
                                         (cons __tmp161379 __tmp161375)))
                                     _hd158538158566_)
                                    (_g158531158545_ _g158532158549_))))
                            (_g158531158545_ _g158532158549_))))
                    (_g158531158545_ _g158532158549_)))))
        (_g158530158586_ _$stx158527_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158590_)
      (let* ((_g158594158644_
              (lambda (_g158595158640_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158595158640_))))
             (_g158593158811_
              (lambda (_g158595158648_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158595158648_))
                    (let ((_e158608158651_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158595158648_))))
                      (let ((_hd158607158655_
                             (let ()
                               (declare (not safe))
                               (##car _e158608158651_)))
                            (_tl158606158658_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158608158651_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158606158658_))
                            (let ((_e158611158661_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158606158658_))))
                              (let ((_hd158610158665_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158611158661_)))
                                    (_tl158609158668_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158611158661_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158609158668_))
                                    (let ((_e158614158671_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158609158668_))))
                                      (let ((_hd158613158675_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158614158671_)))
                                            (_tl158612158678_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158614158671_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158612158678_))
                                            (let ((_e158617158681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158612158678_))))
                                              (let ((_hd158616158685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158617158681_)))
                                                    (_tl158615158688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158617158681_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158615158688_))
                                                    (let ((_e158620158691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158615158688_))))
                                                      (let ((_hd158619158695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158620158691_)))
                    (_tl158618158698_
                     (let () (declare (not safe)) (##cdr _e158620158691_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158618158698_))
                    (let ((_e158623158701_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158618158698_))))
                      (let ((_hd158622158705_
                             (let ()
                               (declare (not safe))
                               (##car _e158623158701_)))
                            (_tl158621158708_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158623158701_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158621158708_))
                            (let ((_e158626158711_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158621158708_))))
                              (let ((_hd158625158715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158626158711_)))
                                    (_tl158624158718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158626158711_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158624158718_))
                                    (let ((_e158629158721_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158624158718_))))
                                      (let ((_hd158628158725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158629158721_)))
                                            (_tl158627158728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158629158721_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158627158728_))
                                            (let ((_e158632158731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158627158728_))))
                                              (let ((_hd158631158735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158632158731_)))
                                                    (_tl158630158738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158632158731_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158630158738_))
                                                    (let ((_e158635158741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158630158738_))))
                                                      (let ((_hd158634158745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158635158741_)))
                    (_tl158633158748_
                     (let () (declare (not safe)) (##cdr _e158635158741_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158633158748_))
                    (let ((_e158638158751_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158633158748_))))
                      (let ((_hd158637158755_
                             (let ()
                               (declare (not safe))
                               (##car _e158638158751_)))
                            (_tl158636158758_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158638158751_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158636158758_))
                            ((lambda (_L158761_
                                      _L158763_
                                      _L158764_
                                      _L158765_
                                      _L158766_
                                      _L158767_
                                      _L158768_
                                      _L158769_
                                      _L158770_
                                      _L158771_)
                               (let ((__tmp161414
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161380
                                      (let ((__tmp161411
                                             (let ((__tmp161413
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161412
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158771_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161413 __tmp161412)))
                                            (__tmp161381
                                             (let ((__tmp161408
                                                    (let ((__tmp161410
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161409
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L158770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161410 __tmp161409)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161382
                                                    (let ((__tmp161405
                                                           (let ((__tmp161407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161406
                          (let () (declare (not safe)) (cons _L158769_ '()))))
                     (declare (not safe))
                     (cons __tmp161407 __tmp161406)))
                  (__tmp161383
                   (let ((__tmp161402
                          (let ((__tmp161404
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161403
                                 (let ()
                                   (declare (not safe))
                                   (cons _L158768_ '()))))
                            (declare (not safe))
                            (cons __tmp161404 __tmp161403)))
                         (__tmp161384
                          (let ((__tmp161399
                                 (let ((__tmp161401
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161400
                                        (let ()
                                          (declare (not safe))
                                          (cons _L158767_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161401 __tmp161400)))
                                (__tmp161385
                                 (let ((__tmp161396
                                        (let ((__tmp161398
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161397
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L158766_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161398 __tmp161397)))
                                       (__tmp161386
                                        (let ((__tmp161387
                                               (let ((__tmp161388
                                                      (let ((__tmp161393
                                                             (let ((__tmp161395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161394
                            (let ()
                              (declare (not safe))
                              (cons _L158763_ '()))))
                       (declare (not safe))
                       (cons __tmp161395 __tmp161394)))
                    (__tmp161389
                     (let ((__tmp161390
                            (let ((__tmp161392
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161391
                                   (let ()
                                     (declare (not safe))
                                     (cons _L158761_ '()))))
                              (declare (not safe))
                              (cons __tmp161392 __tmp161391))))
                       (declare (not safe))
                       (cons __tmp161390 '()))))
                (declare (not safe))
                (cons __tmp161393 __tmp161389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L158764_
                                                       __tmp161388))))
                                          (declare (not safe))
                                          (cons _L158765_ __tmp161387))))
                                   (declare (not safe))
                                   (cons __tmp161396 __tmp161386))))
                            (declare (not safe))
                            (cons __tmp161399 __tmp161385))))
                     (declare (not safe))
                     (cons __tmp161402 __tmp161384))))
              (declare (not safe))
              (cons __tmp161405 __tmp161383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161408
                                                     __tmp161382))))
                                        (declare (not safe))
                                        (cons __tmp161411 __tmp161381))))
                                 (declare (not safe))
                                 (cons __tmp161414 __tmp161380)))
                             _hd158637158755_
                             _hd158634158745_
                             _hd158631158735_
                             _hd158628158725_
                             _hd158625158715_
                             _hd158622158705_
                             _hd158619158695_
                             _hd158616158685_
                             _hd158613158675_
                             _hd158610158665_)
                            (_g158594158644_ _g158595158648_))))
                    (_g158594158644_ _g158595158648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158594158644_
                                                     _g158595158648_))))
                                            (_g158594158644_
                                             _g158595158648_))))
                                    (_g158594158644_ _g158595158648_))))
                            (_g158594158644_ _g158595158648_))))
                    (_g158594158644_ _g158595158648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158594158644_
                                                     _g158595158648_))))
                                            (_g158594158644_
                                             _g158595158648_))))
                                    (_g158594158644_ _g158595158648_))))
                            (_g158594158644_ _g158595158648_))))
                    (_g158594158644_ _g158595158648_)))))
        (_g158593158811_ _$stx158590_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158815_)
      (let* ((_g158819158833_
              (lambda (_g158820158829_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158820158829_))))
             (_g158818158874_
              (lambda (_g158820158837_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158820158837_))
                    (let ((_e158824158840_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158820158837_))))
                      (let ((_hd158823158844_
                             (let ()
                               (declare (not safe))
                               (##car _e158824158840_)))
                            (_tl158822158847_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158824158840_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158822158847_))
                            (let ((_e158827158850_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158822158847_))))
                              (let ((_hd158826158854_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158827158850_)))
                                    (_tl158825158857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158827158850_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158825158857_))
                                    ((lambda (_L158860_)
                                       (let ((__tmp161419
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161415
                                              (let ((__tmp161416
                                                     (let ((__tmp161418
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161417
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161418 __tmp161417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161416 '()))))
                                         (declare (not safe))
                                         (cons __tmp161419 __tmp161415)))
                                     _hd158826158854_)
                                    (_g158819158833_ _g158820158837_))))
                            (_g158819158833_ _g158820158837_))))
                    (_g158819158833_ _g158820158837_)))))
        (_g158818158874_ _$stx158815_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx158878_)
      (let* ((_g158882158896_
              (lambda (_g158883158892_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158883158892_))))
             (_g158881158937_
              (lambda (_g158883158900_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158883158900_))
                    (let ((_e158887158903_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158883158900_))))
                      (let ((_hd158886158907_
                             (let ()
                               (declare (not safe))
                               (##car _e158887158903_)))
                            (_tl158885158910_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158887158903_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158885158910_))
                            (let ((_e158890158913_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158885158910_))))
                              (let ((_hd158889158917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158890158913_)))
                                    (_tl158888158920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158890158913_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158888158920_))
                                    ((lambda (_L158923_)
                                       (let ((__tmp161424
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161420
                                              (let ((__tmp161421
                                                     (let ((__tmp161423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161422
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161423 __tmp161422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161421 '()))))
                                         (declare (not safe))
                                         (cons __tmp161424 __tmp161420)))
                                     _hd158889158917_)
                                    (_g158882158896_ _g158883158900_))))
                            (_g158882158896_ _g158883158900_))))
                    (_g158882158896_ _g158883158900_)))))
        (_g158881158937_ _$stx158878_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx158941_)
      (let* ((_g158945158967_
              (lambda (_g158946158963_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158946158963_))))
             (_g158944159036_
              (lambda (_g158946158971_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158946158971_))
                    (let ((_e158952158974_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158946158971_))))
                      (let ((_hd158951158978_
                             (let ()
                               (declare (not safe))
                               (##car _e158952158974_)))
                            (_tl158950158981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158952158974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158950158981_))
                            (let ((_e158955158984_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158950158981_))))
                              (let ((_hd158954158988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158955158984_)))
                                    (_tl158953158991_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158955158984_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158953158991_))
                                    (let ((_e158958158994_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158953158991_))))
                                      (let ((_hd158957158998_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158958158994_)))
                                            (_tl158956159001_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158958158994_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158956159001_))
                                            (let ((_e158961159004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158956159001_))))
                                              (let ((_hd158960159008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158961159004_)))
                                                    (_tl158959159011_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158961159004_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158959159011_))
                                                    ((lambda (_L159014_
                                                              _L159016_
                                                              _L159017_)
                                                       (let ((__tmp161434
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161425
                      (let ((__tmp161431
                             (let ((__tmp161433
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161432
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159017_ '()))))
                               (declare (not safe))
                               (cons __tmp161433 __tmp161432)))
                            (__tmp161426
                             (let ((__tmp161428
                                    (let ((__tmp161430
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161429
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159016_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161430 __tmp161429)))
                                   (__tmp161427
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159014_ '()))))
                               (declare (not safe))
                               (cons __tmp161428 __tmp161427))))
                        (declare (not safe))
                        (cons __tmp161431 __tmp161426))))
                 (declare (not safe))
                 (cons __tmp161434 __tmp161425)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158960159008_
                                                     _hd158957158998_
                                                     _hd158954158988_)
                                                    (_g158945158967_
                                                     _g158946158971_))))
                                            (_g158945158967_
                                             _g158946158971_))))
                                    (_g158945158967_ _g158946158971_))))
                            (_g158945158967_ _g158946158971_))))
                    (_g158945158967_ _g158946158971_)))))
        (_g158944159036_ _$stx158941_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159040_)
      (let* ((_g159044159066_
              (lambda (_g159045159062_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159045159062_))))
             (_g159043159135_
              (lambda (_g159045159070_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159045159070_))
                    (let ((_e159051159073_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159045159070_))))
                      (let ((_hd159050159077_
                             (let ()
                               (declare (not safe))
                               (##car _e159051159073_)))
                            (_tl159049159080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159051159073_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159049159080_))
                            (let ((_e159054159083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159049159080_))))
                              (let ((_hd159053159087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159054159083_)))
                                    (_tl159052159090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159054159083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159052159090_))
                                    (let ((_e159057159093_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159052159090_))))
                                      (let ((_hd159056159097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159057159093_)))
                                            (_tl159055159100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159057159093_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159055159100_))
                                            (let ((_e159060159103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159055159100_))))
                                              (let ((_hd159059159107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159060159103_)))
                                                    (_tl159058159110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159060159103_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159058159110_))
                                                    ((lambda (_L159113_
                                                              _L159115_
                                                              _L159116_)
                                                       (let ((__tmp161444
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161435
                      (let ((__tmp161441
                             (let ((__tmp161443
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161442
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159116_ '()))))
                               (declare (not safe))
                               (cons __tmp161443 __tmp161442)))
                            (__tmp161436
                             (let ((__tmp161438
                                    (let ((__tmp161440
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161439
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159115_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161440 __tmp161439)))
                                   (__tmp161437
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159113_ '()))))
                               (declare (not safe))
                               (cons __tmp161438 __tmp161437))))
                        (declare (not safe))
                        (cons __tmp161441 __tmp161436))))
                 (declare (not safe))
                 (cons __tmp161444 __tmp161435)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159059159107_
                                                     _hd159056159097_
                                                     _hd159053159087_)
                                                    (_g159044159066_
                                                     _g159045159070_))))
                                            (_g159044159066_
                                             _g159045159070_))))
                                    (_g159044159066_ _g159045159070_))))
                            (_g159044159066_ _g159045159070_))))
                    (_g159044159066_ _g159045159070_)))))
        (_g159043159135_ _$stx159040_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159139_)
      (let* ((___stx160954160955_ _$stx159139_)
             (_g159147159215_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160954160955_)))))
        (let ((___kont160957160958_
               (lambda (_L159493_ _L159495_)
                 (let ((__tmp161460
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161445
                        (let ((__tmp161456
                               (let ((__tmp161459
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161457
                                      (let ((__tmp161458
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161458 '()))))
                                 (declare (not safe))
                                 (cons __tmp161459 __tmp161457)))
                              (__tmp161446
                               (let ((__tmp161453
                                      (let ((__tmp161455
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161454
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159495_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161455 __tmp161454)))
                                     (__tmp161447
                                      (let ((__tmp161448
                                             (let ((__tmp161449
                                                    (let ((__tmp161450
                                                           (let ((__tmp161452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161451
                          (let () (declare (not safe)) (cons _L159493_ '()))))
                     (declare (not safe))
                     (cons __tmp161452 __tmp161451))))
              (declare (not safe))
              (cons __tmp161450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159493_ __tmp161449))))
                                        (declare (not safe))
                                        (cons '#f __tmp161448))))
                                 (declare (not safe))
                                 (cons __tmp161453 __tmp161447))))
                          (declare (not safe))
                          (cons __tmp161456 __tmp161446))))
                   (declare (not safe))
                   (cons __tmp161460 __tmp161445))))
              (___kont160959160960_
               (lambda (_L159424_ _L159426_)
                 (let ((__tmp161461
                        (let ((__tmp161462
                               (let ((__tmp161463
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159424_ __tmp161463))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161462))))
                   (declare (not safe))
                   (cons _L159426_ __tmp161461))))
              (___kont160961160962_
               (lambda (_L159363_ _L159365_)
                 (let ((__tmp161477
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161464
                        (let ((__tmp161473
                               (let ((__tmp161476
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161474
                                      (let ((__tmp161475
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161475 '()))))
                                 (declare (not safe))
                                 (cons __tmp161476 __tmp161474)))
                              (__tmp161465
                               (let ((__tmp161470
                                      (let ((__tmp161472
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161471
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159365_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161472 __tmp161471)))
                                     (__tmp161466
                                      (let ((__tmp161467
                                             (let ((__tmp161469
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161468
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159363_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161469
                                                     __tmp161468))))
                                        (declare (not safe))
                                        (cons __tmp161467 '()))))
                                 (declare (not safe))
                                 (cons __tmp161470 __tmp161466))))
                          (declare (not safe))
                          (cons __tmp161473 __tmp161465))))
                   (declare (not safe))
                   (cons __tmp161477 __tmp161464))))
              (___kont160963160964_
               (lambda (_L159295_ _L159297_)
                 (let ((__tmp161491
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161478
                        (let ((__tmp161487
                               (let ((__tmp161490
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161488
                                      (let ((__tmp161489
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161489 '()))))
                                 (declare (not safe))
                                 (cons __tmp161490 __tmp161488)))
                              (__tmp161479
                               (let ((__tmp161484
                                      (let ((__tmp161486
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161485
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159297_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161486 __tmp161485)))
                                     (__tmp161480
                                      (let ((__tmp161481
                                             (let ((__tmp161483
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161482
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159295_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161483
                                                     __tmp161482))))
                                        (declare (not safe))
                                        (cons __tmp161481 '()))))
                                 (declare (not safe))
                                 (cons __tmp161484 __tmp161480))))
                          (declare (not safe))
                          (cons __tmp161487 __tmp161479))))
                   (declare (not safe))
                   (cons __tmp161491 __tmp161478))))
              (___kont160965160966_
               (lambda (_L159242_ _L159244_)
                 (let ((__tmp161492
                        (let ((__tmp161493
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159242_ __tmp161493))))
                   (declare (not safe))
                   (cons _L159244_ __tmp161492)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx160954160955_))
              (let ((_e159153159449_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx160954160955_))))
                (let ((_tl159151159456_
                       (let () (declare (not safe)) (##cdr _e159153159449_)))
                      (_hd159152159453_
                       (let () (declare (not safe)) (##car _e159153159449_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159151159456_))
                      (let ((_e159156159459_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159151159456_))))
                        (let ((_tl159154159466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159156159459_)))
                              (_hd159155159463_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159156159459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159154159466_))
                              (let ((_e159159159469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159154159466_))))
                                (let ((_tl159157159476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159159159469_)))
                                      (_hd159158159473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159159159469_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159158159473_))
                                      (let ((_e159160159479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159158159473_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159160159479_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159157159476_))
                                                (let ((_e159163159483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159157159476_))))
                                                  (let ((_tl159161159490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159163159483_)))
                                                        (_hd159162159487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159163159483_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159161159490_))
                                                        (___kont160957160958_
                                                         _hd159162159487_
                                                         _hd159155159463_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159155159463_))
                                                            (let ((_e159172159410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159155159463_))))
                      (declare (not safe))
                      (_g159147159215_))
                    (let () (declare (not safe)) (_g159147159215_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159155159463_))
                                                    (let ((_e159172159410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159155159463_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159172159410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159157159476_))
                      (___kont160959160960_ _hd159158159473_ _hd159152159453_)
                      (let () (declare (not safe)) (_g159147159215_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159157159476_))
                      (___kont160963160964_ _hd159158159473_ _hd159155159463_)
                      (let () (declare (not safe)) (_g159147159215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159157159476_))
                                                        (___kont160963160964_
                                                         _hd159158159473_
                                                         _hd159155159463_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159147159215_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159155159463_))
                                                (let ((_e159172159410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159155159463_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159172159410_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159157159476_))
                                                          (___kont160959160960_
                                                           _hd159158159473_
                                                           _hd159152159453_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159157159476_))
                      (let ((_e159190159353_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159157159476_))))
                        (let ((_tl159188159360_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159190159353_)))
                              (_hd159189159357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159190159353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159188159360_))
                              (___kont160961160962_
                               _hd159189159357_
                               _hd159158159473_)
                              (let ()
                                (declare (not safe))
                                (_g159147159215_)))))
                      (let () (declare (not safe)) (_g159147159215_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159157159476_))
                  (___kont160963160964_ _hd159158159473_ _hd159155159463_)
                  (let () (declare (not safe)) (_g159147159215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159157159476_))
                                                    (___kont160963160964_
                                                     _hd159158159473_
                                                     _hd159155159463_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159147159215_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159155159463_))
                                          (let ((_e159172159410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159155159463_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159172159410_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159157159476_))
                                                    (___kont160959160960_
                                                     _hd159158159473_
                                                     _hd159152159453_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159157159476_))
                                                        (let ((_e159190159353_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159157159476_))))
                  (let ((_tl159188159360_
                         (let () (declare (not safe)) (##cdr _e159190159353_)))
                        (_hd159189159357_
                         (let ()
                           (declare (not safe))
                           (##car _e159190159353_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159188159360_))
                        (___kont160961160962_
                         _hd159189159357_
                         _hd159158159473_)
                        (let () (declare (not safe)) (_g159147159215_)))))
                (let () (declare (not safe)) (_g159147159215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159157159476_))
                                                    (___kont160963160964_
                                                     _hd159158159473_
                                                     _hd159155159463_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159147159215_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159157159476_))
                                              (___kont160963160964_
                                               _hd159158159473_
                                               _hd159155159463_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159147159215_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159155159463_))
                                  (let ((_e159172159410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159155159463_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159154159466_))
                                        (___kont160965160966_
                                         _hd159155159463_
                                         _hd159152159453_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159147159215_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159154159466_))
                                      (___kont160965160966_
                                       _hd159155159463_
                                       _hd159152159453_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159147159215_)))))))
                      (let () (declare (not safe)) (_g159147159215_)))))
              (let () (declare (not safe)) (_g159147159215_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159517_)
      (let* ((___stx161094161095_ _$stx159517_)
             (_g159522159577_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161094161095_)))))
        (let ((___kont161097161098_
               (lambda (_L159762_ _L159764_)
                 (let ((__tmp161509
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161494
                        (let ((__tmp161505
                               (let ((__tmp161508
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161506
                                      (let ((__tmp161507
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161507 '()))))
                                 (declare (not safe))
                                 (cons __tmp161508 __tmp161506)))
                              (__tmp161495
                               (let ((__tmp161496
                                      (let ((__tmp161504
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161497
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159762_
                                                  _L159764_))
                                               (let ((__tmp161498
                                                      (lambda (_g159781159785_
                                                               _g159782159788_
                                                               _g159783159790_)
                                                        (let ((__tmp161499
                                                               (let ((__tmp161503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161500
                              (let ((__tmp161501
                                     (let ((__tmp161502
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159781159785_ '()))))
                                       (declare (not safe))
                                       (cons _g159782159788_ __tmp161502))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161501))))
                         (declare (not safe))
                         (cons __tmp161503 __tmp161500))))
                  (declare (not safe))
                  (cons __tmp161499 _g159783159790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161498
                                                         '()
                                                         _L159762_
                                                         _L159764_)))))
                                        (declare (not safe))
                                        (cons __tmp161504 __tmp161497))))
                                 (declare (not safe))
                                 (cons __tmp161496 '()))))
                          (declare (not safe))
                          (cons __tmp161505 __tmp161495))))
                   (declare (not safe))
                   (cons __tmp161509 __tmp161494))))
              (___kont161101161102_
               (lambda (_L159648_ _L159650_)
                 (let ((__tmp161524
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161510
                        (let ((__tmp161520
                               (let ((__tmp161523
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161521
                                      (let ((__tmp161522
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161522 '()))))
                                 (declare (not safe))
                                 (cons __tmp161523 __tmp161521)))
                              (__tmp161511
                               (let ((__tmp161512
                                      (let ((__tmp161519
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161513
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159648_
                                                  _L159650_))
                                               (let ((__tmp161514
                                                      (lambda (_g159665159669_
                                                               _g159666159672_
                                                               _g159667159674_)
                                                        (let ((__tmp161515
                                                               (let ((__tmp161518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161516
                              (let ((__tmp161517
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159665159669_ '()))))
                                (declare (not safe))
                                (cons _g159666159672_ __tmp161517))))
                         (declare (not safe))
                         (cons __tmp161518 __tmp161516))))
                  (declare (not safe))
                  (cons __tmp161515 _g159667159674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161514
                                                         '()
                                                         _L159648_
                                                         _L159650_)))))
                                        (declare (not safe))
                                        (cons __tmp161519 __tmp161513))))
                                 (declare (not safe))
                                 (cons __tmp161512 '()))))
                          (declare (not safe))
                          (cons __tmp161520 __tmp161511))))
                   (declare (not safe))
                   (cons __tmp161524 __tmp161510)))))
          (let* ((___match161145161146_
                  (lambda (_e159554159584_
                           _hd159553159588_
                           _tl159552159591_
                           ___splice161103161104_
                           _target159555159594_
                           _tl159557159597_)
                    (letrec ((_loop159558159600_
                              (lambda (_hd159556159604_
                                       _dispatch159562159607_
                                       _arity159563159609_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159556159604_))
                                    (let ((_e159559159612_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159556159604_))))
                                      (let ((_lp-tl159561159619_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159559159612_)))
                                            (_lp-hd159560159616_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159559159612_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159560159616_))
                                            (let ((_e159568159622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159560159616_))))
                                              (let ((_tl159566159629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159568159622_)))
                                                    (_hd159567159626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159568159622_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159566159629_))
                                                    (let ((_e159571159632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159566159629_))))
                                                      (let ((_tl159569159639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159571159632_)))
                    (_hd159570159636_
                     (let () (declare (not safe)) (##car _e159571159632_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159569159639_))
                    (_loop159558159600_
                     _lp-tl159561159619_
                     (let ()
                       (declare (not safe))
                       (cons _hd159570159636_ _dispatch159562159607_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159567159626_ _arity159563159609_)))
                    (let () (declare (not safe)) (_g159522159577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159522159577_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159522159577_)))))
                                    (let ((_arity159565159645_
                                           (reverse _arity159563159609_))
                                          (_dispatch159564159642_
                                           (reverse _dispatch159562159607_)))
                                      (___kont161101161102_
                                       _dispatch159564159642_
                                       _arity159565159645_))))))
                      (_loop159558159600_ _target159555159594_ '() '()))))
                 (___match161137161138_
                  (lambda (_e159554159584_ _hd159553159588_ _tl159552159591_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159552159591_))
                        (let ((___splice161103161104_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159552159591_
                                  '0))))
                          (let ((_tl159557159597_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161103161104_ '1)))
                                (_target159555159594_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161103161104_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159557159597_))
                                (___match161145161146_
                                 _e159554159584_
                                 _hd159553159588_
                                 _tl159552159591_
                                 ___splice161103161104_
                                 _target159555159594_
                                 _tl159557159597_)
                                (let ()
                                  (declare (not safe))
                                  (_g159522159577_)))))
                        (let () (declare (not safe)) (_g159522159577_)))))
                 (___match161131161132_
                  (lambda (_e159528159684_
                           _hd159527159688_
                           _tl159526159691_
                           _e159531159694_
                           _hd159530159698_
                           _tl159529159701_
                           _e159532159704_
                           ___splice161099161100_
                           _target159533159708_
                           _tl159535159711_)
                    (letrec ((_loop159536159714_
                              (lambda (_hd159534159718_
                                       _dispatch159540159721_
                                       _arity159541159723_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159534159718_))
                                    (let ((_e159537159726_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159534159718_))))
                                      (let ((_lp-tl159539159733_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159537159726_)))
                                            (_lp-hd159538159730_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159537159726_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159538159730_))
                                            (let ((_e159546159736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159538159730_))))
                                              (let ((_tl159544159743_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159546159736_)))
                                                    (_hd159545159740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159546159736_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159544159743_))
                                                    (let ((_e159549159746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159544159743_))))
                                                      (let ((_tl159547159753_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159549159746_)))
                    (_hd159548159750_
                     (let () (declare (not safe)) (##car _e159549159746_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159547159753_))
                    (_loop159536159714_
                     _lp-tl159539159733_
                     (let ()
                       (declare (not safe))
                       (cons _hd159548159750_ _dispatch159540159721_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159545159740_ _arity159541159723_)))
                    (___match161137161138_
                     _e159528159684_
                     _hd159527159688_
                     _tl159526159691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161137161138_
                                                     _e159528159684_
                                                     _hd159527159688_
                                                     _tl159526159691_))))
                                            (___match161137161138_
                                             _e159528159684_
                                             _hd159527159688_
                                             _tl159526159691_))))
                                    (let ((_arity159543159759_
                                           (reverse _arity159541159723_))
                                          (_dispatch159542159756_
                                           (reverse _dispatch159540159721_)))
                                      (___kont161097161098_
                                       _dispatch159542159756_
                                       _arity159543159759_))))))
                      (_loop159536159714_ _target159533159708_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161094161095_))
                (let ((_e159528159684_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161094161095_))))
                  (let ((_tl159526159691_
                         (let () (declare (not safe)) (##cdr _e159528159684_)))
                        (_hd159527159688_
                         (let ()
                           (declare (not safe))
                           (##car _e159528159684_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159526159691_))
                        (let ((_e159531159694_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159526159691_))))
                          (let ((_tl159529159701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159531159694_)))
                                (_hd159530159698_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159531159694_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159530159698_))
                                (let ((_e159532159704_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159530159698_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159532159704_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159529159701_))
                                          (let ((___splice161099161100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159529159701_
                                                    '0))))
                                            (let ((_tl159535159711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161099161100_
                                                      '1)))
                                                  (_target159533159708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161099161100_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159535159711_))
                                                  (___match161131161132_
                                                   _e159528159684_
                                                   _hd159527159688_
                                                   _tl159526159691_
                                                   _e159531159694_
                                                   _hd159530159698_
                                                   _tl159529159701_
                                                   _e159532159704_
                                                   ___splice161099161100_
                                                   _target159533159708_
                                                   _tl159535159711_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159526159691_))
                                                      (let ((___splice161103161104_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159526159691_ '0))))
                (let ((_tl159557159597_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161103161104_ '1)))
                      (_target159555159594_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161103161104_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159557159597_))
                      (___match161145161146_
                       _e159528159684_
                       _hd159527159688_
                       _tl159526159691_
                       ___splice161103161104_
                       _target159555159594_
                       _tl159557159597_)
                      (let () (declare (not safe)) (_g159522159577_)))))
              (let () (declare (not safe)) (_g159522159577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159526159691_))
                                              (let ((___splice161103161104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159526159691_
                                                        '0))))
                                                (let ((_tl159557159597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161103161104_
                                                          '1)))
                                                      (_target159555159594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161103161104_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159557159597_))
                                                      (___match161145161146_
                                                       _e159528159684_
                                                       _hd159527159688_
                                                       _tl159526159691_
                                                       ___splice161103161104_
                                                       _target159555159594_
                                                       _tl159557159597_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159522159577_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159522159577_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159526159691_))
                                          (let ((___splice161103161104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159526159691_
                                                    '0))))
                                            (let ((_tl159557159597_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161103161104_
                                                      '1)))
                                                  (_target159555159594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161103161104_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159557159597_))
                                                  (___match161145161146_
                                                   _e159528159684_
                                                   _hd159527159688_
                                                   _tl159526159691_
                                                   ___splice161103161104_
                                                   _target159555159594_
                                                   _tl159557159597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159522159577_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159522159577_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159526159691_))
                                    (let ((___splice161103161104_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159526159691_
                                              '0))))
                                      (let ((_tl159557159597_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161103161104_
                                                '1)))
                                            (_target159555159594_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161103161104_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159557159597_))
                                            (___match161145161146_
                                             _e159528159684_
                                             _hd159527159688_
                                             _tl159526159691_
                                             ___splice161103161104_
                                             _target159555159594_
                                             _tl159557159597_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159522159577_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159522159577_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159526159691_))
                            (let ((___splice161103161104_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159526159691_
                                      '0))))
                              (let ((_tl159557159597_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161103161104_
                                        '1)))
                                    (_target159555159594_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161103161104_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159557159597_))
                                    (___match161145161146_
                                     _e159528159684_
                                     _hd159527159688_
                                     _tl159526159691_
                                     ___splice161103161104_
                                     _target159555159594_
                                     _tl159557159597_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159522159577_)))))
                            (let () (declare (not safe)) (_g159522159577_))))))
                (let () (declare (not safe)) (_g159522159577_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159799_)
      (let* ((_g159803159821_
              (lambda (_g159804159817_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159804159817_))))
             (_g159802159876_
              (lambda (_g159804159825_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159804159825_))
                    (let ((_e159809159828_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159804159825_))))
                      (let ((_hd159808159832_
                             (let ()
                               (declare (not safe))
                               (##car _e159809159828_)))
                            (_tl159807159835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159809159828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159807159835_))
                            (let ((_e159812159838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159807159835_))))
                              (let ((_hd159811159842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159812159838_)))
                                    (_tl159810159845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159812159838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159810159845_))
                                    (let ((_e159815159848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159810159845_))))
                                      (let ((_hd159814159852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159815159848_)))
                                            (_tl159813159855_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159815159848_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159813159855_))
                                            ((lambda (_L159858_ _L159860_)
                                               (let ((__tmp161538
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161525
                                                      (let ((__tmp161534
                                                             (let ((__tmp161537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161535
                            (let ((__tmp161536
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161536 '()))))
                       (declare (not safe))
                       (cons __tmp161537 __tmp161535)))
                    (__tmp161526
                     (let ((__tmp161531
                            (let ((__tmp161533
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161532
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159860_ '()))))
                              (declare (not safe))
                              (cons __tmp161533 __tmp161532)))
                           (__tmp161527
                            (let ((__tmp161528
                                   (let ((__tmp161530
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161529
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159858_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161530 __tmp161529))))
                              (declare (not safe))
                              (cons __tmp161528 '()))))
                       (declare (not safe))
                       (cons __tmp161531 __tmp161527))))
                (declare (not safe))
                (cons __tmp161534 __tmp161526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161538
                                                       __tmp161525)))
                                             _hd159814159852_
                                             _hd159811159842_)
                                            (_g159803159821_
                                             _g159804159825_))))
                                    (_g159803159821_ _g159804159825_))))
                            (_g159803159821_ _g159804159825_))))
                    (_g159803159821_ _g159804159825_)))))
        (_g159802159876_ _$stx159799_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx159880_)
      (let* ((_g159884159902_
              (lambda (_g159885159898_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159885159898_))))
             (_g159883159957_
              (lambda (_g159885159906_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159885159906_))
                    (let ((_e159890159909_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159885159906_))))
                      (let ((_hd159889159913_
                             (let ()
                               (declare (not safe))
                               (##car _e159890159909_)))
                            (_tl159888159916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159890159909_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159888159916_))
                            (let ((_e159893159919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159888159916_))))
                              (let ((_hd159892159923_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159893159919_)))
                                    (_tl159891159926_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159893159919_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159891159926_))
                                    (let ((_e159896159929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159891159926_))))
                                      (let ((_hd159895159933_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159896159929_)))
                                            (_tl159894159936_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159896159929_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159894159936_))
                                            ((lambda (_L159939_ _L159941_)
                                               (let ((__tmp161552
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161539
                                                      (let ((__tmp161548
                                                             (let ((__tmp161551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161549
                            (let ((__tmp161550
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161550 '()))))
                       (declare (not safe))
                       (cons __tmp161551 __tmp161549)))
                    (__tmp161540
                     (let ((__tmp161545
                            (let ((__tmp161547
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161546
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159941_ '()))))
                              (declare (not safe))
                              (cons __tmp161547 __tmp161546)))
                           (__tmp161541
                            (let ((__tmp161542
                                   (let ((__tmp161544
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161543
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159939_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161544 __tmp161543))))
                              (declare (not safe))
                              (cons __tmp161542 '()))))
                       (declare (not safe))
                       (cons __tmp161545 __tmp161541))))
                (declare (not safe))
                (cons __tmp161548 __tmp161540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161552
                                                       __tmp161539)))
                                             _hd159895159933_
                                             _hd159892159923_)
                                            (_g159884159902_
                                             _g159885159906_))))
                                    (_g159884159902_ _g159885159906_))))
                            (_g159884159902_ _g159885159906_))))
                    (_g159884159902_ _g159885159906_)))))
        (_g159883159957_ _$stx159880_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx159961_)
      (let* ((___stx161148161149_ _$stx159961_)
             (_g159968160039_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161148161149_)))))
        (let ((___kont161151161152_
               (lambda (_L160330_ _L160332_)
                 (let ((__tmp161558
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161553
                        (let ((__tmp161554
                               (let ((__tmp161555
                                      (let ((__tmp161557
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161556
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160330_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161557 __tmp161556))))
                                 (declare (not safe))
                                 (cons __tmp161555 '()))))
                          (declare (not safe))
                          (cons _L160332_ __tmp161554))))
                   (declare (not safe))
                   (cons __tmp161558 __tmp161553))))
              (___kont161153161154_
               (lambda (_L160249_ _L160251_)
                 (let ((__tmp161567
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161559
                        (let ((__tmp161560
                               (let ((__tmp161561
                                      (let ((__tmp161566
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161562
                                             (let ((__tmp161563
                                                    (lambda (_g160270160273_
                                                             _g160271160276_)
                                                      (let ((__tmp161564
                                                             (let ((__tmp161565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160270160273_ __tmp161565))))
                (declare (not safe))
                (cons __tmp161564 _g160271160276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161563
                                                       '()
                                                       _L160249_))))
                                        (declare (not safe))
                                        (cons __tmp161566 __tmp161562))))
                                 (declare (not safe))
                                 (cons __tmp161561 '()))))
                          (declare (not safe))
                          (cons _L160251_ __tmp161560))))
                   (declare (not safe))
                   (cons __tmp161567 __tmp161559))))
              (___kont161157161158_
               (lambda (_L160161_ _L160163_)
                 (let ((__tmp161574
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161568
                        (let ((__tmp161569
                               (let ((__tmp161570
                                      (let ((__tmp161573
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161571
                                             (let ((__tmp161572
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160161_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161572))))
                                        (declare (not safe))
                                        (cons __tmp161573 __tmp161571))))
                                 (declare (not safe))
                                 (cons __tmp161570 '()))))
                          (declare (not safe))
                          (cons _L160163_ __tmp161569))))
                   (declare (not safe))
                   (cons __tmp161574 __tmp161568))))
              (___kont161159161160_
               (lambda (_L160096_ _L160098_)
                 (let ((__tmp161584
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161575
                        (let ((__tmp161576
                               (let ((__tmp161577
                                      (let ((__tmp161583
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161578
                                             (let ((__tmp161579
                                                    (let ((__tmp161580
                                                           (lambda (_g160115160118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160116160121_)
                     (let ((__tmp161581
                            (let ((__tmp161582
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160115160118_ __tmp161582))))
                       (declare (not safe))
                       (cons __tmp161581 _g160116160121_)))))
              (declare (not safe))
              (foldr1 __tmp161580 '() _L160096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161579))))
                                        (declare (not safe))
                                        (cons __tmp161583 __tmp161578))))
                                 (declare (not safe))
                                 (cons __tmp161577 '()))))
                          (declare (not safe))
                          (cons _L160098_ __tmp161576))))
                   (declare (not safe))
                   (cons __tmp161584 __tmp161575)))))
          (let* ((___match161267161268_
                  (lambda (_e160021160046_
                           _hd160020160050_
                           _tl160019160053_
                           _e160024160056_
                           _hd160023160060_
                           _tl160022160063_
                           ___splice161161161162_
                           _target160025160066_
                           _tl160027160069_)
                    (letrec ((_loop160028160072_
                              (lambda (_hd160026160076_ _arity160032160079_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160026160076_))
                                    (let ((_e160029160082_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160026160076_))))
                                      (let ((_lp-tl160031160089_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160029160082_)))
                                            (_lp-hd160030160086_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160029160082_))))
                                        (_loop160028160072_
                                         _lp-tl160031160089_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160030160086_
                                                 _arity160032160079_)))))
                                    (let ((_arity160033160092_
                                           (reverse _arity160032160079_)))
                                      (___kont161159161160_
                                       _arity160033160092_
                                       _hd160023160060_))))))
                      (_loop160028160072_ _target160025160066_ '()))))
                 (___match161227161228_
                  (lambda (_e159989160185_
                           _hd159988160189_
                           _tl159987160192_
                           _e159992160195_
                           _hd159991160199_
                           _tl159990160202_
                           _e159995160205_
                           _hd159994160209_
                           _tl159993160212_
                           _e159996160215_
                           ___splice161155161156_
                           _target159997160219_
                           _tl159999160222_)
                    (letrec ((_loop160000160225_
                              (lambda (_hd159998160229_ _arity160004160232_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159998160229_))
                                    (let ((_e160001160235_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159998160229_))))
                                      (let ((_lp-tl160003160242_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160001160235_)))
                                            (_lp-hd160002160239_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160001160235_))))
                                        (_loop160000160225_
                                         _lp-tl160003160242_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160002160239_
                                                 _arity160004160232_)))))
                                    (let ((_arity160005160245_
                                           (reverse _arity160004160232_)))
                                      (___kont161153161154_
                                       _arity160005160245_
                                       _hd159991160199_))))))
                      (_loop160000160225_ _target159997160219_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161148161149_))
                (let ((_e159974160286_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161148161149_))))
                  (let ((_tl159972160293_
                         (let () (declare (not safe)) (##cdr _e159974160286_)))
                        (_hd159973160290_
                         (let ()
                           (declare (not safe))
                           (##car _e159974160286_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159972160293_))
                        (let ((_e159977160296_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159972160293_))))
                          (let ((_tl159975160303_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159977160296_)))
                                (_hd159976160300_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159977160296_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159975160303_))
                                (let ((_e159980160306_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159975160303_))))
                                  (let ((_tl159978160313_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159980160306_)))
                                        (_hd159979160310_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159980160306_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd159979160310_))
                                        (let ((_e159981160316_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd159979160310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e159981160316_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl159978160313_))
                                                  (let ((_e159984160320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl159978160313_))))
                                                    (let ((_tl159982160327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e159984160320_)))
                                                          (_hd159983160324_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e159984160320_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159982160327_))
                                                          (___kont161151161152_
                                                           _hd159983160324_
                                                           _hd159976160300_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl159978160313_))
                      (let ((___splice161155161156_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159978160313_ '0))))
                        (let ((_tl159999160222_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161155161156_ '1)))
                              (_target159997160219_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161155161156_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159999160222_))
                              (___match161227161228_
                               _e159974160286_
                               _hd159973160290_
                               _tl159972160293_
                               _e159977160296_
                               _hd159976160300_
                               _tl159975160303_
                               _e159980160306_
                               _hd159979160310_
                               _tl159978160313_
                               _e159981160316_
                               ___splice161155161156_
                               _target159997160219_
                               _tl159999160222_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl159975160303_))
                                  (let ((___splice161161161162_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl159975160303_
                                            '0))))
                                    (let ((_tl160027160069_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161161161162_
                                              '1)))
                                          (_target160025160066_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161161161162_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160027160069_))
                                          (___match161267161268_
                                           _e159974160286_
                                           _hd159973160290_
                                           _tl159972160293_
                                           _e159977160296_
                                           _hd159976160300_
                                           _tl159975160303_
                                           ___splice161161161162_
                                           _target160025160066_
                                           _tl160027160069_)
                                          (let ()
                                            (declare (not safe))
                                            (_g159968160039_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g159968160039_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl159975160303_))
                          (let ((___splice161161161162_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl159975160303_
                                    '0))))
                            (let ((_tl160027160069_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161161161162_ '1)))
                                  (_target160025160066_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161161161162_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160027160069_))
                                  (___match161267161268_
                                   _e159974160286_
                                   _hd159973160290_
                                   _tl159972160293_
                                   _e159977160296_
                                   _hd159976160300_
                                   _tl159975160303_
                                   ___splice161161161162_
                                   _target160025160066_
                                   _tl160027160069_)
                                  (let ()
                                    (declare (not safe))
                                    (_g159968160039_)))))
                          (let () (declare (not safe)) (_g159968160039_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159978160313_))
                                                      (let ((___splice161155161156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159978160313_ '0))))
                (let ((_tl159999160222_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161155161156_ '1)))
                      (_target159997160219_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161155161156_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159999160222_))
                      (___match161227161228_
                       _e159974160286_
                       _hd159973160290_
                       _tl159972160293_
                       _e159977160296_
                       _hd159976160300_
                       _tl159975160303_
                       _e159980160306_
                       _hd159979160310_
                       _tl159978160313_
                       _e159981160316_
                       ___splice161155161156_
                       _target159997160219_
                       _tl159999160222_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl159978160313_))
                          (___kont161157161158_
                           _hd159979160310_
                           _hd159976160300_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159975160303_))
                              (let ((___splice161161161162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159975160303_
                                        '0))))
                                (let ((_tl160027160069_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161161161162_
                                          '1)))
                                      (_target160025160066_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161161161162_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160027160069_))
                                      (___match161267161268_
                                       _e159974160286_
                                       _hd159973160290_
                                       _tl159972160293_
                                       _e159977160296_
                                       _hd159976160300_
                                       _tl159975160303_
                                       ___splice161161161162_
                                       _target160025160066_
                                       _tl160027160069_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159968160039_)))))
                              (let ()
                                (declare (not safe))
                                (_g159968160039_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159978160313_))
                  (___kont161157161158_ _hd159979160310_ _hd159976160300_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl159975160303_))
                      (let ((___splice161161161162_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159975160303_ '0))))
                        (let ((_tl160027160069_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161161161162_ '1)))
                              (_target160025160066_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161161161162_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160027160069_))
                              (___match161267161268_
                               _e159974160286_
                               _hd159973160290_
                               _tl159972160293_
                               _e159977160296_
                               _hd159976160300_
                               _tl159975160303_
                               ___splice161161161162_
                               _target160025160066_
                               _tl160027160069_)
                              (let ()
                                (declare (not safe))
                                (_g159968160039_)))))
                      (let () (declare (not safe)) (_g159968160039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159978160313_))
                                                  (___kont161157161158_
                                                   _hd159979160310_
                                                   _hd159976160300_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159975160303_))
                                                      (let ((___splice161161161162_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159975160303_ '0))))
                (let ((_tl160027160069_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161161161162_ '1)))
                      (_target160025160066_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161161161162_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160027160069_))
                      (___match161267161268_
                       _e159974160286_
                       _hd159973160290_
                       _tl159972160293_
                       _e159977160296_
                       _hd159976160300_
                       _tl159975160303_
                       ___splice161161161162_
                       _target160025160066_
                       _tl160027160069_)
                      (let () (declare (not safe)) (_g159968160039_)))))
              (let () (declare (not safe)) (_g159968160039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159978160313_))
                                            (___kont161157161158_
                                             _hd159979160310_
                                             _hd159976160300_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl159975160303_))
                                                (let ((___splice161161161162_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl159975160303_
                                                          '0))))
                                                  (let ((_tl160027160069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161161161162_
                                                            '1)))
                                                        (_target160025160066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161161161162_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160027160069_))
                                                        (___match161267161268_
                                                         _e159974160286_
                                                         _hd159973160290_
                                                         _tl159972160293_
                                                         _e159977160296_
                                                         _hd159976160300_
                                                         _tl159975160303_
                                                         ___splice161161161162_
                                                         _target160025160066_
                                                         _tl160027160069_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159968160039_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g159968160039_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159975160303_))
                                    (let ((___splice161161161162_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159975160303_
                                              '0))))
                                      (let ((_tl160027160069_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161161161162_
                                                '1)))
                                            (_target160025160066_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161161161162_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160027160069_))
                                            (___match161267161268_
                                             _e159974160286_
                                             _hd159973160290_
                                             _tl159972160293_
                                             _e159977160296_
                                             _hd159976160300_
                                             _tl159975160303_
                                             ___splice161161161162_
                                             _target160025160066_
                                             _tl160027160069_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159968160039_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159968160039_))))))
                        (let () (declare (not safe)) (_g159968160039_)))))
                (let () (declare (not safe)) (_g159968160039_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160356_)
      (let* ((___stx161270161271_ _$stx160356_)
             (_g160361160396_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161270161271_)))))
        (let ((___kont161273161274_
               (lambda (_L160518_ _L160520_)
                 (let ((__tmp161590
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161585
                        (let ((__tmp161586
                               (let ((__tmp161587
                                      (let ((__tmp161589
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161588
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160518_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161589 __tmp161588))))
                                 (declare (not safe))
                                 (cons __tmp161587 '()))))
                          (declare (not safe))
                          (cons _L160520_ __tmp161586))))
                   (declare (not safe))
                   (cons __tmp161590 __tmp161585))))
              (___kont161275161276_
               (lambda (_L160453_ _L160455_)
                 (let ((__tmp161599
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161591
                        (let ((__tmp161592
                               (let ((__tmp161593
                                      (let ((__tmp161598
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161594
                                             (let ((__tmp161595
                                                    (lambda (_g160472160475_
                                                             _g160473160478_)
                                                      (let ((__tmp161596
                                                             (let ((__tmp161597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160472160475_ __tmp161597))))
                (declare (not safe))
                (cons __tmp161596 _g160473160478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161595
                                                       '()
                                                       _L160453_))))
                                        (declare (not safe))
                                        (cons __tmp161598 __tmp161594))))
                                 (declare (not safe))
                                 (cons __tmp161593 '()))))
                          (declare (not safe))
                          (cons _L160455_ __tmp161592))))
                   (declare (not safe))
                   (cons __tmp161599 __tmp161591)))))
          (let ((___match161319161320_
                 (lambda (_e160378160403_
                          _hd160377160407_
                          _tl160376160410_
                          _e160381160413_
                          _hd160380160417_
                          _tl160379160420_
                          ___splice161277161278_
                          _target160382160423_
                          _tl160384160426_)
                   (letrec ((_loop160385160429_
                             (lambda (_hd160383160433_ _arity160389160436_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160383160433_))
                                   (let ((_e160386160439_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160383160433_))))
                                     (let ((_lp-tl160388160446_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160386160439_)))
                                           (_lp-hd160387160443_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160386160439_))))
                                       (_loop160385160429_
                                        _lp-tl160388160446_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160387160443_
                                                _arity160389160436_)))))
                                   (let ((_arity160390160449_
                                          (reverse _arity160389160436_)))
                                     (___kont161275161276_
                                      _arity160390160449_
                                      _hd160380160417_))))))
                     (_loop160385160429_ _target160382160423_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161270161271_))
                (let ((_e160367160488_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161270161271_))))
                  (let ((_tl160365160495_
                         (let () (declare (not safe)) (##cdr _e160367160488_)))
                        (_hd160366160492_
                         (let ()
                           (declare (not safe))
                           (##car _e160367160488_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160365160495_))
                        (let ((_e160370160498_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160365160495_))))
                          (let ((_tl160368160505_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160370160498_)))
                                (_hd160369160502_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160370160498_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160368160505_))
                                (let ((_e160373160508_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160368160505_))))
                                  (let ((_tl160371160515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160373160508_)))
                                        (_hd160372160512_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160373160508_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160371160515_))
                                        (___kont161273161274_
                                         _hd160372160512_
                                         _hd160369160502_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160368160505_))
                                            (let ((___splice161277161278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160368160505_
                                                      '0))))
                                              (let ((_tl160384160426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161277161278_
                                                        '1)))
                                                    (_target160382160423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161277161278_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160384160426_))
                                                    (___match161319161320_
                                                     _e160367160488_
                                                     _hd160366160492_
                                                     _tl160365160495_
                                                     _e160370160498_
                                                     _hd160369160502_
                                                     _tl160368160505_
                                                     ___splice161277161278_
                                                     _target160382160423_
                                                     _tl160384160426_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160361160396_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160361160396_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160368160505_))
                                    (let ((___splice161277161278_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160368160505_
                                              '0))))
                                      (let ((_tl160384160426_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161277161278_
                                                '1)))
                                            (_target160382160423_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161277161278_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160384160426_))
                                            (___match161319161320_
                                             _e160367160488_
                                             _hd160366160492_
                                             _tl160365160495_
                                             _e160370160498_
                                             _hd160369160502_
                                             _tl160368160505_
                                             ___splice161277161278_
                                             _target160382160423_
                                             _tl160384160426_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160361160396_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160361160396_))))))
                        (let () (declare (not safe)) (_g160361160396_)))))
                (let () (declare (not safe)) (_g160361160396_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160540_)
      (let* ((_g160544160579_
              (lambda (_g160545160575_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160545160575_))))
             (_g160543160707_
              (lambda (_g160545160583_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160545160583_))
                    (let ((_e160550160586_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160545160583_))))
                      (let ((_hd160549160590_
                             (let ()
                               (declare (not safe))
                               (##car _e160550160586_)))
                            (_tl160548160593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160550160586_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160548160593_))
                            (let ((_g161600_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160548160593_
                                      '0))))
                              (begin
                                (let ((_g161601_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161600_)
                                             (##vector-length _g161600_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161601_ 2)))
                                      (error "Context expects 2 values"
                                             _g161601_)))
                                (let ((_target160551160596_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161600_ 0)))
                                      (_tl160553160599_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161600_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160553160599_))
                                      (letrec ((_loop160554160602_
                                                (lambda (_hd160552160606_
                                                         _arity160558160609_
                                                         _prim160559160611_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160552160606_))
                                                      (let ((_e160555160614_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160552160606_))))
                (let ((_lp-hd160556160618_
                       (let () (declare (not safe)) (##car _e160555160614_)))
                      (_lp-tl160557160621_
                       (let () (declare (not safe)) (##cdr _e160555160614_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160556160618_))
                      (let ((_e160564160624_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160556160618_))))
                        (let ((_hd160563160628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160564160624_)))
                              (_tl160562160631_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160564160624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160562160631_))
                              (let ((_g161610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160562160631_
                                        '0))))
                                (begin
                                  (let ((_g161611_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161610_)
                                               (##vector-length _g161610_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161611_ 2)))
                                        (error "Context expects 2 values"
                                               _g161611_)))
                                  (let ((_target160565160634_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161610_ 0)))
                                        (_tl160567160637_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161610_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160567160637_))
                                        (letrec ((_loop160568160640_
                                                  (lambda (_hd160566160644_
                                                           _arity160572160647_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160566160644_))
                                                        (let ((_e160569160650_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160566160644_))))
                  (let ((_lp-hd160570160654_
                         (let () (declare (not safe)) (##car _e160569160650_)))
                        (_lp-tl160571160657_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160569160650_))))
                    (_loop160568160640_
                     _lp-tl160571160657_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160570160654_ _arity160572160647_)))))
                (let ((_arity160573160660_ (reverse _arity160572160647_)))
                  (_loop160554160602_
                   _lp-tl160557160621_
                   (let ()
                     (declare (not safe))
                     (cons _arity160573160660_ _arity160558160609_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160563160628_ _prim160559160611_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160568160640_
                                           _target160565160634_
                                           '()))
                                        (_g160544160579_ _g160545160583_)))))
                              (_g160544160579_ _g160545160583_))))
                      (_g160544160579_ _g160545160583_))))
              (let ((_arity160560160664_ (reverse _arity160558160609_))
                    (_prim160561160667_ (reverse _prim160559160611_)))
                ((lambda (_L160670_ _L160672_)
                   (let ((__tmp161609
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161602
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160670_
                               _L160672_))
                            (let ((__tmp161603
                                   (lambda (_g160687160693_
                                            _g160688160696_
                                            _g160689160698_)
                                     (let ((__tmp161604
                                            (let ((__tmp161608
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161605
                                                   (let ((__tmp161606
                                                          (let ((__tmp161607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160690160701_ _g160691160704_)
                           (let ()
                             (declare (not safe))
                             (cons _g160690160701_ _g160691160704_)))))
                    (declare (not safe))
                    (foldr1 __tmp161607 '() _g160687160693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160688160696_
                                                           __tmp161606))))
                                              (declare (not safe))
                                              (cons __tmp161608 __tmp161605))))
                                       (declare (not safe))
                                       (cons __tmp161604 _g160689160698_)))))
                              (declare (not safe))
                              (foldr2 __tmp161603 '() _L160670_ _L160672_)))))
                     (declare (not safe))
                     (cons __tmp161609 __tmp161602)))
                 _arity160560160664_
                 _prim160561160667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160554160602_
                                         _target160551160596_
                                         '()
                                         '()))
                                      (_g160544160579_ _g160545160583_)))))
                            (_g160544160579_ _g160545160583_))))
                    (_g160544160579_ _g160545160583_)))))
        (_g160543160707_ _$stx160540_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160713_)
      (let* ((_g160717160752_
              (lambda (_g160718160748_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160718160748_))))
             (_g160716160880_
              (lambda (_g160718160756_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160718160756_))
                    (let ((_e160723160759_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160718160756_))))
                      (let ((_hd160722160763_
                             (let ()
                               (declare (not safe))
                               (##car _e160723160759_)))
                            (_tl160721160766_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160723160759_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160721160766_))
                            (let ((_g161612_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160721160766_
                                      '0))))
                              (begin
                                (let ((_g161613_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161612_)
                                             (##vector-length _g161612_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161613_ 2)))
                                      (error "Context expects 2 values"
                                             _g161613_)))
                                (let ((_target160724160769_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161612_ 0)))
                                      (_tl160726160772_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161612_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160726160772_))
                                      (letrec ((_loop160727160775_
                                                (lambda (_hd160725160779_
                                                         _arity160731160782_
                                                         _prim160732160784_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160725160779_))
                                                      (let ((_e160728160787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160725160779_))))
                (let ((_lp-hd160729160791_
                       (let () (declare (not safe)) (##car _e160728160787_)))
                      (_lp-tl160730160794_
                       (let () (declare (not safe)) (##cdr _e160728160787_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160729160791_))
                      (let ((_e160737160797_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160729160791_))))
                        (let ((_hd160736160801_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160737160797_)))
                              (_tl160735160804_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160737160797_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160735160804_))
                              (let ((_g161622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160735160804_
                                        '0))))
                                (begin
                                  (let ((_g161623_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161622_)
                                               (##vector-length _g161622_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161623_ 2)))
                                        (error "Context expects 2 values"
                                               _g161623_)))
                                  (let ((_target160738160807_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161622_ 0)))
                                        (_tl160740160810_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161622_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160740160810_))
                                        (letrec ((_loop160741160813_
                                                  (lambda (_hd160739160817_
                                                           _arity160745160820_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160739160817_))
                                                        (let ((_e160742160823_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160739160817_))))
                  (let ((_lp-hd160743160827_
                         (let () (declare (not safe)) (##car _e160742160823_)))
                        (_lp-tl160744160830_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160742160823_))))
                    (_loop160741160813_
                     _lp-tl160744160830_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160743160827_ _arity160745160820_)))))
                (let ((_arity160746160833_ (reverse _arity160745160820_)))
                  (_loop160727160775_
                   _lp-tl160730160794_
                   (let ()
                     (declare (not safe))
                     (cons _arity160746160833_ _arity160731160782_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160736160801_ _prim160732160784_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160741160813_
                                           _target160738160807_
                                           '()))
                                        (_g160717160752_ _g160718160756_)))))
                              (_g160717160752_ _g160718160756_))))
                      (_g160717160752_ _g160718160756_))))
              (let ((_arity160733160837_ (reverse _arity160731160782_))
                    (_prim160734160840_ (reverse _prim160732160784_)))
                ((lambda (_L160843_ _L160845_)
                   (let ((__tmp161621
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161614
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160843_
                               _L160845_))
                            (let ((__tmp161615
                                   (lambda (_g160860160866_
                                            _g160861160869_
                                            _g160862160871_)
                                     (let ((__tmp161616
                                            (let ((__tmp161620
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161617
                                                   (let ((__tmp161618
                                                          (let ((__tmp161619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160863160874_ _g160864160877_)
                           (let ()
                             (declare (not safe))
                             (cons _g160863160874_ _g160864160877_)))))
                    (declare (not safe))
                    (foldr1 __tmp161619 '() _g160860160866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160861160869_
                                                           __tmp161618))))
                                              (declare (not safe))
                                              (cons __tmp161620 __tmp161617))))
                                       (declare (not safe))
                                       (cons __tmp161616 _g160862160871_)))))
                              (declare (not safe))
                              (foldr2 __tmp161615 '() _L160843_ _L160845_)))))
                     (declare (not safe))
                     (cons __tmp161621 __tmp161614)))
                 _arity160733160837_
                 _prim160734160840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160727160775_
                                         _target160724160769_
                                         '()
                                         '()))
                                      (_g160717160752_ _g160718160756_)))))
                            (_g160717160752_ _g160718160756_))))
                    (_g160717160752_ _g160718160756_)))))
        (_g160716160880_ _$stx160713_)))))
