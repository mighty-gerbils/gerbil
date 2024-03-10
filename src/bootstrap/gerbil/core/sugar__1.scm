(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24497_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24498_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24575_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24576_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defrules|
      (lambda (_$stx5693_)
        (let* ((_g56975725_
                (lambda (_g56985721_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g56985721_)))
               (_g56965826_
                (lambda (_g56985729_)
                  (if (gx#stx-pair? _g56985729_)
                      (let ((_e57025732_ (gx#syntax-e _g56985729_)))
                        (let ((_hd57035736_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57025732_)))
                              (_tl57045739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57025732_))))
                          (if (gx#stx-pair? _tl57045739_)
                              (let ((_e57055742_ (gx#syntax-e _tl57045739_)))
                                (let ((_hd57065746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57055742_)))
                                      (_tl57075749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57055742_))))
                                  (if (gx#stx-pair? _tl57075749_)
                                      (let ((_e57085752_
                                             (gx#syntax-e _tl57075749_)))
                                        (let ((_hd57095756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57085752_)))
                                              (_tl57105759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57085752_))))
                                          (if (gx#stx-pair/null? _tl57105759_)
                                              (let ((_g24416_
                                                     (gx#syntax-split-splice
                                                      _tl57105759_
                                                      '0)))
                                                (begin
                                                  (let ((_g24417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g24416_)
                                                               (##vector-length
                                                                _g24416_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g24417_ 2)))
                (error "Context expects 2 values" _g24417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target57115762_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24416_
                                                            0)))
                                                        (_tl57135765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24416_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl57135765_)
                                                        (letrec ((_loop57145768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd57125772_ _clauses57185775_)
                            (if (gx#stx-pair? _hd57125772_)
                                (let ((_e57155778_ (gx#syntax-e _hd57125772_)))
                                  (let ((_lp-hd57165782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e57155778_)))
                                        (_lp-tl57175785_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e57155778_))))
                                    (_loop57145768_
                                     _lp-tl57175785_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd57165782_
                                             _clauses57185775_)))))
                                (let ((_clauses57195788_
                                       (reverse _clauses57185775_)))
                                  ((lambda (_L5792_ _L5794_ _L5795_)
                                     (if (gx#identifier? _L5795_)
                                         (let ((__tmp24424
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp24418
                                                (let ((__tmp24419
                                                       (let ((__tmp24420
                                                              (let ((__tmp24423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp24421
                             (let ((__tmp24422
                                    (foldr (lambda (_g58175820_ _g58185823_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g58175820_ _g58185823_)))
                                           '()
                                           _L5792_)))
                               (declare (not safe))
                               (cons _L5794_ __tmp24422))))
                        (declare (not safe))
                        (cons __tmp24423 __tmp24421))))
                 (declare (not safe))
                 (cons __tmp24420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L5795_ __tmp24419))))
                                           (declare (not safe))
                                           (cons __tmp24424 __tmp24418))
                                         (_g56975725_ _g56985729_)))
                                   _clauses57195788_
                                   _hd57095756_
                                   _hd57065746_))))))
                  (_loop57145768_ _target57115762_ '()))
                (_g56975725_ _g56985729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g56975725_ _g56985729_))))
                                      (_g56975725_ _g56985729_))))
                              (_g56975725_ _g56985729_))))
                      (_g56975725_ _g56985729_)))))
          (_g56965826_ _$stx5693_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx5831_)
        (let* ((___stx2206522066_ _$stx5831_)
               (_g58365875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2206522066_))))
          (let ((___kont2206822069_
                 (lambda (_L5997_ _L5999_ _L6000_)
                   (let ((__tmp24431 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24425
                          (let ((__tmp24426
                                 (let ((__tmp24427
                                        (let ((__tmp24430
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24428
                                               (let ((__tmp24429
                                                      (foldr (lambda (_g60196022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g60206025_)
                       (let ()
                         (declare (not safe))
                         (cons _g60196022_ _g60206025_)))
                     '()
                     _L5997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L5999_ __tmp24429))))
                                          (declare (not safe))
                                          (cons __tmp24430 __tmp24428))))
                                   (declare (not safe))
                                   (cons __tmp24427 '()))))
                            (declare (not safe))
                            (cons _L6000_ __tmp24426))))
                     (declare (not safe))
                     (cons __tmp24431 __tmp24425))))
                (___kont2207222073_
                 (lambda (_L5912_ _L5914_)
                   (let ((__tmp24434 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24432
                          (let ((__tmp24433
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5912_ '()))))
                            (declare (not safe))
                            (cons _L5914_ __tmp24433))))
                     (declare (not safe))
                     (cons __tmp24434 __tmp24432)))))
            (let* ((___match2212022121_
                    (lambda (_e58615882_
                             _hd58625886_
                             _tl58635889_
                             _e58645892_
                             _hd58655896_
                             _tl58665899_
                             _e58675902_
                             _hd58685906_
                             _tl58695909_)
                      (let ((_L5912_ _hd58685906_) (_L5914_ _hd58655896_))
                        (if (gx#identifier? _L5914_)
                            (___kont2207222073_ _L5912_ _L5914_)
                            (let () (declare (not safe)) (_g58365875_))))))
                   (___match2211222113_
                    (lambda (_e58615882_
                             _hd58625886_
                             _tl58635889_
                             _e58645892_
                             _hd58655896_
                             _tl58665899_)
                      (if (gx#stx-pair? _tl58665899_)
                          (let ((_e58675902_ (gx#syntax-e _tl58665899_)))
                            (let ((_tl58695909_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58675902_)))
                                  (_hd58685906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58675902_))))
                              (if (gx#stx-null? _tl58695909_)
                                  (___match2212022121_
                                   _e58615882_
                                   _hd58625886_
                                   _tl58635889_
                                   _e58645892_
                                   _hd58655896_
                                   _tl58665899_
                                   _e58675902_
                                   _hd58685906_
                                   _tl58695909_)
                                  (let ()
                                    (declare (not safe))
                                    (_g58365875_)))))
                          (let () (declare (not safe)) (_g58365875_)))))
                   (___match2210022101_
                    (lambda (_e58415937_
                             _hd58425941_
                             _tl58435944_
                             _e58445947_
                             _hd58455951_
                             _tl58465954_
                             _e58475957_
                             _hd58485961_
                             _tl58495964_
                             ___splice2207022071_
                             _target58505967_
                             _tl58525970_)
                      (letrec ((_loop58535973_
                                (lambda (_hd58515977_ _body58575980_)
                                  (if (gx#stx-pair? _hd58515977_)
                                      (let ((_e58545983_
                                             (gx#syntax-e _hd58515977_)))
                                        (let ((_lp-tl58565990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58545983_)))
                                              (_lp-hd58555987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58545983_))))
                                          (_loop58535973_
                                           _lp-tl58565990_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd58555987_
                                                   _body58575980_)))))
                                      (let ((_body58585993_
                                             (reverse _body58575980_)))
                                        (let ((_L5997_ _body58585993_)
                                              (_L5999_ _tl58495964_)
                                              (_L6000_ _hd58485961_))
                                          (if (gx#identifier? _L6000_)
                                              (___kont2206822069_
                                               _L5997_
                                               _L5999_
                                               _L6000_)
                                              (___match2211222113_
                                               _e58415937_
                                               _hd58425941_
                                               _tl58435944_
                                               _e58445947_
                                               _hd58455951_
                                               _tl58465954_))))))))
                        (_loop58535973_ _target58505967_ '())))))
              (if (gx#stx-pair? ___stx2206522066_)
                  (let ((_e58415937_ (gx#syntax-e ___stx2206522066_)))
                    (let ((_tl58435944_
                           (let () (declare (not safe)) (##cdr _e58415937_)))
                          (_hd58425941_
                           (let () (declare (not safe)) (##car _e58415937_))))
                      (if (gx#stx-pair? _tl58435944_)
                          (let ((_e58445947_ (gx#syntax-e _tl58435944_)))
                            (let ((_tl58465954_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58445947_)))
                                  (_hd58455951_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58445947_))))
                              (if (gx#stx-pair? _hd58455951_)
                                  (let ((_e58475957_
                                         (gx#syntax-e _hd58455951_)))
                                    (let ((_tl58495964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e58475957_)))
                                          (_hd58485961_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e58475957_))))
                                      (if (gx#stx-pair/null? _tl58465954_)
                                          (let ((___splice2207022071_
                                                 (gx#syntax-split-splice
                                                  _tl58465954_
                                                  '0)))
                                            (let ((_tl58525970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207022071_
                                                      '1)))
                                                  (_target58505967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207022071_
                                                      '0))))
                                              (if (gx#stx-null? _tl58525970_)
                                                  (___match2210022101_
                                                   _e58415937_
                                                   _hd58425941_
                                                   _tl58435944_
                                                   _e58445947_
                                                   _hd58455951_
                                                   _tl58465954_
                                                   _e58475957_
                                                   _hd58485961_
                                                   _tl58495964_
                                                   ___splice2207022071_
                                                   _target58505967_
                                                   _tl58525970_)
                                                  (if (gx#stx-pair?
                                                       _tl58465954_)
                                                      (let ((_e58675902_
                                                             (gx#syntax-e
                                                              _tl58465954_)))
                                                        (let ((_tl58695909_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e58675902_)))
                      (_hd58685906_
                       (let () (declare (not safe)) (##car _e58675902_))))
                  (if (gx#stx-null? _tl58695909_)
                      (___match2212022121_
                       _e58415937_
                       _hd58425941_
                       _tl58435944_
                       _e58445947_
                       _hd58455951_
                       _tl58465954_
                       _e58675902_
                       _hd58685906_
                       _tl58695909_)
                      (let () (declare (not safe)) (_g58365875_)))))
              (let () (declare (not safe)) (_g58365875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl58465954_)
                                              (let ((_e58675902_
                                                     (gx#syntax-e
                                                      _tl58465954_)))
                                                (let ((_tl58695909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58675902_)))
                                                      (_hd58685906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58675902_))))
                                                  (if (gx#stx-null?
                                                       _tl58695909_)
                                                      (___match2212022121_
                                                       _e58415937_
                                                       _hd58425941_
                                                       _tl58435944_
                                                       _e58445947_
                                                       _hd58455951_
                                                       _tl58465954_
                                                       _e58675902_
                                                       _hd58685906_
                                                       _tl58695909_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g58365875_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g58365875_))))))
                                  (if (gx#stx-pair? _tl58465954_)
                                      (let ((_e58675902_
                                             (gx#syntax-e _tl58465954_)))
                                        (let ((_tl58695909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58675902_)))
                                              (_hd58685906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58675902_))))
                                          (if (gx#stx-null? _tl58695909_)
                                              (___match2212022121_
                                               _e58415937_
                                               _hd58425941_
                                               _tl58435944_
                                               _e58445947_
                                               _hd58455951_
                                               _tl58465954_
                                               _e58675902_
                                               _hd58685906_
                                               _tl58695909_)
                                              (let ()
                                                (declare (not safe))
                                                (_g58365875_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g58365875_))))))
                          (let () (declare (not safe)) (_g58365875_)))))
                  (let () (declare (not safe)) (_g58365875_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#define|
      (lambda (_$stx6033_)
        (let* ((___stx2212322124_ _$stx6033_)
               (_g60386077_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2212322124_))))
          (let ((___kont2212622127_
                 (lambda (_L6199_ _L6201_ _L6202_)
                   (let ((__tmp24442 (gx#datum->syntax '#f 'define-values))
                         (__tmp24435
                          (let ((__tmp24441
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6202_ '())))
                                (__tmp24436
                                 (let ((__tmp24437
                                        (let ((__tmp24440
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24438
                                               (let ((__tmp24439
                                                      (foldr (lambda (_g62216224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g62226227_)
                       (let ()
                         (declare (not safe))
                         (cons _g62216224_ _g62226227_)))
                     '()
                     _L6199_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6201_ __tmp24439))))
                                          (declare (not safe))
                                          (cons __tmp24440 __tmp24438))))
                                   (declare (not safe))
                                   (cons __tmp24437 '()))))
                            (declare (not safe))
                            (cons __tmp24441 __tmp24436))))
                     (declare (not safe))
                     (cons __tmp24442 __tmp24435))))
                (___kont2213022131_
                 (lambda (_L6114_ _L6116_)
                   (let ((__tmp24446 (gx#datum->syntax '#f 'define-values))
                         (__tmp24443
                          (let ((__tmp24445
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6116_ '())))
                                (__tmp24444
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6114_ '()))))
                            (declare (not safe))
                            (cons __tmp24445 __tmp24444))))
                     (declare (not safe))
                     (cons __tmp24446 __tmp24443)))))
            (let* ((___match2217822179_
                    (lambda (_e60636084_
                             _hd60646088_
                             _tl60656091_
                             _e60666094_
                             _hd60676098_
                             _tl60686101_
                             _e60696104_
                             _hd60706108_
                             _tl60716111_)
                      (let ((_L6114_ _hd60706108_) (_L6116_ _hd60676098_))
                        (if (gx#identifier? _L6116_)
                            (___kont2213022131_ _L6114_ _L6116_)
                            (let () (declare (not safe)) (_g60386077_))))))
                   (___match2217022171_
                    (lambda (_e60636084_
                             _hd60646088_
                             _tl60656091_
                             _e60666094_
                             _hd60676098_
                             _tl60686101_)
                      (if (gx#stx-pair? _tl60686101_)
                          (let ((_e60696104_ (gx#syntax-e _tl60686101_)))
                            (let ((_tl60716111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60696104_)))
                                  (_hd60706108_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60696104_))))
                              (if (gx#stx-null? _tl60716111_)
                                  (___match2217822179_
                                   _e60636084_
                                   _hd60646088_
                                   _tl60656091_
                                   _e60666094_
                                   _hd60676098_
                                   _tl60686101_
                                   _e60696104_
                                   _hd60706108_
                                   _tl60716111_)
                                  (let ()
                                    (declare (not safe))
                                    (_g60386077_)))))
                          (let () (declare (not safe)) (_g60386077_)))))
                   (___match2215822159_
                    (lambda (_e60436139_
                             _hd60446143_
                             _tl60456146_
                             _e60466149_
                             _hd60476153_
                             _tl60486156_
                             _e60496159_
                             _hd60506163_
                             _tl60516166_
                             ___splice2212822129_
                             _target60526169_
                             _tl60546172_)
                      (letrec ((_loop60556175_
                                (lambda (_hd60536179_ _body60596182_)
                                  (if (gx#stx-pair? _hd60536179_)
                                      (let ((_e60566185_
                                             (gx#syntax-e _hd60536179_)))
                                        (let ((_lp-tl60586192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60566185_)))
                                              (_lp-hd60576189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60566185_))))
                                          (_loop60556175_
                                           _lp-tl60586192_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd60576189_
                                                   _body60596182_)))))
                                      (let ((_body60606195_
                                             (reverse _body60596182_)))
                                        (let ((_L6199_ _body60606195_)
                                              (_L6201_ _tl60516166_)
                                              (_L6202_ _hd60506163_))
                                          (if (gx#identifier? _L6202_)
                                              (___kont2212622127_
                                               _L6199_
                                               _L6201_
                                               _L6202_)
                                              (___match2217022171_
                                               _e60436139_
                                               _hd60446143_
                                               _tl60456146_
                                               _e60466149_
                                               _hd60476153_
                                               _tl60486156_))))))))
                        (_loop60556175_ _target60526169_ '())))))
              (if (gx#stx-pair? ___stx2212322124_)
                  (let ((_e60436139_ (gx#syntax-e ___stx2212322124_)))
                    (let ((_tl60456146_
                           (let () (declare (not safe)) (##cdr _e60436139_)))
                          (_hd60446143_
                           (let () (declare (not safe)) (##car _e60436139_))))
                      (if (gx#stx-pair? _tl60456146_)
                          (let ((_e60466149_ (gx#syntax-e _tl60456146_)))
                            (let ((_tl60486156_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60466149_)))
                                  (_hd60476153_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60466149_))))
                              (if (gx#stx-pair? _hd60476153_)
                                  (let ((_e60496159_
                                         (gx#syntax-e _hd60476153_)))
                                    (let ((_tl60516166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60496159_)))
                                          (_hd60506163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60496159_))))
                                      (if (gx#stx-pair/null? _tl60486156_)
                                          (let ((___splice2212822129_
                                                 (gx#syntax-split-splice
                                                  _tl60486156_
                                                  '0)))
                                            (let ((_tl60546172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2212822129_
                                                      '1)))
                                                  (_target60526169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2212822129_
                                                      '0))))
                                              (if (gx#stx-null? _tl60546172_)
                                                  (___match2215822159_
                                                   _e60436139_
                                                   _hd60446143_
                                                   _tl60456146_
                                                   _e60466149_
                                                   _hd60476153_
                                                   _tl60486156_
                                                   _e60496159_
                                                   _hd60506163_
                                                   _tl60516166_
                                                   ___splice2212822129_
                                                   _target60526169_
                                                   _tl60546172_)
                                                  (if (gx#stx-pair?
                                                       _tl60486156_)
                                                      (let ((_e60696104_
                                                             (gx#syntax-e
                                                              _tl60486156_)))
                                                        (let ((_tl60716111_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e60696104_)))
                      (_hd60706108_
                       (let () (declare (not safe)) (##car _e60696104_))))
                  (if (gx#stx-null? _tl60716111_)
                      (___match2217822179_
                       _e60436139_
                       _hd60446143_
                       _tl60456146_
                       _e60466149_
                       _hd60476153_
                       _tl60486156_
                       _e60696104_
                       _hd60706108_
                       _tl60716111_)
                      (let () (declare (not safe)) (_g60386077_)))))
              (let () (declare (not safe)) (_g60386077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl60486156_)
                                              (let ((_e60696104_
                                                     (gx#syntax-e
                                                      _tl60486156_)))
                                                (let ((_tl60716111_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60696104_)))
                                                      (_hd60706108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60696104_))))
                                                  (if (gx#stx-null?
                                                       _tl60716111_)
                                                      (___match2217822179_
                                                       _e60436139_
                                                       _hd60446143_
                                                       _tl60456146_
                                                       _e60466149_
                                                       _hd60476153_
                                                       _tl60486156_
                                                       _e60696104_
                                                       _hd60706108_
                                                       _tl60716111_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g60386077_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g60386077_))))))
                                  (if (gx#stx-pair? _tl60486156_)
                                      (let ((_e60696104_
                                             (gx#syntax-e _tl60486156_)))
                                        (let ((_tl60716111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60696104_)))
                                              (_hd60706108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60696104_))))
                                          (if (gx#stx-null? _tl60716111_)
                                              (___match2217822179_
                                               _e60436139_
                                               _hd60446143_
                                               _tl60456146_
                                               _e60466149_
                                               _hd60476153_
                                               _tl60486156_
                                               _e60696104_
                                               _hd60706108_
                                               _tl60716111_)
                                              (let ()
                                                (declare (not safe))
                                                (_g60386077_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60386077_))))))
                          (let () (declare (not safe)) (_g60386077_)))))
                  (let () (declare (not safe)) (_g60386077_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx6235_)
        (let* ((___stx2218122182_ _$stx6235_)
               (_g62406285_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2218122182_))))
          (let ((___kont2218422185_
                 (lambda (_L6443_)
                   (let ((__tmp24449 (gx#datum->syntax '#f 'let-values))
                         (__tmp24447
                          (let ((__tmp24448
                                 (foldr (lambda (_g64596462_ _g64606465_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g64596462_ _g64606465_)))
                                        '()
                                        _L6443_)))
                            (declare (not safe))
                            (cons '() __tmp24448))))
                     (declare (not safe))
                     (cons __tmp24449 __tmp24447))))
                (___kont2218822189_
                 (lambda (_L6352_ _L6354_ _L6355_ _L6356_)
                   (let ((__tmp24456 (gx#datum->syntax '#f 'let-values))
                         (__tmp24450
                          (let ((__tmp24455
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6355_ '())))
                                (__tmp24451
                                 (let ((__tmp24452
                                        (let ((__tmp24453
                                               (let ((__tmp24454
                                                      (foldr (lambda (_g63776380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g63786383_)
                       (let ()
                         (declare (not safe))
                         (cons _g63776380_ _g63786383_)))
                     '()
                     _L6352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6354_ __tmp24454))))
                                          (declare (not safe))
                                          (cons _L6356_ __tmp24453))))
                                   (declare (not safe))
                                   (cons __tmp24452 '()))))
                            (declare (not safe))
                            (cons __tmp24455 __tmp24451))))
                     (declare (not safe))
                     (cons __tmp24456 __tmp24450)))))
            (let* ((___match2224022241_
                    (lambda (_e62626292_
                             _hd62636296_
                             _tl62646299_
                             _e62656302_
                             _hd62666306_
                             _tl62676309_
                             _e62686312_
                             _hd62696316_
                             _tl62706319_
                             ___splice2219022191_
                             _target62716322_
                             _tl62736325_)
                      (letrec ((_loop62746328_
                                (lambda (_hd62726332_ _body62786335_)
                                  (if (gx#stx-pair? _hd62726332_)
                                      (let ((_e62756338_
                                             (gx#syntax-e _hd62726332_)))
                                        (let ((_lp-tl62776345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62756338_)))
                                              (_lp-hd62766342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62756338_))))
                                          (_loop62746328_
                                           _lp-tl62776345_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62766342_
                                                   _body62786335_)))))
                                      (let ((_body62796348_
                                             (reverse _body62786335_)))
                                        (___kont2218822189_
                                         _body62796348_
                                         _tl62706319_
                                         _hd62696316_
                                         _hd62636296_))))))
                        (_loop62746328_ _target62716322_ '()))))
                   (___match2221422215_
                    (lambda (_e62436393_
                             _hd62446397_
                             _tl62456400_
                             _e62466403_
                             _hd62476407_
                             _tl62486410_
                             ___splice2218622187_
                             _target62496413_
                             _tl62516416_)
                      (letrec ((_loop62526419_
                                (lambda (_hd62506423_ _body62566426_)
                                  (if (gx#stx-pair? _hd62506423_)
                                      (let ((_e62536429_
                                             (gx#syntax-e _hd62506423_)))
                                        (let ((_lp-tl62556436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62536429_)))
                                              (_lp-hd62546433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62536429_))))
                                          (_loop62526419_
                                           _lp-tl62556436_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62546433_
                                                   _body62566426_)))))
                                      (let ((_body62576439_
                                             (reverse _body62566426_)))
                                        (___kont2218422185_
                                         _body62576439_))))))
                        (_loop62526419_ _target62496413_ '())))))
              (if (gx#stx-pair? ___stx2218122182_)
                  (let ((_e62436393_ (gx#syntax-e ___stx2218122182_)))
                    (let ((_tl62456400_
                           (let () (declare (not safe)) (##cdr _e62436393_)))
                          (_hd62446397_
                           (let () (declare (not safe)) (##car _e62436393_))))
                      (if (gx#stx-pair? _tl62456400_)
                          (let ((_e62466403_ (gx#syntax-e _tl62456400_)))
                            (let ((_tl62486410_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62466403_)))
                                  (_hd62476407_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62466403_))))
                              (if (gx#stx-null? _hd62476407_)
                                  (if (gx#stx-pair/null? _tl62486410_)
                                      (let ((___splice2218622187_
                                             (gx#syntax-split-splice
                                              _tl62486410_
                                              '0)))
                                        (let ((_tl62516416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218622187_
                                                  '1)))
                                              (_target62496413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218622187_
                                                  '0))))
                                          (if (gx#stx-null? _tl62516416_)
                                              (___match2221422215_
                                               _e62436393_
                                               _hd62446397_
                                               _tl62456400_
                                               _e62466403_
                                               _hd62476407_
                                               _tl62486410_
                                               ___splice2218622187_
                                               _target62496413_
                                               _tl62516416_)
                                              (let ()
                                                (declare (not safe))
                                                (_g62406285_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62406285_)))
                                  (if (gx#stx-pair? _hd62476407_)
                                      (let ((_e62686312_
                                             (gx#syntax-e _hd62476407_)))
                                        (let ((_tl62706319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62686312_)))
                                              (_hd62696316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62686312_))))
                                          (if (gx#stx-pair/null? _tl62486410_)
                                              (let ((___splice2219022191_
                                                     (gx#syntax-split-splice
                                                      _tl62486410_
                                                      '0)))
                                                (let ((_tl62736325_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219022191_
                                                          '1)))
                                                      (_target62716322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219022191_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl62736325_)
                                                      (___match2224022241_
                                                       _e62436393_
                                                       _hd62446397_
                                                       _tl62456400_
                                                       _e62466403_
                                                       _hd62476407_
                                                       _tl62486410_
                                                       _e62686312_
                                                       _hd62696316_
                                                       _tl62706319_
                                                       ___splice2219022191_
                                                       _target62716322_
                                                       _tl62736325_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g62406285_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g62406285_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62406285_))))))
                          (let () (declare (not safe)) (_g62406285_)))))
                  (let () (declare (not safe)) (_g62406285_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let|
      (lambda (_$stx6474_)
        (let* ((___stx2224322244_ _$stx6474_)
               (_g64796543_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2224322244_))))
          (let ((___kont2224622247_
                 (lambda (_L6749_ _L6751_ _L6752_ _L6753_ _L6754_)
                   (let ((__tmp24458
                          (let ((__tmp24470
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp24459
                                 (let ((__tmp24461
                                        (let ((__tmp24462
                                               (let ((__tmp24469
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L6754_ '())))
                                                     (__tmp24463
                                                      (let ((__tmp24464
                                                             (let ((__tmp24468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp24465
                            (let ((__tmp24467
                                   (foldr (lambda (_g67796786_ _g67806789_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67796786_ _g67806789_)))
                                          _L6751_
                                          _L6753_))
                                  (__tmp24466
                                   (foldr (lambda (_g67816792_ _g67826795_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67816792_ _g67826795_)))
                                          '()
                                          _L6749_)))
                              (declare (not safe))
                              (cons __tmp24467 __tmp24466))))
                       (declare (not safe))
                       (cons __tmp24468 __tmp24465))))
                (declare (not safe))
                (cons __tmp24464 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24469
                                                       __tmp24463))))
                                          (declare (not safe))
                                          (cons __tmp24462 '())))
                                       (__tmp24460
                                        (let ()
                                          (declare (not safe))
                                          (cons _L6754_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24461 __tmp24460))))
                            (declare (not safe))
                            (cons __tmp24470 __tmp24459)))
                         (__tmp24457
                          (foldr (lambda (_g67836798_ _g67846801_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g67836798_ _g67846801_)))
                                 '()
                                 _L6752_)))
                     (declare (not safe))
                     (cons __tmp24458 __tmp24457))))
                (___kont2225222253_
                 (lambda (_L6600_ _L6602_)
                   (let ((__tmp24475 (gx#datum->syntax '#f '~let))
                         (__tmp24471
                          (let ((__tmp24474 (gx#datum->syntax '#f 'let-values))
                                (__tmp24472
                                 (let ((__tmp24473
                                        (foldr (lambda (_g66196622_
                                                        _g66206625_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g66196622_
                                                         _g66206625_)))
                                               '()
                                               _L6600_)))
                                   (declare (not safe))
                                   (cons _L6602_ __tmp24473))))
                            (declare (not safe))
                            (cons __tmp24474 __tmp24472))))
                     (declare (not safe))
                     (cons __tmp24475 __tmp24471)))))
            (let* ((___match2230022301_
                    (lambda (_e65236550_
                             _hd65246554_
                             _tl65256557_
                             _e65266560_
                             _hd65276564_
                             _tl65286567_
                             ___splice2225422255_
                             _target65296570_
                             _tl65316573_)
                      (letrec ((_loop65326576_
                                (lambda (_hd65306580_ _body65366583_)
                                  (if (gx#stx-pair? _hd65306580_)
                                      (let ((_e65336586_
                                             (gx#syntax-e _hd65306580_)))
                                        (let ((_lp-tl65356593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65336586_)))
                                              (_lp-hd65346590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65336586_))))
                                          (_loop65326576_
                                           _lp-tl65356593_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd65346590_
                                                   _body65366583_)))))
                                      (let ((_body65376596_
                                             (reverse _body65366583_)))
                                        (___kont2225222253_
                                         _body65376596_
                                         _hd65276564_))))))
                        (_loop65326576_ _target65296570_ '()))))
                   (___match2229222293_
                    (lambda (_e65236550_
                             _hd65246554_
                             _tl65256557_
                             _e65266560_
                             _hd65276564_
                             _tl65286567_)
                      (if (gx#stx-pair/null? _tl65286567_)
                          (let ((___splice2225422255_
                                 (gx#syntax-split-splice _tl65286567_ '0)))
                            (let ((_tl65316573_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225422255_ '1)))
                                  (_target65296570_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225422255_ '0))))
                              (if (gx#stx-null? _tl65316573_)
                                  (___match2230022301_
                                   _e65236550_
                                   _hd65246554_
                                   _tl65256557_
                                   _e65266560_
                                   _hd65276564_
                                   _tl65286567_
                                   ___splice2225422255_
                                   _target65296570_
                                   _tl65316573_)
                                  (let ()
                                    (declare (not safe))
                                    (_g64796543_)))))
                          (let () (declare (not safe)) (_g64796543_)))))
                   (___match2228022281_
                    (lambda (_e64866635_
                             _hd64876639_
                             _tl64886642_
                             _e64896645_
                             _hd64906649_
                             _tl64916652_
                             _e64926655_
                             _hd64936659_
                             _tl64946662_
                             ___splice2224822249_
                             _target64956665_
                             _tl64976668_)
                      (letrec ((_loop64986671_
                                (lambda (_hd64966675_
                                         _arg65026678_
                                         _var65036680_)
                                  (if (gx#stx-pair? _hd64966675_)
                                      (let ((_e64996683_
                                             (gx#syntax-e _hd64966675_)))
                                        (let ((_lp-tl65016690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64996683_)))
                                              (_lp-hd65006687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64996683_))))
                                          (if (gx#stx-pair? _lp-hd65006687_)
                                              (let ((_e65066693_
                                                     (gx#syntax-e
                                                      _lp-hd65006687_)))
                                                (let ((_tl65086700_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e65066693_)))
                                                      (_hd65076697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e65066693_))))
                                                  (if (gx#stx-pair?
                                                       _tl65086700_)
                                                      (let ((_e65096703_
                                                             (gx#syntax-e
                                                              _tl65086700_)))
                                                        (let ((_tl65116710_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e65096703_)))
                      (_hd65106707_
                       (let () (declare (not safe)) (##car _e65096703_))))
                  (if (gx#stx-null? _tl65116710_)
                      (_loop64986671_
                       _lp-tl65016690_
                       (let ()
                         (declare (not safe))
                         (cons _hd65106707_ _arg65026678_))
                       (let ()
                         (declare (not safe))
                         (cons _hd65076697_ _var65036680_)))
                      (___match2229222293_
                       _e64866635_
                       _hd64876639_
                       _tl64886642_
                       _e64896645_
                       _hd64906649_
                       _tl64916652_))))
              (___match2229222293_
               _e64866635_
               _hd64876639_
               _tl64886642_
               _e64896645_
               _hd64906649_
               _tl64916652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2229222293_
                                               _e64866635_
                                               _hd64876639_
                                               _tl64886642_
                                               _e64896645_
                                               _hd64906649_
                                               _tl64916652_))))
                                      (let ((_var65056716_
                                             (reverse _var65036680_))
                                            (_arg65046713_
                                             (reverse _arg65026678_)))
                                        (if (gx#stx-pair/null? _tl64946662_)
                                            (let ((___splice2225022251_
                                                   (gx#syntax-split-splice
                                                    _tl64946662_
                                                    '0)))
                                              (let ((_tl65146722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225022251_
                                                        '1)))
                                                    (_target65126719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225022251_
                                                        '0))))
                                                (if (gx#stx-null? _tl65146722_)
                                                    (letrec ((_loop65156725_
                                                              (lambda (_hd65136729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body65196732_)
                        (if (gx#stx-pair? _hd65136729_)
                            (let ((_e65166735_ (gx#syntax-e _hd65136729_)))
                              (let ((_lp-tl65186742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65166735_)))
                                    (_lp-hd65176739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65166735_))))
                                (_loop65156725_
                                 _lp-tl65186742_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd65176739_ _body65196732_)))))
                            (let ((_body65206745_ (reverse _body65196732_)))
                              (let ((_L6749_ _body65206745_)
                                    (_L6751_ _tl64976668_)
                                    (_L6752_ _arg65046713_)
                                    (_L6753_ _var65056716_)
                                    (_L6754_ _hd64906649_))
                                (if (gx#identifier? _L6754_)
                                    (___kont2224622247_
                                     _L6749_
                                     _L6751_
                                     _L6752_
                                     _L6753_
                                     _L6754_)
                                    (___match2229222293_
                                     _e64866635_
                                     _hd64876639_
                                     _tl64886642_
                                     _e64896645_
                                     _hd64906649_
                                     _tl64916652_))))))))
              (_loop65156725_ _target65126719_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2229222293_
                                                     _e64866635_
                                                     _hd64876639_
                                                     _tl64886642_
                                                     _e64896645_
                                                     _hd64906649_
                                                     _tl64916652_))))
                                            (___match2229222293_
                                             _e64866635_
                                             _hd64876639_
                                             _tl64886642_
                                             _e64896645_
                                             _hd64906649_
                                             _tl64916652_)))))))
                        (_loop64986671_ _target64956665_ '() '())))))
              (if (gx#stx-pair? ___stx2224322244_)
                  (let ((_e64866635_ (gx#syntax-e ___stx2224322244_)))
                    (let ((_tl64886642_
                           (let () (declare (not safe)) (##cdr _e64866635_)))
                          (_hd64876639_
                           (let () (declare (not safe)) (##car _e64866635_))))
                      (if (gx#stx-pair? _tl64886642_)
                          (let ((_e64896645_ (gx#syntax-e _tl64886642_)))
                            (let ((_tl64916652_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e64896645_)))
                                  (_hd64906649_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e64896645_))))
                              (if (gx#stx-pair? _tl64916652_)
                                  (let ((_e64926655_
                                         (gx#syntax-e _tl64916652_)))
                                    (let ((_tl64946662_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e64926655_)))
                                          (_hd64936659_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e64926655_))))
                                      (if (gx#stx-pair/null? _hd64936659_)
                                          (let ((___splice2224822249_
                                                 (gx#syntax-split-splice
                                                  _hd64936659_
                                                  '0)))
                                            (let ((_tl64976668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2224822249_
                                                      '1)))
                                                  (_target64956665_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2224822249_
                                                      '0))))
                                              (___match2228022281_
                                               _e64866635_
                                               _hd64876639_
                                               _tl64886642_
                                               _e64896645_
                                               _hd64906649_
                                               _tl64916652_
                                               _e64926655_
                                               _hd64936659_
                                               _tl64946662_
                                               ___splice2224822249_
                                               _target64956665_
                                               _tl64976668_)))
                                          (if (gx#stx-pair/null? _tl64916652_)
                                              (let ((___splice2225422255_
                                                     (gx#syntax-split-splice
                                                      _tl64916652_
                                                      '0)))
                                                (let ((_tl65316573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225422255_
                                                          '1)))
                                                      (_target65296570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225422255_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl65316573_)
                                                      (___match2230022301_
                                                       _e64866635_
                                                       _hd64876639_
                                                       _tl64886642_
                                                       _e64896645_
                                                       _hd64906649_
                                                       _tl64916652_
                                                       ___splice2225422255_
                                                       _target65296570_
                                                       _tl65316573_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g64796543_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g64796543_))))))
                                  (if (gx#stx-pair/null? _tl64916652_)
                                      (let ((___splice2225422255_
                                             (gx#syntax-split-splice
                                              _tl64916652_
                                              '0)))
                                        (let ((_tl65316573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225422255_
                                                  '1)))
                                              (_target65296570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225422255_
                                                  '0))))
                                          (if (gx#stx-null? _tl65316573_)
                                              (___match2230022301_
                                               _e64866635_
                                               _hd64876639_
                                               _tl64886642_
                                               _e64896645_
                                               _hd64906649_
                                               _tl64916652_
                                               ___splice2225422255_
                                               _target65296570_
                                               _tl65316573_)
                                              (let ()
                                                (declare (not safe))
                                                (_g64796543_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g64796543_))))))
                          (let () (declare (not safe)) (_g64796543_)))))
                  (let () (declare (not safe)) (_g64796543_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*|
      (lambda (_$stx6811_)
        (let* ((_g68156839_
                (lambda (_g68166835_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g68166835_)))
               (_g68146924_
                (lambda (_g68166843_)
                  (if (gx#stx-pair? _g68166843_)
                      (let ((_e68196846_ (gx#syntax-e _g68166843_)))
                        (let ((_hd68206850_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68196846_)))
                              (_tl68216853_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68196846_))))
                          (if (gx#stx-pair? _tl68216853_)
                              (let ((_e68226856_ (gx#syntax-e _tl68216853_)))
                                (let ((_hd68236860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68226856_)))
                                      (_tl68246863_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68226856_))))
                                  (if (gx#stx-pair/null? _tl68246863_)
                                      (let ((_g24476_
                                             (gx#syntax-split-splice
                                              _tl68246863_
                                              '0)))
                                        (begin
                                          (let ((_g24477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24476_)
                                                       (##vector-length
                                                        _g24476_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24477_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24477_)))
                                          (let ((_target68256866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24476_ 0)))
                                                (_tl68276869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24476_ 1))))
                                            (if (gx#stx-null? _tl68276869_)
                                                (letrec ((_loop68286872_
                                                          (lambda (_hd68266876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body68326879_)
                    (if (gx#stx-pair? _hd68266876_)
                        (let ((_e68296882_ (gx#syntax-e _hd68266876_)))
                          (let ((_lp-hd68306886_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68296882_)))
                                (_lp-tl68316889_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68296882_))))
                            (_loop68286872_
                             _lp-tl68316889_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd68306886_ _body68326879_)))))
                        (let ((_body68336892_ (reverse _body68326879_)))
                          ((lambda (_L6896_ _L6898_)
                             (let ((__tmp24482 (gx#datum->syntax '#f '~let))
                                   (__tmp24478
                                    (let ((__tmp24481
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp24479
                                           (let ((__tmp24480
                                                  (foldr (lambda (_g69156918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g69166921_)
                   (let ()
                     (declare (not safe))
                     (cons _g69156918_ _g69166921_)))
                 '()
                 _L6896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L6898_ __tmp24480))))
                                      (declare (not safe))
                                      (cons __tmp24481 __tmp24479))))
                               (declare (not safe))
                               (cons __tmp24482 __tmp24478)))
                           _body68336892_
                           _hd68236860_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop68286872_
                                                   _target68256866_
                                                   '()))
                                                (_g68156839_ _g68166843_)))))
                                      (_g68156839_ _g68166843_))))
                              (_g68156839_ _g68166843_))))
                      (_g68156839_ _g68166843_)))))
          (_g68146924_ _$stx6811_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec|
      (lambda (_$stx6929_)
        (let* ((_g69336957_
                (lambda (_g69346953_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g69346953_)))
               (_g69327042_
                (lambda (_g69346961_)
                  (if (gx#stx-pair? _g69346961_)
                      (let ((_e69376964_ (gx#syntax-e _g69346961_)))
                        (let ((_hd69386968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69376964_)))
                              (_tl69396971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69376964_))))
                          (if (gx#stx-pair? _tl69396971_)
                              (let ((_e69406974_ (gx#syntax-e _tl69396971_)))
                                (let ((_hd69416978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e69406974_)))
                                      (_tl69426981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e69406974_))))
                                  (if (gx#stx-pair/null? _tl69426981_)
                                      (let ((_g24483_
                                             (gx#syntax-split-splice
                                              _tl69426981_
                                              '0)))
                                        (begin
                                          (let ((_g24484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24483_)
                                                       (##vector-length
                                                        _g24483_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24484_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24484_)))
                                          (let ((_target69436984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24483_ 0)))
                                                (_tl69456987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24483_ 1))))
                                            (if (gx#stx-null? _tl69456987_)
                                                (letrec ((_loop69466990_
                                                          (lambda (_hd69446994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body69506997_)
                    (if (gx#stx-pair? _hd69446994_)
                        (let ((_e69477000_ (gx#syntax-e _hd69446994_)))
                          (let ((_lp-hd69487004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e69477000_)))
                                (_lp-tl69497007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e69477000_))))
                            (_loop69466990_
                             _lp-tl69497007_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd69487004_ _body69506997_)))))
                        (let ((_body69517010_ (reverse _body69506997_)))
                          ((lambda (_L7014_ _L7016_)
                             (let ((__tmp24489 (gx#datum->syntax '#f '~let))
                                   (__tmp24485
                                    (let ((__tmp24488
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp24486
                                           (let ((__tmp24487
                                                  (foldr (lambda (_g70337036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g70347039_)
                   (let ()
                     (declare (not safe))
                     (cons _g70337036_ _g70347039_)))
                 '()
                 _L7014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7016_ __tmp24487))))
                                      (declare (not safe))
                                      (cons __tmp24488 __tmp24486))))
                               (declare (not safe))
                               (cons __tmp24489 __tmp24485)))
                           _body69517010_
                           _hd69416978_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop69466990_
                                                   _target69436984_
                                                   '()))
                                                (_g69336957_ _g69346961_)))))
                                      (_g69336957_ _g69346961_))))
                              (_g69336957_ _g69346961_))))
                      (_g69336957_ _g69346961_)))))
          (_g69327042_ _$stx6929_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx7047_)
        (let* ((_g70517075_
                (lambda (_g70527071_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g70527071_)))
               (_g70507160_
                (lambda (_g70527079_)
                  (if (gx#stx-pair? _g70527079_)
                      (let ((_e70557082_ (gx#syntax-e _g70527079_)))
                        (let ((_hd70567086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e70557082_)))
                              (_tl70577089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e70557082_))))
                          (if (gx#stx-pair? _tl70577089_)
                              (let ((_e70587092_ (gx#syntax-e _tl70577089_)))
                                (let ((_hd70597096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e70587092_)))
                                      (_tl70607099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e70587092_))))
                                  (if (gx#stx-pair/null? _tl70607099_)
                                      (let ((_g24490_
                                             (gx#syntax-split-splice
                                              _tl70607099_
                                              '0)))
                                        (begin
                                          (let ((_g24491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24490_)
                                                       (##vector-length
                                                        _g24490_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24491_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24491_)))
                                          (let ((_target70617102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24490_ 0)))
                                                (_tl70637105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24490_ 1))))
                                            (if (gx#stx-null? _tl70637105_)
                                                (letrec ((_loop70647108_
                                                          (lambda (_hd70627112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body70687115_)
                    (if (gx#stx-pair? _hd70627112_)
                        (let ((_e70657118_ (gx#syntax-e _hd70627112_)))
                          (let ((_lp-hd70667122_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70657118_)))
                                (_lp-tl70677125_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70657118_))))
                            (_loop70647108_
                             _lp-tl70677125_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd70667122_ _body70687115_)))))
                        (let ((_body70697128_ (reverse _body70687115_)))
                          ((lambda (_L7132_ _L7134_)
                             (let ((__tmp24496 (gx#datum->syntax '#f '~let))
                                   (__tmp24492
                                    (let ((__tmp24495
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp24493
                                           (let ((__tmp24494
                                                  (foldr (lambda (_g71517154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71527157_)
                   (let ()
                     (declare (not safe))
                     (cons _g71517154_ _g71527157_)))
                 '()
                 _L7132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7134_ __tmp24494))))
                                      (declare (not safe))
                                      (cons __tmp24495 __tmp24493))))
                               (declare (not safe))
                               (cons __tmp24496 __tmp24492)))
                           _body70697128_
                           _hd70597096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop70647108_
                                                   _target70617102_
                                                   '()))
                                                (_g70517075_ _g70527079_)))))
                                      (_g70517075_ _g70527079_))))
                              (_g70517075_ _g70527079_))))
                      (_g70517075_ _g70527079_)))))
          (_g70507160_ _$stx7047_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#~let|
      (lambda (_stx7165_)
        (letrec ((_let-head?7168_
                  (lambda (_x7648_)
                    (let* ((___stx2230322304_ _x7648_)
                           (_g76527663_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2230322304_))))
                      (let ((___kont2230622307_
                             (lambda (_L7691_)
                               (gx#stx-andmap gx#identifier? _L7691_)))
                            (___kont2230822309_
                             (lambda () (gx#identifier? _x7648_))))
                        (if (gx#stx-pair? ___stx2230322304_)
                            (let ((_e76557681_
                                   (gx#syntax-e ___stx2230322304_)))
                              (let ((_tl76577688_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76557681_)))
                                    (_hd76567685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76557681_))))
                                (if (gx#identifier? _hd76567685_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24497_|
                                         _hd76567685_)
                                        (___kont2230622307_ _tl76577688_)
                                        (___kont2230822309_))
                                    (___kont2230822309_))))
                            (___kont2230822309_))))))
                 (_let-head7170_
                  (lambda (_x7588_)
                    (let* ((___stx2232322324_ _x7588_)
                           (_g75927603_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2232322324_))))
                      (let ((___kont2232622327_ (lambda (_L7631_) _L7631_))
                            (___kont2232822329_ (lambda () (list _x7588_))))
                        (if (gx#stx-pair? ___stx2232322324_)
                            (let ((_e75957621_
                                   (gx#syntax-e ___stx2232322324_)))
                              (let ((_tl75977628_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e75957621_)))
                                    (_hd75967625_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e75957621_))))
                                (if (gx#identifier? _hd75967625_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24498_|
                                         _hd75967625_)
                                        (___kont2232622327_ _tl75977628_)
                                        (___kont2232822329_))
                                    (___kont2232822329_))))
                            (___kont2232822329_)))))))
          (let* ((___stx2234322344_ _stx7165_)
                 (_g71737239_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2234322344_))))
            (let ((___kont2234622347_
                   (lambda (_L7557_ _L7559_ _L7560_ _L7561_ _L7562_)
                     (let ((__tmp24499
                            (let ((__tmp24500
                                   (let ((__tmp24501
                                          (let ((__tmp24502
                                                 (let ((__tmp24503
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L7559_ '()))))
                                                   (declare (not safe))
                                                   (cons _L7560_ __tmp24503))))
                                            (declare (not safe))
                                            (cons __tmp24502 '()))))
                                     (declare (not safe))
                                     (cons __tmp24501 _L7557_))))
                              (declare (not safe))
                              (cons _L7561_ __tmp24500))))
                       (declare (not safe))
                       (cons _L7562_ __tmp24499))))
                  (___kont2234822349_
                   (lambda (_L7360_ _L7362_ _L7363_ _L7364_)
                     (let* ((_g73997416_
                             (lambda (_g74007412_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g74007412_)))
                            (_g73987488_
                             (lambda (_g74007420_)
                               (if (gx#stx-pair/null? _g74007420_)
                                   (let ((_g24504_
                                          (gx#syntax-split-splice
                                           _g74007420_
                                           '0)))
                                     (begin
                                       (let ((_g24505_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g24504_)
                                                    (##vector-length _g24504_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g24505_ 2)))
                                             (error "Context expects 2 values"
                                                    _g24505_)))
                                       (let ((_target74027423_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24504_ 0)))
                                             (_tl74047426_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24504_ 1))))
                                         (if (gx#stx-null? _tl74047426_)
                                             (letrec ((_loop74057429_
                                                       (lambda (_hd74037433_
                                                                _hd-bind74097436_)
                                                         (if (gx#stx-pair?
                                                              _hd74037433_)
                                                             (let ((_e74067439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd74037433_)))
                       (let ((_lp-hd74077443_
                              (let ()
                                (declare (not safe))
                                (##car _e74067439_)))
                             (_lp-tl74087446_
                              (let ()
                                (declare (not safe))
                                (##cdr _e74067439_))))
                         (_loop74057429_
                          _lp-tl74087446_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd74077443_ _hd-bind74097436_)))))
                     (let ((_hd-bind74107449_ (reverse _hd-bind74097436_)))
                       ((lambda (_L7453_)
                          (let ()
                            (let ((__tmp24506
                                   (let ((__tmp24508
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L7362_
                                             _L7453_)
                                            (foldr (lambda (_g74687474_
                                                            _g74697477_
                                                            _g74707479_)
                                                     (let ((__tmp24509
                                                            (let ((__tmp24510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g74687474_ '()))))
                      (declare (not safe))
                      (cons _g74697477_ __tmp24510))))
               (declare (not safe))
               (cons __tmp24509 _g74707479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L7362_
                                                   _L7453_)))
                                         (__tmp24507
                                          (foldr (lambda (_g74717482_
                                                          _g74727485_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g74717482_
                                                           _g74727485_)))
                                                 '()
                                                 _L7360_)))
                                     (declare (not safe))
                                     (cons __tmp24508 __tmp24507))))
                              (declare (not safe))
                              (cons _L7364_ __tmp24506))))
                        _hd-bind74107449_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop74057429_
                                                _target74027423_
                                                '()))
                                             (_g73997416_ _g74007420_)))))
                                   (_g73997416_ _g74007420_)))))
                       (_g73987488_
                        (gx#stx-map
                         _let-head7170_
                         (foldr (lambda (_g74917494_ _g74927497_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g74917494_ _g74927497_)))
                                '()
                                _L7363_)))))))
              (let* ((___match2241222413_
                      (lambda (_e71997246_
                               _hd72007250_
                               _tl72017253_
                               _e72027256_
                               _hd72037260_
                               _tl72047263_
                               _e72057266_
                               _hd72067270_
                               _tl72077273_
                               ___splice2235022351_
                               _target72087276_
                               _tl72107279_)
                        (letrec ((_loop72117282_
                                  (lambda (_hd72097286_
                                           _e72157289_
                                           _hd72167291_)
                                    (if (gx#stx-pair? _hd72097286_)
                                        (let ((_e72127294_
                                               (gx#syntax-e _hd72097286_)))
                                          (let ((_lp-tl72147301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72127294_)))
                                                (_lp-hd72137298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72127294_))))
                                            (if (gx#stx-pair? _lp-hd72137298_)
                                                (let ((_e72197304_
                                                       (gx#syntax-e
                                                        _lp-hd72137298_)))
                                                  (let ((_tl72217311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e72197304_)))
                                                        (_hd72207308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e72197304_))))
                                                    (if (gx#stx-pair?
                                                         _tl72217311_)
                                                        (let ((_e72227314_
                                                               (gx#syntax-e
                                                                _tl72217311_)))
                                                          (let ((_tl72247321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e72227314_)))
                        (_hd72237318_
                         (let () (declare (not safe)) (##car _e72227314_))))
                    (if (gx#stx-null? _tl72247321_)
                        (_loop72117282_
                         _lp-tl72147301_
                         (let ()
                           (declare (not safe))
                           (cons _hd72237318_ _e72157289_))
                         (let ()
                           (declare (not safe))
                           (cons _hd72207308_ _hd72167291_)))
                        (let () (declare (not safe)) (_g71737239_)))))
                (let () (declare (not safe)) (_g71737239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71737239_)))))
                                        (let ((_hd72187327_
                                               (reverse _hd72167291_))
                                              (_e72177324_
                                               (reverse _e72157289_)))
                                          (if (gx#stx-pair/null? _tl72077273_)
                                              (let ((___splice2235222353_
                                                     (gx#syntax-split-splice
                                                      _tl72077273_
                                                      '0)))
                                                (let ((_tl72277333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235222353_
                                                          '1)))
                                                      (_target72257330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235222353_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl72277333_)
                                                      (letrec ((_loop72287336_
                                                                (lambda (_hd72267340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body72327343_)
                          (if (gx#stx-pair? _hd72267340_)
                              (let ((_e72297346_ (gx#syntax-e _hd72267340_)))
                                (let ((_lp-tl72317353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e72297346_)))
                                      (_lp-hd72307350_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e72297346_))))
                                  (_loop72287336_
                                   _lp-tl72317353_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd72307350_ _body72327343_)))))
                              (let ((_body72337356_ (reverse _body72327343_)))
                                (let ((_L7360_ _body72337356_)
                                      (_L7362_ _e72177324_)
                                      (_L7363_ _hd72187327_)
                                      (_L7364_ _hd72037260_))
                                  (if (gx#stx-andmap
                                       _let-head?7168_
                                       (foldr (lambda (_g73907393_ _g73917396_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g73907393_
                                                        _g73917396_)))
                                              '()
                                              _L7363_))
                                      (___kont2234822349_
                                       _L7360_
                                       _L7362_
                                       _L7363_
                                       _L7364_)
                                      (let ()
                                        (declare (not safe))
                                        (_g71737239_)))))))))
                (_loop72287336_ _target72257330_ '()))
              (let () (declare (not safe)) (_g71737239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g71737239_))))))))
                          (_loop72117282_ _target72087276_ '() '()))))
                     (___match2238622387_
                      (lambda (_e71807507_
                               _hd71817511_
                               _tl71827514_
                               _e71837517_
                               _hd71847521_
                               _tl71857524_
                               _e71867527_
                               _hd71877531_
                               _tl71887534_
                               _e71897537_
                               _hd71907541_
                               _tl71917544_
                               _e71927547_
                               _hd71937551_
                               _tl71947554_)
                        (let ((_L7557_ _tl71887534_)
                              (_L7559_ _hd71937551_)
                              (_L7560_ _hd71907541_)
                              (_L7561_ _hd71847521_)
                              (_L7562_ _hd71817511_))
                          (if (_let-head?7168_ _L7560_)
                              (___kont2234622347_
                               _L7557_
                               _L7559_
                               _L7560_
                               _L7561_
                               _L7562_)
                              (if (gx#stx-pair/null? _hd71877531_)
                                  (let ((___splice2235022351_
                                         (gx#syntax-split-splice
                                          _hd71877531_
                                          '0)))
                                    (let ((_tl72107279_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235022351_
                                              '1)))
                                          (_target72087276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235022351_
                                              '0))))
                                      (if (gx#stx-null? _tl72107279_)
                                          (___match2241222413_
                                           _e71807507_
                                           _hd71817511_
                                           _tl71827514_
                                           _e71837517_
                                           _hd71847521_
                                           _tl71857524_
                                           _e71867527_
                                           _hd71877531_
                                           _tl71887534_
                                           ___splice2235022351_
                                           _target72087276_
                                           _tl72107279_)
                                          (let ()
                                            (declare (not safe))
                                            (_g71737239_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g71737239_))))))))
                (if (gx#stx-pair? ___stx2234322344_)
                    (let ((_e71807507_ (gx#syntax-e ___stx2234322344_)))
                      (let ((_tl71827514_
                             (let () (declare (not safe)) (##cdr _e71807507_)))
                            (_hd71817511_
                             (let ()
                               (declare (not safe))
                               (##car _e71807507_))))
                        (if (gx#stx-pair? _tl71827514_)
                            (let ((_e71837517_ (gx#syntax-e _tl71827514_)))
                              (let ((_tl71857524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e71837517_)))
                                    (_hd71847521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e71837517_))))
                                (if (gx#stx-pair? _tl71857524_)
                                    (let ((_e71867527_
                                           (gx#syntax-e _tl71857524_)))
                                      (let ((_tl71887534_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e71867527_)))
                                            (_hd71877531_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e71867527_))))
                                        (if (gx#stx-pair? _hd71877531_)
                                            (let ((_e71897537_
                                                   (gx#syntax-e _hd71877531_)))
                                              (let ((_tl71917544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e71897537_)))
                                                    (_hd71907541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e71897537_))))
                                                (if (gx#stx-pair? _tl71917544_)
                                                    (let ((_e71927547_
                                                           (gx#syntax-e
                                                            _tl71917544_)))
                                                      (let ((_tl71947554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e71927547_)))
                    (_hd71937551_
                     (let () (declare (not safe)) (##car _e71927547_))))
                (if (gx#stx-null? _tl71947554_)
                    (___match2238622387_
                     _e71807507_
                     _hd71817511_
                     _tl71827514_
                     _e71837517_
                     _hd71847521_
                     _tl71857524_
                     _e71867527_
                     _hd71877531_
                     _tl71887534_
                     _e71897537_
                     _hd71907541_
                     _tl71917544_
                     _e71927547_
                     _hd71937551_
                     _tl71947554_)
                    (if (gx#stx-pair/null? _hd71877531_)
                        (let ((___splice2235022351_
                               (gx#syntax-split-splice _hd71877531_ '0)))
                          (let ((_tl72107279_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235022351_ '1)))
                                (_target72087276_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235022351_ '0))))
                            (if (gx#stx-null? _tl72107279_)
                                (___match2241222413_
                                 _e71807507_
                                 _hd71817511_
                                 _tl71827514_
                                 _e71837517_
                                 _hd71847521_
                                 _tl71857524_
                                 _e71867527_
                                 _hd71877531_
                                 _tl71887534_
                                 ___splice2235022351_
                                 _target72087276_
                                 _tl72107279_)
                                (let () (declare (not safe)) (_g71737239_)))))
                        (let () (declare (not safe)) (_g71737239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd71877531_)
                                                        (let ((___splice2235022351_
                                                               (gx#syntax-split-splice
                                                                _hd71877531_
                                                                '0)))
                                                          (let ((_tl72107279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235022351_ '1)))
                        (_target72087276_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235022351_ '0))))
                    (if (gx#stx-null? _tl72107279_)
                        (___match2241222413_
                         _e71807507_
                         _hd71817511_
                         _tl71827514_
                         _e71837517_
                         _hd71847521_
                         _tl71857524_
                         _e71867527_
                         _hd71877531_
                         _tl71887534_
                         ___splice2235022351_
                         _target72087276_
                         _tl72107279_)
                        (let () (declare (not safe)) (_g71737239_)))))
                (let () (declare (not safe)) (_g71737239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd71877531_)
                                                (let ((___splice2235022351_
                                                       (gx#syntax-split-splice
                                                        _hd71877531_
                                                        '0)))
                                                  (let ((_tl72107279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235022351_
                                                            '1)))
                                                        (_target72087276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235022351_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl72107279_)
                                                        (___match2241222413_
                                                         _e71807507_
                                                         _hd71817511_
                                                         _tl71827514_
                                                         _e71837517_
                                                         _hd71847521_
                                                         _tl71857524_
                                                         _e71867527_
                                                         _hd71877531_
                                                         _tl71887534_
                                                         ___splice2235022351_
                                                         _target72087276_
                                                         _tl72107279_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g71737239_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71737239_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g71737239_)))))
                            (let () (declare (not safe)) (_g71737239_)))))
                    (let () (declare (not safe)) (_g71737239_)))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#and|
      (lambda (_$stx7711_)
        (let* ((___stx2241522416_ _$stx7711_)
               (_g77177743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2241522416_))))
          (let ((___kont2241822419_ (lambda () '#t))
                (___kont2242022421_ (lambda (_L7815_) _L7815_))
                (___kont2242222423_
                 (lambda (_L7770_ _L7772_ _L7773_)
                   (let ((__tmp24515 (gx#datum->syntax '#f 'if))
                         (__tmp24511
                          (let ((__tmp24512
                                 (let ((__tmp24514
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7773_ _L7770_)))
                                       (__tmp24513
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp24514 __tmp24513))))
                            (declare (not safe))
                            (cons _L7772_ __tmp24512))))
                     (declare (not safe))
                     (cons __tmp24515 __tmp24511)))))
            (if (gx#stx-pair? ___stx2241522416_)
                (let ((_e77197835_ (gx#syntax-e ___stx2241522416_)))
                  (let ((_tl77217842_
                         (let () (declare (not safe)) (##cdr _e77197835_)))
                        (_hd77207839_
                         (let () (declare (not safe)) (##car _e77197835_))))
                    (if (gx#stx-null? _tl77217842_)
                        (___kont2241822419_)
                        (if (gx#stx-pair? _tl77217842_)
                            (let ((_e77267805_ (gx#syntax-e _tl77217842_)))
                              (let ((_tl77287812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e77267805_)))
                                    (_hd77277809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e77267805_))))
                                (if (gx#stx-null? _tl77287812_)
                                    (___kont2242022421_ _hd77277809_)
                                    (___kont2242222423_
                                     _tl77287812_
                                     _hd77277809_
                                     _hd77207839_))))
                            (let () (declare (not safe)) (_g77177743_))))))
                (let () (declare (not safe)) (_g77177743_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#or|
      (lambda (_$stx7853_)
        (let* ((___stx2246122462_ _$stx7853_)
               (_g78597885_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2246122462_))))
          (let ((___kont2246422465_ (lambda () '#f))
                (___kont2246622467_ (lambda (_L7957_) _L7957_))
                (___kont2246822469_
                 (lambda (_L7912_ _L7914_ _L7915_)
                   (let ((__tmp24529 (gx#datum->syntax '#f 'let))
                         (__tmp24516
                          (let ((__tmp24526
                                 (let ((__tmp24528 (gx#datum->syntax '#f '$e))
                                       (__tmp24527
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7914_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24528 __tmp24527)))
                                (__tmp24517
                                 (let ((__tmp24518
                                        (let ((__tmp24525
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24519
                                               (let ((__tmp24524
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24520
                                                      (let ((__tmp24523
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24521
                                                             (let ((__tmp24522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L7915_ _L7912_))))
                       (declare (not safe))
                       (cons __tmp24522 '()))))
                (declare (not safe))
                (cons __tmp24523 __tmp24521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24524
                                                       __tmp24520))))
                                          (declare (not safe))
                                          (cons __tmp24525 __tmp24519))))
                                   (declare (not safe))
                                   (cons __tmp24518 '()))))
                            (declare (not safe))
                            (cons __tmp24526 __tmp24517))))
                     (declare (not safe))
                     (cons __tmp24529 __tmp24516)))))
            (if (gx#stx-pair? ___stx2246122462_)
                (let ((_e78617977_ (gx#syntax-e ___stx2246122462_)))
                  (let ((_tl78637984_
                         (let () (declare (not safe)) (##cdr _e78617977_)))
                        (_hd78627981_
                         (let () (declare (not safe)) (##car _e78617977_))))
                    (if (gx#stx-null? _tl78637984_)
                        (___kont2246422465_)
                        (if (gx#stx-pair? _tl78637984_)
                            (let ((_e78687947_ (gx#syntax-e _tl78637984_)))
                              (let ((_tl78707954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e78687947_)))
                                    (_hd78697951_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e78687947_))))
                                (if (gx#stx-null? _tl78707954_)
                                    (___kont2246622467_ _hd78697951_)
                                    (___kont2246822469_
                                     _tl78707954_
                                     _hd78697951_
                                     _hd78627981_))))
                            (let () (declare (not safe)) (_g78597885_))))))
                (let () (declare (not safe)) (_g78597885_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#cond|
      (lambda (_$stx7995_)
        (let* ((___stx2250722508_ _$stx7995_)
               (_g80048095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2250722508_))))
          (let ((___kont2251022511_ (lambda () '#!void))
                (___kont2251222513_
                 (lambda (_L8442_)
                   (let ((__tmp24534 (gx#datum->syntax '#f '%#expression))
                         (__tmp24530
                          (let ((__tmp24531
                                 (let ((__tmp24533
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp24532
                                        (foldr (lambda (_g84618464_
                                                        _g84628467_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g84618464_
                                                         _g84628467_)))
                                               '()
                                               _L8442_)))
                                   (declare (not safe))
                                   (cons __tmp24533 __tmp24532))))
                            (declare (not safe))
                            (cons __tmp24531 '()))))
                     (declare (not safe))
                     (cons __tmp24534 __tmp24530))))
                (___kont2251622517_
                 (lambda ()
                   (let ((__tmp24536 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp24535
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp24536 __tmp24535))))
                (___kont2251822519_
                 (lambda (_L8315_ _L8317_ _L8318_)
                   (let ((__tmp24550 (gx#datum->syntax '#f 'let))
                         (__tmp24537
                          (let ((__tmp24547
                                 (let ((__tmp24549 (gx#datum->syntax '#f '$e))
                                       (__tmp24548
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8317_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24549 __tmp24548)))
                                (__tmp24538
                                 (let ((__tmp24539
                                        (let ((__tmp24546
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24540
                                               (let ((__tmp24545
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24541
                                                      (let ((__tmp24544
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24542
                                                             (let ((__tmp24543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L8318_ _L8315_))))
                       (declare (not safe))
                       (cons __tmp24543 '()))))
                (declare (not safe))
                (cons __tmp24544 __tmp24542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24545
                                                       __tmp24541))))
                                          (declare (not safe))
                                          (cons __tmp24546 __tmp24540))))
                                   (declare (not safe))
                                   (cons __tmp24539 '()))))
                            (declare (not safe))
                            (cons __tmp24547 __tmp24538))))
                     (declare (not safe))
                     (cons __tmp24550 __tmp24537))))
                (___kont2252022521_
                 (lambda (_L8253_ _L8255_ _L8256_ _L8257_)
                   (let ((__tmp24566 (gx#datum->syntax '#f 'let))
                         (__tmp24551
                          (let ((__tmp24563
                                 (let ((__tmp24565 (gx#datum->syntax '#f '$e))
                                       (__tmp24564
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8256_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24565 __tmp24564)))
                                (__tmp24552
                                 (let ((__tmp24553
                                        (let ((__tmp24562
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24554
                                               (let ((__tmp24561
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24555
                                                      (let ((__tmp24558
                                                             (let ((__tmp24559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24560 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp24560 '()))))
                       (declare (not safe))
                       (cons _L8255_ __tmp24559)))
                    (__tmp24556
                     (let ((__tmp24557
                            (let ()
                              (declare (not safe))
                              (cons _L8257_ _L8253_))))
                       (declare (not safe))
                       (cons __tmp24557 '()))))
                (declare (not safe))
                (cons __tmp24558 __tmp24556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24561
                                                       __tmp24555))))
                                          (declare (not safe))
                                          (cons __tmp24562 __tmp24554))))
                                   (declare (not safe))
                                   (cons __tmp24553 '()))))
                            (declare (not safe))
                            (cons __tmp24563 __tmp24552))))
                     (declare (not safe))
                     (cons __tmp24566 __tmp24551))))
                (___kont2252222523_
                 (lambda (_L8162_ _L8164_ _L8165_ _L8166_)
                   (let ((__tmp24574 (gx#datum->syntax '#f 'if))
                         (__tmp24567
                          (let ((__tmp24568
                                 (let ((__tmp24571
                                        (let ((__tmp24573
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp24572
                                               (foldr (lambda (_g81878190_
                                                               _g81888193_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g81878190_
                                                                _g81888193_)))
                                                      '()
                                                      _L8164_)))
                                          (declare (not safe))
                                          (cons __tmp24573 __tmp24572)))
                                       (__tmp24569
                                        (let ((__tmp24570
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8166_ _L8162_))))
                                          (declare (not safe))
                                          (cons __tmp24570 '()))))
                                   (declare (not safe))
                                   (cons __tmp24571 __tmp24569))))
                            (declare (not safe))
                            (cons _L8165_ __tmp24568))))
                     (declare (not safe))
                     (cons __tmp24574 __tmp24567)))))
            (let* ((___match2266822669_
                    (lambda (_e80728102_
                             _hd80738106_
                             _tl80748109_
                             _e80758112_
                             _hd80768116_
                             _tl80778119_
                             _e80788122_
                             _hd80798126_
                             _tl80808129_
                             ___splice2252422525_
                             _target80818132_
                             _tl80838135_)
                      (letrec ((_loop80848138_
                                (lambda (_hd80828142_ _body80888145_)
                                  (if (gx#stx-pair? _hd80828142_)
                                      (let ((_e80858148_
                                             (gx#syntax-e _hd80828142_)))
                                        (let ((_lp-tl80878155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80858148_)))
                                              (_lp-hd80868152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80858148_))))
                                          (_loop80848138_
                                           _lp-tl80878155_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80868152_
                                                   _body80888145_)))))
                                      (let ((_body80898158_
                                             (reverse _body80888145_)))
                                        (___kont2252222523_
                                         _tl80778119_
                                         _body80898158_
                                         _hd80798126_
                                         _hd80738106_))))))
                        (_loop80848138_ _target80818132_ '()))))
                   (___match2256422565_
                    (lambda (_e80108382_
                             _hd80118386_
                             _tl80128389_
                             _e80138392_
                             _hd80148396_
                             _tl80158399_
                             _e80168402_
                             _hd80178406_
                             _tl80188409_
                             ___splice2251422515_
                             _target80198412_
                             _tl80218415_)
                      (letrec ((_loop80228418_
                                (lambda (_hd80208422_ _body80268425_)
                                  (if (gx#stx-pair? _hd80208422_)
                                      (let ((_e80238428_
                                             (gx#syntax-e _hd80208422_)))
                                        (let ((_lp-tl80258435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80238428_)))
                                              (_lp-hd80248432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80238428_))))
                                          (_loop80228418_
                                           _lp-tl80258435_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80248432_
                                                   _body80268425_)))))
                                      (let ((_body80278438_
                                             (reverse _body80268425_)))
                                        (if (gx#stx-null? _tl80158399_)
                                            (___kont2251222513_ _body80278438_)
                                            (___kont2251622517_)))))))
                        (_loop80228418_ _target80198412_ '())))))
              (if (gx#stx-pair? ___stx2250722508_)
                  (let ((_e80068477_ (gx#syntax-e ___stx2250722508_)))
                    (let ((_tl80088484_
                           (let () (declare (not safe)) (##cdr _e80068477_)))
                          (_hd80078481_
                           (let () (declare (not safe)) (##car _e80068477_))))
                      (if (gx#stx-null? _tl80088484_)
                          (___kont2251022511_)
                          (if (gx#stx-pair? _tl80088484_)
                              (let ((_e80138392_ (gx#syntax-e _tl80088484_)))
                                (let ((_tl80158399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80138392_)))
                                      (_hd80148396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80138392_))))
                                  (if (gx#stx-pair? _hd80148396_)
                                      (let ((_e80168402_
                                             (gx#syntax-e _hd80148396_)))
                                        (let ((_tl80188409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80168402_)))
                                              (_hd80178406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80168402_))))
                                          (if (gx#identifier? _hd80178406_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:1>[1]#_g24575_|
                                                   _hd80178406_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80188409_)
                                                      (let ((___splice2251422515_
                                                             (gx#syntax-split-splice
                                                              _tl80188409_
                                                              '0)))
                                                        (let ((_tl80218415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2251422515_ '1)))
                      (_target80198412_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2251422515_ '0))))
                  (if (gx#stx-null? _tl80218415_)
                      (___match2256422565_
                       _e80068477_
                       _hd80078481_
                       _tl80088484_
                       _e80138392_
                       _hd80148396_
                       _tl80158399_
                       _e80168402_
                       _hd80178406_
                       _tl80188409_
                       ___splice2251422515_
                       _target80198412_
                       _tl80218415_)
                      (___kont2251622517_))))
              (___kont2251622517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl80188409_)
                                                      (___kont2251822519_
                                                       _tl80158399_
                                                       _hd80178406_
                                                       _hd80078481_)
                                                      (if (gx#stx-pair?
                                                           _tl80188409_)
                                                          (let ((_e80628233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80188409_)))
                    (let ((_tl80648240_
                           (let () (declare (not safe)) (##cdr _e80628233_)))
                          (_hd80638237_
                           (let () (declare (not safe)) (##car _e80628233_))))
                      (if (gx#identifier? _hd80638237_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar$<sugar:1>[1]#_g24576_|
                               _hd80638237_)
                              (if (gx#stx-pair? _tl80648240_)
                                  (let ((_e80658243_
                                         (gx#syntax-e _tl80648240_)))
                                    (let ((_tl80678250_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80658243_)))
                                          (_hd80668247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80658243_))))
                                      (if (gx#stx-null? _tl80678250_)
                                          (___kont2252022521_
                                           _tl80158399_
                                           _hd80668247_
                                           _hd80178406_
                                           _hd80078481_)
                                          (if (gx#stx-pair/null? _tl80188409_)
                                              (let ((___splice2252422525_
                                                     (gx#syntax-split-splice
                                                      _tl80188409_
                                                      '0)))
                                                (let ((_tl80838135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252422525_
                                                          '1)))
                                                      (_target80818132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252422525_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl80838135_)
                                                      (___match2266822669_
                                                       _e80068477_
                                                       _hd80078481_
                                                       _tl80088484_
                                                       _e80138392_
                                                       _hd80148396_
                                                       _tl80158399_
                                                       _e80168402_
                                                       _hd80178406_
                                                       _tl80188409_
                                                       ___splice2252422525_
                                                       _target80818132_
                                                       _tl80838135_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g80048095_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g80048095_))))))
                                  (if (gx#stx-pair/null? _tl80188409_)
                                      (let ((___splice2252422525_
                                             (gx#syntax-split-splice
                                              _tl80188409_
                                              '0)))
                                        (let ((_tl80838135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252422525_
                                                  '1)))
                                              (_target80818132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252422525_
                                                  '0))))
                                          (if (gx#stx-null? _tl80838135_)
                                              (___match2266822669_
                                               _e80068477_
                                               _hd80078481_
                                               _tl80088484_
                                               _e80138392_
                                               _hd80148396_
                                               _tl80158399_
                                               _e80168402_
                                               _hd80178406_
                                               _tl80188409_
                                               ___splice2252422525_
                                               _target80818132_
                                               _tl80838135_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80048095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80048095_))))
                              (if (gx#stx-pair/null? _tl80188409_)
                                  (let ((___splice2252422525_
                                         (gx#syntax-split-splice
                                          _tl80188409_
                                          '0)))
                                    (let ((_tl80838135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252422525_
                                              '1)))
                                          (_target80818132_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252422525_
                                              '0))))
                                      (if (gx#stx-null? _tl80838135_)
                                          (___match2266822669_
                                           _e80068477_
                                           _hd80078481_
                                           _tl80088484_
                                           _e80138392_
                                           _hd80148396_
                                           _tl80158399_
                                           _e80168402_
                                           _hd80178406_
                                           _tl80188409_
                                           ___splice2252422525_
                                           _target80818132_
                                           _tl80838135_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80048095_)))))
                                  (let () (declare (not safe)) (_g80048095_))))
                          (if (gx#stx-pair/null? _tl80188409_)
                              (let ((___splice2252422525_
                                     (gx#syntax-split-splice _tl80188409_ '0)))
                                (let ((_tl80838135_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252422525_
                                          '1)))
                                      (_target80818132_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252422525_
                                          '0))))
                                  (if (gx#stx-null? _tl80838135_)
                                      (___match2266822669_
                                       _e80068477_
                                       _hd80078481_
                                       _tl80088484_
                                       _e80138392_
                                       _hd80148396_
                                       _tl80158399_
                                       _e80168402_
                                       _hd80178406_
                                       _tl80188409_
                                       ___splice2252422525_
                                       _target80818132_
                                       _tl80838135_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80048095_)))))
                              (let () (declare (not safe)) (_g80048095_))))))
                  (if (gx#stx-pair/null? _tl80188409_)
                      (let ((___splice2252422525_
                             (gx#syntax-split-splice _tl80188409_ '0)))
                        (let ((_tl80838135_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252422525_ '1)))
                              (_target80818132_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252422525_ '0))))
                          (if (gx#stx-null? _tl80838135_)
                              (___match2266822669_
                               _e80068477_
                               _hd80078481_
                               _tl80088484_
                               _e80138392_
                               _hd80148396_
                               _tl80158399_
                               _e80168402_
                               _hd80178406_
                               _tl80188409_
                               ___splice2252422525_
                               _target80818132_
                               _tl80838135_)
                              (let () (declare (not safe)) (_g80048095_)))))
                      (let () (declare (not safe)) (_g80048095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl80188409_)
                                                  (___kont2251822519_
                                                   _tl80158399_
                                                   _hd80178406_
                                                   _hd80078481_)
                                                  (if (gx#stx-pair?
                                                       _tl80188409_)
                                                      (let ((_e80628233_
                                                             (gx#syntax-e
                                                              _tl80188409_)))
                                                        (let ((_tl80648240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e80628233_)))
                      (_hd80638237_
                       (let () (declare (not safe)) (##car _e80628233_))))
                  (if (gx#identifier? _hd80638237_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar$<sugar:1>[1]#_g24576_|
                           _hd80638237_)
                          (if (gx#stx-pair? _tl80648240_)
                              (let ((_e80658243_ (gx#syntax-e _tl80648240_)))
                                (let ((_tl80678250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80658243_)))
                                      (_hd80668247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80658243_))))
                                  (if (gx#stx-null? _tl80678250_)
                                      (___kont2252022521_
                                       _tl80158399_
                                       _hd80668247_
                                       _hd80178406_
                                       _hd80078481_)
                                      (if (gx#stx-pair/null? _tl80188409_)
                                          (let ((___splice2252422525_
                                                 (gx#syntax-split-splice
                                                  _tl80188409_
                                                  '0)))
                                            (let ((_tl80838135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252422525_
                                                      '1)))
                                                  (_target80818132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252422525_
                                                      '0))))
                                              (if (gx#stx-null? _tl80838135_)
                                                  (___match2266822669_
                                                   _e80068477_
                                                   _hd80078481_
                                                   _tl80088484_
                                                   _e80138392_
                                                   _hd80148396_
                                                   _tl80158399_
                                                   _e80168402_
                                                   _hd80178406_
                                                   _tl80188409_
                                                   ___splice2252422525_
                                                   _target80818132_
                                                   _tl80838135_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80048095_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g80048095_))))))
                              (if (gx#stx-pair/null? _tl80188409_)
                                  (let ((___splice2252422525_
                                         (gx#syntax-split-splice
                                          _tl80188409_
                                          '0)))
                                    (let ((_tl80838135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252422525_
                                              '1)))
                                          (_target80818132_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252422525_
                                              '0))))
                                      (if (gx#stx-null? _tl80838135_)
                                          (___match2266822669_
                                           _e80068477_
                                           _hd80078481_
                                           _tl80088484_
                                           _e80138392_
                                           _hd80148396_
                                           _tl80158399_
                                           _e80168402_
                                           _hd80178406_
                                           _tl80188409_
                                           ___splice2252422525_
                                           _target80818132_
                                           _tl80838135_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80048095_)))))
                                  (let () (declare (not safe)) (_g80048095_))))
                          (if (gx#stx-pair/null? _tl80188409_)
                              (let ((___splice2252422525_
                                     (gx#syntax-split-splice _tl80188409_ '0)))
                                (let ((_tl80838135_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252422525_
                                          '1)))
                                      (_target80818132_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252422525_
                                          '0))))
                                  (if (gx#stx-null? _tl80838135_)
                                      (___match2266822669_
                                       _e80068477_
                                       _hd80078481_
                                       _tl80088484_
                                       _e80138392_
                                       _hd80148396_
                                       _tl80158399_
                                       _e80168402_
                                       _hd80178406_
                                       _tl80188409_
                                       ___splice2252422525_
                                       _target80818132_
                                       _tl80838135_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80048095_)))))
                              (let () (declare (not safe)) (_g80048095_))))
                      (if (gx#stx-pair/null? _tl80188409_)
                          (let ((___splice2252422525_
                                 (gx#syntax-split-splice _tl80188409_ '0)))
                            (let ((_tl80838135_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252422525_ '1)))
                                  (_target80818132_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252422525_ '0))))
                              (if (gx#stx-null? _tl80838135_)
                                  (___match2266822669_
                                   _e80068477_
                                   _hd80078481_
                                   _tl80088484_
                                   _e80138392_
                                   _hd80148396_
                                   _tl80158399_
                                   _e80168402_
                                   _hd80178406_
                                   _tl80188409_
                                   ___splice2252422525_
                                   _target80818132_
                                   _tl80838135_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80048095_)))))
                          (let () (declare (not safe)) (_g80048095_))))))
              (if (gx#stx-pair/null? _tl80188409_)
                  (let ((___splice2252422525_
                         (gx#syntax-split-splice _tl80188409_ '0)))
                    (let ((_tl80838135_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252422525_ '1)))
                          (_target80818132_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252422525_ '0))))
                      (if (gx#stx-null? _tl80838135_)
                          (___match2266822669_
                           _e80068477_
                           _hd80078481_
                           _tl80088484_
                           _e80138392_
                           _hd80148396_
                           _tl80158399_
                           _e80168402_
                           _hd80178406_
                           _tl80188409_
                           ___splice2252422525_
                           _target80818132_
                           _tl80838135_)
                          (let () (declare (not safe)) (_g80048095_)))))
                  (let () (declare (not safe)) (_g80048095_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g80048095_)))))
                              (let () (declare (not safe)) (_g80048095_))))))
                  (let () (declare (not safe)) (_g80048095_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#when|
      (lambda (_$stx8497_)
        (let* ((_g85018525_
                (lambda (_g85028521_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85028521_)))
               (_g85008610_
                (lambda (_g85028529_)
                  (if (gx#stx-pair? _g85028529_)
                      (let ((_e85058532_ (gx#syntax-e _g85028529_)))
                        (let ((_hd85068536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85058532_)))
                              (_tl85078539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85058532_))))
                          (if (gx#stx-pair? _tl85078539_)
                              (let ((_e85088542_ (gx#syntax-e _tl85078539_)))
                                (let ((_hd85098546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85088542_)))
                                      (_tl85108549_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85088542_))))
                                  (if (gx#stx-pair/null? _tl85108549_)
                                      (let ((_g24577_
                                             (gx#syntax-split-splice
                                              _tl85108549_
                                              '0)))
                                        (begin
                                          (let ((_g24578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24577_)
                                                       (##vector-length
                                                        _g24577_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24578_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24578_)))
                                          (let ((_target85118552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24577_ 0)))
                                                (_tl85138555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24577_ 1))))
                                            (if (gx#stx-null? _tl85138555_)
                                                (letrec ((_loop85148558_
                                                          (lambda (_hd85128562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr85188565_)
                    (if (gx#stx-pair? _hd85128562_)
                        (let ((_e85158568_ (gx#syntax-e _hd85128562_)))
                          (let ((_lp-hd85168572_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85158568_)))
                                (_lp-tl85178575_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85158568_))))
                            (_loop85148558_
                             _lp-tl85178575_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd85168572_ _expr85188565_)))))
                        (let ((_expr85198578_ (reverse _expr85188565_)))
                          ((lambda (_L8582_ _L8584_)
                             (let ((__tmp24585 (gx#datum->syntax '#f 'if))
                                   (__tmp24579
                                    (let ((__tmp24580
                                           (let ((__tmp24582
                                                  (let ((__tmp24584
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp24583
                                                         (foldr (lambda (_g86018604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g86028607_)
                          (let ()
                            (declare (not safe))
                            (cons _g86018604_ _g86028607_)))
                        '()
                        _L8582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24584
                                                          __tmp24583)))
                                                 (__tmp24581
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp24582 __tmp24581))))
                                      (declare (not safe))
                                      (cons _L8584_ __tmp24580))))
                               (declare (not safe))
                               (cons __tmp24585 __tmp24579)))
                           _expr85198578_
                           _hd85098546_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85148558_
                                                   _target85118552_
                                                   '()))
                                                (_g85018525_ _g85028529_)))))
                                      (_g85018525_ _g85028529_))))
                              (_g85018525_ _g85028529_))))
                      (_g85018525_ _g85028529_)))))
          (_g85008610_ _$stx8497_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#unless|
      (lambda (_$stx8615_)
        (let* ((_g86198643_
                (lambda (_g86208639_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86208639_)))
               (_g86188728_
                (lambda (_g86208647_)
                  (if (gx#stx-pair? _g86208647_)
                      (let ((_e86238650_ (gx#syntax-e _g86208647_)))
                        (let ((_hd86248654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86238650_)))
                              (_tl86258657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86238650_))))
                          (if (gx#stx-pair? _tl86258657_)
                              (let ((_e86268660_ (gx#syntax-e _tl86258657_)))
                                (let ((_hd86278664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86268660_)))
                                      (_tl86288667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86268660_))))
                                  (if (gx#stx-pair/null? _tl86288667_)
                                      (let ((_g24586_
                                             (gx#syntax-split-splice
                                              _tl86288667_
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
                                          (let ((_target86298670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24586_ 0)))
                                                (_tl86318673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24586_ 1))))
                                            (if (gx#stx-null? _tl86318673_)
                                                (letrec ((_loop86328676_
                                                          (lambda (_hd86308680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr86368683_)
                    (if (gx#stx-pair? _hd86308680_)
                        (let ((_e86338686_ (gx#syntax-e _hd86308680_)))
                          (let ((_lp-hd86348690_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86338686_)))
                                (_lp-tl86358693_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86338686_))))
                            (_loop86328676_
                             _lp-tl86358693_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd86348690_ _expr86368683_)))))
                        (let ((_expr86378696_ (reverse _expr86368683_)))
                          ((lambda (_L8700_ _L8702_)
                             (let ((__tmp24594 (gx#datum->syntax '#f 'if))
                                   (__tmp24588
                                    (let ((__tmp24589
                                           (let ((__tmp24590
                                                  (let ((__tmp24591
                                                         (let ((__tmp24593
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp24592
                        (foldr (lambda (_g87198722_ _g87208725_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87198722_ _g87208725_)))
                               '()
                               _L8700_)))
                   (declare (not safe))
                   (cons __tmp24593 __tmp24592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24591 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp24590))))
                                      (declare (not safe))
                                      (cons _L8702_ __tmp24589))))
                               (declare (not safe))
                               (cons __tmp24594 __tmp24588)))
                           _expr86378696_
                           _hd86278664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86328676_
                                                   _target86298670_
                                                   '()))
                                                (_g86198643_ _g86208647_)))))
                                      (_g86198643_ _g86208647_))))
                              (_g86198643_ _g86208647_))))
                      (_g86198643_ _g86208647_)))))
          (_g86188728_ _$stx8615_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx8733_)
        (let* ((_g87368760_
                (lambda (_g87378756_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g87378756_)))
               (_g87358845_
                (lambda (_g87378764_)
                  (if (gx#stx-pair? _g87378764_)
                      (let ((_e87408767_ (gx#syntax-e _g87378764_)))
                        (let ((_hd87418771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87408767_)))
                              (_tl87428774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87408767_))))
                          (if (gx#stx-pair? _tl87428774_)
                              (let ((_e87438777_ (gx#syntax-e _tl87428774_)))
                                (let ((_hd87448781_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87438777_)))
                                      (_tl87458784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87438777_))))
                                  (if (gx#stx-pair/null? _tl87458784_)
                                      (let ((_g24595_
                                             (gx#syntax-split-splice
                                              _tl87458784_
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
                                          (let ((_target87468787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24595_ 0)))
                                                (_tl87488790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24595_ 1))))
                                            (if (gx#stx-null? _tl87488790_)
                                                (letrec ((_loop87498793_
                                                          (lambda (_hd87478797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail87538800_)
                    (if (gx#stx-pair? _hd87478797_)
                        (let ((_e87508803_ (gx#syntax-e _hd87478797_)))
                          (let ((_lp-hd87518807_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87508803_)))
                                (_lp-tl87528810_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87508803_))))
                            (_loop87498793_
                             _lp-tl87528810_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd87518807_ _detail87538800_)))))
                        (let ((_detail87548813_ (reverse _detail87538800_)))
                          ((lambda (_L8817_ _L8819_)
                             (if (gx#stx-string? _L8819_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L8819_)
                                        _stx8733_
                                        (gx#syntax->list
                                         (foldr (lambda (_g88368839_
                                                         _g88378842_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g88368839_
                                                          _g88378842_)))
                                                '()
                                                _L8817_)))
                                 (_g87368760_ _g87378764_)))
                           _detail87548813_
                           _hd87448781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87498793_
                                                   _target87468787_
                                                   '()))
                                                (_g87368760_ _g87378764_)))))
                                      (_g87368760_ _g87378764_))))
                              (_g87368760_ _g87378764_))))
                      (_g87368760_ _g87378764_)))))
          (_g87358845_ _stx8733_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defmutable|
      (lambda (_$stx8850_)
        (let* ((_g88548872_
                (lambda (_g88558868_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g88558868_)))
               (_g88538927_
                (lambda (_g88558876_)
                  (if (gx#stx-pair? _g88558876_)
                      (let ((_e88588879_ (gx#syntax-e _g88558876_)))
                        (let ((_hd88598883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88588879_)))
                              (_tl88608886_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88588879_))))
                          (if (gx#stx-pair? _tl88608886_)
                              (let ((_e88618889_ (gx#syntax-e _tl88608886_)))
                                (let ((_hd88628893_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88618889_)))
                                      (_tl88638896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88618889_))))
                                  (if (gx#stx-pair? _tl88638896_)
                                      (let ((_e88648899_
                                             (gx#syntax-e _tl88638896_)))
                                        (let ((_hd88658903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88648899_)))
                                              (_tl88668906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88648899_))))
                                          (if (gx#stx-null? _tl88668906_)
                                              ((lambda (_L8909_ _L8911_)
                                                 (let ((__tmp24610
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24597
                                                        (let ((__tmp24606
                                                               (let ((__tmp24609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp24607
                              (let ((__tmp24608
                                     (let ()
                                       (declare (not safe))
                                       (cons _L8909_ '()))))
                                (declare (not safe))
                                (cons _L8911_ __tmp24608))))
                         (declare (not safe))
                         (cons __tmp24609 __tmp24607)))
                      (__tmp24598
                       (let ((__tmp24602
                              (let ((__tmp24605 (gx#datum->syntax '#f '%#set!))
                                    (__tmp24603
                                     (let ((__tmp24604
                                            (let ()
                                              (declare (not safe))
                                              (cons _L8911_ '()))))
                                       (declare (not safe))
                                       (cons _L8911_ __tmp24604))))
                                (declare (not safe))
                                (cons __tmp24605 __tmp24603)))
                             (__tmp24599
                              (let ((__tmp24600
                                     (let ((__tmp24601
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp24601 '()))))
                                (declare (not safe))
                                (cons __tmp24600 '()))))
                         (declare (not safe))
                         (cons __tmp24602 __tmp24599))))
                  (declare (not safe))
                  (cons __tmp24606 __tmp24598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24610
                                                         __tmp24597)))
                                               _hd88658903_
                                               _hd88628893_)
                                              (_g88548872_ _g88558876_))))
                                      (_g88548872_ _g88558876_))))
                              (_g88548872_ _g88558876_))))
                      (_g88548872_ _g88558876_)))))
          (_g88538927_ _$stx8850_))))))
