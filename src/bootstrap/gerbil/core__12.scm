(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx33013_)
      (let ((_g3301633023_
             (lambda (_g3301733019_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3301733019_))))
        (_g3301633023_ _$stx33013_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx33027_)
      (let ((_g3303033037_
             (lambda (_g3303133033_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3303133033_))))
        (_g3303033037_ _$stx33027_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx33041_)
      (let ((_g3304433051_
             (lambda (_g3304533047_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3304533047_))))
        (_g3304433051_ _$stx33041_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx33055_)
      (let ((_g3305833065_
             (lambda (_g3305933061_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3305933061_))))
        (_g3305833065_ _$stx33055_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (let ((__tmp50724 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50724
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args33080_
      (apply make-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args33080_)))
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
    (let ((__tmp50725 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50725
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args33076_
      (apply make-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args33076_)))
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
    (lambda (_stx33073_)
      (if (gx#identifier? _stx33073_)
          (let ((__tmp50726 (gx#syntax-local-value _stx33073_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50726))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx33070_)
      (if (gx#identifier? _stx33070_)
          (let ((__tmp50727 (gx#syntax-local-value _stx33070_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50727))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx33084_)
      (let* ((___stx4708147082_ _stx33084_)
             (_g3309033149_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4708147082_))))
        (let ((___kont4708447085_
               (lambda (_L33422_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33422_)
                  _stx33084_)))
              (___kont4708647087_
               (lambda (_L33321_ _L33323_ _L33324_)
                 (let* ((_g3334633354_
                         (lambda (_g3334733350_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3334733350_)))
                        (_g3334533381_
                         (lambda (_g3334733358_)
                           ((lambda (_L33361_)
                              (let ()
                                (let ((__tmp50728
                                       (let ((__tmp50730
                                              (lambda (_g3337233375_
                                                       _g3337333378_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3337233375_
                                                        _g3337333378_))))
                                             (__tmp50729
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33321_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50730
                                                 __tmp50729
                                                 _L33323_))))
                                  (declare (not safe))
                                  (cons _L33361_ __tmp50728))))
                            _g3334733358_))))
                   (_g3334533381_
                    (gx#stx-identifier _L33324_ _L33324_ '"-set!")))))
              (___kont4709047091_
               (lambda (_L33231_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33231_)
                  _stx33084_)))
              (___kont4709247093_
               (lambda (_L33186_ _L33188_)
                 (let ((__tmp50733 (gx#datum->syntax '#f '%#set!))
                       (__tmp50731
                        (let ((__tmp50732
                               (let ()
                                 (declare (not safe))
                                 (cons _L33186_ '()))))
                          (declare (not safe))
                          (cons _L33188_ __tmp50732))))
                   (declare (not safe))
                   (cons __tmp50733 __tmp50731)))))
          (let* ((___match4717247173_
                  (lambda (_e3313533156_
                           _hd3313633160_
                           _tl3313733163_
                           _e3313833166_
                           _hd3313933170_
                           _tl3314033173_
                           _e3314133176_
                           _hd3314233180_
                           _tl3314333183_)
                    (let ((_L33186_ _hd3314233180_) (_L33188_ _hd3313933170_))
                      (if (gx#identifier? _L33188_)
                          (___kont4709247093_ _L33186_ _L33188_)
                          (let () (declare (not safe)) (_g3309033149_))))))
                 (___match4715247153_
                  (lambda (_e3312733211_
                           _hd3312833215_
                           _tl3312933218_
                           _e3313033221_
                           _hd3313133225_
                           _tl3313233228_)
                    (let ((_L33231_ _hd3313133225_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33231_))
                          (___kont4709047091_ _L33231_)
                          (if (gx#stx-pair? _tl3313233228_)
                              (let ((_e3314133176_
                                     (gx#syntax-e _tl3313233228_)))
                                (let ((_tl3314333183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3314133176_)))
                                      (_hd3314233180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3314133176_))))
                                  (if (gx#stx-null? _tl3314333183_)
                                      (___match4717247173_
                                       _e3312733211_
                                       _hd3312833215_
                                       _tl3312933218_
                                       _e3313033221_
                                       _hd3313133225_
                                       _tl3313233228_
                                       _e3314133176_
                                       _hd3314233180_
                                       _tl3314333183_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3309033149_)))))
                              (let ()
                                (declare (not safe))
                                (_g3309033149_)))))))
                 (___match4714047141_
                  (lambda (_e3310533251_
                           _hd3310633255_
                           _tl3310733258_
                           _e3310833261_
                           _hd3310933265_
                           _tl3311033268_
                           _e3311133271_
                           _hd3311233275_
                           _tl3311333278_
                           ___splice4708847089_
                           _target3311433281_
                           _tl3311633284_)
                    (letrec ((_loop3311733287_
                              (lambda (_hd3311533291_ _arg3312133294_)
                                (if (gx#stx-pair? _hd3311533291_)
                                    (let ((_e3311833297_
                                           (gx#syntax-e _hd3311533291_)))
                                      (let ((_lp-tl3312033304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3311833297_)))
                                            (_lp-hd3311933301_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3311833297_))))
                                        (_loop3311733287_
                                         _lp-tl3312033304_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3311933301_
                                                 _arg3312133294_)))))
                                    (let ((_arg3312233307_
                                           (reverse _arg3312133294_)))
                                      (if (gx#stx-pair? _tl3311033268_)
                                          (let ((_e3312333311_
                                                 (gx#syntax-e _tl3311033268_)))
                                            (let ((_tl3312533318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3312333311_)))
                                                  (_hd3312433315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3312333311_))))
                                              (if (gx#stx-null? _tl3312533318_)
                                                  (let ((_L33321_
                                                         _hd3312433315_)
                                                        (_L33323_
                                                         _arg3312233307_)
                                                        (_L33324_
                                                         _hd3311233275_))
                                                    (if (gx#identifier?
                                                         _L33324_)
                                                        (___kont4708647087_
                                                         _L33321_
                                                         _L33323_
                                                         _L33324_)
                                                        (___match4715247153_
                                                         _e3310533251_
                                                         _hd3310633255_
                                                         _tl3310733258_
                                                         _e3310833261_
                                                         _hd3310933265_
                                                         _tl3311033268_)))
                                                  (___match4715247153_
                                                   _e3310533251_
                                                   _hd3310633255_
                                                   _tl3310733258_
                                                   _e3310833261_
                                                   _hd3310933265_
                                                   _tl3311033268_))))
                                          (___match4715247153_
                                           _e3310533251_
                                           _hd3310633255_
                                           _tl3310733258_
                                           _e3310833261_
                                           _hd3310933265_
                                           _tl3311033268_)))))))
                      (_loop3311733287_ _target3311433281_ '())))))
            (if (gx#stx-pair? ___stx4708147082_)
                (let ((_e3309333392_ (gx#syntax-e ___stx4708147082_)))
                  (let ((_tl3309533399_
                         (let () (declare (not safe)) (##cdr _e3309333392_)))
                        (_hd3309433396_
                         (let () (declare (not safe)) (##car _e3309333392_))))
                    (if (gx#stx-pair? _tl3309533399_)
                        (let ((_e3309633402_ (gx#syntax-e _tl3309533399_)))
                          (let ((_tl3309833409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3309633402_)))
                                (_hd3309733406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3309633402_))))
                            (if (gx#stx-pair? _hd3309733406_)
                                (let ((_e3309933412_
                                       (gx#syntax-e _hd3309733406_)))
                                  (let ((_tl3310133419_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3309933412_)))
                                        (_hd3310033416_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3309933412_))))
                                    (if (let ((__tmp50734
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50734))
                                        (let ((_L33422_ _hd3310033416_))
                                          (___kont4708447085_ _L33422_))
                                        (if (gx#stx-pair/null? _tl3310133419_)
                                            (let ((___splice4708847089_
                                                   (gx#syntax-split-splice
                                                    _tl3310133419_
                                                    '0)))
                                              (let ((_tl3311633284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4708847089_
                                                        '1)))
                                                    (_target3311433281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4708847089_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3311633284_)
                                                    (___match4714047141_
                                                     _e3309333392_
                                                     _hd3309433396_
                                                     _tl3309533399_
                                                     _e3309633402_
                                                     _hd3309733406_
                                                     _tl3309833409_
                                                     _e3309933412_
                                                     _hd3310033416_
                                                     _tl3310133419_
                                                     ___splice4708847089_
                                                     _target3311433281_
                                                     _tl3311633284_)
                                                    (___match4715247153_
                                                     _e3309333392_
                                                     _hd3309433396_
                                                     _tl3309533399_
                                                     _e3309633402_
                                                     _hd3309733406_
                                                     _tl3309833409_))))
                                            (___match4715247153_
                                             _e3309333392_
                                             _hd3309433396_
                                             _tl3309533399_
                                             _e3309633402_
                                             _hd3309733406_
                                             _tl3309833409_)))))
                                (___match4715247153_
                                 _e3309333392_
                                 _hd3309433396_
                                 _tl3309533399_
                                 _e3309633402_
                                 _hd3309733406_
                                 _tl3309833409_))))
                        (let () (declare (not safe)) (_g3309033149_)))))
                (let () (declare (not safe)) (_g3309033149_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33442_)
      (let* ((_g3344533469_
              (lambda (_g3344633465_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3344633465_)))
             (_g3344433647_
              (lambda (_g3344633473_)
                (if (gx#stx-pair? _g3344633473_)
                    (let ((_e3344933476_ (gx#syntax-e _g3344633473_)))
                      (let ((_hd3345033480_
                             (let ()
                               (declare (not safe))
                               (##car _e3344933476_)))
                            (_tl3345133483_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3344933476_))))
                        (if (gx#stx-pair/null? _tl3345133483_)
                            (if (fx>= (gx#stx-length _tl3345133483_) '1)
                                (let ((_g50735_
                                       (gx#syntax-split-splice
                                        _tl3345133483_
                                        '1)))
                                  (begin
                                    (let ((_g50736_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50735_)
                                                 (##vector-length _g50735_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50736_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50736_)))
                                    (let ((_target3345233486_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50735_ 0)))
                                          (_tl3345433489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50735_ 1))))
                                      (if (gx#stx-pair? _tl3345433489_)
                                          (let ((_e3346133492_
                                                 (gx#syntax-e _tl3345433489_)))
                                            (let ((_hd3346233496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3346133492_)))
                                                  (_tl3346333499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3346133492_))))
                                              (if (gx#stx-null? _tl3346333499_)
                                                  (letrec ((_loop3345533502_
                                                            (lambda (_hd3345333506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3345933509_)
                      (if (gx#stx-pair? _hd3345333506_)
                          (let ((_e3345633512_ (gx#syntax-e _hd3345333506_)))
                            (let ((_lp-hd3345733516_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3345633512_)))
                                  (_lp-tl3345833519_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3345633512_))))
                              (_loop3345533502_
                               _lp-tl3345833519_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3345733516_ _tgt3345933509_)))))
                          (let ((_tgt3346033522_ (reverse _tgt3345933509_)))
                            ((lambda (_L33526_ _L33528_)
                               (let* ((_g3354633563_
                                       (lambda (_g3354733559_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3354733559_)))
                                      (_g3354533635_
                                       (lambda (_g3354733567_)
                                         (if (gx#stx-pair/null? _g3354733567_)
                                             (let ((_g50737_
                                                    (gx#syntax-split-splice
                                                     _g3354733567_
                                                     '0)))
                                               (begin
                                                 (let ((_g50738_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50737_)
                                                              (##vector-length
                                                               _g50737_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3354933570_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50737_
                                                           0)))
                                                       (_tl3355133573_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50737_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3355133573_)
                                                       (letrec ((_loop3355233576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3355033580_ _$e3355633583_)
                           (if (gx#stx-pair? _hd3355033580_)
                               (let ((_e3355333586_
                                      (gx#syntax-e _hd3355033580_)))
                                 (let ((_lp-hd3355433590_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3355333586_)))
                                       (_lp-tl3355533593_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3355333586_))))
                                   (_loop3355233576_
                                    _lp-tl3355533593_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd3355433590_
                                            _$e3355633583_)))))
                               (let ((_$e3355733596_ (reverse _$e3355633583_)))
                                 ((lambda (_L33600_)
                                    (let ()
                                      (let ((__tmp50751
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50739
                                             (let ((__tmp50746
                                                    (let ((__tmp50747
                                                           (let ((__tmp50749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50750
                                 (lambda (_g3361533621_ _g3361633624_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3361533621_ _g3361633624_)))))
                            (declare (not safe))
                            (foldr1 __tmp50750 '() _L33600_)))
                         (__tmp50748
                          (let () (declare (not safe)) (cons _L33526_ '()))))
                     (declare (not safe))
                     (cons __tmp50749 __tmp50748))))
              (declare (not safe))
              (cons __tmp50747 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50740
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33600_
                                                       _L33528_)
                                                      (let ((__tmp50741
                                                             (lambda (_g3361733627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3361833630_
                              _g3361933632_)
                       (let ((__tmp50742
                              (let ((__tmp50745 (gx#datum->syntax '#f 'set!))
                                    (__tmp50743
                                     (let ((__tmp50744
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3361733627_ '()))))
                                       (declare (not safe))
                                       (cons _g3361833630_ __tmp50744))))
                                (declare (not safe))
                                (cons __tmp50745 __tmp50743))))
                         (declare (not safe))
                         (cons __tmp50742 _g3361933632_)))))
                (declare (not safe))
                (foldr2 __tmp50741 '() _L33600_ _L33528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50746 __tmp50740))))
                                        (declare (not safe))
                                        (cons __tmp50751 __tmp50739))))
                                  _$e3355733596_))))))
                 (_loop3355233576_ _target3354933570_ '()))
               (_g3354633563_ _g3354733567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3354633563_ _g3354733567_)))))
                                 (_g3354533635_
                                  (gx#gentemps
                                   (let ((__tmp50752
                                          (lambda (_g3363833641_ _g3363933644_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3363833641_
                                                    _g3363933644_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50752 '() _L33528_))))))
                             _hd3346233496_
                             _tgt3346033522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3345533502_
                                                     _target3345233486_
                                                     '()))
                                                  (_g3344533469_
                                                   _g3344633473_))))
                                          (_g3344533469_ _g3344633473_)))))
                                (_g3344533469_ _g3344633473_))
                            (_g3344533469_ _g3344633473_))))
                    (_g3344533469_ _g3344633473_)))))
        (_g3344433647_ _stx33442_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33653_)
      (let* ((___stx4717547176_ _stx33653_)
             (_g3365733715_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4717547176_))))
        (let ((___kont4717847179_
               (lambda (_L34049_)
                 (let ((__tmp50756 (gx#datum->syntax '#f 'let))
                       (__tmp50753
                        (let ((__tmp50754
                               (let ((__tmp50755
                                      (lambda (_g3406534068_ _g3406634071_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3406534068_
                                                _g3406634071_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50755 '() _L34049_))))
                          (declare (not safe))
                          (cons '() __tmp50754))))
                   (declare (not safe))
                   (cons __tmp50756 __tmp50753))))
              (___kont4718247183_
               (lambda (_L33826_ _L33828_ _L33829_)
                 (let* ((_g3385233860_
                         (lambda (_g3385333856_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3385333856_)))
                        (_g3385133980_
                         (lambda (_g3385333864_)
                           ((lambda (_L33867_)
                              (let ()
                                (let* ((_g3387933896_
                                        (lambda (_g3388033892_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3388033892_)))
                                       (_g3387833960_
                                        (lambda (_g3388033900_)
                                          (if (gx#stx-pair/null? _g3388033900_)
                                              (let ((_g50757_
                                                     (gx#syntax-split-splice
                                                      _g3388033900_
                                                      '0)))
                                                (begin
                                                  (let ((_g50758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50757_)
                                                               (##vector-length
                                                                _g50757_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50758_ 2)))
                (error "Context expects 2 values" _g50758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3388233903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50757_
                                                            0)))
                                                        (_tl3388433906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50757_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3388433906_)
                                                        (letrec ((_loop3388533909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3388333913_ _arg3388933916_)
                            (if (gx#stx-pair? _hd3388333913_)
                                (let ((_e3388633919_
                                       (gx#syntax-e _hd3388333913_)))
                                  (let ((_lp-hd3388733923_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3388633919_)))
                                        (_lp-tl3388833926_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3388633919_))))
                                    (_loop3388533909_
                                     _lp-tl3388833926_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3388733923_
                                             _arg3388933916_)))))
                                (let ((_arg3389033929_
                                       (reverse _arg3388933916_)))
                                  ((lambda (_L33933_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50762
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50759
                                                (let ((__tmp50760
                                                       (let ((__tmp50761
                                                              (lambda (_g3395133954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3395233957_)
                        (let ()
                          (declare (not safe))
                          (cons _g3395133954_ _g3395233957_)))))
                 (declare (not safe))
                 (foldr1 __tmp50761 '() _L33933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33867_ __tmp50760))))
                                           (declare (not safe))
                                           (cons __tmp50762 __tmp50759)))))
                                   _arg3389033929_))))))
                  (_loop3388533909_ _target3388233903_ '()))
                (_g3387933896_ _g3388033900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3387933896_ _g3388033900_)))))
                                  (_g3387833960_
                                   (let ((__tmp50765
                                          (gx#syntax->list
                                           (let ((__tmp50766
                                                  (lambda (_g3396333966_
                                                           _g3396433969_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3396333966_
                                                            _g3396433969_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50766
                                                     '()
                                                     _L33829_))))
                                         (__tmp50763
                                          (gx#syntax->list
                                           (let ((__tmp50764
                                                  (lambda (_g3397133974_
                                                           _g3397233977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3397133974_
                                                            _g3397233977_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50764
                                                     '()
                                                     _L33828_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50765
                                             __tmp50763))))))
                            _g3385333864_))))
                   (_g3385133980_
                    (gx#stx-wrap-source
                     (let ((__tmp50770 (gx#datum->syntax '#f 'lambda))
                           (__tmp50767
                            (let ((__tmp50768
                                   (let ((__tmp50769
                                          (lambda (_g3398333986_ _g3398433989_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3398333986_
                                                    _g3398433989_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50769 '() _L33826_))))
                              (declare (not safe))
                              (cons '() __tmp50768))))
                       (declare (not safe))
                       (cons __tmp50770 __tmp50767))
                     (gx#stx-source _stx33653_)))))))
          (let* ((___match4723047231_
                  (lambda (_e3367833722_
                           _hd3367933726_
                           _tl3368033729_
                           _e3368133732_
                           _hd3368233736_
                           _tl3368333739_
                           ___splice4718447185_
                           _target3368433742_
                           _tl3368633745_)
                    (letrec ((_loop3368733748_
                              (lambda (_hd3368533752_
                                       _expr3369133755_
                                       _param3369233757_)
                                (if (gx#stx-pair? _hd3368533752_)
                                    (let ((_e3368833760_
                                           (gx#syntax-e _hd3368533752_)))
                                      (let ((_lp-tl3369033767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3368833760_)))
                                            (_lp-hd3368933764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3368833760_))))
                                        (if (gx#stx-pair? _lp-hd3368933764_)
                                            (let ((_e3369533770_
                                                   (gx#syntax-e
                                                    _lp-hd3368933764_)))
                                              (let ((_tl3369733777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3369533770_)))
                                                    (_hd3369633774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3369533770_))))
                                                (if (gx#stx-pair?
                                                     _tl3369733777_)
                                                    (let ((_e3369833780_
                                                           (gx#syntax-e
                                                            _tl3369733777_)))
                                                      (let ((_tl3370033787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3369833780_)))
                    (_hd3369933784_
                     (let () (declare (not safe)) (##car _e3369833780_))))
                (if (gx#stx-null? _tl3370033787_)
                    (_loop3368733748_
                     _lp-tl3369033767_
                     (let ()
                       (declare (not safe))
                       (cons _hd3369933784_ _expr3369133755_))
                     (let ()
                       (declare (not safe))
                       (cons _hd3369633774_ _param3369233757_)))
                    (let () (declare (not safe)) (_g3365733715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3365733715_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3365733715_)))))
                                    (let ((_param3369433793_
                                           (reverse _param3369233757_))
                                          (_expr3369333790_
                                           (reverse _expr3369133755_)))
                                      (if (gx#stx-pair/null? _tl3368333739_)
                                          (let ((___splice4718647187_
                                                 (gx#syntax-split-splice
                                                  _tl3368333739_
                                                  '0)))
                                            (let ((_tl3370333799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4718647187_
                                                      '1)))
                                                  (_target3370133796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4718647187_
                                                      '0))))
                                              (if (gx#stx-null? _tl3370333799_)
                                                  (letrec ((_loop3370433802_
                                                            (lambda (_hd3370233806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3370833809_)
                      (if (gx#stx-pair? _hd3370233806_)
                          (let ((_e3370533812_ (gx#syntax-e _hd3370233806_)))
                            (let ((_lp-tl3370733819_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3370533812_)))
                                  (_lp-hd3370633816_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3370533812_))))
                              (_loop3370433802_
                               _lp-tl3370733819_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3370633816_ _body3370833809_)))))
                          (let ((_body3370933822_ (reverse _body3370833809_)))
                            (___kont4718247183_
                             _body3370933822_
                             _expr3369333790_
                             _param3369433793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3370433802_
                                                     _target3370133796_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3365733715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3365733715_))))))))
                      (_loop3368733748_ _target3368433742_ '() '()))))
                 (___match4721047211_
                  (lambda (_e3366033999_
                           _hd3366134003_
                           _tl3366234006_
                           _e3366334009_
                           _hd3366434013_
                           _tl3366534016_
                           ___splice4718047181_
                           _target3366634019_
                           _tl3366834022_)
                    (letrec ((_loop3366934025_
                              (lambda (_hd3366734029_ _body3367334032_)
                                (if (gx#stx-pair? _hd3366734029_)
                                    (let ((_e3367034035_
                                           (gx#syntax-e _hd3366734029_)))
                                      (let ((_lp-tl3367234042_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3367034035_)))
                                            (_lp-hd3367134039_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3367034035_))))
                                        (_loop3366934025_
                                         _lp-tl3367234042_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3367134039_
                                                 _body3367334032_)))))
                                    (let ((_body3367434045_
                                           (reverse _body3367334032_)))
                                      (___kont4717847179_
                                       _body3367434045_))))))
                      (_loop3366934025_ _target3366634019_ '())))))
            (if (gx#stx-pair? ___stx4717547176_)
                (let ((_e3366033999_ (gx#syntax-e ___stx4717547176_)))
                  (let ((_tl3366234006_
                         (let () (declare (not safe)) (##cdr _e3366033999_)))
                        (_hd3366134003_
                         (let () (declare (not safe)) (##car _e3366033999_))))
                    (if (gx#stx-pair? _tl3366234006_)
                        (let ((_e3366334009_ (gx#syntax-e _tl3366234006_)))
                          (let ((_tl3366534016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3366334009_)))
                                (_hd3366434013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3366334009_))))
                            (if (gx#stx-null? _hd3366434013_)
                                (if (gx#stx-pair/null? _tl3366534016_)
                                    (let ((___splice4718047181_
                                           (gx#syntax-split-splice
                                            _tl3366534016_
                                            '0)))
                                      (let ((_tl3366834022_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4718047181_
                                                '1)))
                                            (_target3366634019_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4718047181_
                                                '0))))
                                        (if (gx#stx-null? _tl3366834022_)
                                            (___match4721047211_
                                             _e3366033999_
                                             _hd3366134003_
                                             _tl3366234006_
                                             _e3366334009_
                                             _hd3366434013_
                                             _tl3366534016_
                                             ___splice4718047181_
                                             _target3366634019_
                                             _tl3366834022_)
                                            (if (gx#stx-pair/null?
                                                 _hd3366434013_)
                                                (let ((___splice4718447185_
                                                       (gx#syntax-split-splice
                                                        _hd3366434013_
                                                        '0)))
                                                  (let ((_tl3368633745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4718447185_
                                                            '1)))
                                                        (_target3368433742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4718447185_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3368633745_)
                                                        (___match4723047231_
                                                         _e3366033999_
                                                         _hd3366134003_
                                                         _tl3366234006_
                                                         _e3366334009_
                                                         _hd3366434013_
                                                         _tl3366534016_
                                                         ___splice4718447185_
                                                         _target3368433742_
                                                         _tl3368633745_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3365733715_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3365733715_))))))
                                    (if (gx#stx-pair/null? _hd3366434013_)
                                        (let ((___splice4718447185_
                                               (gx#syntax-split-splice
                                                _hd3366434013_
                                                '0)))
                                          (let ((_tl3368633745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4718447185_
                                                    '1)))
                                                (_target3368433742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4718447185_
                                                    '0))))
                                            (if (gx#stx-null? _tl3368633745_)
                                                (___match4723047231_
                                                 _e3366033999_
                                                 _hd3366134003_
                                                 _tl3366234006_
                                                 _e3366334009_
                                                 _hd3366434013_
                                                 _tl3366534016_
                                                 ___splice4718447185_
                                                 _target3368433742_
                                                 _tl3368633745_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3365733715_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3365733715_))))
                                (if (gx#stx-pair/null? _hd3366434013_)
                                    (let ((___splice4718447185_
                                           (gx#syntax-split-splice
                                            _hd3366434013_
                                            '0)))
                                      (let ((_tl3368633745_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4718447185_
                                                '1)))
                                            (_target3368433742_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4718447185_
                                                '0))))
                                        (if (gx#stx-null? _tl3368633745_)
                                            (___match4723047231_
                                             _e3366033999_
                                             _hd3366134003_
                                             _tl3366234006_
                                             _e3366334009_
                                             _hd3366434013_
                                             _tl3366534016_
                                             ___splice4718447185_
                                             _target3368433742_
                                             _tl3368633745_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3365733715_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3365733715_))))))
                        (let () (declare (not safe)) (_g3365733715_)))))
                (let () (declare (not safe)) (_g3365733715_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx34082_)
      (let* ((_g3408634110_
              (lambda (_g3408734106_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3408734106_)))
             (_g3408534195_
              (lambda (_g3408734114_)
                (if (gx#stx-pair? _g3408734114_)
                    (let ((_e3409034117_ (gx#syntax-e _g3408734114_)))
                      (let ((_hd3409134121_
                             (let ()
                               (declare (not safe))
                               (##car _e3409034117_)))
                            (_tl3409234124_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3409034117_))))
                        (if (gx#stx-pair? _tl3409234124_)
                            (let ((_e3409334127_ (gx#syntax-e _tl3409234124_)))
                              (let ((_hd3409434131_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3409334127_)))
                                    (_tl3409534134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3409334127_))))
                                (if (gx#stx-pair/null? _tl3409534134_)
                                    (let ((_g50771_
                                           (gx#syntax-split-splice
                                            _tl3409534134_
                                            '0)))
                                      (begin
                                        (let ((_g50772_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50771_)
                                                     (##vector-length _g50771_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50772_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50772_)))
                                        (let ((_target3409634137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50771_ 0)))
                                              (_tl3409834140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50771_ 1))))
                                          (if (gx#stx-null? _tl3409834140_)
                                              (letrec ((_loop3409934143_
                                                        (lambda (_hd3409734147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3410334150_)
                  (if (gx#stx-pair? _hd3409734147_)
                      (let ((_e3410034153_ (gx#syntax-e _hd3409734147_)))
                        (let ((_lp-hd3410134157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3410034153_)))
                              (_lp-tl3410234160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3410034153_))))
                          (_loop3409934143_
                           _lp-tl3410234160_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3410134157_ _body3410334150_)))))
                      (let ((_body3410434163_ (reverse _body3410334150_)))
                        ((lambda (_L34167_ _L34169_)
                           (if (gx#identifier? _L34169_)
                               (let ((__tmp50780
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50773
                                      (let ((__tmp50774
                                             (let ((__tmp50779
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50775
                                                    (let ((__tmp50778
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50776
                   (let ((__tmp50777
                          (lambda (_g3418634189_ _g3418734192_)
                            (let ()
                              (declare (not safe))
                              (cons _g3418634189_ _g3418734192_)))))
                     (declare (not safe))
                     (foldr1 __tmp50777 '() _L34167_))))
              (declare (not safe))
              (cons __tmp50778 __tmp50776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50779 __tmp50775))))
                                        (declare (not safe))
                                        (cons __tmp50774 '()))))
                                 (declare (not safe))
                                 (cons __tmp50780 __tmp50773))
                               (_g3408634110_ _g3408734114_)))
                         _body3410434163_
                         _hd3409434131_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3409934143_
                                                 _target3409634137_
                                                 '()))
                                              (_g3408634110_ _g3408734114_)))))
                                    (_g3408634110_ _g3408734114_))))
                            (_g3408634110_ _g3408734114_))))
                    (_g3408634110_ _g3408734114_)))))
        (_g3408534195_ _$stx34082_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx34200_)
      (let* ((_g3420434228_
              (lambda (_g3420534224_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3420534224_)))
             (_g3420334313_
              (lambda (_g3420534232_)
                (if (gx#stx-pair? _g3420534232_)
                    (let ((_e3420834235_ (gx#syntax-e _g3420534232_)))
                      (let ((_hd3420934239_
                             (let ()
                               (declare (not safe))
                               (##car _e3420834235_)))
                            (_tl3421034242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3420834235_))))
                        (if (gx#stx-pair? _tl3421034242_)
                            (let ((_e3421134245_ (gx#syntax-e _tl3421034242_)))
                              (let ((_hd3421234249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3421134245_)))
                                    (_tl3421334252_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3421134245_))))
                                (if (gx#stx-pair/null? _tl3421334252_)
                                    (let ((_g50781_
                                           (gx#syntax-split-splice
                                            _tl3421334252_
                                            '0)))
                                      (begin
                                        (let ((_g50782_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50781_)
                                                     (##vector-length _g50781_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50782_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50782_)))
                                        (let ((_target3421434255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50781_ 0)))
                                              (_tl3421634258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50781_ 1))))
                                          (if (gx#stx-null? _tl3421634258_)
                                              (letrec ((_loop3421734261_
                                                        (lambda (_hd3421534265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3422134268_)
                  (if (gx#stx-pair? _hd3421534265_)
                      (let ((_e3421834271_ (gx#syntax-e _hd3421534265_)))
                        (let ((_lp-hd3421934275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3421834271_)))
                              (_lp-tl3422034278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3421834271_))))
                          (_loop3421734261_
                           _lp-tl3422034278_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3421934275_ _body3422134268_)))))
                      (let ((_body3422234281_ (reverse _body3422134268_)))
                        ((lambda (_L34285_ _L34287_)
                           (if (gx#identifier? _L34287_)
                               (let ((__tmp50790
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50783
                                      (let ((__tmp50784
                                             (let ((__tmp50789
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50785
                                                    (let ((__tmp50788
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50786
                   (let ((__tmp50787
                          (lambda (_g3430434307_ _g3430534310_)
                            (let ()
                              (declare (not safe))
                              (cons _g3430434307_ _g3430534310_)))))
                     (declare (not safe))
                     (foldr1 __tmp50787 '() _L34285_))))
              (declare (not safe))
              (cons __tmp50788 __tmp50786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50789 __tmp50785))))
                                        (declare (not safe))
                                        (cons __tmp50784 '()))))
                                 (declare (not safe))
                                 (cons __tmp50790 __tmp50783))
                               (_g3420434228_ _g3420534232_)))
                         _body3422234281_
                         _hd3421234249_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3421734261_
                                                 _target3421434255_
                                                 '()))
                                              (_g3420434228_ _g3420534232_)))))
                                    (_g3420434228_ _g3420534232_))))
                            (_g3420434228_ _g3420534232_))))
                    (_g3420434228_ _g3420534232_)))))
        (_g3420334313_ _$stx34200_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34318_)
      (let* ((_g3432234350_
              (lambda (_g3432334346_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3432334346_)))
             (_g3432134449_
              (lambda (_g3432334354_)
                (if (gx#stx-pair? _g3432334354_)
                    (let ((_e3432734357_ (gx#syntax-e _g3432334354_)))
                      (let ((_hd3432834361_
                             (let ()
                               (declare (not safe))
                               (##car _e3432734357_)))
                            (_tl3432934364_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3432734357_))))
                        (if (gx#stx-pair? _tl3432934364_)
                            (let ((_e3433034367_ (gx#syntax-e _tl3432934364_)))
                              (let ((_hd3433134371_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3433034367_)))
                                    (_tl3433234374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3433034367_))))
                                (if (gx#stx-pair? _tl3433234374_)
                                    (let ((_e3433334377_
                                           (gx#syntax-e _tl3433234374_)))
                                      (let ((_hd3433434381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3433334377_)))
                                            (_tl3433534384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3433334377_))))
                                        (if (gx#stx-pair/null? _tl3433534384_)
                                            (let ((_g50791_
                                                   (gx#syntax-split-splice
                                                    _tl3433534384_
                                                    '0)))
                                              (begin
                                                (let ((_g50792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50791_)
                                                             (##vector-length
                                                              _g50791_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3433634387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50791_
                                                          0)))
                                                      (_tl3433834390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50791_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3433834390_)
                                                      (letrec ((_loop3433934393_
                                                                (lambda (_hd3433734397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3434334400_)
                          (if (gx#stx-pair? _hd3433734397_)
                              (let ((_e3434034403_
                                     (gx#syntax-e _hd3433734397_)))
                                (let ((_lp-hd3434134407_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3434034403_)))
                                      (_lp-tl3434234410_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3434034403_))))
                                  (_loop3433934393_
                                   _lp-tl3434234410_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd3434134407_
                                           _rest3434334400_)))))
                              (let ((_rest3434434413_
                                     (reverse _rest3434334400_)))
                                ((lambda (_L34417_ _L34419_ _L34420_)
                                   (let ((__tmp50805
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50793
                                          (let ((__tmp50801
                                                 (let ((__tmp50804
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50802
                                                        (let ((__tmp50803
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34420_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50804
                                                         __tmp50802)))
                                                (__tmp50794
                                                 (let ((__tmp50795
                                                        (let ((__tmp50800
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50796
                                                               (let ((__tmp50797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50798
                                     (let ((__tmp50799
                                            (lambda (_g3444034443_
                                                     _g3444134446_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3444034443_
                                                      _g3444134446_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50799 '() _L34417_))))
                                (declare (not safe))
                                (cons _L34419_ __tmp50798))))
                         (declare (not safe))
                         (cons '() __tmp50797))))
                  (declare (not safe))
                  (cons __tmp50800 __tmp50796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50795 '()))))
                                            (declare (not safe))
                                            (cons __tmp50801 __tmp50794))))
                                     (declare (not safe))
                                     (cons __tmp50805 __tmp50793)))
                                 _rest3434434413_
                                 _hd3433434381_
                                 _hd3433134371_))))))
                (_loop3433934393_ _target3433634387_ '()))
              (_g3432234350_ _g3432334354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3432234350_ _g3432334354_))))
                                    (_g3432234350_ _g3432334354_))))
                            (_g3432234350_ _g3432334354_))))
                    (_g3432234350_ _g3432334354_)))))
        (_g3432134449_ _$stx34318_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34454_)
      (let* ((_g3445734471_
              (lambda (_g3445834467_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3445834467_)))
             (_g3445634543_
              (lambda (_g3445834475_)
                (if (gx#stx-pair? _g3445834475_)
                    (let ((_e3446034478_ (gx#syntax-e _g3445834475_)))
                      (let ((_hd3446134482_
                             (let ()
                               (declare (not safe))
                               (##car _e3446034478_)))
                            (_tl3446234485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3446034478_))))
                        (if (gx#stx-pair? _tl3446234485_)
                            (let ((_e3446334488_ (gx#syntax-e _tl3446234485_)))
                              (let ((_hd3446434492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3446334488_)))
                                    (_tl3446534495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3446334488_))))
                                (if (gx#stx-null? _tl3446534495_)
                                    ((lambda (_L34498_)
                                       (if (gx#stx-string? _L34498_)
                                           (let* ((_g3451234520_
                                                   (lambda (_g3451334516_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3451334516_)))
                                                  (_g3451134539_
                                                   (lambda (_g3451334524_)
                                                     ((lambda (_L34527_)
                                                        (let ()
                                                          (let ((__tmp50807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50806
                         (let () (declare (not safe)) (cons _L34527_ '()))))
                    (declare (not safe))
                    (cons __tmp50807 __tmp50806))))
              _g3451334524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3451134539_
                                              (string->bytes
                                               (gx#stx-e _L34498_))))
                                           (_g3445734471_ _g3445834475_)))
                                     _hd3446434492_)
                                    (_g3445734471_ _g3445834475_))))
                            (_g3445734471_ _g3445834475_))))
                    (_g3445734471_ _g3445834475_)))))
        (_g3445634543_ _stx34454_)))))
