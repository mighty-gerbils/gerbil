(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx33121_)
      (let ((_g3312433131_
             (lambda (_g3312533127_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3312533127_))))
        (_g3312433131_ _$stx33121_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx33135_)
      (let ((_g3313833145_
             (lambda (_g3313933141_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3313933141_))))
        (_g3313833145_ _$stx33135_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx33149_)
      (let ((_g3315233159_
             (lambda (_g3315333155_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3315333155_))))
        (_g3315233159_ _$stx33149_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx33163_)
      (let ((_g3316633173_
             (lambda (_g3316733169_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3316733169_))))
        (_g3316633173_ _$stx33163_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type*
     'gerbil.core#setq-macro::t
     'setq-macro
     (list gerbil/core$<macro-object>#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args33188_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args33188_)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type*
     'gerbil.core#setf-macro::t
     'setf-macro
     (list gerbil/core$<macro-object>#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args33184_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args33184_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx33181_)
      (if (gx#identifier? _stx33181_)
          (let ((__tmp50375 (gx#syntax-local-value _stx33181_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50375))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx33178_)
      (if (gx#identifier? _stx33178_)
          (let ((__tmp50376 (gx#syntax-local-value _stx33178_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50376))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx33192_)
      (let* ((___stx4683846839_ _stx33192_)
             (_g3319833257_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4683846839_))))
        (let ((___kont4684146842_
               (lambda (_L33530_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33530_)
                  _stx33192_)))
              (___kont4684346844_
               (lambda (_L33429_ _L33431_ _L33432_)
                 (let* ((_g3345433462_
                         (lambda (_g3345533458_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3345533458_)))
                        (_g3345333489_
                         (lambda (_g3345533466_)
                           ((lambda (_L33469_)
                              (let ()
                                (let ((__tmp50377
                                       (let ((__tmp50379
                                              (lambda (_g3348033483_
                                                       _g3348133486_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3348033483_
                                                        _g3348133486_))))
                                             (__tmp50378
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33429_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50379
                                                 __tmp50378
                                                 _L33431_))))
                                  (declare (not safe))
                                  (cons _L33469_ __tmp50377))))
                            _g3345533466_))))
                   (_g3345333489_
                    (gx#stx-identifier _L33432_ _L33432_ '"-set!")))))
              (___kont4684746848_
               (lambda (_L33339_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33339_)
                  _stx33192_)))
              (___kont4684946850_
               (lambda (_L33294_ _L33296_)
                 (let ((__tmp50382 (gx#datum->syntax '#f '%#set!))
                       (__tmp50380
                        (let ((__tmp50381
                               (let ()
                                 (declare (not safe))
                                 (cons _L33294_ '()))))
                          (declare (not safe))
                          (cons _L33296_ __tmp50381))))
                   (declare (not safe))
                   (cons __tmp50382 __tmp50380)))))
          (let* ((___match4692946930_
                  (lambda (_e3324533264_
                           _hd3324433268_
                           _tl3324333271_
                           _e3324833274_
                           _hd3324733278_
                           _tl3324633281_
                           _e3325133284_
                           _hd3325033288_
                           _tl3324933291_)
                    (let ((_L33294_ _hd3325033288_) (_L33296_ _hd3324733278_))
                      (if (gx#identifier? _L33296_)
                          (___kont4684946850_ _L33294_ _L33296_)
                          (let () (declare (not safe)) (_g3319833257_))))))
                 (___match4690946910_
                  (lambda (_e3323733319_
                           _hd3323633323_
                           _tl3323533326_
                           _e3324033329_
                           _hd3323933333_
                           _tl3323833336_)
                    (let ((_L33339_ _hd3323933333_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33339_))
                          (___kont4684746848_ _L33339_)
                          (if (gx#stx-pair? _tl3323833336_)
                              (let ((_e3325133284_
                                     (gx#syntax-e _tl3323833336_)))
                                (let ((_tl3324933291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3325133284_)))
                                      (_hd3325033288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3325133284_))))
                                  (if (gx#stx-null? _tl3324933291_)
                                      (___match4692946930_
                                       _e3323733319_
                                       _hd3323633323_
                                       _tl3323533326_
                                       _e3324033329_
                                       _hd3323933333_
                                       _tl3323833336_
                                       _e3325133284_
                                       _hd3325033288_
                                       _tl3324933291_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3319833257_)))))
                              (let ()
                                (declare (not safe))
                                (_g3319833257_)))))))
                 (___match4689746898_
                  (lambda (_e3321533359_
                           _hd3321433363_
                           _tl3321333366_
                           _e3321833369_
                           _hd3321733373_
                           _tl3321633376_
                           _e3322133379_
                           _hd3322033383_
                           _tl3321933386_
                           ___splice4684546846_
                           _target3322233389_
                           _tl3322433392_)
                    (letrec ((_loop3322533395_
                              (lambda (_hd3322333399_ _arg3322933402_)
                                (if (gx#stx-pair? _hd3322333399_)
                                    (let ((_e3322633405_
                                           (gx#syntax-e _hd3322333399_)))
                                      (let ((_lp-tl3322833412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3322633405_)))
                                            (_lp-hd3322733409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3322633405_))))
                                        (_loop3322533395_
                                         _lp-tl3322833412_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3322733409_
                                                 _arg3322933402_)))))
                                    (let ((_arg3323033415_
                                           (reverse _arg3322933402_)))
                                      (if (gx#stx-pair? _tl3321633376_)
                                          (let ((_e3323333419_
                                                 (gx#syntax-e _tl3321633376_)))
                                            (let ((_tl3323133426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3323333419_)))
                                                  (_hd3323233423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3323333419_))))
                                              (if (gx#stx-null? _tl3323133426_)
                                                  (let ((_L33429_
                                                         _hd3323233423_)
                                                        (_L33431_
                                                         _arg3323033415_)
                                                        (_L33432_
                                                         _hd3322033383_))
                                                    (if (gx#identifier?
                                                         _L33432_)
                                                        (___kont4684346844_
                                                         _L33429_
                                                         _L33431_
                                                         _L33432_)
                                                        (___match4690946910_
                                                         _e3321533359_
                                                         _hd3321433363_
                                                         _tl3321333366_
                                                         _e3321833369_
                                                         _hd3321733373_
                                                         _tl3321633376_)))
                                                  (___match4690946910_
                                                   _e3321533359_
                                                   _hd3321433363_
                                                   _tl3321333366_
                                                   _e3321833369_
                                                   _hd3321733373_
                                                   _tl3321633376_))))
                                          (___match4690946910_
                                           _e3321533359_
                                           _hd3321433363_
                                           _tl3321333366_
                                           _e3321833369_
                                           _hd3321733373_
                                           _tl3321633376_)))))))
                      (_loop3322533395_ _target3322233389_ '())))))
            (if (gx#stx-pair? ___stx4683846839_)
                (let ((_e3320333500_ (gx#syntax-e ___stx4683846839_)))
                  (let ((_tl3320133507_
                         (let () (declare (not safe)) (##cdr _e3320333500_)))
                        (_hd3320233504_
                         (let () (declare (not safe)) (##car _e3320333500_))))
                    (if (gx#stx-pair? _tl3320133507_)
                        (let ((_e3320633510_ (gx#syntax-e _tl3320133507_)))
                          (let ((_tl3320433517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3320633510_)))
                                (_hd3320533514_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3320633510_))))
                            (if (gx#stx-pair? _hd3320533514_)
                                (let ((_e3320933520_
                                       (gx#syntax-e _hd3320533514_)))
                                  (let ((_tl3320733527_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3320933520_)))
                                        (_hd3320833524_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3320933520_))))
                                    (if (let ((__tmp50383
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50383))
                                        (let ((_L33530_ _hd3320833524_))
                                          (___kont4684146842_ _L33530_))
                                        (if (gx#stx-pair/null? _tl3320733527_)
                                            (let ((___splice4684546846_
                                                   (gx#syntax-split-splice
                                                    _tl3320733527_
                                                    '0)))
                                              (let ((_tl3322433392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4684546846_
                                                        '1)))
                                                    (_target3322233389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4684546846_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3322433392_)
                                                    (___match4689746898_
                                                     _e3320333500_
                                                     _hd3320233504_
                                                     _tl3320133507_
                                                     _e3320633510_
                                                     _hd3320533514_
                                                     _tl3320433517_
                                                     _e3320933520_
                                                     _hd3320833524_
                                                     _tl3320733527_
                                                     ___splice4684546846_
                                                     _target3322233389_
                                                     _tl3322433392_)
                                                    (___match4690946910_
                                                     _e3320333500_
                                                     _hd3320233504_
                                                     _tl3320133507_
                                                     _e3320633510_
                                                     _hd3320533514_
                                                     _tl3320433517_))))
                                            (___match4690946910_
                                             _e3320333500_
                                             _hd3320233504_
                                             _tl3320133507_
                                             _e3320633510_
                                             _hd3320533514_
                                             _tl3320433517_)))))
                                (___match4690946910_
                                 _e3320333500_
                                 _hd3320233504_
                                 _tl3320133507_
                                 _e3320633510_
                                 _hd3320533514_
                                 _tl3320433517_))))
                        (let () (declare (not safe)) (_g3319833257_)))))
                (let () (declare (not safe)) (_g3319833257_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33550_)
      (let* ((_g3355333577_
              (lambda (_g3355433573_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3355433573_)))
             (_g3355233755_
              (lambda (_g3355433581_)
                (if (gx#stx-pair? _g3355433581_)
                    (let ((_e3355933584_ (gx#syntax-e _g3355433581_)))
                      (let ((_hd3355833588_
                             (let ()
                               (declare (not safe))
                               (##car _e3355933584_)))
                            (_tl3355733591_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3355933584_))))
                        (if (gx#stx-pair/null? _tl3355733591_)
                            (if (fx>= (gx#stx-length _tl3355733591_) '1)
                                (let ((_g50384_
                                       (gx#syntax-split-splice
                                        _tl3355733591_
                                        '1)))
                                  (begin
                                    (let ((_g50385_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50384_)
                                                 (##vector-length _g50384_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50385_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50385_)))
                                    (let ((_target3356033594_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50384_ 0)))
                                          (_tl3356233597_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50384_ 1))))
                                      (if (gx#stx-pair? _tl3356233597_)
                                          (let ((_e3357133600_
                                                 (gx#syntax-e _tl3356233597_)))
                                            (let ((_hd3357033604_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3357133600_)))
                                                  (_tl3356933607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3357133600_))))
                                              (if (gx#stx-null? _tl3356933607_)
                                                  (letrec ((_loop3356333610_
                                                            (lambda (_hd3356133614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3356733617_)
                      (if (gx#stx-pair? _hd3356133614_)
                          (let ((_e3356433620_ (gx#syntax-e _hd3356133614_)))
                            (let ((_lp-hd3356533624_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3356433620_)))
                                  (_lp-tl3356633627_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3356433620_))))
                              (_loop3356333610_
                               _lp-tl3356633627_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3356533624_ _tgt3356733617_)))))
                          (let ((_tgt3356833630_ (reverse _tgt3356733617_)))
                            ((lambda (_L33634_ _L33636_)
                               (let* ((_g3365433671_
                                       (lambda (_g3365533667_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3365533667_)))
                                      (_g3365333743_
                                       (lambda (_g3365533675_)
                                         (if (gx#stx-pair/null? _g3365533675_)
                                             (let ((_g50386_
                                                    (gx#syntax-split-splice
                                                     _g3365533675_
                                                     '0)))
                                               (begin
                                                 (let ((_g50387_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50386_)
                                                              (##vector-length
                                                               _g50386_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50387_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3365733678_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50386_
                                                           0)))
                                                       (_tl3365933681_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50386_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3365933681_)
                                                       (letrec ((_loop3366033684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3365833688_ _$e3366433691_)
                           (if (gx#stx-pair? _hd3365833688_)
                               (let ((_e3366133694_
                                      (gx#syntax-e _hd3365833688_)))
                                 (let ((_lp-hd3366233698_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3366133694_)))
                                       (_lp-tl3366333701_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3366133694_))))
                                   (_loop3366033684_
                                    _lp-tl3366333701_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd3366233698_
                                            _$e3366433691_)))))
                               (let ((_$e3366533704_ (reverse _$e3366433691_)))
                                 ((lambda (_L33708_)
                                    (let ()
                                      (let ((__tmp50400
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50388
                                             (let ((__tmp50395
                                                    (let ((__tmp50396
                                                           (let ((__tmp50398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50399
                                 (lambda (_g3372633729_ _g3372733732_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3372633729_ _g3372733732_)))))
                            (declare (not safe))
                            (foldr1 __tmp50399 '() _L33708_)))
                         (__tmp50397
                          (let () (declare (not safe)) (cons _L33634_ '()))))
                     (declare (not safe))
                     (cons __tmp50398 __tmp50397))))
              (declare (not safe))
              (cons __tmp50396 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50389
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33708_
                                                       _L33636_)
                                                      (let ((__tmp50390
                                                             (lambda (_g3372333735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3372433738_
                              _g3372533740_)
                       (let ((__tmp50391
                              (let ((__tmp50394 (gx#datum->syntax '#f 'set!))
                                    (__tmp50392
                                     (let ((__tmp50393
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3372333735_ '()))))
                                       (declare (not safe))
                                       (cons _g3372433738_ __tmp50393))))
                                (declare (not safe))
                                (cons __tmp50394 __tmp50392))))
                         (declare (not safe))
                         (cons __tmp50391 _g3372533740_)))))
                (declare (not safe))
                (foldr2 __tmp50390 '() _L33708_ _L33636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50395 __tmp50389))))
                                        (declare (not safe))
                                        (cons __tmp50400 __tmp50388))))
                                  _$e3366533704_))))))
                 (_loop3366033684_ _target3365733678_ '()))
               (_g3365433671_ _g3365533675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3365433671_ _g3365533675_)))))
                                 (_g3365333743_
                                  (gx#gentemps
                                   (let ((__tmp50401
                                          (lambda (_g3374633749_ _g3374733752_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3374633749_
                                                    _g3374733752_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50401 '() _L33636_))))))
                             _hd3357033604_
                             _tgt3356833630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3356333610_
                                                     _target3356033594_
                                                     '()))
                                                  (_g3355333577_
                                                   _g3355433581_))))
                                          (_g3355333577_ _g3355433581_)))))
                                (_g3355333577_ _g3355433581_))
                            (_g3355333577_ _g3355433581_))))
                    (_g3355333577_ _g3355433581_)))))
        (_g3355233755_ _stx33550_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33761_)
      (let* ((___stx4693246933_ _stx33761_)
             (_g3376533823_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4693246933_))))
        (let ((___kont4693546936_
               (lambda (_L34157_)
                 (let ((__tmp50405 (gx#datum->syntax '#f 'let))
                       (__tmp50402
                        (let ((__tmp50403
                               (let ((__tmp50404
                                      (lambda (_g3417334176_ _g3417434179_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3417334176_
                                                _g3417434179_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50404 '() _L34157_))))
                          (declare (not safe))
                          (cons '() __tmp50403))))
                   (declare (not safe))
                   (cons __tmp50405 __tmp50402))))
              (___kont4693946940_
               (lambda (_L33934_ _L33936_ _L33937_)
                 (let* ((_g3396033968_
                         (lambda (_g3396133964_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3396133964_)))
                        (_g3395934088_
                         (lambda (_g3396133972_)
                           ((lambda (_L33975_)
                              (let ()
                                (let* ((_g3398734004_
                                        (lambda (_g3398834000_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3398834000_)))
                                       (_g3398634068_
                                        (lambda (_g3398834008_)
                                          (if (gx#stx-pair/null? _g3398834008_)
                                              (let ((_g50406_
                                                     (gx#syntax-split-splice
                                                      _g3398834008_
                                                      '0)))
                                                (begin
                                                  (let ((_g50407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50406_)
                                                               (##vector-length
                                                                _g50406_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50407_ 2)))
                (error "Context expects 2 values" _g50407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3399034011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50406_
                                                            0)))
                                                        (_tl3399234014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50406_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3399234014_)
                                                        (letrec ((_loop3399334017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3399134021_ _arg3399734024_)
                            (if (gx#stx-pair? _hd3399134021_)
                                (let ((_e3399434027_
                                       (gx#syntax-e _hd3399134021_)))
                                  (let ((_lp-hd3399534031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3399434027_)))
                                        (_lp-tl3399634034_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3399434027_))))
                                    (_loop3399334017_
                                     _lp-tl3399634034_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3399534031_
                                             _arg3399734024_)))))
                                (let ((_arg3399834037_
                                       (reverse _arg3399734024_)))
                                  ((lambda (_L34041_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50411
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50408
                                                (let ((__tmp50409
                                                       (let ((__tmp50410
                                                              (lambda (_g3405934062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3406034065_)
                        (let ()
                          (declare (not safe))
                          (cons _g3405934062_ _g3406034065_)))))
                 (declare (not safe))
                 (foldr1 __tmp50410 '() _L34041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33975_ __tmp50409))))
                                           (declare (not safe))
                                           (cons __tmp50411 __tmp50408)))))
                                   _arg3399834037_))))))
                  (_loop3399334017_ _target3399034011_ '()))
                (_g3398734004_ _g3398834008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3398734004_ _g3398834008_)))))
                                  (_g3398634068_
                                   (let ((__tmp50414
                                          (gx#syntax->list
                                           (let ((__tmp50415
                                                  (lambda (_g3407134074_
                                                           _g3407234077_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3407134074_
                                                            _g3407234077_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50415
                                                     '()
                                                     _L33937_))))
                                         (__tmp50412
                                          (gx#syntax->list
                                           (let ((__tmp50413
                                                  (lambda (_g3407934082_
                                                           _g3408034085_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3407934082_
                                                            _g3408034085_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50413
                                                     '()
                                                     _L33936_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50414
                                             __tmp50412))))))
                            _g3396133972_))))
                   (_g3395934088_
                    (gx#stx-wrap-source
                     (let ((__tmp50419 (gx#datum->syntax '#f 'lambda))
                           (__tmp50416
                            (let ((__tmp50417
                                   (let ((__tmp50418
                                          (lambda (_g3409134094_ _g3409234097_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3409134094_
                                                    _g3409234097_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50418 '() _L33934_))))
                              (declare (not safe))
                              (cons '() __tmp50417))))
                       (declare (not safe))
                       (cons __tmp50419 __tmp50416))
                     (gx#stx-source _stx33761_)))))))
          (let* ((___match4698746988_
                  (lambda (_e3378833830_
                           _hd3378733834_
                           _tl3378633837_
                           _e3379133840_
                           _hd3379033844_
                           _tl3378933847_
                           ___splice4694146942_
                           _target3379233850_
                           _tl3379433853_)
                    (letrec ((_loop3379533856_
                              (lambda (_hd3379333860_
                                       _expr3379933863_
                                       _param3380033865_)
                                (if (gx#stx-pair? _hd3379333860_)
                                    (let ((_e3379633868_
                                           (gx#syntax-e _hd3379333860_)))
                                      (let ((_lp-tl3379833875_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3379633868_)))
                                            (_lp-hd3379733872_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3379633868_))))
                                        (if (gx#stx-pair? _lp-hd3379733872_)
                                            (let ((_e3380533878_
                                                   (gx#syntax-e
                                                    _lp-hd3379733872_)))
                                              (let ((_tl3380333885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3380533878_)))
                                                    (_hd3380433882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3380533878_))))
                                                (if (gx#stx-pair?
                                                     _tl3380333885_)
                                                    (let ((_e3380833888_
                                                           (gx#syntax-e
                                                            _tl3380333885_)))
                                                      (let ((_tl3380633895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3380833888_)))
                    (_hd3380733892_
                     (let () (declare (not safe)) (##car _e3380833888_))))
                (if (gx#stx-null? _tl3380633895_)
                    (_loop3379533856_
                     _lp-tl3379833875_
                     (let ()
                       (declare (not safe))
                       (cons _hd3380733892_ _expr3379933863_))
                     (let ()
                       (declare (not safe))
                       (cons _hd3380433882_ _param3380033865_)))
                    (let () (declare (not safe)) (_g3376533823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3376533823_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3376533823_)))))
                                    (let ((_param3380233901_
                                           (reverse _param3380033865_))
                                          (_expr3380133898_
                                           (reverse _expr3379933863_)))
                                      (if (gx#stx-pair/null? _tl3378933847_)
                                          (let ((___splice4694346944_
                                                 (gx#syntax-split-splice
                                                  _tl3378933847_
                                                  '0)))
                                            (let ((_tl3381133907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4694346944_
                                                      '1)))
                                                  (_target3380933904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4694346944_
                                                      '0))))
                                              (if (gx#stx-null? _tl3381133907_)
                                                  (letrec ((_loop3381233910_
                                                            (lambda (_hd3381033914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3381633917_)
                      (if (gx#stx-pair? _hd3381033914_)
                          (let ((_e3381333920_ (gx#syntax-e _hd3381033914_)))
                            (let ((_lp-tl3381533927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3381333920_)))
                                  (_lp-hd3381433924_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3381333920_))))
                              (_loop3381233910_
                               _lp-tl3381533927_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3381433924_ _body3381633917_)))))
                          (let ((_body3381733930_ (reverse _body3381633917_)))
                            (___kont4693946940_
                             _body3381733930_
                             _expr3380133898_
                             _param3380233901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3381233910_
                                                     _target3380933904_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3376533823_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3376533823_))))))))
                      (_loop3379533856_ _target3379233850_ '() '()))))
                 (___match4696746968_
                  (lambda (_e3377034107_
                           _hd3376934111_
                           _tl3376834114_
                           _e3377334117_
                           _hd3377234121_
                           _tl3377134124_
                           ___splice4693746938_
                           _target3377434127_
                           _tl3377634130_)
                    (letrec ((_loop3377734133_
                              (lambda (_hd3377534137_ _body3378134140_)
                                (if (gx#stx-pair? _hd3377534137_)
                                    (let ((_e3377834143_
                                           (gx#syntax-e _hd3377534137_)))
                                      (let ((_lp-tl3378034150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3377834143_)))
                                            (_lp-hd3377934147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3377834143_))))
                                        (_loop3377734133_
                                         _lp-tl3378034150_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3377934147_
                                                 _body3378134140_)))))
                                    (let ((_body3378234153_
                                           (reverse _body3378134140_)))
                                      (___kont4693546936_
                                       _body3378234153_))))))
                      (_loop3377734133_ _target3377434127_ '())))))
            (if (gx#stx-pair? ___stx4693246933_)
                (let ((_e3377034107_ (gx#syntax-e ___stx4693246933_)))
                  (let ((_tl3376834114_
                         (let () (declare (not safe)) (##cdr _e3377034107_)))
                        (_hd3376934111_
                         (let () (declare (not safe)) (##car _e3377034107_))))
                    (if (gx#stx-pair? _tl3376834114_)
                        (let ((_e3377334117_ (gx#syntax-e _tl3376834114_)))
                          (let ((_tl3377134124_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3377334117_)))
                                (_hd3377234121_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3377334117_))))
                            (if (gx#stx-null? _hd3377234121_)
                                (if (gx#stx-pair/null? _tl3377134124_)
                                    (let ((___splice4693746938_
                                           (gx#syntax-split-splice
                                            _tl3377134124_
                                            '0)))
                                      (let ((_tl3377634130_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4693746938_
                                                '1)))
                                            (_target3377434127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4693746938_
                                                '0))))
                                        (if (gx#stx-null? _tl3377634130_)
                                            (___match4696746968_
                                             _e3377034107_
                                             _hd3376934111_
                                             _tl3376834114_
                                             _e3377334117_
                                             _hd3377234121_
                                             _tl3377134124_
                                             ___splice4693746938_
                                             _target3377434127_
                                             _tl3377634130_)
                                            (if (gx#stx-pair/null?
                                                 _hd3377234121_)
                                                (let ((___splice4694146942_
                                                       (gx#syntax-split-splice
                                                        _hd3377234121_
                                                        '0)))
                                                  (let ((_tl3379433853_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4694146942_
                                                            '1)))
                                                        (_target3379233850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4694146942_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3379433853_)
                                                        (___match4698746988_
                                                         _e3377034107_
                                                         _hd3376934111_
                                                         _tl3376834114_
                                                         _e3377334117_
                                                         _hd3377234121_
                                                         _tl3377134124_
                                                         ___splice4694146942_
                                                         _target3379233850_
                                                         _tl3379433853_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3376533823_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3376533823_))))))
                                    (if (gx#stx-pair/null? _hd3377234121_)
                                        (let ((___splice4694146942_
                                               (gx#syntax-split-splice
                                                _hd3377234121_
                                                '0)))
                                          (let ((_tl3379433853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4694146942_
                                                    '1)))
                                                (_target3379233850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4694146942_
                                                    '0))))
                                            (if (gx#stx-null? _tl3379433853_)
                                                (___match4698746988_
                                                 _e3377034107_
                                                 _hd3376934111_
                                                 _tl3376834114_
                                                 _e3377334117_
                                                 _hd3377234121_
                                                 _tl3377134124_
                                                 ___splice4694146942_
                                                 _target3379233850_
                                                 _tl3379433853_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3376533823_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3376533823_))))
                                (if (gx#stx-pair/null? _hd3377234121_)
                                    (let ((___splice4694146942_
                                           (gx#syntax-split-splice
                                            _hd3377234121_
                                            '0)))
                                      (let ((_tl3379433853_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4694146942_
                                                '1)))
                                            (_target3379233850_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4694146942_
                                                '0))))
                                        (if (gx#stx-null? _tl3379433853_)
                                            (___match4698746988_
                                             _e3377034107_
                                             _hd3376934111_
                                             _tl3376834114_
                                             _e3377334117_
                                             _hd3377234121_
                                             _tl3377134124_
                                             ___splice4694146942_
                                             _target3379233850_
                                             _tl3379433853_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3376533823_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3376533823_))))))
                        (let () (declare (not safe)) (_g3376533823_)))))
                (let () (declare (not safe)) (_g3376533823_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx34190_)
      (let* ((_g3419434218_
              (lambda (_g3419534214_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3419534214_)))
             (_g3419334303_
              (lambda (_g3419534222_)
                (if (gx#stx-pair? _g3419534222_)
                    (let ((_e3420034225_ (gx#syntax-e _g3419534222_)))
                      (let ((_hd3419934229_
                             (let ()
                               (declare (not safe))
                               (##car _e3420034225_)))
                            (_tl3419834232_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3420034225_))))
                        (if (gx#stx-pair? _tl3419834232_)
                            (let ((_e3420334235_ (gx#syntax-e _tl3419834232_)))
                              (let ((_hd3420234239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3420334235_)))
                                    (_tl3420134242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3420334235_))))
                                (if (gx#stx-pair/null? _tl3420134242_)
                                    (let ((_g50420_
                                           (gx#syntax-split-splice
                                            _tl3420134242_
                                            '0)))
                                      (begin
                                        (let ((_g50421_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50420_)
                                                     (##vector-length _g50420_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50421_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50421_)))
                                        (let ((_target3420434245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50420_ 0)))
                                              (_tl3420634248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50420_ 1))))
                                          (if (gx#stx-null? _tl3420634248_)
                                              (letrec ((_loop3420734251_
                                                        (lambda (_hd3420534255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3421134258_)
                  (if (gx#stx-pair? _hd3420534255_)
                      (let ((_e3420834261_ (gx#syntax-e _hd3420534255_)))
                        (let ((_lp-hd3420934265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3420834261_)))
                              (_lp-tl3421034268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3420834261_))))
                          (_loop3420734251_
                           _lp-tl3421034268_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3420934265_ _body3421134258_)))))
                      (let ((_body3421234271_ (reverse _body3421134258_)))
                        ((lambda (_L34275_ _L34277_)
                           (if (gx#identifier? _L34277_)
                               (let ((__tmp50429
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50422
                                      (let ((__tmp50423
                                             (let ((__tmp50428
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50424
                                                    (let ((__tmp50427
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50425
                   (let ((__tmp50426
                          (lambda (_g3429434297_ _g3429534300_)
                            (let ()
                              (declare (not safe))
                              (cons _g3429434297_ _g3429534300_)))))
                     (declare (not safe))
                     (foldr1 __tmp50426 '() _L34275_))))
              (declare (not safe))
              (cons __tmp50427 __tmp50425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50428 __tmp50424))))
                                        (declare (not safe))
                                        (cons __tmp50423 '()))))
                                 (declare (not safe))
                                 (cons __tmp50429 __tmp50422))
                               (_g3419434218_ _g3419534222_)))
                         _body3421234271_
                         _hd3420234239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3420734251_
                                                 _target3420434245_
                                                 '()))
                                              (_g3419434218_ _g3419534222_)))))
                                    (_g3419434218_ _g3419534222_))))
                            (_g3419434218_ _g3419534222_))))
                    (_g3419434218_ _g3419534222_)))))
        (_g3419334303_ _$stx34190_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx34308_)
      (let* ((_g3431234336_
              (lambda (_g3431334332_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3431334332_)))
             (_g3431134421_
              (lambda (_g3431334340_)
                (if (gx#stx-pair? _g3431334340_)
                    (let ((_e3431834343_ (gx#syntax-e _g3431334340_)))
                      (let ((_hd3431734347_
                             (let ()
                               (declare (not safe))
                               (##car _e3431834343_)))
                            (_tl3431634350_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3431834343_))))
                        (if (gx#stx-pair? _tl3431634350_)
                            (let ((_e3432134353_ (gx#syntax-e _tl3431634350_)))
                              (let ((_hd3432034357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3432134353_)))
                                    (_tl3431934360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3432134353_))))
                                (if (gx#stx-pair/null? _tl3431934360_)
                                    (let ((_g50430_
                                           (gx#syntax-split-splice
                                            _tl3431934360_
                                            '0)))
                                      (begin
                                        (let ((_g50431_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50430_)
                                                     (##vector-length _g50430_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50431_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50431_)))
                                        (let ((_target3432234363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50430_ 0)))
                                              (_tl3432434366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50430_ 1))))
                                          (if (gx#stx-null? _tl3432434366_)
                                              (letrec ((_loop3432534369_
                                                        (lambda (_hd3432334373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3432934376_)
                  (if (gx#stx-pair? _hd3432334373_)
                      (let ((_e3432634379_ (gx#syntax-e _hd3432334373_)))
                        (let ((_lp-hd3432734383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3432634379_)))
                              (_lp-tl3432834386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3432634379_))))
                          (_loop3432534369_
                           _lp-tl3432834386_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3432734383_ _body3432934376_)))))
                      (let ((_body3433034389_ (reverse _body3432934376_)))
                        ((lambda (_L34393_ _L34395_)
                           (if (gx#identifier? _L34395_)
                               (let ((__tmp50439
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50432
                                      (let ((__tmp50433
                                             (let ((__tmp50438
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50434
                                                    (let ((__tmp50437
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50435
                   (let ((__tmp50436
                          (lambda (_g3441234415_ _g3441334418_)
                            (let ()
                              (declare (not safe))
                              (cons _g3441234415_ _g3441334418_)))))
                     (declare (not safe))
                     (foldr1 __tmp50436 '() _L34393_))))
              (declare (not safe))
              (cons __tmp50437 __tmp50435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50438 __tmp50434))))
                                        (declare (not safe))
                                        (cons __tmp50433 '()))))
                                 (declare (not safe))
                                 (cons __tmp50439 __tmp50432))
                               (_g3431234336_ _g3431334340_)))
                         _body3433034389_
                         _hd3432034357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3432534369_
                                                 _target3432234363_
                                                 '()))
                                              (_g3431234336_ _g3431334340_)))))
                                    (_g3431234336_ _g3431334340_))))
                            (_g3431234336_ _g3431334340_))))
                    (_g3431234336_ _g3431334340_)))))
        (_g3431134421_ _$stx34308_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34426_)
      (let* ((_g3443034458_
              (lambda (_g3443134454_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3443134454_)))
             (_g3442934557_
              (lambda (_g3443134462_)
                (if (gx#stx-pair? _g3443134462_)
                    (let ((_e3443734465_ (gx#syntax-e _g3443134462_)))
                      (let ((_hd3443634469_
                             (let ()
                               (declare (not safe))
                               (##car _e3443734465_)))
                            (_tl3443534472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3443734465_))))
                        (if (gx#stx-pair? _tl3443534472_)
                            (let ((_e3444034475_ (gx#syntax-e _tl3443534472_)))
                              (let ((_hd3443934479_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3444034475_)))
                                    (_tl3443834482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3444034475_))))
                                (if (gx#stx-pair? _tl3443834482_)
                                    (let ((_e3444334485_
                                           (gx#syntax-e _tl3443834482_)))
                                      (let ((_hd3444234489_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3444334485_)))
                                            (_tl3444134492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3444334485_))))
                                        (if (gx#stx-pair/null? _tl3444134492_)
                                            (let ((_g50440_
                                                   (gx#syntax-split-splice
                                                    _tl3444134492_
                                                    '0)))
                                              (begin
                                                (let ((_g50441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50440_)
                                                             (##vector-length
                                                              _g50440_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3444434495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50440_
                                                          0)))
                                                      (_tl3444634498_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50440_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3444634498_)
                                                      (letrec ((_loop3444734501_
                                                                (lambda (_hd3444534505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3445134508_)
                          (if (gx#stx-pair? _hd3444534505_)
                              (let ((_e3444834511_
                                     (gx#syntax-e _hd3444534505_)))
                                (let ((_lp-hd3444934515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3444834511_)))
                                      (_lp-tl3445034518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3444834511_))))
                                  (_loop3444734501_
                                   _lp-tl3445034518_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd3444934515_
                                           _rest3445134508_)))))
                              (let ((_rest3445234521_
                                     (reverse _rest3445134508_)))
                                ((lambda (_L34525_ _L34527_ _L34528_)
                                   (let ((__tmp50454
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50442
                                          (let ((__tmp50450
                                                 (let ((__tmp50453
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50451
                                                        (let ((__tmp50452
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34528_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50453
                                                         __tmp50451)))
                                                (__tmp50443
                                                 (let ((__tmp50444
                                                        (let ((__tmp50449
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50445
                                                               (let ((__tmp50446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50447
                                     (let ((__tmp50448
                                            (lambda (_g3454834551_
                                                     _g3454934554_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3454834551_
                                                      _g3454934554_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50448 '() _L34525_))))
                                (declare (not safe))
                                (cons _L34527_ __tmp50447))))
                         (declare (not safe))
                         (cons '() __tmp50446))))
                  (declare (not safe))
                  (cons __tmp50449 __tmp50445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50444 '()))))
                                            (declare (not safe))
                                            (cons __tmp50450 __tmp50443))))
                                     (declare (not safe))
                                     (cons __tmp50454 __tmp50442)))
                                 _rest3445234521_
                                 _hd3444234489_
                                 _hd3443934479_))))))
                (_loop3444734501_ _target3444434495_ '()))
              (_g3443034458_ _g3443134462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3443034458_ _g3443134462_))))
                                    (_g3443034458_ _g3443134462_))))
                            (_g3443034458_ _g3443134462_))))
                    (_g3443034458_ _g3443134462_)))))
        (_g3442934557_ _$stx34426_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34562_)
      (let* ((_g3456534579_
              (lambda (_g3456634575_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3456634575_)))
             (_g3456434651_
              (lambda (_g3456634583_)
                (if (gx#stx-pair? _g3456634583_)
                    (let ((_e3457034586_ (gx#syntax-e _g3456634583_)))
                      (let ((_hd3456934590_
                             (let ()
                               (declare (not safe))
                               (##car _e3457034586_)))
                            (_tl3456834593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3457034586_))))
                        (if (gx#stx-pair? _tl3456834593_)
                            (let ((_e3457334596_ (gx#syntax-e _tl3456834593_)))
                              (let ((_hd3457234600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3457334596_)))
                                    (_tl3457134603_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3457334596_))))
                                (if (gx#stx-null? _tl3457134603_)
                                    ((lambda (_L34606_)
                                       (if (gx#stx-string? _L34606_)
                                           (let* ((_g3462034628_
                                                   (lambda (_g3462134624_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3462134624_)))
                                                  (_g3461934647_
                                                   (lambda (_g3462134632_)
                                                     ((lambda (_L34635_)
                                                        (let ()
                                                          (let ((__tmp50456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50455
                         (let () (declare (not safe)) (cons _L34635_ '()))))
                    (declare (not safe))
                    (cons __tmp50456 __tmp50455))))
              _g3462134632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3461934647_
                                              (string->bytes
                                               (gx#stx-e _L34606_))))
                                           (_g3456534579_ _g3456634583_)))
                                     _hd3457234600_)
                                    (_g3456534579_ _g3456634583_))))
                            (_g3456534579_ _g3456634583_))))
                    (_g3456534579_ _g3456634583_)))))
        (_g3456434651_ _stx34562_)))))
