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
    (let ((__tmp50195 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50195
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
    (let ((__tmp50196 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50196
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
          (let ((__tmp50197 (gx#syntax-local-value _stx33073_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50197))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx33070_)
      (if (gx#identifier? _stx33070_)
          (let ((__tmp50198 (gx#syntax-local-value _stx33070_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50198))
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
                                (let ((__tmp50199
                                       (let ((__tmp50201
                                              (lambda (_g3337233375_
                                                       _g3337333378_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3337233375_
                                                        _g3337333378_))))
                                             (__tmp50200
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33321_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50201
                                                 __tmp50200
                                                 _L33323_))))
                                  (declare (not safe))
                                  (cons _L33361_ __tmp50199))))
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
                 (let ((__tmp50204 (gx#datum->syntax '#f '%#set!))
                       (__tmp50202
                        (let ((__tmp50203
                               (let ()
                                 (declare (not safe))
                                 (cons _L33186_ '()))))
                          (declare (not safe))
                          (cons _L33188_ __tmp50203))))
                   (declare (not safe))
                   (cons __tmp50204 __tmp50202)))))
          (let* ((___match4667146672_
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
                          (___kont4659146592_ _L33186_ _L33188_)
                          (let () (declare (not safe)) (_g3309033149_))))))
                 (___match4665146652_
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
                          (___kont4658946590_ _L33231_)
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
                                      (___match4667146672_
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
                 (___match4663946640_
                  (lambda (_e3310533251_
                           _hd3310633255_
                           _tl3310733258_
                           _e3310833261_
                           _hd3310933265_
                           _tl3311033268_
                           _e3311133271_
                           _hd3311233275_
                           _tl3311333278_
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
                                                        (___kont4658546586_
                                                         _L33321_
                                                         _L33323_
                                                         _L33324_)
                                                        (___match4665146652_
                                                         _e3310533251_
                                                         _hd3310633255_
                                                         _tl3310733258_
                                                         _e3310833261_
                                                         _hd3310933265_
                                                         _tl3311033268_)))
                                                  (___match4665146652_
                                                   _e3310533251_
                                                   _hd3310633255_
                                                   _tl3310733258_
                                                   _e3310833261_
                                                   _hd3310933265_
                                                   _tl3311033268_))))
                                          (___match4665146652_
                                           _e3310533251_
                                           _hd3310633255_
                                           _tl3310733258_
                                           _e3310833261_
                                           _hd3310933265_
                                           _tl3311033268_)))))))
                      (_loop3311733287_ _target3311433281_ '())))))
            (if (gx#stx-pair? ___stx4658046581_)
                (let ((_e3309333392_ (gx#syntax-e ___stx4658046581_)))
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
                                    (if (let ((__tmp50205
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50205))
                                        (let ((_L33422_ _hd3310033416_))
                                          (___kont4658346584_ _L33422_))
                                        (if (gx#stx-pair/null? _tl3310133419_)
                                            (let ((___splice4658746588_
                                                   (gx#syntax-split-splice
                                                    _tl3310133419_
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
                                                     _e3309333392_
                                                     _hd3309433396_
                                                     _tl3309533399_
                                                     _e3309633402_
                                                     _hd3309733406_
                                                     _tl3309833409_
                                                     _e3309933412_
                                                     _hd3310033416_
                                                     _tl3310133419_
                                                     ___splice4658746588_
                                                     _target3311433281_
                                                     _tl3311633284_)
                                                    (___match4665146652_
                                                     _e3309333392_
                                                     _hd3309433396_
                                                     _tl3309533399_
                                                     _e3309633402_
                                                     _hd3309733406_
                                                     _tl3309833409_))))
                                            (___match4665146652_
                                             _e3309333392_
                                             _hd3309433396_
                                             _tl3309533399_
                                             _e3309633402_
                                             _hd3309733406_
                                             _tl3309833409_)))))
                                (___match4665146652_
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
                                (let ((_g50206_
                                       (gx#syntax-split-splice
                                        _tl3345133483_
                                        '1)))
                                  (begin
                                    (let ((_g50207_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50206_)
                                                 (##vector-length _g50206_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50207_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50207_)))
                                    (let ((_target3345233486_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50206_ 0)))
                                          (_tl3345433489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50206_ 1))))
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
                                             (let ((_g50208_
                                                    (gx#syntax-split-splice
                                                     _g3354733567_
                                                     '0)))
                                               (begin
                                                 (let ((_g50209_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50208_)
                                                              (##vector-length
                                                               _g50208_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3354933570_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50208_
                                                           0)))
                                                       (_tl3355133573_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50208_
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
                                      (let ((__tmp50222
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50210
                                             (let ((__tmp50217
                                                    (let ((__tmp50218
                                                           (let ((__tmp50220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50221
                                 (lambda (_g3361533621_ _g3361633624_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3361533621_ _g3361633624_)))))
                            (declare (not safe))
                            (foldr1 __tmp50221 '() _L33600_)))
                         (__tmp50219
                          (let () (declare (not safe)) (cons _L33526_ '()))))
                     (declare (not safe))
                     (cons __tmp50220 __tmp50219))))
              (declare (not safe))
              (cons __tmp50218 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50211
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33600_
                                                       _L33528_)
                                                      (let ((__tmp50212
                                                             (lambda (_g3361733627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3361833630_
                              _g3361933632_)
                       (let ((__tmp50213
                              (let ((__tmp50216 (gx#datum->syntax '#f 'set!))
                                    (__tmp50214
                                     (let ((__tmp50215
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3361733627_ '()))))
                                       (declare (not safe))
                                       (cons _g3361833630_ __tmp50215))))
                                (declare (not safe))
                                (cons __tmp50216 __tmp50214))))
                         (declare (not safe))
                         (cons __tmp50213 _g3361933632_)))))
                (declare (not safe))
                (foldr2 __tmp50212 '() _L33600_ _L33528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50217 __tmp50211))))
                                        (declare (not safe))
                                        (cons __tmp50222 __tmp50210))))
                                  _$e3355733596_))))))
                 (_loop3355233576_ _target3354933570_ '()))
               (_g3354633563_ _g3354733567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3354633563_ _g3354733567_)))))
                                 (_g3354533635_
                                  (gx#gentemps
                                   (let ((__tmp50223
                                          (lambda (_g3363833641_ _g3363933644_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3363833641_
                                                    _g3363933644_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50223 '() _L33528_))))))
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
                 (let ((__tmp50227 (gx#datum->syntax '#f 'let))
                       (__tmp50224
                        (let ((__tmp50225
                               (let ((__tmp50226
                                      (lambda (_g3406534068_ _g3406634071_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3406534068_
                                                _g3406634071_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50226 '() _L34049_))))
                          (declare (not safe))
                          (cons '() __tmp50225))))
                   (declare (not safe))
                   (cons __tmp50227 __tmp50224))))
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
                                              (let ((_g50228_
                                                     (gx#syntax-split-splice
                                                      _g3388033900_
                                                      '0)))
                                                (begin
                                                  (let ((_g50229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50228_)
                                                               (##vector-length
                                                                _g50228_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50229_ 2)))
                (error "Context expects 2 values" _g50229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3388233903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50228_
                                                            0)))
                                                        (_tl3388433906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50228_
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
                                         (let ((__tmp50233
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50230
                                                (let ((__tmp50231
                                                       (let ((__tmp50232
                                                              (lambda (_g3395133954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3395233957_)
                        (let ()
                          (declare (not safe))
                          (cons _g3395133954_ _g3395233957_)))))
                 (declare (not safe))
                 (foldr1 __tmp50232 '() _L33933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33867_ __tmp50231))))
                                           (declare (not safe))
                                           (cons __tmp50233 __tmp50230)))))
                                   _arg3389033929_))))))
                  (_loop3388533909_ _target3388233903_ '()))
                (_g3387933896_ _g3388033900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3387933896_ _g3388033900_)))))
                                  (_g3387833960_
                                   (let ((__tmp50236
                                          (gx#syntax->list
                                           (let ((__tmp50237
                                                  (lambda (_g3396333966_
                                                           _g3396433969_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3396333966_
                                                            _g3396433969_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50237
                                                     '()
                                                     _L33829_))))
                                         (__tmp50234
                                          (gx#syntax->list
                                           (let ((__tmp50235
                                                  (lambda (_g3397133974_
                                                           _g3397233977_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3397133974_
                                                            _g3397233977_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50235
                                                     '()
                                                     _L33828_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50236
                                             __tmp50234))))))
                            _g3385333864_))))
                   (_g3385133980_
                    (gx#stx-wrap-source
                     (let ((__tmp50241 (gx#datum->syntax '#f 'lambda))
                           (__tmp50238
                            (let ((__tmp50239
                                   (let ((__tmp50240
                                          (lambda (_g3398333986_ _g3398433989_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3398333986_
                                                    _g3398433989_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50240 '() _L33826_))))
                              (declare (not safe))
                              (cons '() __tmp50239))))
                       (declare (not safe))
                       (cons __tmp50241 __tmp50238))
                     (gx#stx-source _stx33653_)))))))
          (let* ((___match4672946730_
                  (lambda (_e3367833722_
                           _hd3367933726_
                           _tl3368033729_
                           _e3368133732_
                           _hd3368233736_
                           _tl3368333739_
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
                                          (let ((___splice4668546686_
                                                 (gx#syntax-split-splice
                                                  _tl3368333739_
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
                  (lambda (_e3366033999_
                           _hd3366134003_
                           _tl3366234006_
                           _e3366334009_
                           _hd3366434013_
                           _tl3366534016_
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
                (let ((_e3366033999_ (gx#syntax-e ___stx4667446675_)))
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
                                    (let ((___splice4667946680_
                                           (gx#syntax-split-splice
                                            _tl3366534016_
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
                                             _e3366033999_
                                             _hd3366134003_
                                             _tl3366234006_
                                             _e3366334009_
                                             _hd3366434013_
                                             _tl3366534016_
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
                                                         _e3366033999_
                                                         _hd3366134003_
                                                         _tl3366234006_
                                                         _e3366334009_
                                                         _hd3366434013_
                                                         _tl3366534016_
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
                                                 _e3366033999_
                                                 _hd3366134003_
                                                 _tl3366234006_
                                                 _e3366334009_
                                                 _hd3366434013_
                                                 _tl3366534016_
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
                                             _e3366033999_
                                             _hd3366134003_
                                             _tl3366234006_
                                             _e3366334009_
                                             _hd3366434013_
                                             _tl3366534016_
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
                                    (let ((_g50242_
                                           (gx#syntax-split-splice
                                            _tl3409534134_
                                            '0)))
                                      (begin
                                        (let ((_g50243_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50242_)
                                                     (##vector-length _g50242_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50243_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50243_)))
                                        (let ((_target3409634137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50242_ 0)))
                                              (_tl3409834140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50242_ 1))))
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
                               (let ((__tmp50251
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50244
                                      (let ((__tmp50245
                                             (let ((__tmp50250
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50246
                                                    (let ((__tmp50249
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50247
                   (let ((__tmp50248
                          (lambda (_g3418634189_ _g3418734192_)
                            (let ()
                              (declare (not safe))
                              (cons _g3418634189_ _g3418734192_)))))
                     (declare (not safe))
                     (foldr1 __tmp50248 '() _L34167_))))
              (declare (not safe))
              (cons __tmp50249 __tmp50247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50250 __tmp50246))))
                                        (declare (not safe))
                                        (cons __tmp50245 '()))))
                                 (declare (not safe))
                                 (cons __tmp50251 __tmp50244))
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
                                    (let ((_g50252_
                                           (gx#syntax-split-splice
                                            _tl3421334252_
                                            '0)))
                                      (begin
                                        (let ((_g50253_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50252_)
                                                     (##vector-length _g50252_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50253_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50253_)))
                                        (let ((_target3421434255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50252_ 0)))
                                              (_tl3421634258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50252_ 1))))
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
                               (let ((__tmp50261
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50254
                                      (let ((__tmp50255
                                             (let ((__tmp50260
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50256
                                                    (let ((__tmp50259
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50257
                   (let ((__tmp50258
                          (lambda (_g3430434307_ _g3430534310_)
                            (let ()
                              (declare (not safe))
                              (cons _g3430434307_ _g3430534310_)))))
                     (declare (not safe))
                     (foldr1 __tmp50258 '() _L34285_))))
              (declare (not safe))
              (cons __tmp50259 __tmp50257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50260 __tmp50256))))
                                        (declare (not safe))
                                        (cons __tmp50255 '()))))
                                 (declare (not safe))
                                 (cons __tmp50261 __tmp50254))
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
                                            (let ((_g50262_
                                                   (gx#syntax-split-splice
                                                    _tl3433534384_
                                                    '0)))
                                              (begin
                                                (let ((_g50263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50262_)
                                                             (##vector-length
                                                              _g50262_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3433634387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50262_
                                                          0)))
                                                      (_tl3433834390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50262_
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
                                   (let ((__tmp50276
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50264
                                          (let ((__tmp50272
                                                 (let ((__tmp50275
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50273
                                                        (let ((__tmp50274
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34420_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50275
                                                         __tmp50273)))
                                                (__tmp50265
                                                 (let ((__tmp50266
                                                        (let ((__tmp50271
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50267
                                                               (let ((__tmp50268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50269
                                     (let ((__tmp50270
                                            (lambda (_g3444034443_
                                                     _g3444134446_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3444034443_
                                                      _g3444134446_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50270 '() _L34417_))))
                                (declare (not safe))
                                (cons _L34419_ __tmp50269))))
                         (declare (not safe))
                         (cons '() __tmp50268))))
                  (declare (not safe))
                  (cons __tmp50271 __tmp50267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50266 '()))))
                                            (declare (not safe))
                                            (cons __tmp50272 __tmp50265))))
                                     (declare (not safe))
                                     (cons __tmp50276 __tmp50264)))
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
                                                          (let ((__tmp50278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50277
                         (let () (declare (not safe)) (cons _L34527_ '()))))
                    (declare (not safe))
                    (cons __tmp50278 __tmp50277))))
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
