(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32653_)
      (let ((_g3265632663_
             (lambda (_g3265732659_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3265732659_))))
        (_g3265632663_ _$stx32653_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32667_)
      (let ((_g3267032677_
             (lambda (_g3267132673_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3267132673_))))
        (_g3267032677_ _$stx32667_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32681_)
      (let ((_g3268432691_
             (lambda (_g3268532687_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3268532687_))))
        (_g3268432691_ _$stx32681_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32695_)
      (let ((_g3269832705_
             (lambda (_g3269932701_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3269932701_))))
        (_g3269832705_ _$stx32695_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32720_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32720_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32716_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32716_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32713_)
      (if (gx#identifier? _stx32713_)
          (let ((__tmp42935 (gx#syntax-local-value _stx32713_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp42935))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32710_)
      (if (gx#identifier? _stx32710_)
          (let ((__tmp42936 (gx#syntax-local-value _stx32710_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp42936))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32724_)
      (let* ((___stx4220242203_ _stx32724_)
             (_g3273032789_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4220242203_))))
        (let ((___kont4220542206_
               (lambda (_L33062_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33062_)
                  _stx32724_)))
              (___kont4220742208_
               (lambda (_L32961_ _L32963_ _L32964_)
                 (let* ((_g3298632994_
                         (lambda (_g3298732990_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3298732990_)))
                        (_g3298533021_
                         (lambda (_g3298732998_)
                           ((lambda (_L33001_)
                              (let ()
                                (cons _L33001_
                                      (foldr (lambda (_g3301233015_
                                                      _g3301333018_)
                                               (cons _g3301233015_
                                                     _g3301333018_))
                                             (cons _L32961_ '())
                                             _L32963_))))
                            _g3298732998_))))
                   (_g3298533021_
                    (gx#stx-identifier _L32964_ _L32964_ '"-set!")))))
              (___kont4221142212_
               (lambda (_L32871_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32871_)
                  _stx32724_)))
              (___kont4221342214_
               (lambda (_L32826_ _L32828_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32828_ (cons _L32826_ '()))))))
          (let* ((___match4229342294_
                  (lambda (_e3277732796_
                           _hd3277632800_
                           _tl3277532803_
                           _e3278032806_
                           _hd3277932810_
                           _tl3277832813_
                           _e3278332816_
                           _hd3278232820_
                           _tl3278132823_)
                    (let ((_L32826_ _hd3278232820_) (_L32828_ _hd3277932810_))
                      (if (gx#identifier? _L32828_)
                          (___kont4221342214_ _L32826_ _L32828_)
                          (let () (declare (not safe)) (_g3273032789_))))))
                 (___match4227342274_
                  (lambda (_e3276932851_
                           _hd3276832855_
                           _tl3276732858_
                           _e3277232861_
                           _hd3277132865_
                           _tl3277032868_)
                    (let ((_L32871_ _hd3277132865_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L32871_))
                          (___kont4221142212_ _L32871_)
                          (if (gx#stx-pair? _tl3277032868_)
                              (let ((_e3278332816_
                                     (gx#syntax-e _tl3277032868_)))
                                (let ((_tl3278132823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3278332816_)))
                                      (_hd3278232820_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3278332816_))))
                                  (if (gx#stx-null? _tl3278132823_)
                                      (___match4229342294_
                                       _e3276932851_
                                       _hd3276832855_
                                       _tl3276732858_
                                       _e3277232861_
                                       _hd3277132865_
                                       _tl3277032868_
                                       _e3278332816_
                                       _hd3278232820_
                                       _tl3278132823_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3273032789_)))))
                              (let ()
                                (declare (not safe))
                                (_g3273032789_)))))))
                 (___match4226142262_
                  (lambda (_e3274732891_
                           _hd3274632895_
                           _tl3274532898_
                           _e3275032901_
                           _hd3274932905_
                           _tl3274832908_
                           _e3275332911_
                           _hd3275232915_
                           _tl3275132918_
                           ___splice4220942210_
                           _target3275432921_
                           _tl3275632924_)
                    (letrec ((_loop3275732927_
                              (lambda (_hd3275532931_ _arg3276132934_)
                                (if (gx#stx-pair? _hd3275532931_)
                                    (let ((_e3275832937_
                                           (gx#syntax-e _hd3275532931_)))
                                      (let ((_lp-tl3276032944_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3275832937_)))
                                            (_lp-hd3275932941_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3275832937_))))
                                        (_loop3275732927_
                                         _lp-tl3276032944_
                                         (cons _lp-hd3275932941_
                                               _arg3276132934_))))
                                    (let ((_arg3276232947_
                                           (reverse _arg3276132934_)))
                                      (if (gx#stx-pair? _tl3274832908_)
                                          (let ((_e3276532951_
                                                 (gx#syntax-e _tl3274832908_)))
                                            (let ((_tl3276332958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3276532951_)))
                                                  (_hd3276432955_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3276532951_))))
                                              (if (gx#stx-null? _tl3276332958_)
                                                  (let ((_L32961_
                                                         _hd3276432955_)
                                                        (_L32963_
                                                         _arg3276232947_)
                                                        (_L32964_
                                                         _hd3275232915_))
                                                    (if (gx#identifier?
                                                         _L32964_)
                                                        (___kont4220742208_
                                                         _L32961_
                                                         _L32963_
                                                         _L32964_)
                                                        (___match4227342274_
                                                         _e3274732891_
                                                         _hd3274632895_
                                                         _tl3274532898_
                                                         _e3275032901_
                                                         _hd3274932905_
                                                         _tl3274832908_)))
                                                  (___match4227342274_
                                                   _e3274732891_
                                                   _hd3274632895_
                                                   _tl3274532898_
                                                   _e3275032901_
                                                   _hd3274932905_
                                                   _tl3274832908_))))
                                          (___match4227342274_
                                           _e3274732891_
                                           _hd3274632895_
                                           _tl3274532898_
                                           _e3275032901_
                                           _hd3274932905_
                                           _tl3274832908_)))))))
                      (_loop3275732927_ _target3275432921_ '())))))
            (if (gx#stx-pair? ___stx4220242203_)
                (let ((_e3273533032_ (gx#syntax-e ___stx4220242203_)))
                  (let ((_tl3273333039_
                         (let () (declare (not safe)) (##cdr _e3273533032_)))
                        (_hd3273433036_
                         (let () (declare (not safe)) (##car _e3273533032_))))
                    (if (gx#stx-pair? _tl3273333039_)
                        (let ((_e3273833042_ (gx#syntax-e _tl3273333039_)))
                          (let ((_tl3273633049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3273833042_)))
                                (_hd3273733046_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3273833042_))))
                            (if (gx#stx-pair? _hd3273733046_)
                                (let ((_e3274133052_
                                       (gx#syntax-e _hd3273733046_)))
                                  (let ((_tl3273933059_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3274133052_)))
                                        (_hd3274033056_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3274133052_))))
                                    (if (let ((__tmp42937
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp42937))
                                        (let ((_L33062_ _hd3274033056_))
                                          (___kont4220542206_ _L33062_))
                                        (if (gx#stx-pair/null? _tl3273933059_)
                                            (let ((___splice4220942210_
                                                   (gx#syntax-split-splice
                                                    _tl3273933059_
                                                    '0)))
                                              (let ((_tl3275632924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4220942210_
                                                        '1)))
                                                    (_target3275432921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4220942210_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3275632924_)
                                                    (___match4226142262_
                                                     _e3273533032_
                                                     _hd3273433036_
                                                     _tl3273333039_
                                                     _e3273833042_
                                                     _hd3273733046_
                                                     _tl3273633049_
                                                     _e3274133052_
                                                     _hd3274033056_
                                                     _tl3273933059_
                                                     ___splice4220942210_
                                                     _target3275432921_
                                                     _tl3275632924_)
                                                    (___match4227342274_
                                                     _e3273533032_
                                                     _hd3273433036_
                                                     _tl3273333039_
                                                     _e3273833042_
                                                     _hd3273733046_
                                                     _tl3273633049_))))
                                            (___match4227342274_
                                             _e3273533032_
                                             _hd3273433036_
                                             _tl3273333039_
                                             _e3273833042_
                                             _hd3273733046_
                                             _tl3273633049_)))))
                                (___match4227342274_
                                 _e3273533032_
                                 _hd3273433036_
                                 _tl3273333039_
                                 _e3273833042_
                                 _hd3273733046_
                                 _tl3273633049_))))
                        (let () (declare (not safe)) (_g3273032789_)))))
                (let () (declare (not safe)) (_g3273032789_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33082_)
      (let* ((_g3308533109_
              (lambda (_g3308633105_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3308633105_)))
             (_g3308433287_
              (lambda (_g3308633113_)
                (if (gx#stx-pair? _g3308633113_)
                    (let ((_e3309133116_ (gx#syntax-e _g3308633113_)))
                      (let ((_hd3309033120_
                             (let ()
                               (declare (not safe))
                               (##car _e3309133116_)))
                            (_tl3308933123_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3309133116_))))
                        (if (gx#stx-pair/null? _tl3308933123_)
                            (if (fx>= (gx#stx-length _tl3308933123_) '1)
                                (let ((_g42938_
                                       (gx#syntax-split-splice
                                        _tl3308933123_
                                        '1)))
                                  (begin
                                    (let ((_g42939_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42938_)
                                                 (##vector-length _g42938_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42939_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42939_)))
                                    (let ((_target3309233126_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42938_ 0)))
                                          (_tl3309433129_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42938_ 1))))
                                      (if (gx#stx-pair? _tl3309433129_)
                                          (let ((_e3310333132_
                                                 (gx#syntax-e _tl3309433129_)))
                                            (let ((_hd3310233136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3310333132_)))
                                                  (_tl3310133139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3310333132_))))
                                              (if (gx#stx-null? _tl3310133139_)
                                                  (letrec ((_loop3309533142_
                                                            (lambda (_hd3309333146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3309933149_)
                      (if (gx#stx-pair? _hd3309333146_)
                          (let ((_e3309633152_ (gx#syntax-e _hd3309333146_)))
                            (let ((_lp-hd3309733156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3309633152_)))
                                  (_lp-tl3309833159_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3309633152_))))
                              (_loop3309533142_
                               _lp-tl3309833159_
                               (cons _lp-hd3309733156_ _tgt3309933149_))))
                          (let ((_tgt3310033162_ (reverse _tgt3309933149_)))
                            ((lambda (_L33166_ _L33168_)
                               (let* ((_g3318633203_
                                       (lambda (_g3318733199_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3318733199_)))
                                      (_g3318533275_
                                       (lambda (_g3318733207_)
                                         (if (gx#stx-pair/null? _g3318733207_)
                                             (let ((_g42940_
                                                    (gx#syntax-split-splice
                                                     _g3318733207_
                                                     '0)))
                                               (begin
                                                 (let ((_g42941_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g42940_)
                                                              (##vector-length
                                                               _g42940_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g42941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g42941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3318933210_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g42940_
                                                           0)))
                                                       (_tl3319133213_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g42940_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3319133213_)
                                                       (letrec ((_loop3319233216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3319033220_ _$e3319633223_)
                           (if (gx#stx-pair? _hd3319033220_)
                               (let ((_e3319333226_
                                      (gx#syntax-e _hd3319033220_)))
                                 (let ((_lp-hd3319433230_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3319333226_)))
                                       (_lp-tl3319533233_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3319333226_))))
                                   (_loop3319233216_
                                    _lp-tl3319533233_
                                    (cons _lp-hd3319433230_ _$e3319633223_))))
                               (let ((_$e3319733236_ (reverse _$e3319633223_)))
                                 ((lambda (_L33240_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3325833261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3325933264_)
                               (cons _g3325833261_ _g3325933264_))
                             '()
                             _L33240_)
                      (cons _L33166_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L33240_
                                                     _L33168_)
                                                    (foldr (lambda (_g3325533267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3325633270_
                            _g3325733272_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3325633270_ (cons _g3325533267_ '())))
                           _g3325733272_))
                   '()
                   _L33240_
                   _L33168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3319733236_))))))
                 (_loop3319233216_ _target3318933210_ '()))
               (_g3318633203_ _g3318733207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3318633203_ _g3318733207_)))))
                                 (_g3318533275_
                                  (gx#gentemps
                                   (foldr (lambda (_g3327833281_ _g3327933284_)
                                            (cons _g3327833281_ _g3327933284_))
                                          '()
                                          _L33168_)))))
                             _hd3310233136_
                             _tgt3310033162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3309533142_
                                                     _target3309233126_
                                                     '()))
                                                  (_g3308533109_
                                                   _g3308633113_))))
                                          (_g3308533109_ _g3308633113_)))))
                                (_g3308533109_ _g3308633113_))
                            (_g3308533109_ _g3308633113_))))
                    (_g3308533109_ _g3308633113_)))))
        (_g3308433287_ _stx33082_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33293_)
      (let* ((___stx4229642297_ _stx33293_)
             (_g3329733355_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4229642297_))))
        (let ((___kont4229942300_
               (lambda (_L33689_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3370533708_ _g3370633711_)
                                      (cons _g3370533708_ _g3370633711_))
                                    '()
                                    _L33689_)))))
              (___kont4230342304_
               (lambda (_L33466_ _L33468_ _L33469_)
                 (let* ((_g3349233500_
                         (lambda (_g3349333496_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3349333496_)))
                        (_g3349133620_
                         (lambda (_g3349333504_)
                           ((lambda (_L33507_)
                              (let ()
                                (let* ((_g3351933536_
                                        (lambda (_g3352033532_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3352033532_)))
                                       (_g3351833600_
                                        (lambda (_g3352033540_)
                                          (if (gx#stx-pair/null? _g3352033540_)
                                              (let ((_g42942_
                                                     (gx#syntax-split-splice
                                                      _g3352033540_
                                                      '0)))
                                                (begin
                                                  (let ((_g42943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42942_)
                                                               (##vector-length
                                                                _g42942_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42943_ 2)))
                (error "Context expects 2 values" _g42943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3352233543_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42942_
                                                            0)))
                                                        (_tl3352433546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42942_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3352433546_)
                                                        (letrec ((_loop3352533549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3352333553_ _arg3352933556_)
                            (if (gx#stx-pair? _hd3352333553_)
                                (let ((_e3352633559_
                                       (gx#syntax-e _hd3352333553_)))
                                  (let ((_lp-hd3352733563_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3352633559_)))
                                        (_lp-tl3352833566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3352633559_))))
                                    (_loop3352533549_
                                     _lp-tl3352833566_
                                     (cons _lp-hd3352733563_
                                           _arg3352933556_))))
                                (let ((_arg3353033569_
                                       (reverse _arg3352933556_)))
                                  ((lambda (_L33573_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33507_
                                                     (foldr (lambda (_g3359133594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3359233597_)
                      (cons _g3359133594_ _g3359233597_))
                    '()
                    _L33573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3353033569_))))))
                  (_loop3352533549_ _target3352233543_ '()))
                (_g3351933536_ _g3352033540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3351933536_ _g3352033540_)))))
                                  (_g3351833600_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3360333606_
                                                           _g3360433609_)
                                                    (cons _g3360333606_
                                                          _g3360433609_))
                                                  '()
                                                  _L33469_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3361133614_
                                                           _g3361233617_)
                                                    (cons _g3361133614_
                                                          _g3361233617_))
                                                  '()
                                                  _L33468_)))))))
                            _g3349333504_))))
                   (_g3349133620_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3362333626_ _g3362433629_)
                                          (cons _g3362333626_ _g3362433629_))
                                        '()
                                        _L33466_)))
                     (gx#stx-source _stx33293_)))))))
          (let* ((___match4235142352_
                  (lambda (_e3332033362_
                           _hd3331933366_
                           _tl3331833369_
                           _e3332333372_
                           _hd3332233376_
                           _tl3332133379_
                           ___splice4230542306_
                           _target3332433382_
                           _tl3332633385_)
                    (letrec ((_loop3332733388_
                              (lambda (_hd3332533392_
                                       _expr3333133395_
                                       _param3333233397_)
                                (if (gx#stx-pair? _hd3332533392_)
                                    (let ((_e3332833400_
                                           (gx#syntax-e _hd3332533392_)))
                                      (let ((_lp-tl3333033407_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3332833400_)))
                                            (_lp-hd3332933404_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3332833400_))))
                                        (if (gx#stx-pair? _lp-hd3332933404_)
                                            (let ((_e3333733410_
                                                   (gx#syntax-e
                                                    _lp-hd3332933404_)))
                                              (let ((_tl3333533417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3333733410_)))
                                                    (_hd3333633414_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3333733410_))))
                                                (if (gx#stx-pair?
                                                     _tl3333533417_)
                                                    (let ((_e3334033420_
                                                           (gx#syntax-e
                                                            _tl3333533417_)))
                                                      (let ((_tl3333833427_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3334033420_)))
                    (_hd3333933424_
                     (let () (declare (not safe)) (##car _e3334033420_))))
                (if (gx#stx-null? _tl3333833427_)
                    (_loop3332733388_
                     _lp-tl3333033407_
                     (cons _hd3333933424_ _expr3333133395_)
                     (cons _hd3333633414_ _param3333233397_))
                    (let () (declare (not safe)) (_g3329733355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3329733355_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3329733355_)))))
                                    (let ((_param3333433433_
                                           (reverse _param3333233397_))
                                          (_expr3333333430_
                                           (reverse _expr3333133395_)))
                                      (if (gx#stx-pair/null? _tl3332133379_)
                                          (let ((___splice4230742308_
                                                 (gx#syntax-split-splice
                                                  _tl3332133379_
                                                  '0)))
                                            (let ((_tl3334333439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4230742308_
                                                      '1)))
                                                  (_target3334133436_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4230742308_
                                                      '0))))
                                              (if (gx#stx-null? _tl3334333439_)
                                                  (letrec ((_loop3334433442_
                                                            (lambda (_hd3334233446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3334833449_)
                      (if (gx#stx-pair? _hd3334233446_)
                          (let ((_e3334533452_ (gx#syntax-e _hd3334233446_)))
                            (let ((_lp-tl3334733459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3334533452_)))
                                  (_lp-hd3334633456_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3334533452_))))
                              (_loop3334433442_
                               _lp-tl3334733459_
                               (cons _lp-hd3334633456_ _body3334833449_))))
                          (let ((_body3334933462_ (reverse _body3334833449_)))
                            (___kont4230342304_
                             _body3334933462_
                             _expr3333333430_
                             _param3333433433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3334433442_
                                                     _target3334133436_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3329733355_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3329733355_))))))))
                      (_loop3332733388_ _target3332433382_ '() '()))))
                 (___match4233142332_
                  (lambda (_e3330233639_
                           _hd3330133643_
                           _tl3330033646_
                           _e3330533649_
                           _hd3330433653_
                           _tl3330333656_
                           ___splice4230142302_
                           _target3330633659_
                           _tl3330833662_)
                    (letrec ((_loop3330933665_
                              (lambda (_hd3330733669_ _body3331333672_)
                                (if (gx#stx-pair? _hd3330733669_)
                                    (let ((_e3331033675_
                                           (gx#syntax-e _hd3330733669_)))
                                      (let ((_lp-tl3331233682_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3331033675_)))
                                            (_lp-hd3331133679_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3331033675_))))
                                        (_loop3330933665_
                                         _lp-tl3331233682_
                                         (cons _lp-hd3331133679_
                                               _body3331333672_))))
                                    (let ((_body3331433685_
                                           (reverse _body3331333672_)))
                                      (___kont4229942300_
                                       _body3331433685_))))))
                      (_loop3330933665_ _target3330633659_ '())))))
            (if (gx#stx-pair? ___stx4229642297_)
                (let ((_e3330233639_ (gx#syntax-e ___stx4229642297_)))
                  (let ((_tl3330033646_
                         (let () (declare (not safe)) (##cdr _e3330233639_)))
                        (_hd3330133643_
                         (let () (declare (not safe)) (##car _e3330233639_))))
                    (if (gx#stx-pair? _tl3330033646_)
                        (let ((_e3330533649_ (gx#syntax-e _tl3330033646_)))
                          (let ((_tl3330333656_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3330533649_)))
                                (_hd3330433653_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3330533649_))))
                            (if (gx#stx-null? _hd3330433653_)
                                (if (gx#stx-pair/null? _tl3330333656_)
                                    (let ((___splice4230142302_
                                           (gx#syntax-split-splice
                                            _tl3330333656_
                                            '0)))
                                      (let ((_tl3330833662_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4230142302_
                                                '1)))
                                            (_target3330633659_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4230142302_
                                                '0))))
                                        (if (gx#stx-null? _tl3330833662_)
                                            (___match4233142332_
                                             _e3330233639_
                                             _hd3330133643_
                                             _tl3330033646_
                                             _e3330533649_
                                             _hd3330433653_
                                             _tl3330333656_
                                             ___splice4230142302_
                                             _target3330633659_
                                             _tl3330833662_)
                                            (if (gx#stx-pair/null?
                                                 _hd3330433653_)
                                                (let ((___splice4230542306_
                                                       (gx#syntax-split-splice
                                                        _hd3330433653_
                                                        '0)))
                                                  (let ((_tl3332633385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4230542306_
                                                            '1)))
                                                        (_target3332433382_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4230542306_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3332633385_)
                                                        (___match4235142352_
                                                         _e3330233639_
                                                         _hd3330133643_
                                                         _tl3330033646_
                                                         _e3330533649_
                                                         _hd3330433653_
                                                         _tl3330333656_
                                                         ___splice4230542306_
                                                         _target3332433382_
                                                         _tl3332633385_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3329733355_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3329733355_))))))
                                    (if (gx#stx-pair/null? _hd3330433653_)
                                        (let ((___splice4230542306_
                                               (gx#syntax-split-splice
                                                _hd3330433653_
                                                '0)))
                                          (let ((_tl3332633385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4230542306_
                                                    '1)))
                                                (_target3332433382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4230542306_
                                                    '0))))
                                            (if (gx#stx-null? _tl3332633385_)
                                                (___match4235142352_
                                                 _e3330233639_
                                                 _hd3330133643_
                                                 _tl3330033646_
                                                 _e3330533649_
                                                 _hd3330433653_
                                                 _tl3330333656_
                                                 ___splice4230542306_
                                                 _target3332433382_
                                                 _tl3332633385_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3329733355_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3329733355_))))
                                (if (gx#stx-pair/null? _hd3330433653_)
                                    (let ((___splice4230542306_
                                           (gx#syntax-split-splice
                                            _hd3330433653_
                                            '0)))
                                      (let ((_tl3332633385_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4230542306_
                                                '1)))
                                            (_target3332433382_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4230542306_
                                                '0))))
                                        (if (gx#stx-null? _tl3332633385_)
                                            (___match4235142352_
                                             _e3330233639_
                                             _hd3330133643_
                                             _tl3330033646_
                                             _e3330533649_
                                             _hd3330433653_
                                             _tl3330333656_
                                             ___splice4230542306_
                                             _target3332433382_
                                             _tl3332633385_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3329733355_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3329733355_))))))
                        (let () (declare (not safe)) (_g3329733355_)))))
                (let () (declare (not safe)) (_g3329733355_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33722_)
      (let* ((_g3372633750_
              (lambda (_g3372733746_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3372733746_)))
             (_g3372533835_
              (lambda (_g3372733754_)
                (if (gx#stx-pair? _g3372733754_)
                    (let ((_e3373233757_ (gx#syntax-e _g3372733754_)))
                      (let ((_hd3373133761_
                             (let ()
                               (declare (not safe))
                               (##car _e3373233757_)))
                            (_tl3373033764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3373233757_))))
                        (if (gx#stx-pair? _tl3373033764_)
                            (let ((_e3373533767_ (gx#syntax-e _tl3373033764_)))
                              (let ((_hd3373433771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3373533767_)))
                                    (_tl3373333774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3373533767_))))
                                (if (gx#stx-pair/null? _tl3373333774_)
                                    (let ((_g42944_
                                           (gx#syntax-split-splice
                                            _tl3373333774_
                                            '0)))
                                      (begin
                                        (let ((_g42945_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42944_)
                                                     (##vector-length _g42944_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42945_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42945_)))
                                        (let ((_target3373633777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42944_ 0)))
                                              (_tl3373833780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42944_ 1))))
                                          (if (gx#stx-null? _tl3373833780_)
                                              (letrec ((_loop3373933783_
                                                        (lambda (_hd3373733787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3374333790_)
                  (if (gx#stx-pair? _hd3373733787_)
                      (let ((_e3374033793_ (gx#syntax-e _hd3373733787_)))
                        (let ((_lp-hd3374133797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3374033793_)))
                              (_lp-tl3374233800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3374033793_))))
                          (_loop3373933783_
                           _lp-tl3374233800_
                           (cons _lp-hd3374133797_ _body3374333790_))))
                      (let ((_body3374433803_ (reverse _body3374333790_)))
                        ((lambda (_L33807_ _L33809_)
                           (if (gx#identifier? _L33809_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33809_ '())
                                                       (foldr (lambda (_g3382633829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3382733832_)
                        (cons _g3382633829_ _g3382733832_))
                      '()
                      _L33807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3372633750_ _g3372733754_)))
                         _body3374433803_
                         _hd3373433771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3373933783_
                                                 _target3373633777_
                                                 '()))
                                              (_g3372633750_ _g3372733754_)))))
                                    (_g3372633750_ _g3372733754_))))
                            (_g3372633750_ _g3372733754_))))
                    (_g3372633750_ _g3372733754_)))))
        (_g3372533835_ _$stx33722_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33840_)
      (let* ((_g3384433868_
              (lambda (_g3384533864_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3384533864_)))
             (_g3384333953_
              (lambda (_g3384533872_)
                (if (gx#stx-pair? _g3384533872_)
                    (let ((_e3385033875_ (gx#syntax-e _g3384533872_)))
                      (let ((_hd3384933879_
                             (let ()
                               (declare (not safe))
                               (##car _e3385033875_)))
                            (_tl3384833882_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3385033875_))))
                        (if (gx#stx-pair? _tl3384833882_)
                            (let ((_e3385333885_ (gx#syntax-e _tl3384833882_)))
                              (let ((_hd3385233889_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3385333885_)))
                                    (_tl3385133892_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3385333885_))))
                                (if (gx#stx-pair/null? _tl3385133892_)
                                    (let ((_g42946_
                                           (gx#syntax-split-splice
                                            _tl3385133892_
                                            '0)))
                                      (begin
                                        (let ((_g42947_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42946_)
                                                     (##vector-length _g42946_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42947_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42947_)))
                                        (let ((_target3385433895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42946_ 0)))
                                              (_tl3385633898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42946_ 1))))
                                          (if (gx#stx-null? _tl3385633898_)
                                              (letrec ((_loop3385733901_
                                                        (lambda (_hd3385533905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3386133908_)
                  (if (gx#stx-pair? _hd3385533905_)
                      (let ((_e3385833911_ (gx#syntax-e _hd3385533905_)))
                        (let ((_lp-hd3385933915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3385833911_)))
                              (_lp-tl3386033918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3385833911_))))
                          (_loop3385733901_
                           _lp-tl3386033918_
                           (cons _lp-hd3385933915_ _body3386133908_))))
                      (let ((_body3386233921_ (reverse _body3386133908_)))
                        ((lambda (_L33925_ _L33927_)
                           (if (gx#identifier? _L33927_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33927_ '())
                                                       (foldr (lambda (_g3394433947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3394533950_)
                        (cons _g3394433947_ _g3394533950_))
                      '()
                      _L33925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3384433868_ _g3384533872_)))
                         _body3386233921_
                         _hd3385233889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3385733901_
                                                 _target3385433895_
                                                 '()))
                                              (_g3384433868_ _g3384533872_)))))
                                    (_g3384433868_ _g3384533872_))))
                            (_g3384433868_ _g3384533872_))))
                    (_g3384433868_ _g3384533872_)))))
        (_g3384333953_ _$stx33840_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33958_)
      (let* ((_g3396233990_
              (lambda (_g3396333986_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3396333986_)))
             (_g3396134089_
              (lambda (_g3396333994_)
                (if (gx#stx-pair? _g3396333994_)
                    (let ((_e3396933997_ (gx#syntax-e _g3396333994_)))
                      (let ((_hd3396834001_
                             (let ()
                               (declare (not safe))
                               (##car _e3396933997_)))
                            (_tl3396734004_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3396933997_))))
                        (if (gx#stx-pair? _tl3396734004_)
                            (let ((_e3397234007_ (gx#syntax-e _tl3396734004_)))
                              (let ((_hd3397134011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3397234007_)))
                                    (_tl3397034014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3397234007_))))
                                (if (gx#stx-pair? _tl3397034014_)
                                    (let ((_e3397534017_
                                           (gx#syntax-e _tl3397034014_)))
                                      (let ((_hd3397434021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3397534017_)))
                                            (_tl3397334024_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3397534017_))))
                                        (if (gx#stx-pair/null? _tl3397334024_)
                                            (let ((_g42948_
                                                   (gx#syntax-split-splice
                                                    _tl3397334024_
                                                    '0)))
                                              (begin
                                                (let ((_g42949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g42948_)
                                                             (##vector-length
                                                              _g42948_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g42949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g42949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3397634027_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g42948_
                                                          0)))
                                                      (_tl3397834030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g42948_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3397834030_)
                                                      (letrec ((_loop3397934033_
                                                                (lambda (_hd3397734037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3398334040_)
                          (if (gx#stx-pair? _hd3397734037_)
                              (let ((_e3398034043_
                                     (gx#syntax-e _hd3397734037_)))
                                (let ((_lp-hd3398134047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3398034043_)))
                                      (_lp-tl3398234050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3398034043_))))
                                  (_loop3397934033_
                                   _lp-tl3398234050_
                                   (cons _lp-hd3398134047_ _rest3398334040_))))
                              (let ((_rest3398434053_
                                     (reverse _rest3398334040_)))
                                ((lambda (_L34057_ _L34059_ _L34060_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L34060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L34059_
                               (foldr (lambda (_g3408034083_ _g3408134086_)
                                        (cons _g3408034083_ _g3408134086_))
                                      '()
                                      _L34057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3398434053_
                                 _hd3397434021_
                                 _hd3397134011_))))))
                (_loop3397934033_ _target3397634027_ '()))
              (_g3396233990_ _g3396333994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3396233990_ _g3396333994_))))
                                    (_g3396233990_ _g3396333994_))))
                            (_g3396233990_ _g3396333994_))))
                    (_g3396233990_ _g3396333994_)))))
        (_g3396134089_ _$stx33958_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34094_)
      (let* ((_g3409734111_
              (lambda (_g3409834107_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3409834107_)))
             (_g3409634183_
              (lambda (_g3409834115_)
                (if (gx#stx-pair? _g3409834115_)
                    (let ((_e3410234118_ (gx#syntax-e _g3409834115_)))
                      (let ((_hd3410134122_
                             (let ()
                               (declare (not safe))
                               (##car _e3410234118_)))
                            (_tl3410034125_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3410234118_))))
                        (if (gx#stx-pair? _tl3410034125_)
                            (let ((_e3410534128_ (gx#syntax-e _tl3410034125_)))
                              (let ((_hd3410434132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3410534128_)))
                                    (_tl3410334135_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3410534128_))))
                                (if (gx#stx-null? _tl3410334135_)
                                    ((lambda (_L34138_)
                                       (if (gx#stx-string? _L34138_)
                                           (let* ((_g3415234160_
                                                   (lambda (_g3415334156_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3415334156_)))
                                                  (_g3415134179_
                                                   (lambda (_g3415334164_)
                                                     ((lambda (_L34167_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L34167_ '()))))
              _g3415334164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3415134179_
                                              (string->bytes
                                               (gx#stx-e _L34138_))))
                                           (_g3409734111_ _g3409834115_)))
                                     _hd3410434132_)
                                    (_g3409734111_ _g3409834115_))))
                            (_g3409734111_ _g3409834115_))))
                    (_g3409734111_ _g3409834115_)))))
        (_g3409634183_ _stx34094_)))))
