(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g24506_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g24507_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g24584_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g24585_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_$stx5702_)
        (let* ((_g57065734_
                (lambda (_g57075730_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g57075730_)))
               (_g57055835_
                (lambda (_g57075738_)
                  (if (gx#stx-pair? _g57075738_)
                      (let ((_e57135741_ (gx#syntax-e _g57075738_)))
                        (let ((_hd57125745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57135741_)))
                              (_tl57115748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57135741_))))
                          (if (gx#stx-pair? _tl57115748_)
                              (let ((_e57165751_ (gx#syntax-e _tl57115748_)))
                                (let ((_hd57155755_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57165751_)))
                                      (_tl57145758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57165751_))))
                                  (if (gx#stx-pair? _tl57145758_)
                                      (let ((_e57195761_
                                             (gx#syntax-e _tl57145758_)))
                                        (let ((_hd57185765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57195761_)))
                                              (_tl57175768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57195761_))))
                                          (if (gx#stx-pair/null? _tl57175768_)
                                              (let ((_g24425_
                                                     (gx#syntax-split-splice
                                                      _tl57175768_
                                                      '0)))
                                                (begin
                                                  (let ((_g24426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g24425_)
                                                               (##vector-length
                                                                _g24425_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g24426_ 2)))
                (error "Context expects 2 values" _g24426_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target57205771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24425_
                                                            0)))
                                                        (_tl57225774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24425_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl57225774_)
                                                        (letrec ((_loop57235777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd57215781_ _clauses57275784_)
                            (if (gx#stx-pair? _hd57215781_)
                                (let ((_e57245787_ (gx#syntax-e _hd57215781_)))
                                  (let ((_lp-hd57255791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e57245787_)))
                                        (_lp-tl57265794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e57245787_))))
                                    (_loop57235777_
                                     _lp-tl57265794_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd57255791_
                                             _clauses57275784_)))))
                                (let ((_clauses57285797_
                                       (reverse _clauses57275784_)))
                                  ((lambda (_L5801_ _L5803_ _L5804_)
                                     (if (gx#identifier? _L5804_)
                                         (let ((__tmp24433
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp24427
                                                (let ((__tmp24428
                                                       (let ((__tmp24429
                                                              (let ((__tmp24432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp24430
                             (let ((__tmp24431
                                    (foldr (lambda (_g58265829_ _g58275832_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g58265829_ _g58275832_)))
                                           '()
                                           _L5801_)))
                               (declare (not safe))
                               (cons _L5803_ __tmp24431))))
                        (declare (not safe))
                        (cons __tmp24432 __tmp24430))))
                 (declare (not safe))
                 (cons __tmp24429 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L5804_ __tmp24428))))
                                           (declare (not safe))
                                           (cons __tmp24433 __tmp24427))
                                         (_g57065734_ _g57075738_)))
                                   _clauses57285797_
                                   _hd57185765_
                                   _hd57155755_))))))
                  (_loop57235777_ _target57205771_ '()))
                (_g57065734_ _g57075738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g57065734_ _g57075738_))))
                                      (_g57065734_ _g57075738_))))
                              (_g57065734_ _g57075738_))))
                      (_g57065734_ _g57075738_)))))
          (_g57055835_ _$stx5702_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_$stx5840_)
        (let* ((___stx2207422075_ _$stx5840_)
               (_g58455884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2207422075_))))
          (let ((___kont2207722078_
                 (lambda (_L6006_ _L6008_ _L6009_)
                   (let ((__tmp24440 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24434
                          (let ((__tmp24435
                                 (let ((__tmp24436
                                        (let ((__tmp24439
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24437
                                               (let ((__tmp24438
                                                      (foldr (lambda (_g60286031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g60296034_)
                       (let ()
                         (declare (not safe))
                         (cons _g60286031_ _g60296034_)))
                     '()
                     _L6006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6008_ __tmp24438))))
                                          (declare (not safe))
                                          (cons __tmp24439 __tmp24437))))
                                   (declare (not safe))
                                   (cons __tmp24436 '()))))
                            (declare (not safe))
                            (cons _L6009_ __tmp24435))))
                     (declare (not safe))
                     (cons __tmp24440 __tmp24434))))
                (___kont2208122082_
                 (lambda (_L5921_ _L5923_)
                   (let ((__tmp24443 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24441
                          (let ((__tmp24442
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5921_ '()))))
                            (declare (not safe))
                            (cons _L5923_ __tmp24442))))
                     (declare (not safe))
                     (cons __tmp24443 __tmp24441)))))
            (let* ((___match2212922130_
                    (lambda (_e58725891_
                             _hd58715895_
                             _tl58705898_
                             _e58755901_
                             _hd58745905_
                             _tl58735908_
                             _e58785911_
                             _hd58775915_
                             _tl58765918_)
                      (let ((_L5921_ _hd58775915_) (_L5923_ _hd58745905_))
                        (if (gx#identifier? _L5923_)
                            (___kont2208122082_ _L5921_ _L5923_)
                            (let () (declare (not safe)) (_g58455884_))))))
                   (___match2212122122_
                    (lambda (_e58725891_
                             _hd58715895_
                             _tl58705898_
                             _e58755901_
                             _hd58745905_
                             _tl58735908_)
                      (if (gx#stx-pair? _tl58735908_)
                          (let ((_e58785911_ (gx#syntax-e _tl58735908_)))
                            (let ((_tl58765918_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58785911_)))
                                  (_hd58775915_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58785911_))))
                              (if (gx#stx-null? _tl58765918_)
                                  (___match2212922130_
                                   _e58725891_
                                   _hd58715895_
                                   _tl58705898_
                                   _e58755901_
                                   _hd58745905_
                                   _tl58735908_
                                   _e58785911_
                                   _hd58775915_
                                   _tl58765918_)
                                  (let ()
                                    (declare (not safe))
                                    (_g58455884_)))))
                          (let () (declare (not safe)) (_g58455884_)))))
                   (___match2210922110_
                    (lambda (_e58525946_
                             _hd58515950_
                             _tl58505953_
                             _e58555956_
                             _hd58545960_
                             _tl58535963_
                             _e58585966_
                             _hd58575970_
                             _tl58565973_
                             ___splice2207922080_
                             _target58595976_
                             _tl58615979_)
                      (letrec ((_loop58625982_
                                (lambda (_hd58605986_ _body58665989_)
                                  (if (gx#stx-pair? _hd58605986_)
                                      (let ((_e58635992_
                                             (gx#syntax-e _hd58605986_)))
                                        (let ((_lp-tl58655999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58635992_)))
                                              (_lp-hd58645996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58635992_))))
                                          (_loop58625982_
                                           _lp-tl58655999_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd58645996_
                                                   _body58665989_)))))
                                      (let ((_body58676002_
                                             (reverse _body58665989_)))
                                        (let ((_L6006_ _body58676002_)
                                              (_L6008_ _tl58565973_)
                                              (_L6009_ _hd58575970_))
                                          (if (gx#identifier? _L6009_)
                                              (___kont2207722078_
                                               _L6006_
                                               _L6008_
                                               _L6009_)
                                              (___match2212122122_
                                               _e58525946_
                                               _hd58515950_
                                               _tl58505953_
                                               _e58555956_
                                               _hd58545960_
                                               _tl58535963_))))))))
                        (_loop58625982_ _target58595976_ '())))))
              (if (gx#stx-pair? ___stx2207422075_)
                  (let ((_e58525946_ (gx#syntax-e ___stx2207422075_)))
                    (let ((_tl58505953_
                           (let () (declare (not safe)) (##cdr _e58525946_)))
                          (_hd58515950_
                           (let () (declare (not safe)) (##car _e58525946_))))
                      (if (gx#stx-pair? _tl58505953_)
                          (let ((_e58555956_ (gx#syntax-e _tl58505953_)))
                            (let ((_tl58535963_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58555956_)))
                                  (_hd58545960_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58555956_))))
                              (if (gx#stx-pair? _hd58545960_)
                                  (let ((_e58585966_
                                         (gx#syntax-e _hd58545960_)))
                                    (let ((_tl58565973_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e58585966_)))
                                          (_hd58575970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e58585966_))))
                                      (if (gx#stx-pair/null? _tl58535963_)
                                          (let ((___splice2207922080_
                                                 (gx#syntax-split-splice
                                                  _tl58535963_
                                                  '0)))
                                            (let ((_tl58615979_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207922080_
                                                      '1)))
                                                  (_target58595976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207922080_
                                                      '0))))
                                              (if (gx#stx-null? _tl58615979_)
                                                  (___match2210922110_
                                                   _e58525946_
                                                   _hd58515950_
                                                   _tl58505953_
                                                   _e58555956_
                                                   _hd58545960_
                                                   _tl58535963_
                                                   _e58585966_
                                                   _hd58575970_
                                                   _tl58565973_
                                                   ___splice2207922080_
                                                   _target58595976_
                                                   _tl58615979_)
                                                  (if (gx#stx-pair?
                                                       _tl58535963_)
                                                      (let ((_e58785911_
                                                             (gx#syntax-e
                                                              _tl58535963_)))
                                                        (let ((_tl58765918_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e58785911_)))
                      (_hd58775915_
                       (let () (declare (not safe)) (##car _e58785911_))))
                  (if (gx#stx-null? _tl58765918_)
                      (___match2212922130_
                       _e58525946_
                       _hd58515950_
                       _tl58505953_
                       _e58555956_
                       _hd58545960_
                       _tl58535963_
                       _e58785911_
                       _hd58775915_
                       _tl58765918_)
                      (let () (declare (not safe)) (_g58455884_)))))
              (let () (declare (not safe)) (_g58455884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl58535963_)
                                              (let ((_e58785911_
                                                     (gx#syntax-e
                                                      _tl58535963_)))
                                                (let ((_tl58765918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58785911_)))
                                                      (_hd58775915_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58785911_))))
                                                  (if (gx#stx-null?
                                                       _tl58765918_)
                                                      (___match2212922130_
                                                       _e58525946_
                                                       _hd58515950_
                                                       _tl58505953_
                                                       _e58555956_
                                                       _hd58545960_
                                                       _tl58535963_
                                                       _e58785911_
                                                       _hd58775915_
                                                       _tl58765918_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g58455884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g58455884_))))))
                                  (if (gx#stx-pair? _tl58535963_)
                                      (let ((_e58785911_
                                             (gx#syntax-e _tl58535963_)))
                                        (let ((_tl58765918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58785911_)))
                                              (_hd58775915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58785911_))))
                                          (if (gx#stx-null? _tl58765918_)
                                              (___match2212922130_
                                               _e58525946_
                                               _hd58515950_
                                               _tl58505953_
                                               _e58555956_
                                               _hd58545960_
                                               _tl58535963_
                                               _e58785911_
                                               _hd58775915_
                                               _tl58765918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g58455884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g58455884_))))))
                          (let () (declare (not safe)) (_g58455884_)))))
                  (let () (declare (not safe)) (_g58455884_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_$stx6042_)
        (let* ((___stx2213222133_ _$stx6042_)
               (_g60476086_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2213222133_))))
          (let ((___kont2213522136_
                 (lambda (_L6208_ _L6210_ _L6211_)
                   (let ((__tmp24451 (gx#datum->syntax '#f 'define-values))
                         (__tmp24444
                          (let ((__tmp24450
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6211_ '())))
                                (__tmp24445
                                 (let ((__tmp24446
                                        (let ((__tmp24449
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24447
                                               (let ((__tmp24448
                                                      (foldr (lambda (_g62306233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g62316236_)
                       (let ()
                         (declare (not safe))
                         (cons _g62306233_ _g62316236_)))
                     '()
                     _L6208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6210_ __tmp24448))))
                                          (declare (not safe))
                                          (cons __tmp24449 __tmp24447))))
                                   (declare (not safe))
                                   (cons __tmp24446 '()))))
                            (declare (not safe))
                            (cons __tmp24450 __tmp24445))))
                     (declare (not safe))
                     (cons __tmp24451 __tmp24444))))
                (___kont2213922140_
                 (lambda (_L6123_ _L6125_)
                   (let ((__tmp24455 (gx#datum->syntax '#f 'define-values))
                         (__tmp24452
                          (let ((__tmp24454
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6125_ '())))
                                (__tmp24453
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6123_ '()))))
                            (declare (not safe))
                            (cons __tmp24454 __tmp24453))))
                     (declare (not safe))
                     (cons __tmp24455 __tmp24452)))))
            (let* ((___match2218722188_
                    (lambda (_e60746093_
                             _hd60736097_
                             _tl60726100_
                             _e60776103_
                             _hd60766107_
                             _tl60756110_
                             _e60806113_
                             _hd60796117_
                             _tl60786120_)
                      (let ((_L6123_ _hd60796117_) (_L6125_ _hd60766107_))
                        (if (gx#identifier? _L6125_)
                            (___kont2213922140_ _L6123_ _L6125_)
                            (let () (declare (not safe)) (_g60476086_))))))
                   (___match2217922180_
                    (lambda (_e60746093_
                             _hd60736097_
                             _tl60726100_
                             _e60776103_
                             _hd60766107_
                             _tl60756110_)
                      (if (gx#stx-pair? _tl60756110_)
                          (let ((_e60806113_ (gx#syntax-e _tl60756110_)))
                            (let ((_tl60786120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60806113_)))
                                  (_hd60796117_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60806113_))))
                              (if (gx#stx-null? _tl60786120_)
                                  (___match2218722188_
                                   _e60746093_
                                   _hd60736097_
                                   _tl60726100_
                                   _e60776103_
                                   _hd60766107_
                                   _tl60756110_
                                   _e60806113_
                                   _hd60796117_
                                   _tl60786120_)
                                  (let ()
                                    (declare (not safe))
                                    (_g60476086_)))))
                          (let () (declare (not safe)) (_g60476086_)))))
                   (___match2216722168_
                    (lambda (_e60546148_
                             _hd60536152_
                             _tl60526155_
                             _e60576158_
                             _hd60566162_
                             _tl60556165_
                             _e60606168_
                             _hd60596172_
                             _tl60586175_
                             ___splice2213722138_
                             _target60616178_
                             _tl60636181_)
                      (letrec ((_loop60646184_
                                (lambda (_hd60626188_ _body60686191_)
                                  (if (gx#stx-pair? _hd60626188_)
                                      (let ((_e60656194_
                                             (gx#syntax-e _hd60626188_)))
                                        (let ((_lp-tl60676201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60656194_)))
                                              (_lp-hd60666198_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60656194_))))
                                          (_loop60646184_
                                           _lp-tl60676201_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd60666198_
                                                   _body60686191_)))))
                                      (let ((_body60696204_
                                             (reverse _body60686191_)))
                                        (let ((_L6208_ _body60696204_)
                                              (_L6210_ _tl60586175_)
                                              (_L6211_ _hd60596172_))
                                          (if (gx#identifier? _L6211_)
                                              (___kont2213522136_
                                               _L6208_
                                               _L6210_
                                               _L6211_)
                                              (___match2217922180_
                                               _e60546148_
                                               _hd60536152_
                                               _tl60526155_
                                               _e60576158_
                                               _hd60566162_
                                               _tl60556165_))))))))
                        (_loop60646184_ _target60616178_ '())))))
              (if (gx#stx-pair? ___stx2213222133_)
                  (let ((_e60546148_ (gx#syntax-e ___stx2213222133_)))
                    (let ((_tl60526155_
                           (let () (declare (not safe)) (##cdr _e60546148_)))
                          (_hd60536152_
                           (let () (declare (not safe)) (##car _e60546148_))))
                      (if (gx#stx-pair? _tl60526155_)
                          (let ((_e60576158_ (gx#syntax-e _tl60526155_)))
                            (let ((_tl60556165_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60576158_)))
                                  (_hd60566162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60576158_))))
                              (if (gx#stx-pair? _hd60566162_)
                                  (let ((_e60606168_
                                         (gx#syntax-e _hd60566162_)))
                                    (let ((_tl60586175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60606168_)))
                                          (_hd60596172_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60606168_))))
                                      (if (gx#stx-pair/null? _tl60556165_)
                                          (let ((___splice2213722138_
                                                 (gx#syntax-split-splice
                                                  _tl60556165_
                                                  '0)))
                                            (let ((_tl60636181_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2213722138_
                                                      '1)))
                                                  (_target60616178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2213722138_
                                                      '0))))
                                              (if (gx#stx-null? _tl60636181_)
                                                  (___match2216722168_
                                                   _e60546148_
                                                   _hd60536152_
                                                   _tl60526155_
                                                   _e60576158_
                                                   _hd60566162_
                                                   _tl60556165_
                                                   _e60606168_
                                                   _hd60596172_
                                                   _tl60586175_
                                                   ___splice2213722138_
                                                   _target60616178_
                                                   _tl60636181_)
                                                  (if (gx#stx-pair?
                                                       _tl60556165_)
                                                      (let ((_e60806113_
                                                             (gx#syntax-e
                                                              _tl60556165_)))
                                                        (let ((_tl60786120_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e60806113_)))
                      (_hd60796117_
                       (let () (declare (not safe)) (##car _e60806113_))))
                  (if (gx#stx-null? _tl60786120_)
                      (___match2218722188_
                       _e60546148_
                       _hd60536152_
                       _tl60526155_
                       _e60576158_
                       _hd60566162_
                       _tl60556165_
                       _e60806113_
                       _hd60796117_
                       _tl60786120_)
                      (let () (declare (not safe)) (_g60476086_)))))
              (let () (declare (not safe)) (_g60476086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl60556165_)
                                              (let ((_e60806113_
                                                     (gx#syntax-e
                                                      _tl60556165_)))
                                                (let ((_tl60786120_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60806113_)))
                                                      (_hd60796117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60806113_))))
                                                  (if (gx#stx-null?
                                                       _tl60786120_)
                                                      (___match2218722188_
                                                       _e60546148_
                                                       _hd60536152_
                                                       _tl60526155_
                                                       _e60576158_
                                                       _hd60566162_
                                                       _tl60556165_
                                                       _e60806113_
                                                       _hd60796117_
                                                       _tl60786120_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g60476086_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g60476086_))))))
                                  (if (gx#stx-pair? _tl60556165_)
                                      (let ((_e60806113_
                                             (gx#syntax-e _tl60556165_)))
                                        (let ((_tl60786120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60806113_)))
                                              (_hd60796117_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60806113_))))
                                          (if (gx#stx-null? _tl60786120_)
                                              (___match2218722188_
                                               _e60546148_
                                               _hd60536152_
                                               _tl60526155_
                                               _e60576158_
                                               _hd60566162_
                                               _tl60556165_
                                               _e60806113_
                                               _hd60796117_
                                               _tl60786120_)
                                              (let ()
                                                (declare (not safe))
                                                (_g60476086_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60476086_))))))
                          (let () (declare (not safe)) (_g60476086_)))))
                  (let () (declare (not safe)) (_g60476086_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_$stx6244_)
        (let* ((___stx2219022191_ _$stx6244_)
               (_g62496294_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2219022191_))))
          (let ((___kont2219322194_
                 (lambda (_L6452_)
                   (let ((__tmp24458 (gx#datum->syntax '#f 'let-values))
                         (__tmp24456
                          (let ((__tmp24457
                                 (foldr (lambda (_g64686471_ _g64696474_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g64686471_ _g64696474_)))
                                        '()
                                        _L6452_)))
                            (declare (not safe))
                            (cons '() __tmp24457))))
                     (declare (not safe))
                     (cons __tmp24458 __tmp24456))))
                (___kont2219722198_
                 (lambda (_L6361_ _L6363_ _L6364_ _L6365_)
                   (let ((__tmp24465 (gx#datum->syntax '#f 'let-values))
                         (__tmp24459
                          (let ((__tmp24464
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6364_ '())))
                                (__tmp24460
                                 (let ((__tmp24461
                                        (let ((__tmp24462
                                               (let ((__tmp24463
                                                      (foldr (lambda (_g63866389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g63876392_)
                       (let ()
                         (declare (not safe))
                         (cons _g63866389_ _g63876392_)))
                     '()
                     _L6361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6363_ __tmp24463))))
                                          (declare (not safe))
                                          (cons _L6365_ __tmp24462))))
                                   (declare (not safe))
                                   (cons __tmp24461 '()))))
                            (declare (not safe))
                            (cons __tmp24464 __tmp24460))))
                     (declare (not safe))
                     (cons __tmp24465 __tmp24459)))))
            (let* ((___match2224922250_
                    (lambda (_e62736301_
                             _hd62726305_
                             _tl62716308_
                             _e62766311_
                             _hd62756315_
                             _tl62746318_
                             _e62796321_
                             _hd62786325_
                             _tl62776328_
                             ___splice2219922200_
                             _target62806331_
                             _tl62826334_)
                      (letrec ((_loop62836337_
                                (lambda (_hd62816341_ _body62876344_)
                                  (if (gx#stx-pair? _hd62816341_)
                                      (let ((_e62846347_
                                             (gx#syntax-e _hd62816341_)))
                                        (let ((_lp-tl62866354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62846347_)))
                                              (_lp-hd62856351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62846347_))))
                                          (_loop62836337_
                                           _lp-tl62866354_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62856351_
                                                   _body62876344_)))))
                                      (let ((_body62886357_
                                             (reverse _body62876344_)))
                                        (___kont2219722198_
                                         _body62886357_
                                         _tl62776328_
                                         _hd62786325_
                                         _hd62726305_))))))
                        (_loop62836337_ _target62806331_ '()))))
                   (___match2222322224_
                    (lambda (_e62546402_
                             _hd62536406_
                             _tl62526409_
                             _e62576412_
                             _hd62566416_
                             _tl62556419_
                             ___splice2219522196_
                             _target62586422_
                             _tl62606425_)
                      (letrec ((_loop62616428_
                                (lambda (_hd62596432_ _body62656435_)
                                  (if (gx#stx-pair? _hd62596432_)
                                      (let ((_e62626438_
                                             (gx#syntax-e _hd62596432_)))
                                        (let ((_lp-tl62646445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62626438_)))
                                              (_lp-hd62636442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62626438_))))
                                          (_loop62616428_
                                           _lp-tl62646445_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62636442_
                                                   _body62656435_)))))
                                      (let ((_body62666448_
                                             (reverse _body62656435_)))
                                        (___kont2219322194_
                                         _body62666448_))))))
                        (_loop62616428_ _target62586422_ '())))))
              (if (gx#stx-pair? ___stx2219022191_)
                  (let ((_e62546402_ (gx#syntax-e ___stx2219022191_)))
                    (let ((_tl62526409_
                           (let () (declare (not safe)) (##cdr _e62546402_)))
                          (_hd62536406_
                           (let () (declare (not safe)) (##car _e62546402_))))
                      (if (gx#stx-pair? _tl62526409_)
                          (let ((_e62576412_ (gx#syntax-e _tl62526409_)))
                            (let ((_tl62556419_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62576412_)))
                                  (_hd62566416_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62576412_))))
                              (if (gx#stx-null? _hd62566416_)
                                  (if (gx#stx-pair/null? _tl62556419_)
                                      (let ((___splice2219522196_
                                             (gx#syntax-split-splice
                                              _tl62556419_
                                              '0)))
                                        (let ((_tl62606425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2219522196_
                                                  '1)))
                                              (_target62586422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2219522196_
                                                  '0))))
                                          (if (gx#stx-null? _tl62606425_)
                                              (___match2222322224_
                                               _e62546402_
                                               _hd62536406_
                                               _tl62526409_
                                               _e62576412_
                                               _hd62566416_
                                               _tl62556419_
                                               ___splice2219522196_
                                               _target62586422_
                                               _tl62606425_)
                                              (let ()
                                                (declare (not safe))
                                                (_g62496294_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62496294_)))
                                  (if (gx#stx-pair? _hd62566416_)
                                      (let ((_e62796321_
                                             (gx#syntax-e _hd62566416_)))
                                        (let ((_tl62776328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62796321_)))
                                              (_hd62786325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62796321_))))
                                          (if (gx#stx-pair/null? _tl62556419_)
                                              (let ((___splice2219922200_
                                                     (gx#syntax-split-splice
                                                      _tl62556419_
                                                      '0)))
                                                (let ((_tl62826334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219922200_
                                                          '1)))
                                                      (_target62806331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219922200_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl62826334_)
                                                      (___match2224922250_
                                                       _e62546402_
                                                       _hd62536406_
                                                       _tl62526409_
                                                       _e62576412_
                                                       _hd62566416_
                                                       _tl62556419_
                                                       _e62796321_
                                                       _hd62786325_
                                                       _tl62776328_
                                                       ___splice2219922200_
                                                       _target62806331_
                                                       _tl62826334_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g62496294_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g62496294_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62496294_))))))
                          (let () (declare (not safe)) (_g62496294_)))))
                  (let () (declare (not safe)) (_g62496294_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_$stx6483_)
        (let* ((___stx2225222253_ _$stx6483_)
               (_g64886552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2225222253_))))
          (let ((___kont2225522256_
                 (lambda (_L6758_ _L6760_ _L6761_ _L6762_ _L6763_)
                   (let ((__tmp24467
                          (let ((__tmp24479
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp24468
                                 (let ((__tmp24470
                                        (let ((__tmp24471
                                               (let ((__tmp24478
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L6763_ '())))
                                                     (__tmp24472
                                                      (let ((__tmp24473
                                                             (let ((__tmp24477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp24474
                            (let ((__tmp24476
                                   (foldr (lambda (_g67926795_ _g67936798_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67926795_ _g67936798_)))
                                          _L6760_
                                          _L6762_))
                                  (__tmp24475
                                   (foldr (lambda (_g67906801_ _g67916804_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67906801_ _g67916804_)))
                                          '()
                                          _L6758_)))
                              (declare (not safe))
                              (cons __tmp24476 __tmp24475))))
                       (declare (not safe))
                       (cons __tmp24477 __tmp24474))))
                (declare (not safe))
                (cons __tmp24473 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24478
                                                       __tmp24472))))
                                          (declare (not safe))
                                          (cons __tmp24471 '())))
                                       (__tmp24469
                                        (let ()
                                          (declare (not safe))
                                          (cons _L6763_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24470 __tmp24469))))
                            (declare (not safe))
                            (cons __tmp24479 __tmp24468)))
                         (__tmp24466
                          (foldr (lambda (_g67886807_ _g67896810_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g67886807_ _g67896810_)))
                                 '()
                                 _L6761_)))
                     (declare (not safe))
                     (cons __tmp24467 __tmp24466))))
                (___kont2226122262_
                 (lambda (_L6609_ _L6611_)
                   (let ((__tmp24484 (gx#datum->syntax '#f '~let))
                         (__tmp24480
                          (let ((__tmp24483 (gx#datum->syntax '#f 'let-values))
                                (__tmp24481
                                 (let ((__tmp24482
                                        (foldr (lambda (_g66286631_
                                                        _g66296634_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g66286631_
                                                         _g66296634_)))
                                               '()
                                               _L6609_)))
                                   (declare (not safe))
                                   (cons _L6611_ __tmp24482))))
                            (declare (not safe))
                            (cons __tmp24483 __tmp24481))))
                     (declare (not safe))
                     (cons __tmp24484 __tmp24480)))))
            (let* ((___match2230922310_
                    (lambda (_e65346559_
                             _hd65336563_
                             _tl65326566_
                             _e65376569_
                             _hd65366573_
                             _tl65356576_
                             ___splice2226322264_
                             _target65386579_
                             _tl65406582_)
                      (letrec ((_loop65416585_
                                (lambda (_hd65396589_ _body65456592_)
                                  (if (gx#stx-pair? _hd65396589_)
                                      (let ((_e65426595_
                                             (gx#syntax-e _hd65396589_)))
                                        (let ((_lp-tl65446602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65426595_)))
                                              (_lp-hd65436599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65426595_))))
                                          (_loop65416585_
                                           _lp-tl65446602_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd65436599_
                                                   _body65456592_)))))
                                      (let ((_body65466605_
                                             (reverse _body65456592_)))
                                        (___kont2226122262_
                                         _body65466605_
                                         _hd65366573_))))))
                        (_loop65416585_ _target65386579_ '()))))
                   (___match2230122302_
                    (lambda (_e65346559_
                             _hd65336563_
                             _tl65326566_
                             _e65376569_
                             _hd65366573_
                             _tl65356576_)
                      (if (gx#stx-pair/null? _tl65356576_)
                          (let ((___splice2226322264_
                                 (gx#syntax-split-splice _tl65356576_ '0)))
                            (let ((_tl65406582_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2226322264_ '1)))
                                  (_target65386579_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2226322264_ '0))))
                              (if (gx#stx-null? _tl65406582_)
                                  (___match2230922310_
                                   _e65346559_
                                   _hd65336563_
                                   _tl65326566_
                                   _e65376569_
                                   _hd65366573_
                                   _tl65356576_
                                   ___splice2226322264_
                                   _target65386579_
                                   _tl65406582_)
                                  (let ()
                                    (declare (not safe))
                                    (_g64886552_)))))
                          (let () (declare (not safe)) (_g64886552_)))))
                   (___match2228922290_
                    (lambda (_e64976644_
                             _hd64966648_
                             _tl64956651_
                             _e65006654_
                             _hd64996658_
                             _tl64986661_
                             _e65036664_
                             _hd65026668_
                             _tl65016671_
                             ___splice2225722258_
                             _target65046674_
                             _tl65066677_)
                      (letrec ((_loop65076680_
                                (lambda (_hd65056684_
                                         _arg65116687_
                                         _var65126689_)
                                  (if (gx#stx-pair? _hd65056684_)
                                      (let ((_e65086692_
                                             (gx#syntax-e _hd65056684_)))
                                        (let ((_lp-tl65106699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65086692_)))
                                              (_lp-hd65096696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65086692_))))
                                          (if (gx#stx-pair? _lp-hd65096696_)
                                              (let ((_e65176702_
                                                     (gx#syntax-e
                                                      _lp-hd65096696_)))
                                                (let ((_tl65156709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e65176702_)))
                                                      (_hd65166706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e65176702_))))
                                                  (if (gx#stx-pair?
                                                       _tl65156709_)
                                                      (let ((_e65206712_
                                                             (gx#syntax-e
                                                              _tl65156709_)))
                                                        (let ((_tl65186719_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e65206712_)))
                      (_hd65196716_
                       (let () (declare (not safe)) (##car _e65206712_))))
                  (if (gx#stx-null? _tl65186719_)
                      (_loop65076680_
                       _lp-tl65106699_
                       (let ()
                         (declare (not safe))
                         (cons _hd65196716_ _arg65116687_))
                       (let ()
                         (declare (not safe))
                         (cons _hd65166706_ _var65126689_)))
                      (___match2230122302_
                       _e64976644_
                       _hd64966648_
                       _tl64956651_
                       _e65006654_
                       _hd64996658_
                       _tl64986661_))))
              (___match2230122302_
               _e64976644_
               _hd64966648_
               _tl64956651_
               _e65006654_
               _hd64996658_
               _tl64986661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2230122302_
                                               _e64976644_
                                               _hd64966648_
                                               _tl64956651_
                                               _e65006654_
                                               _hd64996658_
                                               _tl64986661_))))
                                      (let ((_var65146725_
                                             (reverse _var65126689_))
                                            (_arg65136722_
                                             (reverse _arg65116687_)))
                                        (if (gx#stx-pair/null? _tl65016671_)
                                            (let ((___splice2225922260_
                                                   (gx#syntax-split-splice
                                                    _tl65016671_
                                                    '0)))
                                              (let ((_tl65236731_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225922260_
                                                        '1)))
                                                    (_target65216728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225922260_
                                                        '0))))
                                                (if (gx#stx-null? _tl65236731_)
                                                    (letrec ((_loop65246734_
                                                              (lambda (_hd65226738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body65286741_)
                        (if (gx#stx-pair? _hd65226738_)
                            (let ((_e65256744_ (gx#syntax-e _hd65226738_)))
                              (let ((_lp-tl65276751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65256744_)))
                                    (_lp-hd65266748_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65256744_))))
                                (_loop65246734_
                                 _lp-tl65276751_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd65266748_ _body65286741_)))))
                            (let ((_body65296754_ (reverse _body65286741_)))
                              (let ((_L6758_ _body65296754_)
                                    (_L6760_ _tl65066677_)
                                    (_L6761_ _arg65136722_)
                                    (_L6762_ _var65146725_)
                                    (_L6763_ _hd64996658_))
                                (if (gx#identifier? _L6763_)
                                    (___kont2225522256_
                                     _L6758_
                                     _L6760_
                                     _L6761_
                                     _L6762_
                                     _L6763_)
                                    (___match2230122302_
                                     _e64976644_
                                     _hd64966648_
                                     _tl64956651_
                                     _e65006654_
                                     _hd64996658_
                                     _tl64986661_))))))))
              (_loop65246734_ _target65216728_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2230122302_
                                                     _e64976644_
                                                     _hd64966648_
                                                     _tl64956651_
                                                     _e65006654_
                                                     _hd64996658_
                                                     _tl64986661_))))
                                            (___match2230122302_
                                             _e64976644_
                                             _hd64966648_
                                             _tl64956651_
                                             _e65006654_
                                             _hd64996658_
                                             _tl64986661_)))))))
                        (_loop65076680_ _target65046674_ '() '())))))
              (if (gx#stx-pair? ___stx2225222253_)
                  (let ((_e64976644_ (gx#syntax-e ___stx2225222253_)))
                    (let ((_tl64956651_
                           (let () (declare (not safe)) (##cdr _e64976644_)))
                          (_hd64966648_
                           (let () (declare (not safe)) (##car _e64976644_))))
                      (if (gx#stx-pair? _tl64956651_)
                          (let ((_e65006654_ (gx#syntax-e _tl64956651_)))
                            (let ((_tl64986661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e65006654_)))
                                  (_hd64996658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e65006654_))))
                              (if (gx#stx-pair? _tl64986661_)
                                  (let ((_e65036664_
                                         (gx#syntax-e _tl64986661_)))
                                    (let ((_tl65016671_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e65036664_)))
                                          (_hd65026668_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e65036664_))))
                                      (if (gx#stx-pair/null? _hd65026668_)
                                          (let ((___splice2225722258_
                                                 (gx#syntax-split-splice
                                                  _hd65026668_
                                                  '0)))
                                            (let ((_tl65066677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2225722258_
                                                      '1)))
                                                  (_target65046674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2225722258_
                                                      '0))))
                                              (___match2228922290_
                                               _e64976644_
                                               _hd64966648_
                                               _tl64956651_
                                               _e65006654_
                                               _hd64996658_
                                               _tl64986661_
                                               _e65036664_
                                               _hd65026668_
                                               _tl65016671_
                                               ___splice2225722258_
                                               _target65046674_
                                               _tl65066677_)))
                                          (if (gx#stx-pair/null? _tl64986661_)
                                              (let ((___splice2226322264_
                                                     (gx#syntax-split-splice
                                                      _tl64986661_
                                                      '0)))
                                                (let ((_tl65406582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2226322264_
                                                          '1)))
                                                      (_target65386579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2226322264_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl65406582_)
                                                      (___match2230922310_
                                                       _e64976644_
                                                       _hd64966648_
                                                       _tl64956651_
                                                       _e65006654_
                                                       _hd64996658_
                                                       _tl64986661_
                                                       ___splice2226322264_
                                                       _target65386579_
                                                       _tl65406582_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g64886552_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g64886552_))))))
                                  (if (gx#stx-pair/null? _tl64986661_)
                                      (let ((___splice2226322264_
                                             (gx#syntax-split-splice
                                              _tl64986661_
                                              '0)))
                                        (let ((_tl65406582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2226322264_
                                                  '1)))
                                              (_target65386579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2226322264_
                                                  '0))))
                                          (if (gx#stx-null? _tl65406582_)
                                              (___match2230922310_
                                               _e64976644_
                                               _hd64966648_
                                               _tl64956651_
                                               _e65006654_
                                               _hd64996658_
                                               _tl64986661_
                                               ___splice2226322264_
                                               _target65386579_
                                               _tl65406582_)
                                              (let ()
                                                (declare (not safe))
                                                (_g64886552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g64886552_))))))
                          (let () (declare (not safe)) (_g64886552_)))))
                  (let () (declare (not safe)) (_g64886552_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_$stx6820_)
        (let* ((_g68246848_
                (lambda (_g68256844_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g68256844_)))
               (_g68236933_
                (lambda (_g68256852_)
                  (if (gx#stx-pair? _g68256852_)
                      (let ((_e68306855_ (gx#syntax-e _g68256852_)))
                        (let ((_hd68296859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68306855_)))
                              (_tl68286862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68306855_))))
                          (if (gx#stx-pair? _tl68286862_)
                              (let ((_e68336865_ (gx#syntax-e _tl68286862_)))
                                (let ((_hd68326869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68336865_)))
                                      (_tl68316872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68336865_))))
                                  (if (gx#stx-pair/null? _tl68316872_)
                                      (let ((_g24485_
                                             (gx#syntax-split-splice
                                              _tl68316872_
                                              '0)))
                                        (begin
                                          (let ((_g24486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24485_)
                                                       (##vector-length
                                                        _g24485_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24486_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24486_)))
                                          (let ((_target68346875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24485_ 0)))
                                                (_tl68366878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24485_ 1))))
                                            (if (gx#stx-null? _tl68366878_)
                                                (letrec ((_loop68376881_
                                                          (lambda (_hd68356885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body68416888_)
                    (if (gx#stx-pair? _hd68356885_)
                        (let ((_e68386891_ (gx#syntax-e _hd68356885_)))
                          (let ((_lp-hd68396895_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68386891_)))
                                (_lp-tl68406898_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68386891_))))
                            (_loop68376881_
                             _lp-tl68406898_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd68396895_ _body68416888_)))))
                        (let ((_body68426901_ (reverse _body68416888_)))
                          ((lambda (_L6905_ _L6907_)
                             (let ((__tmp24491 (gx#datum->syntax '#f '~let))
                                   (__tmp24487
                                    (let ((__tmp24490
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp24488
                                           (let ((__tmp24489
                                                  (foldr (lambda (_g69246927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g69256930_)
                   (let ()
                     (declare (not safe))
                     (cons _g69246927_ _g69256930_)))
                 '()
                 _L6905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L6907_ __tmp24489))))
                                      (declare (not safe))
                                      (cons __tmp24490 __tmp24488))))
                               (declare (not safe))
                               (cons __tmp24491 __tmp24487)))
                           _body68426901_
                           _hd68326869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop68376881_
                                                   _target68346875_
                                                   '()))
                                                (_g68246848_ _g68256852_)))))
                                      (_g68246848_ _g68256852_))))
                              (_g68246848_ _g68256852_))))
                      (_g68246848_ _g68256852_)))))
          (_g68236933_ _$stx6820_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_$stx6938_)
        (let* ((_g69426966_
                (lambda (_g69436962_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g69436962_)))
               (_g69417051_
                (lambda (_g69436970_)
                  (if (gx#stx-pair? _g69436970_)
                      (let ((_e69486973_ (gx#syntax-e _g69436970_)))
                        (let ((_hd69476977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69486973_)))
                              (_tl69466980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69486973_))))
                          (if (gx#stx-pair? _tl69466980_)
                              (let ((_e69516983_ (gx#syntax-e _tl69466980_)))
                                (let ((_hd69506987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e69516983_)))
                                      (_tl69496990_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e69516983_))))
                                  (if (gx#stx-pair/null? _tl69496990_)
                                      (let ((_g24492_
                                             (gx#syntax-split-splice
                                              _tl69496990_
                                              '0)))
                                        (begin
                                          (let ((_g24493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24492_)
                                                       (##vector-length
                                                        _g24492_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24493_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24493_)))
                                          (let ((_target69526993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24492_ 0)))
                                                (_tl69546996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24492_ 1))))
                                            (if (gx#stx-null? _tl69546996_)
                                                (letrec ((_loop69556999_
                                                          (lambda (_hd69537003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body69597006_)
                    (if (gx#stx-pair? _hd69537003_)
                        (let ((_e69567009_ (gx#syntax-e _hd69537003_)))
                          (let ((_lp-hd69577013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e69567009_)))
                                (_lp-tl69587016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e69567009_))))
                            (_loop69556999_
                             _lp-tl69587016_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd69577013_ _body69597006_)))))
                        (let ((_body69607019_ (reverse _body69597006_)))
                          ((lambda (_L7023_ _L7025_)
                             (let ((__tmp24498 (gx#datum->syntax '#f '~let))
                                   (__tmp24494
                                    (let ((__tmp24497
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp24495
                                           (let ((__tmp24496
                                                  (foldr (lambda (_g70427045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g70437048_)
                   (let ()
                     (declare (not safe))
                     (cons _g70427045_ _g70437048_)))
                 '()
                 _L7023_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7025_ __tmp24496))))
                                      (declare (not safe))
                                      (cons __tmp24497 __tmp24495))))
                               (declare (not safe))
                               (cons __tmp24498 __tmp24494)))
                           _body69607019_
                           _hd69506987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop69556999_
                                                   _target69526993_
                                                   '()))
                                                (_g69426966_ _g69436970_)))))
                                      (_g69426966_ _g69436970_))))
                              (_g69426966_ _g69436970_))))
                      (_g69426966_ _g69436970_)))))
          (_g69417051_ _$stx6938_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_$stx7056_)
        (let* ((_g70607084_
                (lambda (_g70617080_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g70617080_)))
               (_g70597169_
                (lambda (_g70617088_)
                  (if (gx#stx-pair? _g70617088_)
                      (let ((_e70667091_ (gx#syntax-e _g70617088_)))
                        (let ((_hd70657095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e70667091_)))
                              (_tl70647098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e70667091_))))
                          (if (gx#stx-pair? _tl70647098_)
                              (let ((_e70697101_ (gx#syntax-e _tl70647098_)))
                                (let ((_hd70687105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e70697101_)))
                                      (_tl70677108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e70697101_))))
                                  (if (gx#stx-pair/null? _tl70677108_)
                                      (let ((_g24499_
                                             (gx#syntax-split-splice
                                              _tl70677108_
                                              '0)))
                                        (begin
                                          (let ((_g24500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24499_)
                                                       (##vector-length
                                                        _g24499_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24500_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24500_)))
                                          (let ((_target70707111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24499_ 0)))
                                                (_tl70727114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24499_ 1))))
                                            (if (gx#stx-null? _tl70727114_)
                                                (letrec ((_loop70737117_
                                                          (lambda (_hd70717121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body70777124_)
                    (if (gx#stx-pair? _hd70717121_)
                        (let ((_e70747127_ (gx#syntax-e _hd70717121_)))
                          (let ((_lp-hd70757131_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70747127_)))
                                (_lp-tl70767134_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70747127_))))
                            (_loop70737117_
                             _lp-tl70767134_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd70757131_ _body70777124_)))))
                        (let ((_body70787137_ (reverse _body70777124_)))
                          ((lambda (_L7141_ _L7143_)
                             (let ((__tmp24505 (gx#datum->syntax '#f '~let))
                                   (__tmp24501
                                    (let ((__tmp24504
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp24502
                                           (let ((__tmp24503
                                                  (foldr (lambda (_g71607163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71617166_)
                   (let ()
                     (declare (not safe))
                     (cons _g71607163_ _g71617166_)))
                 '()
                 _L7141_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7143_ __tmp24503))))
                                      (declare (not safe))
                                      (cons __tmp24504 __tmp24502))))
                               (declare (not safe))
                               (cons __tmp24505 __tmp24501)))
                           _body70787137_
                           _hd70687105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop70737117_
                                                   _target70707111_
                                                   '()))
                                                (_g70607084_ _g70617088_)))))
                                      (_g70607084_ _g70617088_))))
                              (_g70607084_ _g70617088_))))
                      (_g70607084_ _g70617088_)))))
          (_g70597169_ _$stx7056_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_stx7174_)
        (letrec ((_let-head?7177_
                  (lambda (_x7657_)
                    (let* ((___stx2231222313_ _x7657_)
                           (_g76617672_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2231222313_))))
                      (let ((___kont2231522316_
                             (lambda (_L7700_)
                               (gx#stx-andmap gx#identifier? _L7700_)))
                            (___kont2231722318_
                             (lambda () (gx#identifier? _x7657_))))
                        (if (gx#stx-pair? ___stx2231222313_)
                            (let ((_e76667690_
                                   (gx#syntax-e ___stx2231222313_)))
                              (let ((_tl76647697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76667690_)))
                                    (_hd76657694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76667690_))))
                                (if (gx#identifier? _hd76657694_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g24506_|
                                         _hd76657694_)
                                        (___kont2231522316_ _tl76647697_)
                                        (___kont2231722318_))
                                    (___kont2231722318_))))
                            (___kont2231722318_))))))
                 (_let-head7179_
                  (lambda (_x7597_)
                    (let* ((___stx2233222333_ _x7597_)
                           (_g76017612_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2233222333_))))
                      (let ((___kont2233522336_ (lambda (_L7640_) _L7640_))
                            (___kont2233722338_ (lambda () (list _x7597_))))
                        (if (gx#stx-pair? ___stx2233222333_)
                            (let ((_e76067630_
                                   (gx#syntax-e ___stx2233222333_)))
                              (let ((_tl76047637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76067630_)))
                                    (_hd76057634_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76067630_))))
                                (if (gx#identifier? _hd76057634_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g24507_|
                                         _hd76057634_)
                                        (___kont2233522336_ _tl76047637_)
                                        (___kont2233722338_))
                                    (___kont2233722338_))))
                            (___kont2233722338_)))))))
          (let* ((___stx2235222353_ _stx7174_)
                 (_g71827248_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2235222353_))))
            (let ((___kont2235522356_
                   (lambda (_L7566_ _L7568_ _L7569_ _L7570_ _L7571_)
                     (let ((__tmp24508
                            (let ((__tmp24509
                                   (let ((__tmp24510
                                          (let ((__tmp24511
                                                 (let ((__tmp24512
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L7568_ '()))))
                                                   (declare (not safe))
                                                   (cons _L7569_ __tmp24512))))
                                            (declare (not safe))
                                            (cons __tmp24511 '()))))
                                     (declare (not safe))
                                     (cons __tmp24510 _L7566_))))
                              (declare (not safe))
                              (cons _L7570_ __tmp24509))))
                       (declare (not safe))
                       (cons _L7571_ __tmp24508))))
                  (___kont2235722358_
                   (lambda (_L7369_ _L7371_ _L7372_ _L7373_)
                     (let* ((_g74087425_
                             (lambda (_g74097421_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g74097421_)))
                            (_g74077497_
                             (lambda (_g74097429_)
                               (if (gx#stx-pair/null? _g74097429_)
                                   (let ((_g24513_
                                          (gx#syntax-split-splice
                                           _g74097429_
                                           '0)))
                                     (begin
                                       (let ((_g24514_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g24513_)
                                                    (##vector-length _g24513_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g24514_ 2)))
                                             (error "Context expects 2 values"
                                                    _g24514_)))
                                       (let ((_target74117432_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24513_ 0)))
                                             (_tl74137435_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24513_ 1))))
                                         (if (gx#stx-null? _tl74137435_)
                                             (letrec ((_loop74147438_
                                                       (lambda (_hd74127442_
                                                                _hd-bind74187445_)
                                                         (if (gx#stx-pair?
                                                              _hd74127442_)
                                                             (let ((_e74157448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd74127442_)))
                       (let ((_lp-hd74167452_
                              (let ()
                                (declare (not safe))
                                (##car _e74157448_)))
                             (_lp-tl74177455_
                              (let ()
                                (declare (not safe))
                                (##cdr _e74157448_))))
                         (_loop74147438_
                          _lp-tl74177455_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd74167452_ _hd-bind74187445_)))))
                     (let ((_hd-bind74197458_ (reverse _hd-bind74187445_)))
                       ((lambda (_L7462_)
                          (let ()
                            (let ((__tmp24515
                                   (let ((__tmp24517
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L7371_
                                             _L7462_)
                                            (foldr (lambda (_g74797483_
                                                            _g74807486_
                                                            _g74817488_)
                                                     (let ((__tmp24518
                                                            (let ((__tmp24519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g74797483_ '()))))
                      (declare (not safe))
                      (cons _g74807486_ __tmp24519))))
               (declare (not safe))
               (cons __tmp24518 _g74817488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L7371_
                                                   _L7462_)))
                                         (__tmp24516
                                          (foldr (lambda (_g74777491_
                                                          _g74787494_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g74777491_
                                                           _g74787494_)))
                                                 '()
                                                 _L7369_)))
                                     (declare (not safe))
                                     (cons __tmp24517 __tmp24516))))
                              (declare (not safe))
                              (cons _L7373_ __tmp24515))))
                        _hd-bind74197458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop74147438_
                                                _target74117432_
                                                '()))
                                             (_g74087425_ _g74097429_)))))
                                   (_g74087425_ _g74097429_)))))
                       (_g74077497_
                        (gx#stx-map
                         _let-head7179_
                         (foldr (lambda (_g75007503_ _g75017506_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g75007503_ _g75017506_)))
                                '()
                                _L7372_)))))))
              (let* ((___match2242122422_
                      (lambda (_e72107255_
                               _hd72097259_
                               _tl72087262_
                               _e72137265_
                               _hd72127269_
                               _tl72117272_
                               _e72167275_
                               _hd72157279_
                               _tl72147282_
                               ___splice2235922360_
                               _target72177285_
                               _tl72197288_)
                        (letrec ((_loop72207291_
                                  (lambda (_hd72187295_
                                           _e72247298_
                                           _hd72257300_)
                                    (if (gx#stx-pair? _hd72187295_)
                                        (let ((_e72217303_
                                               (gx#syntax-e _hd72187295_)))
                                          (let ((_lp-tl72237310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72217303_)))
                                                (_lp-hd72227307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72217303_))))
                                            (if (gx#stx-pair? _lp-hd72227307_)
                                                (let ((_e72307313_
                                                       (gx#syntax-e
                                                        _lp-hd72227307_)))
                                                  (let ((_tl72287320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e72307313_)))
                                                        (_hd72297317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e72307313_))))
                                                    (if (gx#stx-pair?
                                                         _tl72287320_)
                                                        (let ((_e72337323_
                                                               (gx#syntax-e
                                                                _tl72287320_)))
                                                          (let ((_tl72317330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e72337323_)))
                        (_hd72327327_
                         (let () (declare (not safe)) (##car _e72337323_))))
                    (if (gx#stx-null? _tl72317330_)
                        (_loop72207291_
                         _lp-tl72237310_
                         (let ()
                           (declare (not safe))
                           (cons _hd72327327_ _e72247298_))
                         (let ()
                           (declare (not safe))
                           (cons _hd72297317_ _hd72257300_)))
                        (let () (declare (not safe)) (_g71827248_)))))
                (let () (declare (not safe)) (_g71827248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71827248_)))))
                                        (let ((_hd72277336_
                                               (reverse _hd72257300_))
                                              (_e72267333_
                                               (reverse _e72247298_)))
                                          (if (gx#stx-pair/null? _tl72147282_)
                                              (let ((___splice2236122362_
                                                     (gx#syntax-split-splice
                                                      _tl72147282_
                                                      '0)))
                                                (let ((_tl72367342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2236122362_
                                                          '1)))
                                                      (_target72347339_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2236122362_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl72367342_)
                                                      (letrec ((_loop72377345_
                                                                (lambda (_hd72357349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body72417352_)
                          (if (gx#stx-pair? _hd72357349_)
                              (let ((_e72387355_ (gx#syntax-e _hd72357349_)))
                                (let ((_lp-tl72407362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e72387355_)))
                                      (_lp-hd72397359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e72387355_))))
                                  (_loop72377345_
                                   _lp-tl72407362_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd72397359_ _body72417352_)))))
                              (let ((_body72427365_ (reverse _body72417352_)))
                                (let ((_L7369_ _body72427365_)
                                      (_L7371_ _e72267333_)
                                      (_L7372_ _hd72277336_)
                                      (_L7373_ _hd72127269_))
                                  (if (gx#stx-andmap
                                       _let-head?7177_
                                       (foldr (lambda (_g73997402_ _g74007405_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g73997402_
                                                        _g74007405_)))
                                              '()
                                              _L7372_))
                                      (___kont2235722358_
                                       _L7369_
                                       _L7371_
                                       _L7372_
                                       _L7373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g71827248_)))))))))
                (_loop72377345_ _target72347339_ '()))
              (let () (declare (not safe)) (_g71827248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g71827248_))))))))
                          (_loop72207291_ _target72177285_ '() '()))))
                     (___match2239522396_
                      (lambda (_e71917516_
                               _hd71907520_
                               _tl71897523_
                               _e71947526_
                               _hd71937530_
                               _tl71927533_
                               _e71977536_
                               _hd71967540_
                               _tl71957543_
                               _e72007546_
                               _hd71997550_
                               _tl71987553_
                               _e72037556_
                               _hd72027560_
                               _tl72017563_)
                        (let ((_L7566_ _tl71957543_)
                              (_L7568_ _hd72027560_)
                              (_L7569_ _hd71997550_)
                              (_L7570_ _hd71937530_)
                              (_L7571_ _hd71907520_))
                          (if (_let-head?7177_ _L7569_)
                              (___kont2235522356_
                               _L7566_
                               _L7568_
                               _L7569_
                               _L7570_
                               _L7571_)
                              (if (gx#stx-pair/null? _hd71967540_)
                                  (let ((___splice2235922360_
                                         (gx#syntax-split-splice
                                          _hd71967540_
                                          '0)))
                                    (let ((_tl72197288_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235922360_
                                              '1)))
                                          (_target72177285_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235922360_
                                              '0))))
                                      (if (gx#stx-null? _tl72197288_)
                                          (___match2242122422_
                                           _e71917516_
                                           _hd71907520_
                                           _tl71897523_
                                           _e71947526_
                                           _hd71937530_
                                           _tl71927533_
                                           _e71977536_
                                           _hd71967540_
                                           _tl71957543_
                                           ___splice2235922360_
                                           _target72177285_
                                           _tl72197288_)
                                          (let ()
                                            (declare (not safe))
                                            (_g71827248_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g71827248_))))))))
                (if (gx#stx-pair? ___stx2235222353_)
                    (let ((_e71917516_ (gx#syntax-e ___stx2235222353_)))
                      (let ((_tl71897523_
                             (let () (declare (not safe)) (##cdr _e71917516_)))
                            (_hd71907520_
                             (let ()
                               (declare (not safe))
                               (##car _e71917516_))))
                        (if (gx#stx-pair? _tl71897523_)
                            (let ((_e71947526_ (gx#syntax-e _tl71897523_)))
                              (let ((_tl71927533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e71947526_)))
                                    (_hd71937530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e71947526_))))
                                (if (gx#stx-pair? _tl71927533_)
                                    (let ((_e71977536_
                                           (gx#syntax-e _tl71927533_)))
                                      (let ((_tl71957543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e71977536_)))
                                            (_hd71967540_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e71977536_))))
                                        (if (gx#stx-pair? _hd71967540_)
                                            (let ((_e72007546_
                                                   (gx#syntax-e _hd71967540_)))
                                              (let ((_tl71987553_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e72007546_)))
                                                    (_hd71997550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e72007546_))))
                                                (if (gx#stx-pair? _tl71987553_)
                                                    (let ((_e72037556_
                                                           (gx#syntax-e
                                                            _tl71987553_)))
                                                      (let ((_tl72017563_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e72037556_)))
                    (_hd72027560_
                     (let () (declare (not safe)) (##car _e72037556_))))
                (if (gx#stx-null? _tl72017563_)
                    (___match2239522396_
                     _e71917516_
                     _hd71907520_
                     _tl71897523_
                     _e71947526_
                     _hd71937530_
                     _tl71927533_
                     _e71977536_
                     _hd71967540_
                     _tl71957543_
                     _e72007546_
                     _hd71997550_
                     _tl71987553_
                     _e72037556_
                     _hd72027560_
                     _tl72017563_)
                    (if (gx#stx-pair/null? _hd71967540_)
                        (let ((___splice2235922360_
                               (gx#syntax-split-splice _hd71967540_ '0)))
                          (let ((_tl72197288_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235922360_ '1)))
                                (_target72177285_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235922360_ '0))))
                            (if (gx#stx-null? _tl72197288_)
                                (___match2242122422_
                                 _e71917516_
                                 _hd71907520_
                                 _tl71897523_
                                 _e71947526_
                                 _hd71937530_
                                 _tl71927533_
                                 _e71977536_
                                 _hd71967540_
                                 _tl71957543_
                                 ___splice2235922360_
                                 _target72177285_
                                 _tl72197288_)
                                (let () (declare (not safe)) (_g71827248_)))))
                        (let () (declare (not safe)) (_g71827248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd71967540_)
                                                        (let ((___splice2235922360_
                                                               (gx#syntax-split-splice
                                                                _hd71967540_
                                                                '0)))
                                                          (let ((_tl72197288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235922360_ '1)))
                        (_target72177285_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235922360_ '0))))
                    (if (gx#stx-null? _tl72197288_)
                        (___match2242122422_
                         _e71917516_
                         _hd71907520_
                         _tl71897523_
                         _e71947526_
                         _hd71937530_
                         _tl71927533_
                         _e71977536_
                         _hd71967540_
                         _tl71957543_
                         ___splice2235922360_
                         _target72177285_
                         _tl72197288_)
                        (let () (declare (not safe)) (_g71827248_)))))
                (let () (declare (not safe)) (_g71827248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd71967540_)
                                                (let ((___splice2235922360_
                                                       (gx#syntax-split-splice
                                                        _hd71967540_
                                                        '0)))
                                                  (let ((_tl72197288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235922360_
                                                            '1)))
                                                        (_target72177285_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235922360_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl72197288_)
                                                        (___match2242122422_
                                                         _e71917516_
                                                         _hd71907520_
                                                         _tl71897523_
                                                         _e71947526_
                                                         _hd71937530_
                                                         _tl71927533_
                                                         _e71977536_
                                                         _hd71967540_
                                                         _tl71957543_
                                                         ___splice2235922360_
                                                         _target72177285_
                                                         _tl72197288_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g71827248_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71827248_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g71827248_)))))
                            (let () (declare (not safe)) (_g71827248_)))))
                    (let () (declare (not safe)) (_g71827248_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_$stx7720_)
        (let* ((___stx2242422425_ _$stx7720_)
               (_g77267752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2242422425_))))
          (let ((___kont2242722428_ (lambda () '#t))
                (___kont2242922430_ (lambda (_L7824_) _L7824_))
                (___kont2243122432_
                 (lambda (_L7779_ _L7781_ _L7782_)
                   (let ((__tmp24524 (gx#datum->syntax '#f 'if))
                         (__tmp24520
                          (let ((__tmp24521
                                 (let ((__tmp24523
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7782_ _L7779_)))
                                       (__tmp24522
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp24523 __tmp24522))))
                            (declare (not safe))
                            (cons _L7781_ __tmp24521))))
                     (declare (not safe))
                     (cons __tmp24524 __tmp24520)))))
            (if (gx#stx-pair? ___stx2242422425_)
                (let ((_e77307844_ (gx#syntax-e ___stx2242422425_)))
                  (let ((_tl77287851_
                         (let () (declare (not safe)) (##cdr _e77307844_)))
                        (_hd77297848_
                         (let () (declare (not safe)) (##car _e77307844_))))
                    (if (gx#stx-null? _tl77287851_)
                        (___kont2242722428_)
                        (if (gx#stx-pair? _tl77287851_)
                            (let ((_e77377814_ (gx#syntax-e _tl77287851_)))
                              (let ((_tl77357821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e77377814_)))
                                    (_hd77367818_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e77377814_))))
                                (if (gx#stx-null? _tl77357821_)
                                    (___kont2242922430_ _hd77367818_)
                                    (___kont2243122432_
                                     _tl77357821_
                                     _hd77367818_
                                     _hd77297848_))))
                            (let () (declare (not safe)) (_g77267752_))))))
                (let () (declare (not safe)) (_g77267752_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_$stx7862_)
        (let* ((___stx2247022471_ _$stx7862_)
               (_g78687894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2247022471_))))
          (let ((___kont2247322474_ (lambda () '#f))
                (___kont2247522476_ (lambda (_L7966_) _L7966_))
                (___kont2247722478_
                 (lambda (_L7921_ _L7923_ _L7924_)
                   (let ((__tmp24538 (gx#datum->syntax '#f 'let))
                         (__tmp24525
                          (let ((__tmp24535
                                 (let ((__tmp24537 (gx#datum->syntax '#f '$e))
                                       (__tmp24536
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7923_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24537 __tmp24536)))
                                (__tmp24526
                                 (let ((__tmp24527
                                        (let ((__tmp24534
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24528
                                               (let ((__tmp24533
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24529
                                                      (let ((__tmp24532
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24530
                                                             (let ((__tmp24531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L7924_ _L7921_))))
                       (declare (not safe))
                       (cons __tmp24531 '()))))
                (declare (not safe))
                (cons __tmp24532 __tmp24530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24533
                                                       __tmp24529))))
                                          (declare (not safe))
                                          (cons __tmp24534 __tmp24528))))
                                   (declare (not safe))
                                   (cons __tmp24527 '()))))
                            (declare (not safe))
                            (cons __tmp24535 __tmp24526))))
                     (declare (not safe))
                     (cons __tmp24538 __tmp24525)))))
            (if (gx#stx-pair? ___stx2247022471_)
                (let ((_e78727986_ (gx#syntax-e ___stx2247022471_)))
                  (let ((_tl78707993_
                         (let () (declare (not safe)) (##cdr _e78727986_)))
                        (_hd78717990_
                         (let () (declare (not safe)) (##car _e78727986_))))
                    (if (gx#stx-null? _tl78707993_)
                        (___kont2247322474_)
                        (if (gx#stx-pair? _tl78707993_)
                            (let ((_e78797956_ (gx#syntax-e _tl78707993_)))
                              (let ((_tl78777963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e78797956_)))
                                    (_hd78787960_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e78797956_))))
                                (if (gx#stx-null? _tl78777963_)
                                    (___kont2247522476_ _hd78787960_)
                                    (___kont2247722478_
                                     _tl78777963_
                                     _hd78787960_
                                     _hd78717990_))))
                            (let () (declare (not safe)) (_g78687894_))))))
                (let () (declare (not safe)) (_g78687894_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_$stx8004_)
        (let* ((___stx2251622517_ _$stx8004_)
               (_g80138104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2251622517_))))
          (let ((___kont2251922520_ (lambda () '#!void))
                (___kont2252122522_
                 (lambda (_L8451_)
                   (let ((__tmp24543 (gx#datum->syntax '#f '%#expression))
                         (__tmp24539
                          (let ((__tmp24540
                                 (let ((__tmp24542
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp24541
                                        (foldr (lambda (_g84708473_
                                                        _g84718476_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g84708473_
                                                         _g84718476_)))
                                               '()
                                               _L8451_)))
                                   (declare (not safe))
                                   (cons __tmp24542 __tmp24541))))
                            (declare (not safe))
                            (cons __tmp24540 '()))))
                     (declare (not safe))
                     (cons __tmp24543 __tmp24539))))
                (___kont2252522526_
                 (lambda ()
                   (let ((__tmp24545 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp24544
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp24545 __tmp24544))))
                (___kont2252722528_
                 (lambda (_L8324_ _L8326_ _L8327_)
                   (let ((__tmp24559 (gx#datum->syntax '#f 'let))
                         (__tmp24546
                          (let ((__tmp24556
                                 (let ((__tmp24558 (gx#datum->syntax '#f '$e))
                                       (__tmp24557
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8326_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24558 __tmp24557)))
                                (__tmp24547
                                 (let ((__tmp24548
                                        (let ((__tmp24555
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24549
                                               (let ((__tmp24554
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24550
                                                      (let ((__tmp24553
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24551
                                                             (let ((__tmp24552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L8327_ _L8324_))))
                       (declare (not safe))
                       (cons __tmp24552 '()))))
                (declare (not safe))
                (cons __tmp24553 __tmp24551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24554
                                                       __tmp24550))))
                                          (declare (not safe))
                                          (cons __tmp24555 __tmp24549))))
                                   (declare (not safe))
                                   (cons __tmp24548 '()))))
                            (declare (not safe))
                            (cons __tmp24556 __tmp24547))))
                     (declare (not safe))
                     (cons __tmp24559 __tmp24546))))
                (___kont2252922530_
                 (lambda (_L8262_ _L8264_ _L8265_ _L8266_)
                   (let ((__tmp24575 (gx#datum->syntax '#f 'let))
                         (__tmp24560
                          (let ((__tmp24572
                                 (let ((__tmp24574 (gx#datum->syntax '#f '$e))
                                       (__tmp24573
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8265_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24574 __tmp24573)))
                                (__tmp24561
                                 (let ((__tmp24562
                                        (let ((__tmp24571
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24563
                                               (let ((__tmp24570
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24564
                                                      (let ((__tmp24567
                                                             (let ((__tmp24568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24569 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp24569 '()))))
                       (declare (not safe))
                       (cons _L8264_ __tmp24568)))
                    (__tmp24565
                     (let ((__tmp24566
                            (let ()
                              (declare (not safe))
                              (cons _L8266_ _L8262_))))
                       (declare (not safe))
                       (cons __tmp24566 '()))))
                (declare (not safe))
                (cons __tmp24567 __tmp24565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24570
                                                       __tmp24564))))
                                          (declare (not safe))
                                          (cons __tmp24571 __tmp24563))))
                                   (declare (not safe))
                                   (cons __tmp24562 '()))))
                            (declare (not safe))
                            (cons __tmp24572 __tmp24561))))
                     (declare (not safe))
                     (cons __tmp24575 __tmp24560))))
                (___kont2253122532_
                 (lambda (_L8171_ _L8173_ _L8174_ _L8175_)
                   (let ((__tmp24583 (gx#datum->syntax '#f 'if))
                         (__tmp24576
                          (let ((__tmp24577
                                 (let ((__tmp24580
                                        (let ((__tmp24582
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp24581
                                               (foldr (lambda (_g81968199_
                                                               _g81978202_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g81968199_
                                                                _g81978202_)))
                                                      '()
                                                      _L8173_)))
                                          (declare (not safe))
                                          (cons __tmp24582 __tmp24581)))
                                       (__tmp24578
                                        (let ((__tmp24579
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8175_ _L8171_))))
                                          (declare (not safe))
                                          (cons __tmp24579 '()))))
                                   (declare (not safe))
                                   (cons __tmp24580 __tmp24578))))
                            (declare (not safe))
                            (cons _L8174_ __tmp24577))))
                     (declare (not safe))
                     (cons __tmp24583 __tmp24576)))))
            (let* ((___match2267722678_
                    (lambda (_e80838111_
                             _hd80828115_
                             _tl80818118_
                             _e80868121_
                             _hd80858125_
                             _tl80848128_
                             _e80898131_
                             _hd80888135_
                             _tl80878138_
                             ___splice2253322534_
                             _target80908141_
                             _tl80928144_)
                      (letrec ((_loop80938147_
                                (lambda (_hd80918151_ _body80978154_)
                                  (if (gx#stx-pair? _hd80918151_)
                                      (let ((_e80948157_
                                             (gx#syntax-e _hd80918151_)))
                                        (let ((_lp-tl80968164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80948157_)))
                                              (_lp-hd80958161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80948157_))))
                                          (_loop80938147_
                                           _lp-tl80968164_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80958161_
                                                   _body80978154_)))))
                                      (let ((_body80988167_
                                             (reverse _body80978154_)))
                                        (___kont2253122532_
                                         _tl80848128_
                                         _body80988167_
                                         _hd80888135_
                                         _hd80828115_))))))
                        (_loop80938147_ _target80908141_ '()))))
                   (___match2257322574_
                    (lambda (_e80218391_
                             _hd80208395_
                             _tl80198398_
                             _e80248401_
                             _hd80238405_
                             _tl80228408_
                             _e80278411_
                             _hd80268415_
                             _tl80258418_
                             ___splice2252322524_
                             _target80288421_
                             _tl80308424_)
                      (letrec ((_loop80318427_
                                (lambda (_hd80298431_ _body80358434_)
                                  (if (gx#stx-pair? _hd80298431_)
                                      (let ((_e80328437_
                                             (gx#syntax-e _hd80298431_)))
                                        (let ((_lp-tl80348444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80328437_)))
                                              (_lp-hd80338441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80328437_))))
                                          (_loop80318427_
                                           _lp-tl80348444_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80338441_
                                                   _body80358434_)))))
                                      (let ((_body80368447_
                                             (reverse _body80358434_)))
                                        (if (gx#stx-null? _tl80228408_)
                                            (___kont2252122522_ _body80368447_)
                                            (___kont2252522526_)))))))
                        (_loop80318427_ _target80288421_ '())))))
              (if (gx#stx-pair? ___stx2251622517_)
                  (let ((_e80178486_ (gx#syntax-e ___stx2251622517_)))
                    (let ((_tl80158493_
                           (let () (declare (not safe)) (##cdr _e80178486_)))
                          (_hd80168490_
                           (let () (declare (not safe)) (##car _e80178486_))))
                      (if (gx#stx-null? _tl80158493_)
                          (___kont2251922520_)
                          (if (gx#stx-pair? _tl80158493_)
                              (let ((_e80248401_ (gx#syntax-e _tl80158493_)))
                                (let ((_tl80228408_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80248401_)))
                                      (_hd80238405_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80248401_))))
                                  (if (gx#stx-pair? _hd80238405_)
                                      (let ((_e80278411_
                                             (gx#syntax-e _hd80238405_)))
                                        (let ((_tl80258418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80278411_)))
                                              (_hd80268415_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80278411_))))
                                          (if (gx#identifier? _hd80268415_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g24585_|
                                                   _hd80268415_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80258418_)
                                                      (let ((___splice2252322524_
                                                             (gx#syntax-split-splice
                                                              _tl80258418_
                                                              '0)))
                                                        (let ((_tl80308424_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2252322524_ '1)))
                      (_target80288421_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2252322524_ '0))))
                  (if (gx#stx-null? _tl80308424_)
                      (___match2257322574_
                       _e80178486_
                       _hd80168490_
                       _tl80158493_
                       _e80248401_
                       _hd80238405_
                       _tl80228408_
                       _e80278411_
                       _hd80268415_
                       _tl80258418_
                       ___splice2252322524_
                       _target80288421_
                       _tl80308424_)
                      (___kont2252522526_))))
              (___kont2252522526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl80258418_)
                                                      (___kont2252722528_
                                                       _tl80228408_
                                                       _hd80268415_
                                                       _hd80168490_)
                                                      (if (gx#stx-pair?
                                                           _tl80258418_)
                                                          (let ((_e80738242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80258418_)))
                    (let ((_tl80718249_
                           (let () (declare (not safe)) (##cdr _e80738242_)))
                          (_hd80728246_
                           (let () (declare (not safe)) (##car _e80738242_))))
                      (if (gx#identifier? _hd80728246_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g24584_|
                               _hd80728246_)
                              (if (gx#stx-pair? _tl80718249_)
                                  (let ((_e80768252_
                                         (gx#syntax-e _tl80718249_)))
                                    (let ((_tl80748259_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80768252_)))
                                          (_hd80758256_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80768252_))))
                                      (if (gx#stx-null? _tl80748259_)
                                          (___kont2252922530_
                                           _tl80228408_
                                           _hd80758256_
                                           _hd80268415_
                                           _hd80168490_)
                                          (if (gx#stx-pair/null? _tl80258418_)
                                              (let ((___splice2253322534_
                                                     (gx#syntax-split-splice
                                                      _tl80258418_
                                                      '0)))
                                                (let ((_tl80928144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2253322534_
                                                          '1)))
                                                      (_target80908141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2253322534_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl80928144_)
                                                      (___match2267722678_
                                                       _e80178486_
                                                       _hd80168490_
                                                       _tl80158493_
                                                       _e80248401_
                                                       _hd80238405_
                                                       _tl80228408_
                                                       _e80278411_
                                                       _hd80268415_
                                                       _tl80258418_
                                                       ___splice2253322534_
                                                       _target80908141_
                                                       _tl80928144_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g80138104_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g80138104_))))))
                                  (if (gx#stx-pair/null? _tl80258418_)
                                      (let ((___splice2253322534_
                                             (gx#syntax-split-splice
                                              _tl80258418_
                                              '0)))
                                        (let ((_tl80928144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2253322534_
                                                  '1)))
                                              (_target80908141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2253322534_
                                                  '0))))
                                          (if (gx#stx-null? _tl80928144_)
                                              (___match2267722678_
                                               _e80178486_
                                               _hd80168490_
                                               _tl80158493_
                                               _e80248401_
                                               _hd80238405_
                                               _tl80228408_
                                               _e80278411_
                                               _hd80268415_
                                               _tl80258418_
                                               ___splice2253322534_
                                               _target80908141_
                                               _tl80928144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80138104_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80138104_))))
                              (if (gx#stx-pair/null? _tl80258418_)
                                  (let ((___splice2253322534_
                                         (gx#syntax-split-splice
                                          _tl80258418_
                                          '0)))
                                    (let ((_tl80928144_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2253322534_
                                              '1)))
                                          (_target80908141_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2253322534_
                                              '0))))
                                      (if (gx#stx-null? _tl80928144_)
                                          (___match2267722678_
                                           _e80178486_
                                           _hd80168490_
                                           _tl80158493_
                                           _e80248401_
                                           _hd80238405_
                                           _tl80228408_
                                           _e80278411_
                                           _hd80268415_
                                           _tl80258418_
                                           ___splice2253322534_
                                           _target80908141_
                                           _tl80928144_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80138104_)))))
                                  (let () (declare (not safe)) (_g80138104_))))
                          (if (gx#stx-pair/null? _tl80258418_)
                              (let ((___splice2253322534_
                                     (gx#syntax-split-splice _tl80258418_ '0)))
                                (let ((_tl80928144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2253322534_
                                          '1)))
                                      (_target80908141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2253322534_
                                          '0))))
                                  (if (gx#stx-null? _tl80928144_)
                                      (___match2267722678_
                                       _e80178486_
                                       _hd80168490_
                                       _tl80158493_
                                       _e80248401_
                                       _hd80238405_
                                       _tl80228408_
                                       _e80278411_
                                       _hd80268415_
                                       _tl80258418_
                                       ___splice2253322534_
                                       _target80908141_
                                       _tl80928144_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80138104_)))))
                              (let () (declare (not safe)) (_g80138104_))))))
                  (if (gx#stx-pair/null? _tl80258418_)
                      (let ((___splice2253322534_
                             (gx#syntax-split-splice _tl80258418_ '0)))
                        (let ((_tl80928144_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2253322534_ '1)))
                              (_target80908141_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2253322534_ '0))))
                          (if (gx#stx-null? _tl80928144_)
                              (___match2267722678_
                               _e80178486_
                               _hd80168490_
                               _tl80158493_
                               _e80248401_
                               _hd80238405_
                               _tl80228408_
                               _e80278411_
                               _hd80268415_
                               _tl80258418_
                               ___splice2253322534_
                               _target80908141_
                               _tl80928144_)
                              (let () (declare (not safe)) (_g80138104_)))))
                      (let () (declare (not safe)) (_g80138104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl80258418_)
                                                  (___kont2252722528_
                                                   _tl80228408_
                                                   _hd80268415_
                                                   _hd80168490_)
                                                  (if (gx#stx-pair?
                                                       _tl80258418_)
                                                      (let ((_e80738242_
                                                             (gx#syntax-e
                                                              _tl80258418_)))
                                                        (let ((_tl80718249_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e80738242_)))
                      (_hd80728246_
                       (let () (declare (not safe)) (##car _e80738242_))))
                  (if (gx#identifier? _hd80728246_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g24584_|
                           _hd80728246_)
                          (if (gx#stx-pair? _tl80718249_)
                              (let ((_e80768252_ (gx#syntax-e _tl80718249_)))
                                (let ((_tl80748259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80768252_)))
                                      (_hd80758256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80768252_))))
                                  (if (gx#stx-null? _tl80748259_)
                                      (___kont2252922530_
                                       _tl80228408_
                                       _hd80758256_
                                       _hd80268415_
                                       _hd80168490_)
                                      (if (gx#stx-pair/null? _tl80258418_)
                                          (let ((___splice2253322534_
                                                 (gx#syntax-split-splice
                                                  _tl80258418_
                                                  '0)))
                                            (let ((_tl80928144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2253322534_
                                                      '1)))
                                                  (_target80908141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2253322534_
                                                      '0))))
                                              (if (gx#stx-null? _tl80928144_)
                                                  (___match2267722678_
                                                   _e80178486_
                                                   _hd80168490_
                                                   _tl80158493_
                                                   _e80248401_
                                                   _hd80238405_
                                                   _tl80228408_
                                                   _e80278411_
                                                   _hd80268415_
                                                   _tl80258418_
                                                   ___splice2253322534_
                                                   _target80908141_
                                                   _tl80928144_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80138104_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g80138104_))))))
                              (if (gx#stx-pair/null? _tl80258418_)
                                  (let ((___splice2253322534_
                                         (gx#syntax-split-splice
                                          _tl80258418_
                                          '0)))
                                    (let ((_tl80928144_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2253322534_
                                              '1)))
                                          (_target80908141_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2253322534_
                                              '0))))
                                      (if (gx#stx-null? _tl80928144_)
                                          (___match2267722678_
                                           _e80178486_
                                           _hd80168490_
                                           _tl80158493_
                                           _e80248401_
                                           _hd80238405_
                                           _tl80228408_
                                           _e80278411_
                                           _hd80268415_
                                           _tl80258418_
                                           ___splice2253322534_
                                           _target80908141_
                                           _tl80928144_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80138104_)))))
                                  (let () (declare (not safe)) (_g80138104_))))
                          (if (gx#stx-pair/null? _tl80258418_)
                              (let ((___splice2253322534_
                                     (gx#syntax-split-splice _tl80258418_ '0)))
                                (let ((_tl80928144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2253322534_
                                          '1)))
                                      (_target80908141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2253322534_
                                          '0))))
                                  (if (gx#stx-null? _tl80928144_)
                                      (___match2267722678_
                                       _e80178486_
                                       _hd80168490_
                                       _tl80158493_
                                       _e80248401_
                                       _hd80238405_
                                       _tl80228408_
                                       _e80278411_
                                       _hd80268415_
                                       _tl80258418_
                                       ___splice2253322534_
                                       _target80908141_
                                       _tl80928144_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80138104_)))))
                              (let () (declare (not safe)) (_g80138104_))))
                      (if (gx#stx-pair/null? _tl80258418_)
                          (let ((___splice2253322534_
                                 (gx#syntax-split-splice _tl80258418_ '0)))
                            (let ((_tl80928144_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2253322534_ '1)))
                                  (_target80908141_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2253322534_ '0))))
                              (if (gx#stx-null? _tl80928144_)
                                  (___match2267722678_
                                   _e80178486_
                                   _hd80168490_
                                   _tl80158493_
                                   _e80248401_
                                   _hd80238405_
                                   _tl80228408_
                                   _e80278411_
                                   _hd80268415_
                                   _tl80258418_
                                   ___splice2253322534_
                                   _target80908141_
                                   _tl80928144_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80138104_)))))
                          (let () (declare (not safe)) (_g80138104_))))))
              (if (gx#stx-pair/null? _tl80258418_)
                  (let ((___splice2253322534_
                         (gx#syntax-split-splice _tl80258418_ '0)))
                    (let ((_tl80928144_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2253322534_ '1)))
                          (_target80908141_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2253322534_ '0))))
                      (if (gx#stx-null? _tl80928144_)
                          (___match2267722678_
                           _e80178486_
                           _hd80168490_
                           _tl80158493_
                           _e80248401_
                           _hd80238405_
                           _tl80228408_
                           _e80278411_
                           _hd80268415_
                           _tl80258418_
                           ___splice2253322534_
                           _target80908141_
                           _tl80928144_)
                          (let () (declare (not safe)) (_g80138104_)))))
                  (let () (declare (not safe)) (_g80138104_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g80138104_)))))
                              (let () (declare (not safe)) (_g80138104_))))))
                  (let () (declare (not safe)) (_g80138104_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_$stx8506_)
        (let* ((_g85108534_
                (lambda (_g85118530_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85118530_)))
               (_g85098619_
                (lambda (_g85118538_)
                  (if (gx#stx-pair? _g85118538_)
                      (let ((_e85168541_ (gx#syntax-e _g85118538_)))
                        (let ((_hd85158545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85168541_)))
                              (_tl85148548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85168541_))))
                          (if (gx#stx-pair? _tl85148548_)
                              (let ((_e85198551_ (gx#syntax-e _tl85148548_)))
                                (let ((_hd85188555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85198551_)))
                                      (_tl85178558_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85198551_))))
                                  (if (gx#stx-pair/null? _tl85178558_)
                                      (let ((_g24586_
                                             (gx#syntax-split-splice
                                              _tl85178558_
                                              '0)))
                                        (begin
                                          (let ((_g24587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24586_)
                                                       (##vector-length
                                                        _g24586_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24587_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24587_)))
                                          (let ((_target85208561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24586_ 0)))
                                                (_tl85228564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24586_ 1))))
                                            (if (gx#stx-null? _tl85228564_)
                                                (letrec ((_loop85238567_
                                                          (lambda (_hd85218571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr85278574_)
                    (if (gx#stx-pair? _hd85218571_)
                        (let ((_e85248577_ (gx#syntax-e _hd85218571_)))
                          (let ((_lp-hd85258581_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85248577_)))
                                (_lp-tl85268584_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85248577_))))
                            (_loop85238567_
                             _lp-tl85268584_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd85258581_ _expr85278574_)))))
                        (let ((_expr85288587_ (reverse _expr85278574_)))
                          ((lambda (_L8591_ _L8593_)
                             (let ((__tmp24594 (gx#datum->syntax '#f 'if))
                                   (__tmp24588
                                    (let ((__tmp24589
                                           (let ((__tmp24591
                                                  (let ((__tmp24593
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp24592
                                                         (foldr (lambda (_g86108613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g86118616_)
                          (let ()
                            (declare (not safe))
                            (cons _g86108613_ _g86118616_)))
                        '()
                        _L8591_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24593
                                                          __tmp24592)))
                                                 (__tmp24590
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp24591 __tmp24590))))
                                      (declare (not safe))
                                      (cons _L8593_ __tmp24589))))
                               (declare (not safe))
                               (cons __tmp24594 __tmp24588)))
                           _expr85288587_
                           _hd85188555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85238567_
                                                   _target85208561_
                                                   '()))
                                                (_g85108534_ _g85118538_)))))
                                      (_g85108534_ _g85118538_))))
                              (_g85108534_ _g85118538_))))
                      (_g85108534_ _g85118538_)))))
          (_g85098619_ _$stx8506_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_$stx8624_)
        (let* ((_g86288652_
                (lambda (_g86298648_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86298648_)))
               (_g86278737_
                (lambda (_g86298656_)
                  (if (gx#stx-pair? _g86298656_)
                      (let ((_e86348659_ (gx#syntax-e _g86298656_)))
                        (let ((_hd86338663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86348659_)))
                              (_tl86328666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86348659_))))
                          (if (gx#stx-pair? _tl86328666_)
                              (let ((_e86378669_ (gx#syntax-e _tl86328666_)))
                                (let ((_hd86368673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86378669_)))
                                      (_tl86358676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86378669_))))
                                  (if (gx#stx-pair/null? _tl86358676_)
                                      (let ((_g24595_
                                             (gx#syntax-split-splice
                                              _tl86358676_
                                              '0)))
                                        (begin
                                          (let ((_g24596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24595_)
                                                       (##vector-length
                                                        _g24595_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24596_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24596_)))
                                          (let ((_target86388679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24595_ 0)))
                                                (_tl86408682_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24595_ 1))))
                                            (if (gx#stx-null? _tl86408682_)
                                                (letrec ((_loop86418685_
                                                          (lambda (_hd86398689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr86458692_)
                    (if (gx#stx-pair? _hd86398689_)
                        (let ((_e86428695_ (gx#syntax-e _hd86398689_)))
                          (let ((_lp-hd86438699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86428695_)))
                                (_lp-tl86448702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86428695_))))
                            (_loop86418685_
                             _lp-tl86448702_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd86438699_ _expr86458692_)))))
                        (let ((_expr86468705_ (reverse _expr86458692_)))
                          ((lambda (_L8709_ _L8711_)
                             (let ((__tmp24603 (gx#datum->syntax '#f 'if))
                                   (__tmp24597
                                    (let ((__tmp24598
                                           (let ((__tmp24599
                                                  (let ((__tmp24600
                                                         (let ((__tmp24602
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp24601
                        (foldr (lambda (_g87288731_ _g87298734_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87288731_ _g87298734_)))
                               '()
                               _L8709_)))
                   (declare (not safe))
                   (cons __tmp24602 __tmp24601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24600 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp24599))))
                                      (declare (not safe))
                                      (cons _L8711_ __tmp24598))))
                               (declare (not safe))
                               (cons __tmp24603 __tmp24597)))
                           _expr86468705_
                           _hd86368673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86418685_
                                                   _target86388679_
                                                   '()))
                                                (_g86288652_ _g86298656_)))))
                                      (_g86288652_ _g86298656_))))
                              (_g86288652_ _g86298656_))))
                      (_g86288652_ _g86298656_)))))
          (_g86278737_ _$stx8624_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_stx8742_)
        (let* ((_g87458769_
                (lambda (_g87468765_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g87468765_)))
               (_g87448854_
                (lambda (_g87468773_)
                  (if (gx#stx-pair? _g87468773_)
                      (let ((_e87518776_ (gx#syntax-e _g87468773_)))
                        (let ((_hd87508780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87518776_)))
                              (_tl87498783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87518776_))))
                          (if (gx#stx-pair? _tl87498783_)
                              (let ((_e87548786_ (gx#syntax-e _tl87498783_)))
                                (let ((_hd87538790_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87548786_)))
                                      (_tl87528793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87548786_))))
                                  (if (gx#stx-pair/null? _tl87528793_)
                                      (let ((_g24604_
                                             (gx#syntax-split-splice
                                              _tl87528793_
                                              '0)))
                                        (begin
                                          (let ((_g24605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24604_)
                                                       (##vector-length
                                                        _g24604_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24605_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24605_)))
                                          (let ((_target87558796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24604_ 0)))
                                                (_tl87578799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24604_ 1))))
                                            (if (gx#stx-null? _tl87578799_)
                                                (letrec ((_loop87588802_
                                                          (lambda (_hd87568806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail87628809_)
                    (if (gx#stx-pair? _hd87568806_)
                        (let ((_e87598812_ (gx#syntax-e _hd87568806_)))
                          (let ((_lp-hd87608816_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87598812_)))
                                (_lp-tl87618819_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87598812_))))
                            (_loop87588802_
                             _lp-tl87618819_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd87608816_ _detail87628809_)))))
                        (let ((_detail87638822_ (reverse _detail87628809_)))
                          ((lambda (_L8826_ _L8828_)
                             (if (gx#stx-string? _L8828_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L8828_)
                                        _stx8742_
                                        (gx#syntax->list
                                         (foldr (lambda (_g88458848_
                                                         _g88468851_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g88458848_
                                                          _g88468851_)))
                                                '()
                                                _L8826_)))
                                 (_g87458769_ _g87468773_)))
                           _detail87638822_
                           _hd87538790_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87588802_
                                                   _target87558796_
                                                   '()))
                                                (_g87458769_ _g87468773_)))))
                                      (_g87458769_ _g87468773_))))
                              (_g87458769_ _g87468773_))))
                      (_g87458769_ _g87468773_)))))
          (_g87448854_ _stx8742_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defmutable|
      (lambda (_$stx8859_)
        (let* ((_g88638881_
                (lambda (_g88648877_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g88648877_)))
               (_g88628936_
                (lambda (_g88648885_)
                  (if (gx#stx-pair? _g88648885_)
                      (let ((_e88698888_ (gx#syntax-e _g88648885_)))
                        (let ((_hd88688892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88698888_)))
                              (_tl88678895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88698888_))))
                          (if (gx#stx-pair? _tl88678895_)
                              (let ((_e88728898_ (gx#syntax-e _tl88678895_)))
                                (let ((_hd88718902_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88728898_)))
                                      (_tl88708905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88728898_))))
                                  (if (gx#stx-pair? _tl88708905_)
                                      (let ((_e88758908_
                                             (gx#syntax-e _tl88708905_)))
                                        (let ((_hd88748912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88758908_)))
                                              (_tl88738915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88758908_))))
                                          (if (gx#stx-null? _tl88738915_)
                                              ((lambda (_L8918_ _L8920_)
                                                 (let ((__tmp24619
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24606
                                                        (let ((__tmp24615
                                                               (let ((__tmp24618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp24616
                              (let ((__tmp24617
                                     (let ()
                                       (declare (not safe))
                                       (cons _L8918_ '()))))
                                (declare (not safe))
                                (cons _L8920_ __tmp24617))))
                         (declare (not safe))
                         (cons __tmp24618 __tmp24616)))
                      (__tmp24607
                       (let ((__tmp24611
                              (let ((__tmp24614 (gx#datum->syntax '#f '%#set!))
                                    (__tmp24612
                                     (let ((__tmp24613
                                            (let ()
                                              (declare (not safe))
                                              (cons _L8920_ '()))))
                                       (declare (not safe))
                                       (cons _L8920_ __tmp24613))))
                                (declare (not safe))
                                (cons __tmp24614 __tmp24612)))
                             (__tmp24608
                              (let ((__tmp24609
                                     (let ((__tmp24610
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp24610 '()))))
                                (declare (not safe))
                                (cons __tmp24609 '()))))
                         (declare (not safe))
                         (cons __tmp24611 __tmp24608))))
                  (declare (not safe))
                  (cons __tmp24615 __tmp24607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24619
                                                         __tmp24606)))
                                               _hd88748912_
                                               _hd88718902_)
                                              (_g88638881_ _g88648885_))))
                                      (_g88638881_ _g88648885_))))
                              (_g88638881_ _g88648885_))))
                      (_g88638881_ _g88648885_)))))
          (_g88628936_ _$stx8859_))))))
