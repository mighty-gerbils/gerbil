(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24499_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24500_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24578_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defrules|
      (lambda (_$stx5695_)
        (let* ((_g56995727_
                (lambda (_g57005723_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g57005723_)))
               (_g56985828_
                (lambda (_g57005731_)
                  (if (gx#stx-pair? _g57005731_)
                      (let ((_e57065734_ (gx#syntax-e _g57005731_)))
                        (let ((_hd57055738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57065734_)))
                              (_tl57045741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57065734_))))
                          (if (gx#stx-pair? _tl57045741_)
                              (let ((_e57095744_ (gx#syntax-e _tl57045741_)))
                                (let ((_hd57085748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57095744_)))
                                      (_tl57075751_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57095744_))))
                                  (if (gx#stx-pair? _tl57075751_)
                                      (let ((_e57125754_
                                             (gx#syntax-e _tl57075751_)))
                                        (let ((_hd57115758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57125754_)))
                                              (_tl57105761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57125754_))))
                                          (if (gx#stx-pair/null? _tl57105761_)
                                              (let ((_g24418_
                                                     (gx#syntax-split-splice
                                                      _tl57105761_
                                                      '0)))
                                                (begin
                                                  (let ((_g24419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g24418_)
                                                               (##vector-length
                                                                _g24418_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g24419_ 2)))
                (error "Context expects 2 values" _g24419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target57135764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24418_
                                                            0)))
                                                        (_tl57155767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24418_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl57155767_)
                                                        (letrec ((_loop57165770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd57145774_ _clauses57205777_)
                            (if (gx#stx-pair? _hd57145774_)
                                (let ((_e57175780_ (gx#syntax-e _hd57145774_)))
                                  (let ((_lp-hd57185784_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e57175780_)))
                                        (_lp-tl57195787_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e57175780_))))
                                    (_loop57165770_
                                     _lp-tl57195787_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd57185784_
                                             _clauses57205777_)))))
                                (let ((_clauses57215790_
                                       (reverse _clauses57205777_)))
                                  ((lambda (_L5794_ _L5796_ _L5797_)
                                     (if (gx#identifier? _L5797_)
                                         (let ((__tmp24426
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp24420
                                                (let ((__tmp24421
                                                       (let ((__tmp24422
                                                              (let ((__tmp24425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp24423
                             (let ((__tmp24424
                                    (foldr (lambda (_g58195822_ _g58205825_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g58195822_ _g58205825_)))
                                           '()
                                           _L5794_)))
                               (declare (not safe))
                               (cons _L5796_ __tmp24424))))
                        (declare (not safe))
                        (cons __tmp24425 __tmp24423))))
                 (declare (not safe))
                 (cons __tmp24422 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L5797_ __tmp24421))))
                                           (declare (not safe))
                                           (cons __tmp24426 __tmp24420))
                                         (_g56995727_ _g57005731_)))
                                   _clauses57215790_
                                   _hd57115758_
                                   _hd57085748_))))))
                  (_loop57165770_ _target57135764_ '()))
                (_g56995727_ _g57005731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g56995727_ _g57005731_))))
                                      (_g56995727_ _g57005731_))))
                              (_g56995727_ _g57005731_))))
                      (_g56995727_ _g57005731_)))))
          (_g56985828_ _$stx5695_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx5833_)
        (let* ((___stx2206722068_ _$stx5833_)
               (_g58385877_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2206722068_))))
          (let ((___kont2207022071_
                 (lambda (_L5999_ _L6001_ _L6002_)
                   (let ((__tmp24433 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24427
                          (let ((__tmp24428
                                 (let ((__tmp24429
                                        (let ((__tmp24432
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24430
                                               (let ((__tmp24431
                                                      (foldr (lambda (_g60216024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g60226027_)
                       (let ()
                         (declare (not safe))
                         (cons _g60216024_ _g60226027_)))
                     '()
                     _L5999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6001_ __tmp24431))))
                                          (declare (not safe))
                                          (cons __tmp24432 __tmp24430))))
                                   (declare (not safe))
                                   (cons __tmp24429 '()))))
                            (declare (not safe))
                            (cons _L6002_ __tmp24428))))
                     (declare (not safe))
                     (cons __tmp24433 __tmp24427))))
                (___kont2207422075_
                 (lambda (_L5914_ _L5916_)
                   (let ((__tmp24436 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24434
                          (let ((__tmp24435
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5914_ '()))))
                            (declare (not safe))
                            (cons _L5916_ __tmp24435))))
                     (declare (not safe))
                     (cons __tmp24436 __tmp24434)))))
            (let* ((___match2212222123_
                    (lambda (_e58655884_
                             _hd58645888_
                             _tl58635891_
                             _e58685894_
                             _hd58675898_
                             _tl58665901_
                             _e58715904_
                             _hd58705908_
                             _tl58695911_)
                      (let ((_L5914_ _hd58705908_) (_L5916_ _hd58675898_))
                        (if (gx#identifier? _L5916_)
                            (___kont2207422075_ _L5914_ _L5916_)
                            (let () (declare (not safe)) (_g58385877_))))))
                   (___match2211422115_
                    (lambda (_e58655884_
                             _hd58645888_
                             _tl58635891_
                             _e58685894_
                             _hd58675898_
                             _tl58665901_)
                      (if (gx#stx-pair? _tl58665901_)
                          (let ((_e58715904_ (gx#syntax-e _tl58665901_)))
                            (let ((_tl58695911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58715904_)))
                                  (_hd58705908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58715904_))))
                              (if (gx#stx-null? _tl58695911_)
                                  (___match2212222123_
                                   _e58655884_
                                   _hd58645888_
                                   _tl58635891_
                                   _e58685894_
                                   _hd58675898_
                                   _tl58665901_
                                   _e58715904_
                                   _hd58705908_
                                   _tl58695911_)
                                  (let ()
                                    (declare (not safe))
                                    (_g58385877_)))))
                          (let () (declare (not safe)) (_g58385877_)))))
                   (___match2210222103_
                    (lambda (_e58455939_
                             _hd58445943_
                             _tl58435946_
                             _e58485949_
                             _hd58475953_
                             _tl58465956_
                             _e58515959_
                             _hd58505963_
                             _tl58495966_
                             ___splice2207222073_
                             _target58525969_
                             _tl58545972_)
                      (letrec ((_loop58555975_
                                (lambda (_hd58535979_ _body58595982_)
                                  (if (gx#stx-pair? _hd58535979_)
                                      (let ((_e58565985_
                                             (gx#syntax-e _hd58535979_)))
                                        (let ((_lp-tl58585992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58565985_)))
                                              (_lp-hd58575989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58565985_))))
                                          (_loop58555975_
                                           _lp-tl58585992_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd58575989_
                                                   _body58595982_)))))
                                      (let ((_body58605995_
                                             (reverse _body58595982_)))
                                        (let ((_L5999_ _body58605995_)
                                              (_L6001_ _tl58495966_)
                                              (_L6002_ _hd58505963_))
                                          (if (gx#identifier? _L6002_)
                                              (___kont2207022071_
                                               _L5999_
                                               _L6001_
                                               _L6002_)
                                              (___match2211422115_
                                               _e58455939_
                                               _hd58445943_
                                               _tl58435946_
                                               _e58485949_
                                               _hd58475953_
                                               _tl58465956_))))))))
                        (_loop58555975_ _target58525969_ '())))))
              (if (gx#stx-pair? ___stx2206722068_)
                  (let ((_e58455939_ (gx#syntax-e ___stx2206722068_)))
                    (let ((_tl58435946_
                           (let () (declare (not safe)) (##cdr _e58455939_)))
                          (_hd58445943_
                           (let () (declare (not safe)) (##car _e58455939_))))
                      (if (gx#stx-pair? _tl58435946_)
                          (let ((_e58485949_ (gx#syntax-e _tl58435946_)))
                            (let ((_tl58465956_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58485949_)))
                                  (_hd58475953_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58485949_))))
                              (if (gx#stx-pair? _hd58475953_)
                                  (let ((_e58515959_
                                         (gx#syntax-e _hd58475953_)))
                                    (let ((_tl58495966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e58515959_)))
                                          (_hd58505963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e58515959_))))
                                      (if (gx#stx-pair/null? _tl58465956_)
                                          (let ((___splice2207222073_
                                                 (gx#syntax-split-splice
                                                  _tl58465956_
                                                  '0)))
                                            (let ((_tl58545972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207222073_
                                                      '1)))
                                                  (_target58525969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207222073_
                                                      '0))))
                                              (if (gx#stx-null? _tl58545972_)
                                                  (___match2210222103_
                                                   _e58455939_
                                                   _hd58445943_
                                                   _tl58435946_
                                                   _e58485949_
                                                   _hd58475953_
                                                   _tl58465956_
                                                   _e58515959_
                                                   _hd58505963_
                                                   _tl58495966_
                                                   ___splice2207222073_
                                                   _target58525969_
                                                   _tl58545972_)
                                                  (if (gx#stx-pair?
                                                       _tl58465956_)
                                                      (let ((_e58715904_
                                                             (gx#syntax-e
                                                              _tl58465956_)))
                                                        (let ((_tl58695911_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e58715904_)))
                      (_hd58705908_
                       (let () (declare (not safe)) (##car _e58715904_))))
                  (if (gx#stx-null? _tl58695911_)
                      (___match2212222123_
                       _e58455939_
                       _hd58445943_
                       _tl58435946_
                       _e58485949_
                       _hd58475953_
                       _tl58465956_
                       _e58715904_
                       _hd58705908_
                       _tl58695911_)
                      (let () (declare (not safe)) (_g58385877_)))))
              (let () (declare (not safe)) (_g58385877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl58465956_)
                                              (let ((_e58715904_
                                                     (gx#syntax-e
                                                      _tl58465956_)))
                                                (let ((_tl58695911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58715904_)))
                                                      (_hd58705908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58715904_))))
                                                  (if (gx#stx-null?
                                                       _tl58695911_)
                                                      (___match2212222123_
                                                       _e58455939_
                                                       _hd58445943_
                                                       _tl58435946_
                                                       _e58485949_
                                                       _hd58475953_
                                                       _tl58465956_
                                                       _e58715904_
                                                       _hd58705908_
                                                       _tl58695911_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g58385877_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g58385877_))))))
                                  (if (gx#stx-pair? _tl58465956_)
                                      (let ((_e58715904_
                                             (gx#syntax-e _tl58465956_)))
                                        (let ((_tl58695911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58715904_)))
                                              (_hd58705908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58715904_))))
                                          (if (gx#stx-null? _tl58695911_)
                                              (___match2212222123_
                                               _e58455939_
                                               _hd58445943_
                                               _tl58435946_
                                               _e58485949_
                                               _hd58475953_
                                               _tl58465956_
                                               _e58715904_
                                               _hd58705908_
                                               _tl58695911_)
                                              (let ()
                                                (declare (not safe))
                                                (_g58385877_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g58385877_))))))
                          (let () (declare (not safe)) (_g58385877_)))))
                  (let () (declare (not safe)) (_g58385877_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#define|
      (lambda (_$stx6035_)
        (let* ((___stx2212522126_ _$stx6035_)
               (_g60406079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2212522126_))))
          (let ((___kont2212822129_
                 (lambda (_L6201_ _L6203_ _L6204_)
                   (let ((__tmp24444 (gx#datum->syntax '#f 'define-values))
                         (__tmp24437
                          (let ((__tmp24443
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6204_ '())))
                                (__tmp24438
                                 (let ((__tmp24439
                                        (let ((__tmp24442
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24440
                                               (let ((__tmp24441
                                                      (foldr (lambda (_g62236226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g62246229_)
                       (let ()
                         (declare (not safe))
                         (cons _g62236226_ _g62246229_)))
                     '()
                     _L6201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6203_ __tmp24441))))
                                          (declare (not safe))
                                          (cons __tmp24442 __tmp24440))))
                                   (declare (not safe))
                                   (cons __tmp24439 '()))))
                            (declare (not safe))
                            (cons __tmp24443 __tmp24438))))
                     (declare (not safe))
                     (cons __tmp24444 __tmp24437))))
                (___kont2213222133_
                 (lambda (_L6116_ _L6118_)
                   (let ((__tmp24448 (gx#datum->syntax '#f 'define-values))
                         (__tmp24445
                          (let ((__tmp24447
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6118_ '())))
                                (__tmp24446
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6116_ '()))))
                            (declare (not safe))
                            (cons __tmp24447 __tmp24446))))
                     (declare (not safe))
                     (cons __tmp24448 __tmp24445)))))
            (let* ((___match2218022181_
                    (lambda (_e60676086_
                             _hd60666090_
                             _tl60656093_
                             _e60706096_
                             _hd60696100_
                             _tl60686103_
                             _e60736106_
                             _hd60726110_
                             _tl60716113_)
                      (let ((_L6116_ _hd60726110_) (_L6118_ _hd60696100_))
                        (if (gx#identifier? _L6118_)
                            (___kont2213222133_ _L6116_ _L6118_)
                            (let () (declare (not safe)) (_g60406079_))))))
                   (___match2217222173_
                    (lambda (_e60676086_
                             _hd60666090_
                             _tl60656093_
                             _e60706096_
                             _hd60696100_
                             _tl60686103_)
                      (if (gx#stx-pair? _tl60686103_)
                          (let ((_e60736106_ (gx#syntax-e _tl60686103_)))
                            (let ((_tl60716113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60736106_)))
                                  (_hd60726110_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60736106_))))
                              (if (gx#stx-null? _tl60716113_)
                                  (___match2218022181_
                                   _e60676086_
                                   _hd60666090_
                                   _tl60656093_
                                   _e60706096_
                                   _hd60696100_
                                   _tl60686103_
                                   _e60736106_
                                   _hd60726110_
                                   _tl60716113_)
                                  (let ()
                                    (declare (not safe))
                                    (_g60406079_)))))
                          (let () (declare (not safe)) (_g60406079_)))))
                   (___match2216022161_
                    (lambda (_e60476141_
                             _hd60466145_
                             _tl60456148_
                             _e60506151_
                             _hd60496155_
                             _tl60486158_
                             _e60536161_
                             _hd60526165_
                             _tl60516168_
                             ___splice2213022131_
                             _target60546171_
                             _tl60566174_)
                      (letrec ((_loop60576177_
                                (lambda (_hd60556181_ _body60616184_)
                                  (if (gx#stx-pair? _hd60556181_)
                                      (let ((_e60586187_
                                             (gx#syntax-e _hd60556181_)))
                                        (let ((_lp-tl60606194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60586187_)))
                                              (_lp-hd60596191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60586187_))))
                                          (_loop60576177_
                                           _lp-tl60606194_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd60596191_
                                                   _body60616184_)))))
                                      (let ((_body60626197_
                                             (reverse _body60616184_)))
                                        (let ((_L6201_ _body60626197_)
                                              (_L6203_ _tl60516168_)
                                              (_L6204_ _hd60526165_))
                                          (if (gx#identifier? _L6204_)
                                              (___kont2212822129_
                                               _L6201_
                                               _L6203_
                                               _L6204_)
                                              (___match2217222173_
                                               _e60476141_
                                               _hd60466145_
                                               _tl60456148_
                                               _e60506151_
                                               _hd60496155_
                                               _tl60486158_))))))))
                        (_loop60576177_ _target60546171_ '())))))
              (if (gx#stx-pair? ___stx2212522126_)
                  (let ((_e60476141_ (gx#syntax-e ___stx2212522126_)))
                    (let ((_tl60456148_
                           (let () (declare (not safe)) (##cdr _e60476141_)))
                          (_hd60466145_
                           (let () (declare (not safe)) (##car _e60476141_))))
                      (if (gx#stx-pair? _tl60456148_)
                          (let ((_e60506151_ (gx#syntax-e _tl60456148_)))
                            (let ((_tl60486158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60506151_)))
                                  (_hd60496155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60506151_))))
                              (if (gx#stx-pair? _hd60496155_)
                                  (let ((_e60536161_
                                         (gx#syntax-e _hd60496155_)))
                                    (let ((_tl60516168_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60536161_)))
                                          (_hd60526165_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60536161_))))
                                      (if (gx#stx-pair/null? _tl60486158_)
                                          (let ((___splice2213022131_
                                                 (gx#syntax-split-splice
                                                  _tl60486158_
                                                  '0)))
                                            (let ((_tl60566174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2213022131_
                                                      '1)))
                                                  (_target60546171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2213022131_
                                                      '0))))
                                              (if (gx#stx-null? _tl60566174_)
                                                  (___match2216022161_
                                                   _e60476141_
                                                   _hd60466145_
                                                   _tl60456148_
                                                   _e60506151_
                                                   _hd60496155_
                                                   _tl60486158_
                                                   _e60536161_
                                                   _hd60526165_
                                                   _tl60516168_
                                                   ___splice2213022131_
                                                   _target60546171_
                                                   _tl60566174_)
                                                  (if (gx#stx-pair?
                                                       _tl60486158_)
                                                      (let ((_e60736106_
                                                             (gx#syntax-e
                                                              _tl60486158_)))
                                                        (let ((_tl60716113_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e60736106_)))
                      (_hd60726110_
                       (let () (declare (not safe)) (##car _e60736106_))))
                  (if (gx#stx-null? _tl60716113_)
                      (___match2218022181_
                       _e60476141_
                       _hd60466145_
                       _tl60456148_
                       _e60506151_
                       _hd60496155_
                       _tl60486158_
                       _e60736106_
                       _hd60726110_
                       _tl60716113_)
                      (let () (declare (not safe)) (_g60406079_)))))
              (let () (declare (not safe)) (_g60406079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl60486158_)
                                              (let ((_e60736106_
                                                     (gx#syntax-e
                                                      _tl60486158_)))
                                                (let ((_tl60716113_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60736106_)))
                                                      (_hd60726110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60736106_))))
                                                  (if (gx#stx-null?
                                                       _tl60716113_)
                                                      (___match2218022181_
                                                       _e60476141_
                                                       _hd60466145_
                                                       _tl60456148_
                                                       _e60506151_
                                                       _hd60496155_
                                                       _tl60486158_
                                                       _e60736106_
                                                       _hd60726110_
                                                       _tl60716113_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g60406079_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g60406079_))))))
                                  (if (gx#stx-pair? _tl60486158_)
                                      (let ((_e60736106_
                                             (gx#syntax-e _tl60486158_)))
                                        (let ((_tl60716113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60736106_)))
                                              (_hd60726110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60736106_))))
                                          (if (gx#stx-null? _tl60716113_)
                                              (___match2218022181_
                                               _e60476141_
                                               _hd60466145_
                                               _tl60456148_
                                               _e60506151_
                                               _hd60496155_
                                               _tl60486158_
                                               _e60736106_
                                               _hd60726110_
                                               _tl60716113_)
                                              (let ()
                                                (declare (not safe))
                                                (_g60406079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60406079_))))))
                          (let () (declare (not safe)) (_g60406079_)))))
                  (let () (declare (not safe)) (_g60406079_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx6237_)
        (let* ((___stx2218322184_ _$stx6237_)
               (_g62426287_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2218322184_))))
          (let ((___kont2218622187_
                 (lambda (_L6445_)
                   (let ((__tmp24451 (gx#datum->syntax '#f 'let-values))
                         (__tmp24449
                          (let ((__tmp24450
                                 (foldr (lambda (_g64616464_ _g64626467_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g64616464_ _g64626467_)))
                                        '()
                                        _L6445_)))
                            (declare (not safe))
                            (cons '() __tmp24450))))
                     (declare (not safe))
                     (cons __tmp24451 __tmp24449))))
                (___kont2219022191_
                 (lambda (_L6354_ _L6356_ _L6357_ _L6358_)
                   (let ((__tmp24458 (gx#datum->syntax '#f 'let-values))
                         (__tmp24452
                          (let ((__tmp24457
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6357_ '())))
                                (__tmp24453
                                 (let ((__tmp24454
                                        (let ((__tmp24455
                                               (let ((__tmp24456
                                                      (foldr (lambda (_g63796382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g63806385_)
                       (let ()
                         (declare (not safe))
                         (cons _g63796382_ _g63806385_)))
                     '()
                     _L6354_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6356_ __tmp24456))))
                                          (declare (not safe))
                                          (cons _L6358_ __tmp24455))))
                                   (declare (not safe))
                                   (cons __tmp24454 '()))))
                            (declare (not safe))
                            (cons __tmp24457 __tmp24453))))
                     (declare (not safe))
                     (cons __tmp24458 __tmp24452)))))
            (let* ((___match2224222243_
                    (lambda (_e62666294_
                             _hd62656298_
                             _tl62646301_
                             _e62696304_
                             _hd62686308_
                             _tl62676311_
                             _e62726314_
                             _hd62716318_
                             _tl62706321_
                             ___splice2219222193_
                             _target62736324_
                             _tl62756327_)
                      (letrec ((_loop62766330_
                                (lambda (_hd62746334_ _body62806337_)
                                  (if (gx#stx-pair? _hd62746334_)
                                      (let ((_e62776340_
                                             (gx#syntax-e _hd62746334_)))
                                        (let ((_lp-tl62796347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62776340_)))
                                              (_lp-hd62786344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62776340_))))
                                          (_loop62766330_
                                           _lp-tl62796347_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62786344_
                                                   _body62806337_)))))
                                      (let ((_body62816350_
                                             (reverse _body62806337_)))
                                        (___kont2219022191_
                                         _body62816350_
                                         _tl62706321_
                                         _hd62716318_
                                         _hd62656298_))))))
                        (_loop62766330_ _target62736324_ '()))))
                   (___match2221622217_
                    (lambda (_e62476395_
                             _hd62466399_
                             _tl62456402_
                             _e62506405_
                             _hd62496409_
                             _tl62486412_
                             ___splice2218822189_
                             _target62516415_
                             _tl62536418_)
                      (letrec ((_loop62546421_
                                (lambda (_hd62526425_ _body62586428_)
                                  (if (gx#stx-pair? _hd62526425_)
                                      (let ((_e62556431_
                                             (gx#syntax-e _hd62526425_)))
                                        (let ((_lp-tl62576438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62556431_)))
                                              (_lp-hd62566435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62556431_))))
                                          (_loop62546421_
                                           _lp-tl62576438_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62566435_
                                                   _body62586428_)))))
                                      (let ((_body62596441_
                                             (reverse _body62586428_)))
                                        (___kont2218622187_
                                         _body62596441_))))))
                        (_loop62546421_ _target62516415_ '())))))
              (if (gx#stx-pair? ___stx2218322184_)
                  (let ((_e62476395_ (gx#syntax-e ___stx2218322184_)))
                    (let ((_tl62456402_
                           (let () (declare (not safe)) (##cdr _e62476395_)))
                          (_hd62466399_
                           (let () (declare (not safe)) (##car _e62476395_))))
                      (if (gx#stx-pair? _tl62456402_)
                          (let ((_e62506405_ (gx#syntax-e _tl62456402_)))
                            (let ((_tl62486412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62506405_)))
                                  (_hd62496409_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62506405_))))
                              (if (gx#stx-null? _hd62496409_)
                                  (if (gx#stx-pair/null? _tl62486412_)
                                      (let ((___splice2218822189_
                                             (gx#syntax-split-splice
                                              _tl62486412_
                                              '0)))
                                        (let ((_tl62536418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218822189_
                                                  '1)))
                                              (_target62516415_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218822189_
                                                  '0))))
                                          (if (gx#stx-null? _tl62536418_)
                                              (___match2221622217_
                                               _e62476395_
                                               _hd62466399_
                                               _tl62456402_
                                               _e62506405_
                                               _hd62496409_
                                               _tl62486412_
                                               ___splice2218822189_
                                               _target62516415_
                                               _tl62536418_)
                                              (let ()
                                                (declare (not safe))
                                                (_g62426287_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62426287_)))
                                  (if (gx#stx-pair? _hd62496409_)
                                      (let ((_e62726314_
                                             (gx#syntax-e _hd62496409_)))
                                        (let ((_tl62706321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62726314_)))
                                              (_hd62716318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62726314_))))
                                          (if (gx#stx-pair/null? _tl62486412_)
                                              (let ((___splice2219222193_
                                                     (gx#syntax-split-splice
                                                      _tl62486412_
                                                      '0)))
                                                (let ((_tl62756327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219222193_
                                                          '1)))
                                                      (_target62736324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219222193_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl62756327_)
                                                      (___match2224222243_
                                                       _e62476395_
                                                       _hd62466399_
                                                       _tl62456402_
                                                       _e62506405_
                                                       _hd62496409_
                                                       _tl62486412_
                                                       _e62726314_
                                                       _hd62716318_
                                                       _tl62706321_
                                                       ___splice2219222193_
                                                       _target62736324_
                                                       _tl62756327_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g62426287_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g62426287_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62426287_))))))
                          (let () (declare (not safe)) (_g62426287_)))))
                  (let () (declare (not safe)) (_g62426287_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let|
      (lambda (_$stx6476_)
        (let* ((___stx2224522246_ _$stx6476_)
               (_g64816545_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2224522246_))))
          (let ((___kont2224822249_
                 (lambda (_L6751_ _L6753_ _L6754_ _L6755_ _L6756_)
                   (let ((__tmp24460
                          (let ((__tmp24472
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp24461
                                 (let ((__tmp24463
                                        (let ((__tmp24464
                                               (let ((__tmp24471
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L6756_ '())))
                                                     (__tmp24465
                                                      (let ((__tmp24466
                                                             (let ((__tmp24470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp24467
                            (let ((__tmp24469
                                   (foldr (lambda (_g67856788_ _g67866791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67856788_ _g67866791_)))
                                          _L6753_
                                          _L6755_))
                                  (__tmp24468
                                   (foldr (lambda (_g67836794_ _g67846797_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67836794_ _g67846797_)))
                                          '()
                                          _L6751_)))
                              (declare (not safe))
                              (cons __tmp24469 __tmp24468))))
                       (declare (not safe))
                       (cons __tmp24470 __tmp24467))))
                (declare (not safe))
                (cons __tmp24466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24471
                                                       __tmp24465))))
                                          (declare (not safe))
                                          (cons __tmp24464 '())))
                                       (__tmp24462
                                        (let ()
                                          (declare (not safe))
                                          (cons _L6756_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24463 __tmp24462))))
                            (declare (not safe))
                            (cons __tmp24472 __tmp24461)))
                         (__tmp24459
                          (foldr (lambda (_g67816800_ _g67826803_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g67816800_ _g67826803_)))
                                 '()
                                 _L6754_)))
                     (declare (not safe))
                     (cons __tmp24460 __tmp24459))))
                (___kont2225422255_
                 (lambda (_L6602_ _L6604_)
                   (let ((__tmp24477 (gx#datum->syntax '#f '~let))
                         (__tmp24473
                          (let ((__tmp24476 (gx#datum->syntax '#f 'let-values))
                                (__tmp24474
                                 (let ((__tmp24475
                                        (foldr (lambda (_g66216624_
                                                        _g66226627_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g66216624_
                                                         _g66226627_)))
                                               '()
                                               _L6602_)))
                                   (declare (not safe))
                                   (cons _L6604_ __tmp24475))))
                            (declare (not safe))
                            (cons __tmp24476 __tmp24474))))
                     (declare (not safe))
                     (cons __tmp24477 __tmp24473)))))
            (let* ((___match2230222303_
                    (lambda (_e65276552_
                             _hd65266556_
                             _tl65256559_
                             _e65306562_
                             _hd65296566_
                             _tl65286569_
                             ___splice2225622257_
                             _target65316572_
                             _tl65336575_)
                      (letrec ((_loop65346578_
                                (lambda (_hd65326582_ _body65386585_)
                                  (if (gx#stx-pair? _hd65326582_)
                                      (let ((_e65356588_
                                             (gx#syntax-e _hd65326582_)))
                                        (let ((_lp-tl65376595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65356588_)))
                                              (_lp-hd65366592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65356588_))))
                                          (_loop65346578_
                                           _lp-tl65376595_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd65366592_
                                                   _body65386585_)))))
                                      (let ((_body65396598_
                                             (reverse _body65386585_)))
                                        (___kont2225422255_
                                         _body65396598_
                                         _hd65296566_))))))
                        (_loop65346578_ _target65316572_ '()))))
                   (___match2229422295_
                    (lambda (_e65276552_
                             _hd65266556_
                             _tl65256559_
                             _e65306562_
                             _hd65296566_
                             _tl65286569_)
                      (if (gx#stx-pair/null? _tl65286569_)
                          (let ((___splice2225622257_
                                 (gx#syntax-split-splice _tl65286569_ '0)))
                            (let ((_tl65336575_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225622257_ '1)))
                                  (_target65316572_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225622257_ '0))))
                              (if (gx#stx-null? _tl65336575_)
                                  (___match2230222303_
                                   _e65276552_
                                   _hd65266556_
                                   _tl65256559_
                                   _e65306562_
                                   _hd65296566_
                                   _tl65286569_
                                   ___splice2225622257_
                                   _target65316572_
                                   _tl65336575_)
                                  (let ()
                                    (declare (not safe))
                                    (_g64816545_)))))
                          (let () (declare (not safe)) (_g64816545_)))))
                   (___match2228222283_
                    (lambda (_e64906637_
                             _hd64896641_
                             _tl64886644_
                             _e64936647_
                             _hd64926651_
                             _tl64916654_
                             _e64966657_
                             _hd64956661_
                             _tl64946664_
                             ___splice2225022251_
                             _target64976667_
                             _tl64996670_)
                      (letrec ((_loop65006673_
                                (lambda (_hd64986677_
                                         _arg65046680_
                                         _var65056682_)
                                  (if (gx#stx-pair? _hd64986677_)
                                      (let ((_e65016685_
                                             (gx#syntax-e _hd64986677_)))
                                        (let ((_lp-tl65036692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65016685_)))
                                              (_lp-hd65026689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65016685_))))
                                          (if (gx#stx-pair? _lp-hd65026689_)
                                              (let ((_e65106695_
                                                     (gx#syntax-e
                                                      _lp-hd65026689_)))
                                                (let ((_tl65086702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e65106695_)))
                                                      (_hd65096699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e65106695_))))
                                                  (if (gx#stx-pair?
                                                       _tl65086702_)
                                                      (let ((_e65136705_
                                                             (gx#syntax-e
                                                              _tl65086702_)))
                                                        (let ((_tl65116712_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e65136705_)))
                      (_hd65126709_
                       (let () (declare (not safe)) (##car _e65136705_))))
                  (if (gx#stx-null? _tl65116712_)
                      (_loop65006673_
                       _lp-tl65036692_
                       (let ()
                         (declare (not safe))
                         (cons _hd65126709_ _arg65046680_))
                       (let ()
                         (declare (not safe))
                         (cons _hd65096699_ _var65056682_)))
                      (___match2229422295_
                       _e64906637_
                       _hd64896641_
                       _tl64886644_
                       _e64936647_
                       _hd64926651_
                       _tl64916654_))))
              (___match2229422295_
               _e64906637_
               _hd64896641_
               _tl64886644_
               _e64936647_
               _hd64926651_
               _tl64916654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2229422295_
                                               _e64906637_
                                               _hd64896641_
                                               _tl64886644_
                                               _e64936647_
                                               _hd64926651_
                                               _tl64916654_))))
                                      (let ((_var65076718_
                                             (reverse _var65056682_))
                                            (_arg65066715_
                                             (reverse _arg65046680_)))
                                        (if (gx#stx-pair/null? _tl64946664_)
                                            (let ((___splice2225222253_
                                                   (gx#syntax-split-splice
                                                    _tl64946664_
                                                    '0)))
                                              (let ((_tl65166724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225222253_
                                                        '1)))
                                                    (_target65146721_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225222253_
                                                        '0))))
                                                (if (gx#stx-null? _tl65166724_)
                                                    (letrec ((_loop65176727_
                                                              (lambda (_hd65156731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body65216734_)
                        (if (gx#stx-pair? _hd65156731_)
                            (let ((_e65186737_ (gx#syntax-e _hd65156731_)))
                              (let ((_lp-tl65206744_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65186737_)))
                                    (_lp-hd65196741_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65186737_))))
                                (_loop65176727_
                                 _lp-tl65206744_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd65196741_ _body65216734_)))))
                            (let ((_body65226747_ (reverse _body65216734_)))
                              (let ((_L6751_ _body65226747_)
                                    (_L6753_ _tl64996670_)
                                    (_L6754_ _arg65066715_)
                                    (_L6755_ _var65076718_)
                                    (_L6756_ _hd64926651_))
                                (if (gx#identifier? _L6756_)
                                    (___kont2224822249_
                                     _L6751_
                                     _L6753_
                                     _L6754_
                                     _L6755_
                                     _L6756_)
                                    (___match2229422295_
                                     _e64906637_
                                     _hd64896641_
                                     _tl64886644_
                                     _e64936647_
                                     _hd64926651_
                                     _tl64916654_))))))))
              (_loop65176727_ _target65146721_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2229422295_
                                                     _e64906637_
                                                     _hd64896641_
                                                     _tl64886644_
                                                     _e64936647_
                                                     _hd64926651_
                                                     _tl64916654_))))
                                            (___match2229422295_
                                             _e64906637_
                                             _hd64896641_
                                             _tl64886644_
                                             _e64936647_
                                             _hd64926651_
                                             _tl64916654_)))))))
                        (_loop65006673_ _target64976667_ '() '())))))
              (if (gx#stx-pair? ___stx2224522246_)
                  (let ((_e64906637_ (gx#syntax-e ___stx2224522246_)))
                    (let ((_tl64886644_
                           (let () (declare (not safe)) (##cdr _e64906637_)))
                          (_hd64896641_
                           (let () (declare (not safe)) (##car _e64906637_))))
                      (if (gx#stx-pair? _tl64886644_)
                          (let ((_e64936647_ (gx#syntax-e _tl64886644_)))
                            (let ((_tl64916654_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e64936647_)))
                                  (_hd64926651_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e64936647_))))
                              (if (gx#stx-pair? _tl64916654_)
                                  (let ((_e64966657_
                                         (gx#syntax-e _tl64916654_)))
                                    (let ((_tl64946664_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e64966657_)))
                                          (_hd64956661_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e64966657_))))
                                      (if (gx#stx-pair/null? _hd64956661_)
                                          (let ((___splice2225022251_
                                                 (gx#syntax-split-splice
                                                  _hd64956661_
                                                  '0)))
                                            (let ((_tl64996670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2225022251_
                                                      '1)))
                                                  (_target64976667_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2225022251_
                                                      '0))))
                                              (___match2228222283_
                                               _e64906637_
                                               _hd64896641_
                                               _tl64886644_
                                               _e64936647_
                                               _hd64926651_
                                               _tl64916654_
                                               _e64966657_
                                               _hd64956661_
                                               _tl64946664_
                                               ___splice2225022251_
                                               _target64976667_
                                               _tl64996670_)))
                                          (if (gx#stx-pair/null? _tl64916654_)
                                              (let ((___splice2225622257_
                                                     (gx#syntax-split-splice
                                                      _tl64916654_
                                                      '0)))
                                                (let ((_tl65336575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225622257_
                                                          '1)))
                                                      (_target65316572_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225622257_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl65336575_)
                                                      (___match2230222303_
                                                       _e64906637_
                                                       _hd64896641_
                                                       _tl64886644_
                                                       _e64936647_
                                                       _hd64926651_
                                                       _tl64916654_
                                                       ___splice2225622257_
                                                       _target65316572_
                                                       _tl65336575_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g64816545_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g64816545_))))))
                                  (if (gx#stx-pair/null? _tl64916654_)
                                      (let ((___splice2225622257_
                                             (gx#syntax-split-splice
                                              _tl64916654_
                                              '0)))
                                        (let ((_tl65336575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225622257_
                                                  '1)))
                                              (_target65316572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225622257_
                                                  '0))))
                                          (if (gx#stx-null? _tl65336575_)
                                              (___match2230222303_
                                               _e64906637_
                                               _hd64896641_
                                               _tl64886644_
                                               _e64936647_
                                               _hd64926651_
                                               _tl64916654_
                                               ___splice2225622257_
                                               _target65316572_
                                               _tl65336575_)
                                              (let ()
                                                (declare (not safe))
                                                (_g64816545_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g64816545_))))))
                          (let () (declare (not safe)) (_g64816545_)))))
                  (let () (declare (not safe)) (_g64816545_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*|
      (lambda (_$stx6813_)
        (let* ((_g68176841_
                (lambda (_g68186837_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g68186837_)))
               (_g68166926_
                (lambda (_g68186845_)
                  (if (gx#stx-pair? _g68186845_)
                      (let ((_e68236848_ (gx#syntax-e _g68186845_)))
                        (let ((_hd68226852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68236848_)))
                              (_tl68216855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68236848_))))
                          (if (gx#stx-pair? _tl68216855_)
                              (let ((_e68266858_ (gx#syntax-e _tl68216855_)))
                                (let ((_hd68256862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68266858_)))
                                      (_tl68246865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68266858_))))
                                  (if (gx#stx-pair/null? _tl68246865_)
                                      (let ((_g24478_
                                             (gx#syntax-split-splice
                                              _tl68246865_
                                              '0)))
                                        (begin
                                          (let ((_g24479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24478_)
                                                       (##vector-length
                                                        _g24478_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24479_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24479_)))
                                          (let ((_target68276868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24478_ 0)))
                                                (_tl68296871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24478_ 1))))
                                            (if (gx#stx-null? _tl68296871_)
                                                (letrec ((_loop68306874_
                                                          (lambda (_hd68286878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body68346881_)
                    (if (gx#stx-pair? _hd68286878_)
                        (let ((_e68316884_ (gx#syntax-e _hd68286878_)))
                          (let ((_lp-hd68326888_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68316884_)))
                                (_lp-tl68336891_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68316884_))))
                            (_loop68306874_
                             _lp-tl68336891_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd68326888_ _body68346881_)))))
                        (let ((_body68356894_ (reverse _body68346881_)))
                          ((lambda (_L6898_ _L6900_)
                             (let ((__tmp24484 (gx#datum->syntax '#f '~let))
                                   (__tmp24480
                                    (let ((__tmp24483
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp24481
                                           (let ((__tmp24482
                                                  (foldr (lambda (_g69176920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g69186923_)
                   (let ()
                     (declare (not safe))
                     (cons _g69176920_ _g69186923_)))
                 '()
                 _L6898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L6900_ __tmp24482))))
                                      (declare (not safe))
                                      (cons __tmp24483 __tmp24481))))
                               (declare (not safe))
                               (cons __tmp24484 __tmp24480)))
                           _body68356894_
                           _hd68256862_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop68306874_
                                                   _target68276868_
                                                   '()))
                                                (_g68176841_ _g68186845_)))))
                                      (_g68176841_ _g68186845_))))
                              (_g68176841_ _g68186845_))))
                      (_g68176841_ _g68186845_)))))
          (_g68166926_ _$stx6813_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec|
      (lambda (_$stx6931_)
        (let* ((_g69356959_
                (lambda (_g69366955_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g69366955_)))
               (_g69347044_
                (lambda (_g69366963_)
                  (if (gx#stx-pair? _g69366963_)
                      (let ((_e69416966_ (gx#syntax-e _g69366963_)))
                        (let ((_hd69406970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69416966_)))
                              (_tl69396973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69416966_))))
                          (if (gx#stx-pair? _tl69396973_)
                              (let ((_e69446976_ (gx#syntax-e _tl69396973_)))
                                (let ((_hd69436980_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e69446976_)))
                                      (_tl69426983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e69446976_))))
                                  (if (gx#stx-pair/null? _tl69426983_)
                                      (let ((_g24485_
                                             (gx#syntax-split-splice
                                              _tl69426983_
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
                                          (let ((_target69456986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24485_ 0)))
                                                (_tl69476989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24485_ 1))))
                                            (if (gx#stx-null? _tl69476989_)
                                                (letrec ((_loop69486992_
                                                          (lambda (_hd69466996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body69526999_)
                    (if (gx#stx-pair? _hd69466996_)
                        (let ((_e69497002_ (gx#syntax-e _hd69466996_)))
                          (let ((_lp-hd69507006_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e69497002_)))
                                (_lp-tl69517009_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e69497002_))))
                            (_loop69486992_
                             _lp-tl69517009_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd69507006_ _body69526999_)))))
                        (let ((_body69537012_ (reverse _body69526999_)))
                          ((lambda (_L7016_ _L7018_)
                             (let ((__tmp24491 (gx#datum->syntax '#f '~let))
                                   (__tmp24487
                                    (let ((__tmp24490
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp24488
                                           (let ((__tmp24489
                                                  (foldr (lambda (_g70357038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g70367041_)
                   (let ()
                     (declare (not safe))
                     (cons _g70357038_ _g70367041_)))
                 '()
                 _L7016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7018_ __tmp24489))))
                                      (declare (not safe))
                                      (cons __tmp24490 __tmp24488))))
                               (declare (not safe))
                               (cons __tmp24491 __tmp24487)))
                           _body69537012_
                           _hd69436980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop69486992_
                                                   _target69456986_
                                                   '()))
                                                (_g69356959_ _g69366963_)))))
                                      (_g69356959_ _g69366963_))))
                              (_g69356959_ _g69366963_))))
                      (_g69356959_ _g69366963_)))))
          (_g69347044_ _$stx6931_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx7049_)
        (let* ((_g70537077_
                (lambda (_g70547073_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g70547073_)))
               (_g70527162_
                (lambda (_g70547081_)
                  (if (gx#stx-pair? _g70547081_)
                      (let ((_e70597084_ (gx#syntax-e _g70547081_)))
                        (let ((_hd70587088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e70597084_)))
                              (_tl70577091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e70597084_))))
                          (if (gx#stx-pair? _tl70577091_)
                              (let ((_e70627094_ (gx#syntax-e _tl70577091_)))
                                (let ((_hd70617098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e70627094_)))
                                      (_tl70607101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e70627094_))))
                                  (if (gx#stx-pair/null? _tl70607101_)
                                      (let ((_g24492_
                                             (gx#syntax-split-splice
                                              _tl70607101_
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
                                          (let ((_target70637104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24492_ 0)))
                                                (_tl70657107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24492_ 1))))
                                            (if (gx#stx-null? _tl70657107_)
                                                (letrec ((_loop70667110_
                                                          (lambda (_hd70647114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body70707117_)
                    (if (gx#stx-pair? _hd70647114_)
                        (let ((_e70677120_ (gx#syntax-e _hd70647114_)))
                          (let ((_lp-hd70687124_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70677120_)))
                                (_lp-tl70697127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70677120_))))
                            (_loop70667110_
                             _lp-tl70697127_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd70687124_ _body70707117_)))))
                        (let ((_body70717130_ (reverse _body70707117_)))
                          ((lambda (_L7134_ _L7136_)
                             (let ((__tmp24498 (gx#datum->syntax '#f '~let))
                                   (__tmp24494
                                    (let ((__tmp24497
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp24495
                                           (let ((__tmp24496
                                                  (foldr (lambda (_g71537156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71547159_)
                   (let ()
                     (declare (not safe))
                     (cons _g71537156_ _g71547159_)))
                 '()
                 _L7134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7136_ __tmp24496))))
                                      (declare (not safe))
                                      (cons __tmp24497 __tmp24495))))
                               (declare (not safe))
                               (cons __tmp24498 __tmp24494)))
                           _body70717130_
                           _hd70617098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop70667110_
                                                   _target70637104_
                                                   '()))
                                                (_g70537077_ _g70547081_)))))
                                      (_g70537077_ _g70547081_))))
                              (_g70537077_ _g70547081_))))
                      (_g70537077_ _g70547081_)))))
          (_g70527162_ _$stx7049_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#~let|
      (lambda (_stx7167_)
        (letrec ((_let-head?7170_
                  (lambda (_x7650_)
                    (let* ((___stx2230522306_ _x7650_)
                           (_g76547665_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2230522306_))))
                      (let ((___kont2230822309_
                             (lambda (_L7693_)
                               (gx#stx-andmap gx#identifier? _L7693_)))
                            (___kont2231022311_
                             (lambda () (gx#identifier? _x7650_))))
                        (if (gx#stx-pair? ___stx2230522306_)
                            (let ((_e76597683_
                                   (gx#syntax-e ___stx2230522306_)))
                              (let ((_tl76577690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76597683_)))
                                    (_hd76587687_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76597683_))))
                                (if (gx#identifier? _hd76587687_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24499_|
                                         _hd76587687_)
                                        (___kont2230822309_ _tl76577690_)
                                        (___kont2231022311_))
                                    (___kont2231022311_))))
                            (___kont2231022311_))))))
                 (_let-head7172_
                  (lambda (_x7590_)
                    (let* ((___stx2232522326_ _x7590_)
                           (_g75947605_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2232522326_))))
                      (let ((___kont2232822329_ (lambda (_L7633_) _L7633_))
                            (___kont2233022331_ (lambda () (list _x7590_))))
                        (if (gx#stx-pair? ___stx2232522326_)
                            (let ((_e75997623_
                                   (gx#syntax-e ___stx2232522326_)))
                              (let ((_tl75977630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e75997623_)))
                                    (_hd75987627_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e75997623_))))
                                (if (gx#identifier? _hd75987627_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24500_|
                                         _hd75987627_)
                                        (___kont2232822329_ _tl75977630_)
                                        (___kont2233022331_))
                                    (___kont2233022331_))))
                            (___kont2233022331_)))))))
          (let* ((___stx2234522346_ _stx7167_)
                 (_g71757241_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2234522346_))))
            (let ((___kont2234822349_
                   (lambda (_L7559_ _L7561_ _L7562_ _L7563_ _L7564_)
                     (let ((__tmp24501
                            (let ((__tmp24502
                                   (let ((__tmp24503
                                          (let ((__tmp24504
                                                 (let ((__tmp24505
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L7561_ '()))))
                                                   (declare (not safe))
                                                   (cons _L7562_ __tmp24505))))
                                            (declare (not safe))
                                            (cons __tmp24504 '()))))
                                     (declare (not safe))
                                     (cons __tmp24503 _L7559_))))
                              (declare (not safe))
                              (cons _L7563_ __tmp24502))))
                       (declare (not safe))
                       (cons _L7564_ __tmp24501))))
                  (___kont2235022351_
                   (lambda (_L7362_ _L7364_ _L7365_ _L7366_)
                     (let* ((_g74017418_
                             (lambda (_g74027414_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g74027414_)))
                            (_g74007490_
                             (lambda (_g74027422_)
                               (if (gx#stx-pair/null? _g74027422_)
                                   (let ((_g24506_
                                          (gx#syntax-split-splice
                                           _g74027422_
                                           '0)))
                                     (begin
                                       (let ((_g24507_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g24506_)
                                                    (##vector-length _g24506_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g24507_ 2)))
                                             (error "Context expects 2 values"
                                                    _g24507_)))
                                       (let ((_target74047425_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24506_ 0)))
                                             (_tl74067428_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24506_ 1))))
                                         (if (gx#stx-null? _tl74067428_)
                                             (letrec ((_loop74077431_
                                                       (lambda (_hd74057435_
                                                                _hd-bind74117438_)
                                                         (if (gx#stx-pair?
                                                              _hd74057435_)
                                                             (let ((_e74087441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd74057435_)))
                       (let ((_lp-hd74097445_
                              (let ()
                                (declare (not safe))
                                (##car _e74087441_)))
                             (_lp-tl74107448_
                              (let ()
                                (declare (not safe))
                                (##cdr _e74087441_))))
                         (_loop74077431_
                          _lp-tl74107448_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd74097445_ _hd-bind74117438_)))))
                     (let ((_hd-bind74127451_ (reverse _hd-bind74117438_)))
                       ((lambda (_L7455_)
                          (let ()
                            (let ((__tmp24508
                                   (let ((__tmp24510
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L7364_
                                             _L7455_)
                                            (foldr (lambda (_g74727476_
                                                            _g74737479_
                                                            _g74747481_)
                                                     (let ((__tmp24511
                                                            (let ((__tmp24512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g74727476_ '()))))
                      (declare (not safe))
                      (cons _g74737479_ __tmp24512))))
               (declare (not safe))
               (cons __tmp24511 _g74747481_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L7364_
                                                   _L7455_)))
                                         (__tmp24509
                                          (foldr (lambda (_g74707484_
                                                          _g74717487_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g74707484_
                                                           _g74717487_)))
                                                 '()
                                                 _L7362_)))
                                     (declare (not safe))
                                     (cons __tmp24510 __tmp24509))))
                              (declare (not safe))
                              (cons _L7366_ __tmp24508))))
                        _hd-bind74127451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop74077431_
                                                _target74047425_
                                                '()))
                                             (_g74017418_ _g74027422_)))))
                                   (_g74017418_ _g74027422_)))))
                       (_g74007490_
                        (gx#stx-map
                         _let-head7172_
                         (foldr (lambda (_g74937496_ _g74947499_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g74937496_ _g74947499_)))
                                '()
                                _L7365_)))))))
              (let* ((___match2241422415_
                      (lambda (_e72037248_
                               _hd72027252_
                               _tl72017255_
                               _e72067258_
                               _hd72057262_
                               _tl72047265_
                               _e72097268_
                               _hd72087272_
                               _tl72077275_
                               ___splice2235222353_
                               _target72107278_
                               _tl72127281_)
                        (letrec ((_loop72137284_
                                  (lambda (_hd72117288_
                                           _e72177291_
                                           _hd72187293_)
                                    (if (gx#stx-pair? _hd72117288_)
                                        (let ((_e72147296_
                                               (gx#syntax-e _hd72117288_)))
                                          (let ((_lp-tl72167303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72147296_)))
                                                (_lp-hd72157300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72147296_))))
                                            (if (gx#stx-pair? _lp-hd72157300_)
                                                (let ((_e72237306_
                                                       (gx#syntax-e
                                                        _lp-hd72157300_)))
                                                  (let ((_tl72217313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e72237306_)))
                                                        (_hd72227310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e72237306_))))
                                                    (if (gx#stx-pair?
                                                         _tl72217313_)
                                                        (let ((_e72267316_
                                                               (gx#syntax-e
                                                                _tl72217313_)))
                                                          (let ((_tl72247323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e72267316_)))
                        (_hd72257320_
                         (let () (declare (not safe)) (##car _e72267316_))))
                    (if (gx#stx-null? _tl72247323_)
                        (_loop72137284_
                         _lp-tl72167303_
                         (let ()
                           (declare (not safe))
                           (cons _hd72257320_ _e72177291_))
                         (let ()
                           (declare (not safe))
                           (cons _hd72227310_ _hd72187293_)))
                        (let () (declare (not safe)) (_g71757241_)))))
                (let () (declare (not safe)) (_g71757241_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71757241_)))))
                                        (let ((_hd72207329_
                                               (reverse _hd72187293_))
                                              (_e72197326_
                                               (reverse _e72177291_)))
                                          (if (gx#stx-pair/null? _tl72077275_)
                                              (let ((___splice2235422355_
                                                     (gx#syntax-split-splice
                                                      _tl72077275_
                                                      '0)))
                                                (let ((_tl72297335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235422355_
                                                          '1)))
                                                      (_target72277332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235422355_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl72297335_)
                                                      (letrec ((_loop72307338_
                                                                (lambda (_hd72287342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body72347345_)
                          (if (gx#stx-pair? _hd72287342_)
                              (let ((_e72317348_ (gx#syntax-e _hd72287342_)))
                                (let ((_lp-tl72337355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e72317348_)))
                                      (_lp-hd72327352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e72317348_))))
                                  (_loop72307338_
                                   _lp-tl72337355_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd72327352_ _body72347345_)))))
                              (let ((_body72357358_ (reverse _body72347345_)))
                                (let ((_L7362_ _body72357358_)
                                      (_L7364_ _e72197326_)
                                      (_L7365_ _hd72207329_)
                                      (_L7366_ _hd72057262_))
                                  (if (gx#stx-andmap
                                       _let-head?7170_
                                       (foldr (lambda (_g73927395_ _g73937398_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g73927395_
                                                        _g73937398_)))
                                              '()
                                              _L7365_))
                                      (___kont2235022351_
                                       _L7362_
                                       _L7364_
                                       _L7365_
                                       _L7366_)
                                      (let ()
                                        (declare (not safe))
                                        (_g71757241_)))))))))
                (_loop72307338_ _target72277332_ '()))
              (let () (declare (not safe)) (_g71757241_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g71757241_))))))))
                          (_loop72137284_ _target72107278_ '() '()))))
                     (___match2238822389_
                      (lambda (_e71847509_
                               _hd71837513_
                               _tl71827516_
                               _e71877519_
                               _hd71867523_
                               _tl71857526_
                               _e71907529_
                               _hd71897533_
                               _tl71887536_
                               _e71937539_
                               _hd71927543_
                               _tl71917546_
                               _e71967549_
                               _hd71957553_
                               _tl71947556_)
                        (let ((_L7559_ _tl71887536_)
                              (_L7561_ _hd71957553_)
                              (_L7562_ _hd71927543_)
                              (_L7563_ _hd71867523_)
                              (_L7564_ _hd71837513_))
                          (if (_let-head?7170_ _L7562_)
                              (___kont2234822349_
                               _L7559_
                               _L7561_
                               _L7562_
                               _L7563_
                               _L7564_)
                              (if (gx#stx-pair/null? _hd71897533_)
                                  (let ((___splice2235222353_
                                         (gx#syntax-split-splice
                                          _hd71897533_
                                          '0)))
                                    (let ((_tl72127281_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235222353_
                                              '1)))
                                          (_target72107278_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235222353_
                                              '0))))
                                      (if (gx#stx-null? _tl72127281_)
                                          (___match2241422415_
                                           _e71847509_
                                           _hd71837513_
                                           _tl71827516_
                                           _e71877519_
                                           _hd71867523_
                                           _tl71857526_
                                           _e71907529_
                                           _hd71897533_
                                           _tl71887536_
                                           ___splice2235222353_
                                           _target72107278_
                                           _tl72127281_)
                                          (let ()
                                            (declare (not safe))
                                            (_g71757241_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g71757241_))))))))
                (if (gx#stx-pair? ___stx2234522346_)
                    (let ((_e71847509_ (gx#syntax-e ___stx2234522346_)))
                      (let ((_tl71827516_
                             (let () (declare (not safe)) (##cdr _e71847509_)))
                            (_hd71837513_
                             (let ()
                               (declare (not safe))
                               (##car _e71847509_))))
                        (if (gx#stx-pair? _tl71827516_)
                            (let ((_e71877519_ (gx#syntax-e _tl71827516_)))
                              (let ((_tl71857526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e71877519_)))
                                    (_hd71867523_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e71877519_))))
                                (if (gx#stx-pair? _tl71857526_)
                                    (let ((_e71907529_
                                           (gx#syntax-e _tl71857526_)))
                                      (let ((_tl71887536_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e71907529_)))
                                            (_hd71897533_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e71907529_))))
                                        (if (gx#stx-pair? _hd71897533_)
                                            (let ((_e71937539_
                                                   (gx#syntax-e _hd71897533_)))
                                              (let ((_tl71917546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e71937539_)))
                                                    (_hd71927543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e71937539_))))
                                                (if (gx#stx-pair? _tl71917546_)
                                                    (let ((_e71967549_
                                                           (gx#syntax-e
                                                            _tl71917546_)))
                                                      (let ((_tl71947556_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e71967549_)))
                    (_hd71957553_
                     (let () (declare (not safe)) (##car _e71967549_))))
                (if (gx#stx-null? _tl71947556_)
                    (___match2238822389_
                     _e71847509_
                     _hd71837513_
                     _tl71827516_
                     _e71877519_
                     _hd71867523_
                     _tl71857526_
                     _e71907529_
                     _hd71897533_
                     _tl71887536_
                     _e71937539_
                     _hd71927543_
                     _tl71917546_
                     _e71967549_
                     _hd71957553_
                     _tl71947556_)
                    (if (gx#stx-pair/null? _hd71897533_)
                        (let ((___splice2235222353_
                               (gx#syntax-split-splice _hd71897533_ '0)))
                          (let ((_tl72127281_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235222353_ '1)))
                                (_target72107278_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235222353_ '0))))
                            (if (gx#stx-null? _tl72127281_)
                                (___match2241422415_
                                 _e71847509_
                                 _hd71837513_
                                 _tl71827516_
                                 _e71877519_
                                 _hd71867523_
                                 _tl71857526_
                                 _e71907529_
                                 _hd71897533_
                                 _tl71887536_
                                 ___splice2235222353_
                                 _target72107278_
                                 _tl72127281_)
                                (let () (declare (not safe)) (_g71757241_)))))
                        (let () (declare (not safe)) (_g71757241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd71897533_)
                                                        (let ((___splice2235222353_
                                                               (gx#syntax-split-splice
                                                                _hd71897533_
                                                                '0)))
                                                          (let ((_tl72127281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235222353_ '1)))
                        (_target72107278_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235222353_ '0))))
                    (if (gx#stx-null? _tl72127281_)
                        (___match2241422415_
                         _e71847509_
                         _hd71837513_
                         _tl71827516_
                         _e71877519_
                         _hd71867523_
                         _tl71857526_
                         _e71907529_
                         _hd71897533_
                         _tl71887536_
                         ___splice2235222353_
                         _target72107278_
                         _tl72127281_)
                        (let () (declare (not safe)) (_g71757241_)))))
                (let () (declare (not safe)) (_g71757241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd71897533_)
                                                (let ((___splice2235222353_
                                                       (gx#syntax-split-splice
                                                        _hd71897533_
                                                        '0)))
                                                  (let ((_tl72127281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235222353_
                                                            '1)))
                                                        (_target72107278_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235222353_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl72127281_)
                                                        (___match2241422415_
                                                         _e71847509_
                                                         _hd71837513_
                                                         _tl71827516_
                                                         _e71877519_
                                                         _hd71867523_
                                                         _tl71857526_
                                                         _e71907529_
                                                         _hd71897533_
                                                         _tl71887536_
                                                         ___splice2235222353_
                                                         _target72107278_
                                                         _tl72127281_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g71757241_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71757241_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g71757241_)))))
                            (let () (declare (not safe)) (_g71757241_)))))
                    (let () (declare (not safe)) (_g71757241_)))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#and|
      (lambda (_$stx7713_)
        (let* ((___stx2241722418_ _$stx7713_)
               (_g77197745_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2241722418_))))
          (let ((___kont2242022421_ (lambda () '#t))
                (___kont2242222423_ (lambda (_L7817_) _L7817_))
                (___kont2242422425_
                 (lambda (_L7772_ _L7774_ _L7775_)
                   (let ((__tmp24517 (gx#datum->syntax '#f 'if))
                         (__tmp24513
                          (let ((__tmp24514
                                 (let ((__tmp24516
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7775_ _L7772_)))
                                       (__tmp24515
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp24516 __tmp24515))))
                            (declare (not safe))
                            (cons _L7774_ __tmp24514))))
                     (declare (not safe))
                     (cons __tmp24517 __tmp24513)))))
            (if (gx#stx-pair? ___stx2241722418_)
                (let ((_e77237837_ (gx#syntax-e ___stx2241722418_)))
                  (let ((_tl77217844_
                         (let () (declare (not safe)) (##cdr _e77237837_)))
                        (_hd77227841_
                         (let () (declare (not safe)) (##car _e77237837_))))
                    (if (gx#stx-null? _tl77217844_)
                        (___kont2242022421_)
                        (if (gx#stx-pair? _tl77217844_)
                            (let ((_e77307807_ (gx#syntax-e _tl77217844_)))
                              (let ((_tl77287814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e77307807_)))
                                    (_hd77297811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e77307807_))))
                                (if (gx#stx-null? _tl77287814_)
                                    (___kont2242222423_ _hd77297811_)
                                    (___kont2242422425_
                                     _tl77287814_
                                     _hd77297811_
                                     _hd77227841_))))
                            (let () (declare (not safe)) (_g77197745_))))))
                (let () (declare (not safe)) (_g77197745_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#or|
      (lambda (_$stx7855_)
        (let* ((___stx2246322464_ _$stx7855_)
               (_g78617887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2246322464_))))
          (let ((___kont2246622467_ (lambda () '#f))
                (___kont2246822469_ (lambda (_L7959_) _L7959_))
                (___kont2247022471_
                 (lambda (_L7914_ _L7916_ _L7917_)
                   (let ((__tmp24531 (gx#datum->syntax '#f 'let))
                         (__tmp24518
                          (let ((__tmp24528
                                 (let ((__tmp24530 (gx#datum->syntax '#f '$e))
                                       (__tmp24529
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7916_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24530 __tmp24529)))
                                (__tmp24519
                                 (let ((__tmp24520
                                        (let ((__tmp24527
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24521
                                               (let ((__tmp24526
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24522
                                                      (let ((__tmp24525
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24523
                                                             (let ((__tmp24524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L7917_ _L7914_))))
                       (declare (not safe))
                       (cons __tmp24524 '()))))
                (declare (not safe))
                (cons __tmp24525 __tmp24523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24526
                                                       __tmp24522))))
                                          (declare (not safe))
                                          (cons __tmp24527 __tmp24521))))
                                   (declare (not safe))
                                   (cons __tmp24520 '()))))
                            (declare (not safe))
                            (cons __tmp24528 __tmp24519))))
                     (declare (not safe))
                     (cons __tmp24531 __tmp24518)))))
            (if (gx#stx-pair? ___stx2246322464_)
                (let ((_e78657979_ (gx#syntax-e ___stx2246322464_)))
                  (let ((_tl78637986_
                         (let () (declare (not safe)) (##cdr _e78657979_)))
                        (_hd78647983_
                         (let () (declare (not safe)) (##car _e78657979_))))
                    (if (gx#stx-null? _tl78637986_)
                        (___kont2246622467_)
                        (if (gx#stx-pair? _tl78637986_)
                            (let ((_e78727949_ (gx#syntax-e _tl78637986_)))
                              (let ((_tl78707956_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e78727949_)))
                                    (_hd78717953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e78727949_))))
                                (if (gx#stx-null? _tl78707956_)
                                    (___kont2246822469_ _hd78717953_)
                                    (___kont2247022471_
                                     _tl78707956_
                                     _hd78717953_
                                     _hd78647983_))))
                            (let () (declare (not safe)) (_g78617887_))))))
                (let () (declare (not safe)) (_g78617887_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#cond|
      (lambda (_$stx7997_)
        (let* ((___stx2250922510_ _$stx7997_)
               (_g80068097_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2250922510_))))
          (let ((___kont2251222513_ (lambda () '#!void))
                (___kont2251422515_
                 (lambda (_L8444_)
                   (let ((__tmp24536 (gx#datum->syntax '#f '%#expression))
                         (__tmp24532
                          (let ((__tmp24533
                                 (let ((__tmp24535
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp24534
                                        (foldr (lambda (_g84638466_
                                                        _g84648469_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g84638466_
                                                         _g84648469_)))
                                               '()
                                               _L8444_)))
                                   (declare (not safe))
                                   (cons __tmp24535 __tmp24534))))
                            (declare (not safe))
                            (cons __tmp24533 '()))))
                     (declare (not safe))
                     (cons __tmp24536 __tmp24532))))
                (___kont2251822519_
                 (lambda ()
                   (let ((__tmp24538 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp24537
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp24538 __tmp24537))))
                (___kont2252022521_
                 (lambda (_L8317_ _L8319_ _L8320_)
                   (let ((__tmp24552 (gx#datum->syntax '#f 'let))
                         (__tmp24539
                          (let ((__tmp24549
                                 (let ((__tmp24551 (gx#datum->syntax '#f '$e))
                                       (__tmp24550
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8319_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24551 __tmp24550)))
                                (__tmp24540
                                 (let ((__tmp24541
                                        (let ((__tmp24548
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24542
                                               (let ((__tmp24547
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24543
                                                      (let ((__tmp24546
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24544
                                                             (let ((__tmp24545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L8320_ _L8317_))))
                       (declare (not safe))
                       (cons __tmp24545 '()))))
                (declare (not safe))
                (cons __tmp24546 __tmp24544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24547
                                                       __tmp24543))))
                                          (declare (not safe))
                                          (cons __tmp24548 __tmp24542))))
                                   (declare (not safe))
                                   (cons __tmp24541 '()))))
                            (declare (not safe))
                            (cons __tmp24549 __tmp24540))))
                     (declare (not safe))
                     (cons __tmp24552 __tmp24539))))
                (___kont2252222523_
                 (lambda (_L8255_ _L8257_ _L8258_ _L8259_)
                   (let ((__tmp24568 (gx#datum->syntax '#f 'let))
                         (__tmp24553
                          (let ((__tmp24565
                                 (let ((__tmp24567 (gx#datum->syntax '#f '$e))
                                       (__tmp24566
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8258_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24567 __tmp24566)))
                                (__tmp24554
                                 (let ((__tmp24555
                                        (let ((__tmp24564
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24556
                                               (let ((__tmp24563
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24557
                                                      (let ((__tmp24560
                                                             (let ((__tmp24561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24562 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp24562 '()))))
                       (declare (not safe))
                       (cons _L8257_ __tmp24561)))
                    (__tmp24558
                     (let ((__tmp24559
                            (let ()
                              (declare (not safe))
                              (cons _L8259_ _L8255_))))
                       (declare (not safe))
                       (cons __tmp24559 '()))))
                (declare (not safe))
                (cons __tmp24560 __tmp24558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24563
                                                       __tmp24557))))
                                          (declare (not safe))
                                          (cons __tmp24564 __tmp24556))))
                                   (declare (not safe))
                                   (cons __tmp24555 '()))))
                            (declare (not safe))
                            (cons __tmp24565 __tmp24554))))
                     (declare (not safe))
                     (cons __tmp24568 __tmp24553))))
                (___kont2252422525_
                 (lambda (_L8164_ _L8166_ _L8167_ _L8168_)
                   (let ((__tmp24576 (gx#datum->syntax '#f 'if))
                         (__tmp24569
                          (let ((__tmp24570
                                 (let ((__tmp24573
                                        (let ((__tmp24575
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp24574
                                               (foldr (lambda (_g81898192_
                                                               _g81908195_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g81898192_
                                                                _g81908195_)))
                                                      '()
                                                      _L8166_)))
                                          (declare (not safe))
                                          (cons __tmp24575 __tmp24574)))
                                       (__tmp24571
                                        (let ((__tmp24572
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8168_ _L8164_))))
                                          (declare (not safe))
                                          (cons __tmp24572 '()))))
                                   (declare (not safe))
                                   (cons __tmp24573 __tmp24571))))
                            (declare (not safe))
                            (cons _L8167_ __tmp24570))))
                     (declare (not safe))
                     (cons __tmp24576 __tmp24569)))))
            (let* ((___match2267022671_
                    (lambda (_e80768104_
                             _hd80758108_
                             _tl80748111_
                             _e80798114_
                             _hd80788118_
                             _tl80778121_
                             _e80828124_
                             _hd80818128_
                             _tl80808131_
                             ___splice2252622527_
                             _target80838134_
                             _tl80858137_)
                      (letrec ((_loop80868140_
                                (lambda (_hd80848144_ _body80908147_)
                                  (if (gx#stx-pair? _hd80848144_)
                                      (let ((_e80878150_
                                             (gx#syntax-e _hd80848144_)))
                                        (let ((_lp-tl80898157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80878150_)))
                                              (_lp-hd80888154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80878150_))))
                                          (_loop80868140_
                                           _lp-tl80898157_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80888154_
                                                   _body80908147_)))))
                                      (let ((_body80918160_
                                             (reverse _body80908147_)))
                                        (___kont2252422525_
                                         _tl80778121_
                                         _body80918160_
                                         _hd80818128_
                                         _hd80758108_))))))
                        (_loop80868140_ _target80838134_ '()))))
                   (___match2256622567_
                    (lambda (_e80148384_
                             _hd80138388_
                             _tl80128391_
                             _e80178394_
                             _hd80168398_
                             _tl80158401_
                             _e80208404_
                             _hd80198408_
                             _tl80188411_
                             ___splice2251622517_
                             _target80218414_
                             _tl80238417_)
                      (letrec ((_loop80248420_
                                (lambda (_hd80228424_ _body80288427_)
                                  (if (gx#stx-pair? _hd80228424_)
                                      (let ((_e80258430_
                                             (gx#syntax-e _hd80228424_)))
                                        (let ((_lp-tl80278437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80258430_)))
                                              (_lp-hd80268434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80258430_))))
                                          (_loop80248420_
                                           _lp-tl80278437_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80268434_
                                                   _body80288427_)))))
                                      (let ((_body80298440_
                                             (reverse _body80288427_)))
                                        (if (gx#stx-null? _tl80158401_)
                                            (___kont2251422515_ _body80298440_)
                                            (___kont2251822519_)))))))
                        (_loop80248420_ _target80218414_ '())))))
              (if (gx#stx-pair? ___stx2250922510_)
                  (let ((_e80108479_ (gx#syntax-e ___stx2250922510_)))
                    (let ((_tl80088486_
                           (let () (declare (not safe)) (##cdr _e80108479_)))
                          (_hd80098483_
                           (let () (declare (not safe)) (##car _e80108479_))))
                      (if (gx#stx-null? _tl80088486_)
                          (___kont2251222513_)
                          (if (gx#stx-pair? _tl80088486_)
                              (let ((_e80178394_ (gx#syntax-e _tl80088486_)))
                                (let ((_tl80158401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80178394_)))
                                      (_hd80168398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80178394_))))
                                  (if (gx#stx-pair? _hd80168398_)
                                      (let ((_e80208404_
                                             (gx#syntax-e _hd80168398_)))
                                        (let ((_tl80188411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80208404_)))
                                              (_hd80198408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80208404_))))
                                          (if (gx#identifier? _hd80198408_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:1>[1]#_g24578_|
                                                   _hd80198408_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80188411_)
                                                      (let ((___splice2251622517_
                                                             (gx#syntax-split-splice
                                                              _tl80188411_
                                                              '0)))
                                                        (let ((_tl80238417_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2251622517_ '1)))
                      (_target80218414_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2251622517_ '0))))
                  (if (gx#stx-null? _tl80238417_)
                      (___match2256622567_
                       _e80108479_
                       _hd80098483_
                       _tl80088486_
                       _e80178394_
                       _hd80168398_
                       _tl80158401_
                       _e80208404_
                       _hd80198408_
                       _tl80188411_
                       ___splice2251622517_
                       _target80218414_
                       _tl80238417_)
                      (___kont2251822519_))))
              (___kont2251822519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl80188411_)
                                                      (___kont2252022521_
                                                       _tl80158401_
                                                       _hd80198408_
                                                       _hd80098483_)
                                                      (if (gx#stx-pair?
                                                           _tl80188411_)
                                                          (let ((_e80668235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80188411_)))
                    (let ((_tl80648242_
                           (let () (declare (not safe)) (##cdr _e80668235_)))
                          (_hd80658239_
                           (let () (declare (not safe)) (##car _e80668235_))))
                      (if (gx#identifier? _hd80658239_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
                               _hd80658239_)
                              (if (gx#stx-pair? _tl80648242_)
                                  (let ((_e80698245_
                                         (gx#syntax-e _tl80648242_)))
                                    (let ((_tl80678252_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80698245_)))
                                          (_hd80688249_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80698245_))))
                                      (if (gx#stx-null? _tl80678252_)
                                          (___kont2252222523_
                                           _tl80158401_
                                           _hd80688249_
                                           _hd80198408_
                                           _hd80098483_)
                                          (if (gx#stx-pair/null? _tl80188411_)
                                              (let ((___splice2252622527_
                                                     (gx#syntax-split-splice
                                                      _tl80188411_
                                                      '0)))
                                                (let ((_tl80858137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252622527_
                                                          '1)))
                                                      (_target80838134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252622527_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl80858137_)
                                                      (___match2267022671_
                                                       _e80108479_
                                                       _hd80098483_
                                                       _tl80088486_
                                                       _e80178394_
                                                       _hd80168398_
                                                       _tl80158401_
                                                       _e80208404_
                                                       _hd80198408_
                                                       _tl80188411_
                                                       ___splice2252622527_
                                                       _target80838134_
                                                       _tl80858137_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g80068097_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g80068097_))))))
                                  (if (gx#stx-pair/null? _tl80188411_)
                                      (let ((___splice2252622527_
                                             (gx#syntax-split-splice
                                              _tl80188411_
                                              '0)))
                                        (let ((_tl80858137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252622527_
                                                  '1)))
                                              (_target80838134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252622527_
                                                  '0))))
                                          (if (gx#stx-null? _tl80858137_)
                                              (___match2267022671_
                                               _e80108479_
                                               _hd80098483_
                                               _tl80088486_
                                               _e80178394_
                                               _hd80168398_
                                               _tl80158401_
                                               _e80208404_
                                               _hd80198408_
                                               _tl80188411_
                                               ___splice2252622527_
                                               _target80838134_
                                               _tl80858137_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80068097_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80068097_))))
                              (if (gx#stx-pair/null? _tl80188411_)
                                  (let ((___splice2252622527_
                                         (gx#syntax-split-splice
                                          _tl80188411_
                                          '0)))
                                    (let ((_tl80858137_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252622527_
                                              '1)))
                                          (_target80838134_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252622527_
                                              '0))))
                                      (if (gx#stx-null? _tl80858137_)
                                          (___match2267022671_
                                           _e80108479_
                                           _hd80098483_
                                           _tl80088486_
                                           _e80178394_
                                           _hd80168398_
                                           _tl80158401_
                                           _e80208404_
                                           _hd80198408_
                                           _tl80188411_
                                           ___splice2252622527_
                                           _target80838134_
                                           _tl80858137_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80068097_)))))
                                  (let () (declare (not safe)) (_g80068097_))))
                          (if (gx#stx-pair/null? _tl80188411_)
                              (let ((___splice2252622527_
                                     (gx#syntax-split-splice _tl80188411_ '0)))
                                (let ((_tl80858137_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252622527_
                                          '1)))
                                      (_target80838134_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252622527_
                                          '0))))
                                  (if (gx#stx-null? _tl80858137_)
                                      (___match2267022671_
                                       _e80108479_
                                       _hd80098483_
                                       _tl80088486_
                                       _e80178394_
                                       _hd80168398_
                                       _tl80158401_
                                       _e80208404_
                                       _hd80198408_
                                       _tl80188411_
                                       ___splice2252622527_
                                       _target80838134_
                                       _tl80858137_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80068097_)))))
                              (let () (declare (not safe)) (_g80068097_))))))
                  (if (gx#stx-pair/null? _tl80188411_)
                      (let ((___splice2252622527_
                             (gx#syntax-split-splice _tl80188411_ '0)))
                        (let ((_tl80858137_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252622527_ '1)))
                              (_target80838134_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252622527_ '0))))
                          (if (gx#stx-null? _tl80858137_)
                              (___match2267022671_
                               _e80108479_
                               _hd80098483_
                               _tl80088486_
                               _e80178394_
                               _hd80168398_
                               _tl80158401_
                               _e80208404_
                               _hd80198408_
                               _tl80188411_
                               ___splice2252622527_
                               _target80838134_
                               _tl80858137_)
                              (let () (declare (not safe)) (_g80068097_)))))
                      (let () (declare (not safe)) (_g80068097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl80188411_)
                                                  (___kont2252022521_
                                                   _tl80158401_
                                                   _hd80198408_
                                                   _hd80098483_)
                                                  (if (gx#stx-pair?
                                                       _tl80188411_)
                                                      (let ((_e80668235_
                                                             (gx#syntax-e
                                                              _tl80188411_)))
                                                        (let ((_tl80648242_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e80668235_)))
                      (_hd80658239_
                       (let () (declare (not safe)) (##car _e80668235_))))
                  (if (gx#identifier? _hd80658239_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
                           _hd80658239_)
                          (if (gx#stx-pair? _tl80648242_)
                              (let ((_e80698245_ (gx#syntax-e _tl80648242_)))
                                (let ((_tl80678252_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80698245_)))
                                      (_hd80688249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80698245_))))
                                  (if (gx#stx-null? _tl80678252_)
                                      (___kont2252222523_
                                       _tl80158401_
                                       _hd80688249_
                                       _hd80198408_
                                       _hd80098483_)
                                      (if (gx#stx-pair/null? _tl80188411_)
                                          (let ((___splice2252622527_
                                                 (gx#syntax-split-splice
                                                  _tl80188411_
                                                  '0)))
                                            (let ((_tl80858137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252622527_
                                                      '1)))
                                                  (_target80838134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252622527_
                                                      '0))))
                                              (if (gx#stx-null? _tl80858137_)
                                                  (___match2267022671_
                                                   _e80108479_
                                                   _hd80098483_
                                                   _tl80088486_
                                                   _e80178394_
                                                   _hd80168398_
                                                   _tl80158401_
                                                   _e80208404_
                                                   _hd80198408_
                                                   _tl80188411_
                                                   ___splice2252622527_
                                                   _target80838134_
                                                   _tl80858137_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80068097_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g80068097_))))))
                              (if (gx#stx-pair/null? _tl80188411_)
                                  (let ((___splice2252622527_
                                         (gx#syntax-split-splice
                                          _tl80188411_
                                          '0)))
                                    (let ((_tl80858137_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252622527_
                                              '1)))
                                          (_target80838134_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252622527_
                                              '0))))
                                      (if (gx#stx-null? _tl80858137_)
                                          (___match2267022671_
                                           _e80108479_
                                           _hd80098483_
                                           _tl80088486_
                                           _e80178394_
                                           _hd80168398_
                                           _tl80158401_
                                           _e80208404_
                                           _hd80198408_
                                           _tl80188411_
                                           ___splice2252622527_
                                           _target80838134_
                                           _tl80858137_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80068097_)))))
                                  (let () (declare (not safe)) (_g80068097_))))
                          (if (gx#stx-pair/null? _tl80188411_)
                              (let ((___splice2252622527_
                                     (gx#syntax-split-splice _tl80188411_ '0)))
                                (let ((_tl80858137_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252622527_
                                          '1)))
                                      (_target80838134_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252622527_
                                          '0))))
                                  (if (gx#stx-null? _tl80858137_)
                                      (___match2267022671_
                                       _e80108479_
                                       _hd80098483_
                                       _tl80088486_
                                       _e80178394_
                                       _hd80168398_
                                       _tl80158401_
                                       _e80208404_
                                       _hd80198408_
                                       _tl80188411_
                                       ___splice2252622527_
                                       _target80838134_
                                       _tl80858137_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80068097_)))))
                              (let () (declare (not safe)) (_g80068097_))))
                      (if (gx#stx-pair/null? _tl80188411_)
                          (let ((___splice2252622527_
                                 (gx#syntax-split-splice _tl80188411_ '0)))
                            (let ((_tl80858137_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252622527_ '1)))
                                  (_target80838134_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252622527_ '0))))
                              (if (gx#stx-null? _tl80858137_)
                                  (___match2267022671_
                                   _e80108479_
                                   _hd80098483_
                                   _tl80088486_
                                   _e80178394_
                                   _hd80168398_
                                   _tl80158401_
                                   _e80208404_
                                   _hd80198408_
                                   _tl80188411_
                                   ___splice2252622527_
                                   _target80838134_
                                   _tl80858137_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80068097_)))))
                          (let () (declare (not safe)) (_g80068097_))))))
              (if (gx#stx-pair/null? _tl80188411_)
                  (let ((___splice2252622527_
                         (gx#syntax-split-splice _tl80188411_ '0)))
                    (let ((_tl80858137_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252622527_ '1)))
                          (_target80838134_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252622527_ '0))))
                      (if (gx#stx-null? _tl80858137_)
                          (___match2267022671_
                           _e80108479_
                           _hd80098483_
                           _tl80088486_
                           _e80178394_
                           _hd80168398_
                           _tl80158401_
                           _e80208404_
                           _hd80198408_
                           _tl80188411_
                           ___splice2252622527_
                           _target80838134_
                           _tl80858137_)
                          (let () (declare (not safe)) (_g80068097_)))))
                  (let () (declare (not safe)) (_g80068097_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g80068097_)))))
                              (let () (declare (not safe)) (_g80068097_))))))
                  (let () (declare (not safe)) (_g80068097_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#when|
      (lambda (_$stx8499_)
        (let* ((_g85038527_
                (lambda (_g85048523_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85048523_)))
               (_g85028612_
                (lambda (_g85048531_)
                  (if (gx#stx-pair? _g85048531_)
                      (let ((_e85098534_ (gx#syntax-e _g85048531_)))
                        (let ((_hd85088538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85098534_)))
                              (_tl85078541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85098534_))))
                          (if (gx#stx-pair? _tl85078541_)
                              (let ((_e85128544_ (gx#syntax-e _tl85078541_)))
                                (let ((_hd85118548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85128544_)))
                                      (_tl85108551_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85128544_))))
                                  (if (gx#stx-pair/null? _tl85108551_)
                                      (let ((_g24579_
                                             (gx#syntax-split-splice
                                              _tl85108551_
                                              '0)))
                                        (begin
                                          (let ((_g24580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24579_)
                                                       (##vector-length
                                                        _g24579_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24580_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24580_)))
                                          (let ((_target85138554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24579_ 0)))
                                                (_tl85158557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24579_ 1))))
                                            (if (gx#stx-null? _tl85158557_)
                                                (letrec ((_loop85168560_
                                                          (lambda (_hd85148564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr85208567_)
                    (if (gx#stx-pair? _hd85148564_)
                        (let ((_e85178570_ (gx#syntax-e _hd85148564_)))
                          (let ((_lp-hd85188574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85178570_)))
                                (_lp-tl85198577_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85178570_))))
                            (_loop85168560_
                             _lp-tl85198577_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd85188574_ _expr85208567_)))))
                        (let ((_expr85218580_ (reverse _expr85208567_)))
                          ((lambda (_L8584_ _L8586_)
                             (let ((__tmp24587 (gx#datum->syntax '#f 'if))
                                   (__tmp24581
                                    (let ((__tmp24582
                                           (let ((__tmp24584
                                                  (let ((__tmp24586
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp24585
                                                         (foldr (lambda (_g86038606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g86048609_)
                          (let ()
                            (declare (not safe))
                            (cons _g86038606_ _g86048609_)))
                        '()
                        _L8584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24586
                                                          __tmp24585)))
                                                 (__tmp24583
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp24584 __tmp24583))))
                                      (declare (not safe))
                                      (cons _L8586_ __tmp24582))))
                               (declare (not safe))
                               (cons __tmp24587 __tmp24581)))
                           _expr85218580_
                           _hd85118548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85168560_
                                                   _target85138554_
                                                   '()))
                                                (_g85038527_ _g85048531_)))))
                                      (_g85038527_ _g85048531_))))
                              (_g85038527_ _g85048531_))))
                      (_g85038527_ _g85048531_)))))
          (_g85028612_ _$stx8499_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#unless|
      (lambda (_$stx8617_)
        (let* ((_g86218645_
                (lambda (_g86228641_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86228641_)))
               (_g86208730_
                (lambda (_g86228649_)
                  (if (gx#stx-pair? _g86228649_)
                      (let ((_e86278652_ (gx#syntax-e _g86228649_)))
                        (let ((_hd86268656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86278652_)))
                              (_tl86258659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86278652_))))
                          (if (gx#stx-pair? _tl86258659_)
                              (let ((_e86308662_ (gx#syntax-e _tl86258659_)))
                                (let ((_hd86298666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86308662_)))
                                      (_tl86288669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86308662_))))
                                  (if (gx#stx-pair/null? _tl86288669_)
                                      (let ((_g24588_
                                             (gx#syntax-split-splice
                                              _tl86288669_
                                              '0)))
                                        (begin
                                          (let ((_g24589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24588_)
                                                       (##vector-length
                                                        _g24588_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24589_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24589_)))
                                          (let ((_target86318672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24588_ 0)))
                                                (_tl86338675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24588_ 1))))
                                            (if (gx#stx-null? _tl86338675_)
                                                (letrec ((_loop86348678_
                                                          (lambda (_hd86328682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr86388685_)
                    (if (gx#stx-pair? _hd86328682_)
                        (let ((_e86358688_ (gx#syntax-e _hd86328682_)))
                          (let ((_lp-hd86368692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86358688_)))
                                (_lp-tl86378695_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86358688_))))
                            (_loop86348678_
                             _lp-tl86378695_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd86368692_ _expr86388685_)))))
                        (let ((_expr86398698_ (reverse _expr86388685_)))
                          ((lambda (_L8702_ _L8704_)
                             (let ((__tmp24596 (gx#datum->syntax '#f 'if))
                                   (__tmp24590
                                    (let ((__tmp24591
                                           (let ((__tmp24592
                                                  (let ((__tmp24593
                                                         (let ((__tmp24595
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp24594
                        (foldr (lambda (_g87218724_ _g87228727_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87218724_ _g87228727_)))
                               '()
                               _L8702_)))
                   (declare (not safe))
                   (cons __tmp24595 __tmp24594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24593 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp24592))))
                                      (declare (not safe))
                                      (cons _L8704_ __tmp24591))))
                               (declare (not safe))
                               (cons __tmp24596 __tmp24590)))
                           _expr86398698_
                           _hd86298666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86348678_
                                                   _target86318672_
                                                   '()))
                                                (_g86218645_ _g86228649_)))))
                                      (_g86218645_ _g86228649_))))
                              (_g86218645_ _g86228649_))))
                      (_g86218645_ _g86228649_)))))
          (_g86208730_ _$stx8617_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx8735_)
        (let* ((_g87388762_
                (lambda (_g87398758_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g87398758_)))
               (_g87378847_
                (lambda (_g87398766_)
                  (if (gx#stx-pair? _g87398766_)
                      (let ((_e87448769_ (gx#syntax-e _g87398766_)))
                        (let ((_hd87438773_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87448769_)))
                              (_tl87428776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87448769_))))
                          (if (gx#stx-pair? _tl87428776_)
                              (let ((_e87478779_ (gx#syntax-e _tl87428776_)))
                                (let ((_hd87468783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87478779_)))
                                      (_tl87458786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87478779_))))
                                  (if (gx#stx-pair/null? _tl87458786_)
                                      (let ((_g24597_
                                             (gx#syntax-split-splice
                                              _tl87458786_
                                              '0)))
                                        (begin
                                          (let ((_g24598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24597_)
                                                       (##vector-length
                                                        _g24597_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24598_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24598_)))
                                          (let ((_target87488789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24597_ 0)))
                                                (_tl87508792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24597_ 1))))
                                            (if (gx#stx-null? _tl87508792_)
                                                (letrec ((_loop87518795_
                                                          (lambda (_hd87498799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail87558802_)
                    (if (gx#stx-pair? _hd87498799_)
                        (let ((_e87528805_ (gx#syntax-e _hd87498799_)))
                          (let ((_lp-hd87538809_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87528805_)))
                                (_lp-tl87548812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87528805_))))
                            (_loop87518795_
                             _lp-tl87548812_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd87538809_ _detail87558802_)))))
                        (let ((_detail87568815_ (reverse _detail87558802_)))
                          ((lambda (_L8819_ _L8821_)
                             (if (gx#stx-string? _L8821_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L8821_)
                                        _stx8735_
                                        (gx#syntax->list
                                         (foldr (lambda (_g88388841_
                                                         _g88398844_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g88388841_
                                                          _g88398844_)))
                                                '()
                                                _L8819_)))
                                 (_g87388762_ _g87398766_)))
                           _detail87568815_
                           _hd87468783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87518795_
                                                   _target87488789_
                                                   '()))
                                                (_g87388762_ _g87398766_)))))
                                      (_g87388762_ _g87398766_))))
                              (_g87388762_ _g87398766_))))
                      (_g87388762_ _g87398766_)))))
          (_g87378847_ _stx8735_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defmutable|
      (lambda (_$stx8852_)
        (let* ((_g88568874_
                (lambda (_g88578870_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g88578870_)))
               (_g88558929_
                (lambda (_g88578878_)
                  (if (gx#stx-pair? _g88578878_)
                      (let ((_e88628881_ (gx#syntax-e _g88578878_)))
                        (let ((_hd88618885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88628881_)))
                              (_tl88608888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88628881_))))
                          (if (gx#stx-pair? _tl88608888_)
                              (let ((_e88658891_ (gx#syntax-e _tl88608888_)))
                                (let ((_hd88648895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88658891_)))
                                      (_tl88638898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88658891_))))
                                  (if (gx#stx-pair? _tl88638898_)
                                      (let ((_e88688901_
                                             (gx#syntax-e _tl88638898_)))
                                        (let ((_hd88678905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88688901_)))
                                              (_tl88668908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88688901_))))
                                          (if (gx#stx-null? _tl88668908_)
                                              ((lambda (_L8911_ _L8913_)
                                                 (let ((__tmp24612
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24599
                                                        (let ((__tmp24608
                                                               (let ((__tmp24611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp24609
                              (let ((__tmp24610
                                     (let ()
                                       (declare (not safe))
                                       (cons _L8911_ '()))))
                                (declare (not safe))
                                (cons _L8913_ __tmp24610))))
                         (declare (not safe))
                         (cons __tmp24611 __tmp24609)))
                      (__tmp24600
                       (let ((__tmp24604
                              (let ((__tmp24607 (gx#datum->syntax '#f '%#set!))
                                    (__tmp24605
                                     (let ((__tmp24606
                                            (let ()
                                              (declare (not safe))
                                              (cons _L8913_ '()))))
                                       (declare (not safe))
                                       (cons _L8913_ __tmp24606))))
                                (declare (not safe))
                                (cons __tmp24607 __tmp24605)))
                             (__tmp24601
                              (let ((__tmp24602
                                     (let ((__tmp24603
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp24603 '()))))
                                (declare (not safe))
                                (cons __tmp24602 '()))))
                         (declare (not safe))
                         (cons __tmp24604 __tmp24601))))
                  (declare (not safe))
                  (cons __tmp24608 __tmp24600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24612
                                                         __tmp24599)))
                                               _hd88678905_
                                               _hd88648895_)
                                              (_g88568874_ _g88578878_))))
                                      (_g88568874_ _g88578878_))))
                              (_g88568874_ _g88578878_))))
                      (_g88568874_ _g88578878_)))))
          (_g88558929_ _$stx8852_))))))
