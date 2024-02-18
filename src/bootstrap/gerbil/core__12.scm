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
    (let ((__tmp50455 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50455
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
    (let ((__tmp50456 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50456
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
          (let ((__tmp50457 (gx#syntax-local-value _stx33073_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50457))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx33070_)
      (if (gx#identifier? _stx33070_)
          (let ((__tmp50458 (gx#syntax-local-value _stx33070_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50458))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx33084_)
      (let* ((___stx4658046581_ _stx33084_)
             (_g3309033149_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4658046581_))))
        (let ((___kont4658346584_
               (lambda (_L33422_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33422_)
                  _stx33084_)))
              (___kont4658546586_
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
                                (let ((__tmp50459
                                       (let ((__tmp50461
                                              (lambda (_g3337233375_
                                                       _g3337333378_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3337233375_
                                                        _g3337333378_))))
                                             (__tmp50460
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33321_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50461
                                                 __tmp50460
                                                 _L33323_))))
                                  (declare (not safe))
                                  (cons _L33361_ __tmp50459))))
                            _g3334733358_))))
                   (_g3334533381_
                    (gx#stx-identifier _L33324_ _L33324_ '"-set!")))))
              (___kont4658946590_
               (lambda (_L33231_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33231_)
                  _stx33084_)))
              (___kont4659146592_
               (lambda (_L33186_ _L33188_)
                 (let ((__tmp50464 (gx#datum->syntax '#f '%#set!))
                       (__tmp50462
                        (let ((__tmp50463
                               (let ()
                                 (declare (not safe))
                                 (cons _L33186_ '()))))
                          (declare (not safe))
                          (cons _L33188_ __tmp50463))))
                   (declare (not safe))
                   (cons __tmp50464 __tmp50462)))))
          (let* ((___match4667146672_
                  (lambda (_e3313733156_
                           _hd3313633160_
                           _tl3313533163_
                           _e3314033166_
                           _hd3313933170_
                           _tl3313833173_
                           _e3314333176_
                           _hd3314233180_
                           _tl3314133183_)
                    (let ((_L33186_ _hd3314233180_) (_L33188_ _hd3313933170_))
                      (if (gx#identifier? _L33188_)
                          (___kont4659146592_ _L33186_ _L33188_)
                          (let () (declare (not safe)) (_g3309033149_))))))
                 (___match4665146652_
                  (lambda (_e3312933211_
                           _hd3312833215_
                           _tl3312733218_
                           _e3313233221_
                           _hd3313133225_
                           _tl3313033228_)
                    (let ((_L33231_ _hd3313133225_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33231_))
                          (___kont4658946590_ _L33231_)
                          (if (gx#stx-pair? _tl3313033228_)
                              (let ((_e3314333176_
                                     (gx#syntax-e _tl3313033228_)))
                                (let ((_tl3314133183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3314333176_)))
                                      (_hd3314233180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3314333176_))))
                                  (if (gx#stx-null? _tl3314133183_)
                                      (___match4667146672_
                                       _e3312933211_
                                       _hd3312833215_
                                       _tl3312733218_
                                       _e3313233221_
                                       _hd3313133225_
                                       _tl3313033228_
                                       _e3314333176_
                                       _hd3314233180_
                                       _tl3314133183_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3309033149_)))))
                              (let ()
                                (declare (not safe))
                                (_g3309033149_)))))))
                 (___match4663946640_
                  (lambda (_e3310733251_
                           _hd3310633255_
                           _tl3310533258_
                           _e3311033261_
                           _hd3310933265_
                           _tl3310833268_
                           _e3311333271_
                           _hd3311233275_
                           _tl3311133278_
                           ___splice4658746588_
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
                                      (if (gx#stx-pair? _tl3310833268_)
                                          (let ((_e3312533311_
                                                 (gx#syntax-e _tl3310833268_)))
                                            (let ((_tl3312333318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3312533311_)))
                                                  (_hd3312433315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3312533311_))))
                                              (if (gx#stx-null? _tl3312333318_)
                                                  (let ((_L33321_
                                                         _hd3312433315_)
                                                        (_L33323_
                                                         _arg3312233307_)
                                                        (_L33324_
                                                         _hd3311233275_))
                                                    (if (gx#identifier?
                                                         _L33324_)
                                                        (___kont4658546586_
                                                         _L33321_
                                                         _L33323_
                                                         _L33324_)
                                                        (___match4665146652_
                                                         _e3310733251_
                                                         _hd3310633255_
                                                         _tl3310533258_
                                                         _e3311033261_
                                                         _hd3310933265_
                                                         _tl3310833268_)))
                                                  (___match4665146652_
                                                   _e3310733251_
                                                   _hd3310633255_
                                                   _tl3310533258_
                                                   _e3311033261_
                                                   _hd3310933265_
                                                   _tl3310833268_))))
                                          (___match4665146652_
                                           _e3310733251_
                                           _hd3310633255_
                                           _tl3310533258_
                                           _e3311033261_
                                           _hd3310933265_
                                           _tl3310833268_)))))))
                      (_loop3311733287_ _target3311433281_ '())))))
            (if (gx#stx-pair? ___stx4658046581_)
                (let ((_e3309533392_ (gx#syntax-e ___stx4658046581_)))
                  (let ((_tl3309333399_
                         (let () (declare (not safe)) (##cdr _e3309533392_)))
                        (_hd3309433396_
                         (let () (declare (not safe)) (##car _e3309533392_))))
                    (if (gx#stx-pair? _tl3309333399_)
                        (let ((_e3309833402_ (gx#syntax-e _tl3309333399_)))
                          (let ((_tl3309633409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3309833402_)))
                                (_hd3309733406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3309833402_))))
                            (if (gx#stx-pair? _hd3309733406_)
                                (let ((_e3310133412_
                                       (gx#syntax-e _hd3309733406_)))
                                  (let ((_tl3309933419_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3310133412_)))
                                        (_hd3310033416_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3310133412_))))
                                    (if (let ((__tmp50465
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50465))
                                        (let ((_L33422_ _hd3310033416_))
                                          (___kont4658346584_ _L33422_))
                                        (if (gx#stx-pair/null? _tl3309933419_)
                                            (let ((___splice4658746588_
                                                   (gx#syntax-split-splice
                                                    _tl3309933419_
                                                    '0)))
                                              (let ((_tl3311633284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4658746588_
                                                        '1)))
                                                    (_target3311433281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4658746588_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3311633284_)
                                                    (___match4663946640_
                                                     _e3309533392_
                                                     _hd3309433396_
                                                     _tl3309333399_
                                                     _e3309833402_
                                                     _hd3309733406_
                                                     _tl3309633409_
                                                     _e3310133412_
                                                     _hd3310033416_
                                                     _tl3309933419_
                                                     ___splice4658746588_
                                                     _target3311433281_
                                                     _tl3311633284_)
                                                    (___match4665146652_
                                                     _e3309533392_
                                                     _hd3309433396_
                                                     _tl3309333399_
                                                     _e3309833402_
                                                     _hd3309733406_
                                                     _tl3309633409_))))
                                            (___match4665146652_
                                             _e3309533392_
                                             _hd3309433396_
                                             _tl3309333399_
                                             _e3309833402_
                                             _hd3309733406_
                                             _tl3309633409_)))))
                                (___match4665146652_
                                 _e3309533392_
                                 _hd3309433396_
                                 _tl3309333399_
                                 _e3309833402_
                                 _hd3309733406_
                                 _tl3309633409_))))
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
                    (let ((_e3345133476_ (gx#syntax-e _g3344633473_)))
                      (let ((_hd3345033480_
                             (let ()
                               (declare (not safe))
                               (##car _e3345133476_)))
                            (_tl3344933483_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3345133476_))))
                        (if (gx#stx-pair/null? _tl3344933483_)
                            (if (fx>= (gx#stx-length _tl3344933483_) '1)
                                (let ((_g50466_
                                       (gx#syntax-split-splice
                                        _tl3344933483_
                                        '1)))
                                  (begin
                                    (let ((_g50467_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50466_)
                                                 (##vector-length _g50466_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50467_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50467_)))
                                    (let ((_target3345233486_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50466_ 0)))
                                          (_tl3345433489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50466_ 1))))
                                      (if (gx#stx-pair? _tl3345433489_)
                                          (let ((_e3346333492_
                                                 (gx#syntax-e _tl3345433489_)))
                                            (let ((_hd3346233496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3346333492_)))
                                                  (_tl3346133499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3346333492_))))
                                              (if (gx#stx-null? _tl3346133499_)
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
                                             (let ((_g50468_
                                                    (gx#syntax-split-splice
                                                     _g3354733567_
                                                     '0)))
                                               (begin
                                                 (let ((_g50469_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50468_)
                                                              (##vector-length
                                                               _g50468_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3354933570_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50468_
                                                           0)))
                                                       (_tl3355133573_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50468_
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
                                      (let ((__tmp50482
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50470
                                             (let ((__tmp50477
                                                    (let ((__tmp50478
                                                           (let ((__tmp50480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50481
                                 (lambda (_g3361833621_ _g3361933624_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3361833621_ _g3361933624_)))))
                            (declare (not safe))
                            (foldr1 __tmp50481 '() _L33600_)))
                         (__tmp50479
                          (let () (declare (not safe)) (cons _L33526_ '()))))
                     (declare (not safe))
                     (cons __tmp50480 __tmp50479))))
              (declare (not safe))
              (cons __tmp50478 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50471
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33600_
                                                       _L33528_)
                                                      (let ((__tmp50472
                                                             (lambda (_g3361533627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3361633630_
                              _g3361733632_)
                       (let ((__tmp50473
                              (let ((__tmp50476 (gx#datum->syntax '#f 'set!))
                                    (__tmp50474
                                     (let ((__tmp50475
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3361533627_ '()))))
                                       (declare (not safe))
                                       (cons _g3361633630_ __tmp50475))))
                                (declare (not safe))
                                (cons __tmp50476 __tmp50474))))
                         (declare (not safe))
                         (cons __tmp50473 _g3361733632_)))))
                (declare (not safe))
                (foldr2 __tmp50472 '() _L33600_ _L33528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50477 __tmp50471))))
                                        (declare (not safe))
                                        (cons __tmp50482 __tmp50470))))
                                  _$e3355733596_))))))
                 (_loop3355233576_ _target3354933570_ '()))
               (_g3354633563_ _g3354733567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3354633563_ _g3354733567_)))))
                                 (_g3354533635_
                                  (gx#gentemps
                                   (let ((__tmp50483
                                          (lambda (_g3363833641_ _g3363933644_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3363833641_
                                                    _g3363933644_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50483 '() _L33528_))))))
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
      (let* ((___stx4667446675_ _stx33653_)
             (_g3365733715_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4667446675_))))
        (let ((___kont4667746678_
               (lambda (_L34049_)
                 (let ((__tmp50487 (gx#datum->syntax '#f 'let))
                       (__tmp50484
                        (let ((__tmp50485
                               (let ((__tmp50486
                                      (lambda (_g3406534068_ _g3406634071_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3406534068_
                                                _g3406634071_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50486 '() _L34049_))))
                          (declare (not safe))
                          (cons '() __tmp50485))))
                   (declare (not safe))
                   (cons __tmp50487 __tmp50484))))
              (___kont4668146682_
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
                                              (let ((_g50488_
                                                     (gx#syntax-split-splice
                                                      _g3388033900_
                                                      '0)))
                                                (begin
                                                  (let ((_g50489_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50488_)
                                                               (##vector-length
                                                                _g50488_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50489_ 2)))
                (error "Context expects 2 values" _g50489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3388233903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50488_
                                                            0)))
                                                        (_tl3388433906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50488_
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
                                         (let ((__tmp50493
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50490
                                                (let ((__tmp50491
                                                       (let ((__tmp50492
                                                              (lambda (_g3395133954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3395233957_)
                        (let ()
                          (declare (not safe))
                          (cons _g3395133954_ _g3395233957_)))))
                 (declare (not safe))
                 (foldr1 __tmp50492 '() _L33933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33867_ __tmp50491))))
                                           (declare (not safe))
                                           (cons __tmp50493 __tmp50490)))))
                                   _arg3389033929_))))))
                  (_loop3388533909_ _target3388233903_ '()))
                (_g3387933896_ _g3388033900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3387933896_ _g3388033900_)))))
                                  (_g3387833960_
                                   (let ((__tmp50496
                                          (gx#syntax->list
                                           (let ((__tmp50497
                                                  (lambda (_g3396333966_
                                                           _g3396433969_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3396333966_
                                                            _g3396433969_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50497
                                                     '()
                                                     _L33829_))))
                                         (__tmp50494
                                          (gx#syntax->list
                                           (let ((__tmp50495
                                                  (lambda (_g3397133974_
                                                           _g3397233977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3397133974_
                                                            _g3397233977_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50495
                                                     '()
                                                     _L33828_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50496
                                             __tmp50494))))))
                            _g3385333864_))))
                   (_g3385133980_
                    (gx#stx-wrap-source
                     (let ((__tmp50501 (gx#datum->syntax '#f 'lambda))
                           (__tmp50498
                            (let ((__tmp50499
                                   (let ((__tmp50500
                                          (lambda (_g3398333986_ _g3398433989_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3398333986_
                                                    _g3398433989_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50500 '() _L33826_))))
                              (declare (not safe))
                              (cons '() __tmp50499))))
                       (declare (not safe))
                       (cons __tmp50501 __tmp50498))
                     (gx#stx-source _stx33653_)))))))
          (let* ((___match4672946730_
                  (lambda (_e3368033722_
                           _hd3367933726_
                           _tl3367833729_
                           _e3368333732_
                           _hd3368233736_
                           _tl3368133739_
                           ___splice4668346684_
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
                                            (let ((_e3369733770_
                                                   (gx#syntax-e
                                                    _lp-hd3368933764_)))
                                              (let ((_tl3369533777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3369733770_)))
                                                    (_hd3369633774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3369733770_))))
                                                (if (gx#stx-pair?
                                                     _tl3369533777_)
                                                    (let ((_e3370033780_
                                                           (gx#syntax-e
                                                            _tl3369533777_)))
                                                      (let ((_tl3369833787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3370033780_)))
                    (_hd3369933784_
                     (let () (declare (not safe)) (##car _e3370033780_))))
                (if (gx#stx-null? _tl3369833787_)
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
                                      (if (gx#stx-pair/null? _tl3368133739_)
                                          (let ((___splice4668546686_
                                                 (gx#syntax-split-splice
                                                  _tl3368133739_
                                                  '0)))
                                            (let ((_tl3370333799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4668546686_
                                                      '1)))
                                                  (_target3370133796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4668546686_
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
                            (___kont4668146682_
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
                 (___match4670946710_
                  (lambda (_e3366233999_
                           _hd3366134003_
                           _tl3366034006_
                           _e3366534009_
                           _hd3366434013_
                           _tl3366334016_
                           ___splice4667946680_
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
                                      (___kont4667746678_
                                       _body3367434045_))))))
                      (_loop3366934025_ _target3366634019_ '())))))
            (if (gx#stx-pair? ___stx4667446675_)
                (let ((_e3366233999_ (gx#syntax-e ___stx4667446675_)))
                  (let ((_tl3366034006_
                         (let () (declare (not safe)) (##cdr _e3366233999_)))
                        (_hd3366134003_
                         (let () (declare (not safe)) (##car _e3366233999_))))
                    (if (gx#stx-pair? _tl3366034006_)
                        (let ((_e3366534009_ (gx#syntax-e _tl3366034006_)))
                          (let ((_tl3366334016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3366534009_)))
                                (_hd3366434013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3366534009_))))
                            (if (gx#stx-null? _hd3366434013_)
                                (if (gx#stx-pair/null? _tl3366334016_)
                                    (let ((___splice4667946680_
                                           (gx#syntax-split-splice
                                            _tl3366334016_
                                            '0)))
                                      (let ((_tl3366834022_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4667946680_
                                                '1)))
                                            (_target3366634019_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4667946680_
                                                '0))))
                                        (if (gx#stx-null? _tl3366834022_)
                                            (___match4670946710_
                                             _e3366233999_
                                             _hd3366134003_
                                             _tl3366034006_
                                             _e3366534009_
                                             _hd3366434013_
                                             _tl3366334016_
                                             ___splice4667946680_
                                             _target3366634019_
                                             _tl3366834022_)
                                            (if (gx#stx-pair/null?
                                                 _hd3366434013_)
                                                (let ((___splice4668346684_
                                                       (gx#syntax-split-splice
                                                        _hd3366434013_
                                                        '0)))
                                                  (let ((_tl3368633745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4668346684_
                                                            '1)))
                                                        (_target3368433742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4668346684_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3368633745_)
                                                        (___match4672946730_
                                                         _e3366233999_
                                                         _hd3366134003_
                                                         _tl3366034006_
                                                         _e3366534009_
                                                         _hd3366434013_
                                                         _tl3366334016_
                                                         ___splice4668346684_
                                                         _target3368433742_
                                                         _tl3368633745_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3365733715_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3365733715_))))))
                                    (if (gx#stx-pair/null? _hd3366434013_)
                                        (let ((___splice4668346684_
                                               (gx#syntax-split-splice
                                                _hd3366434013_
                                                '0)))
                                          (let ((_tl3368633745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4668346684_
                                                    '1)))
                                                (_target3368433742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4668346684_
                                                    '0))))
                                            (if (gx#stx-null? _tl3368633745_)
                                                (___match4672946730_
                                                 _e3366233999_
                                                 _hd3366134003_
                                                 _tl3366034006_
                                                 _e3366534009_
                                                 _hd3366434013_
                                                 _tl3366334016_
                                                 ___splice4668346684_
                                                 _target3368433742_
                                                 _tl3368633745_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3365733715_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3365733715_))))
                                (if (gx#stx-pair/null? _hd3366434013_)
                                    (let ((___splice4668346684_
                                           (gx#syntax-split-splice
                                            _hd3366434013_
                                            '0)))
                                      (let ((_tl3368633745_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4668346684_
                                                '1)))
                                            (_target3368433742_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4668346684_
                                                '0))))
                                        (if (gx#stx-null? _tl3368633745_)
                                            (___match4672946730_
                                             _e3366233999_
                                             _hd3366134003_
                                             _tl3366034006_
                                             _e3366534009_
                                             _hd3366434013_
                                             _tl3366334016_
                                             ___splice4668346684_
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
                    (let ((_e3409234117_ (gx#syntax-e _g3408734114_)))
                      (let ((_hd3409134121_
                             (let ()
                               (declare (not safe))
                               (##car _e3409234117_)))
                            (_tl3409034124_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3409234117_))))
                        (if (gx#stx-pair? _tl3409034124_)
                            (let ((_e3409534127_ (gx#syntax-e _tl3409034124_)))
                              (let ((_hd3409434131_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3409534127_)))
                                    (_tl3409334134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3409534127_))))
                                (if (gx#stx-pair/null? _tl3409334134_)
                                    (let ((_g50502_
                                           (gx#syntax-split-splice
                                            _tl3409334134_
                                            '0)))
                                      (begin
                                        (let ((_g50503_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50502_)
                                                     (##vector-length _g50502_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50503_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50503_)))
                                        (let ((_target3409634137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50502_ 0)))
                                              (_tl3409834140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50502_ 1))))
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
                               (let ((__tmp50511
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50504
                                      (let ((__tmp50505
                                             (let ((__tmp50510
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50506
                                                    (let ((__tmp50509
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50507
                   (let ((__tmp50508
                          (lambda (_g3418634189_ _g3418734192_)
                            (let ()
                              (declare (not safe))
                              (cons _g3418634189_ _g3418734192_)))))
                     (declare (not safe))
                     (foldr1 __tmp50508 '() _L34167_))))
              (declare (not safe))
              (cons __tmp50509 __tmp50507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50510 __tmp50506))))
                                        (declare (not safe))
                                        (cons __tmp50505 '()))))
                                 (declare (not safe))
                                 (cons __tmp50511 __tmp50504))
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
                    (let ((_e3421034235_ (gx#syntax-e _g3420534232_)))
                      (let ((_hd3420934239_
                             (let ()
                               (declare (not safe))
                               (##car _e3421034235_)))
                            (_tl3420834242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3421034235_))))
                        (if (gx#stx-pair? _tl3420834242_)
                            (let ((_e3421334245_ (gx#syntax-e _tl3420834242_)))
                              (let ((_hd3421234249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3421334245_)))
                                    (_tl3421134252_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3421334245_))))
                                (if (gx#stx-pair/null? _tl3421134252_)
                                    (let ((_g50512_
                                           (gx#syntax-split-splice
                                            _tl3421134252_
                                            '0)))
                                      (begin
                                        (let ((_g50513_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50512_)
                                                     (##vector-length _g50512_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50513_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50513_)))
                                        (let ((_target3421434255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50512_ 0)))
                                              (_tl3421634258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50512_ 1))))
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
                               (let ((__tmp50521
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50514
                                      (let ((__tmp50515
                                             (let ((__tmp50520
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50516
                                                    (let ((__tmp50519
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50517
                   (let ((__tmp50518
                          (lambda (_g3430434307_ _g3430534310_)
                            (let ()
                              (declare (not safe))
                              (cons _g3430434307_ _g3430534310_)))))
                     (declare (not safe))
                     (foldr1 __tmp50518 '() _L34285_))))
              (declare (not safe))
              (cons __tmp50519 __tmp50517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50520 __tmp50516))))
                                        (declare (not safe))
                                        (cons __tmp50515 '()))))
                                 (declare (not safe))
                                 (cons __tmp50521 __tmp50514))
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
                    (let ((_e3432934357_ (gx#syntax-e _g3432334354_)))
                      (let ((_hd3432834361_
                             (let ()
                               (declare (not safe))
                               (##car _e3432934357_)))
                            (_tl3432734364_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3432934357_))))
                        (if (gx#stx-pair? _tl3432734364_)
                            (let ((_e3433234367_ (gx#syntax-e _tl3432734364_)))
                              (let ((_hd3433134371_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3433234367_)))
                                    (_tl3433034374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3433234367_))))
                                (if (gx#stx-pair? _tl3433034374_)
                                    (let ((_e3433534377_
                                           (gx#syntax-e _tl3433034374_)))
                                      (let ((_hd3433434381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3433534377_)))
                                            (_tl3433334384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3433534377_))))
                                        (if (gx#stx-pair/null? _tl3433334384_)
                                            (let ((_g50522_
                                                   (gx#syntax-split-splice
                                                    _tl3433334384_
                                                    '0)))
                                              (begin
                                                (let ((_g50523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50522_)
                                                             (##vector-length
                                                              _g50522_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3433634387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50522_
                                                          0)))
                                                      (_tl3433834390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50522_
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
                                   (let ((__tmp50536
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50524
                                          (let ((__tmp50532
                                                 (let ((__tmp50535
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50533
                                                        (let ((__tmp50534
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34420_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50535
                                                         __tmp50533)))
                                                (__tmp50525
                                                 (let ((__tmp50526
                                                        (let ((__tmp50531
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50527
                                                               (let ((__tmp50528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50529
                                     (let ((__tmp50530
                                            (lambda (_g3444034443_
                                                     _g3444134446_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3444034443_
                                                      _g3444134446_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50530 '() _L34417_))))
                                (declare (not safe))
                                (cons _L34419_ __tmp50529))))
                         (declare (not safe))
                         (cons '() __tmp50528))))
                  (declare (not safe))
                  (cons __tmp50531 __tmp50527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50526 '()))))
                                            (declare (not safe))
                                            (cons __tmp50532 __tmp50525))))
                                     (declare (not safe))
                                     (cons __tmp50536 __tmp50524)))
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
                    (let ((_e3446234478_ (gx#syntax-e _g3445834475_)))
                      (let ((_hd3446134482_
                             (let ()
                               (declare (not safe))
                               (##car _e3446234478_)))
                            (_tl3446034485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3446234478_))))
                        (if (gx#stx-pair? _tl3446034485_)
                            (let ((_e3446534488_ (gx#syntax-e _tl3446034485_)))
                              (let ((_hd3446434492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3446534488_)))
                                    (_tl3446334495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3446534488_))))
                                (if (gx#stx-null? _tl3446334495_)
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
                                                          (let ((__tmp50538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50537
                         (let () (declare (not safe)) (cons _L34527_ '()))))
                    (declare (not safe))
                    (cons __tmp50538 __tmp50537))))
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
