(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24498_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24499_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24576_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defrules|
      (lambda (_$stx5694_)
        (let* ((_g56985726_
                (lambda (_g56995722_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g56995722_)))
               (_g56975827_
                (lambda (_g56995730_)
                  (if (gx#stx-pair? _g56995730_)
                      (let ((_e57035733_ (gx#syntax-e _g56995730_)))
                        (let ((_hd57045737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57035733_)))
                              (_tl57055740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57035733_))))
                          (if (gx#stx-pair? _tl57055740_)
                              (let ((_e57065743_ (gx#syntax-e _tl57055740_)))
                                (let ((_hd57075747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57065743_)))
                                      (_tl57085750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57065743_))))
                                  (if (gx#stx-pair? _tl57085750_)
                                      (let ((_e57095753_
                                             (gx#syntax-e _tl57085750_)))
                                        (let ((_hd57105757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57095753_)))
                                              (_tl57115760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57095753_))))
                                          (if (gx#stx-pair/null? _tl57115760_)
                                              (let ((_g24417_
                                                     (gx#syntax-split-splice
                                                      _tl57115760_
                                                      '0)))
                                                (begin
                                                  (let ((_g24418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g24417_)
                                                               (##vector-length
                                                                _g24417_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g24418_ 2)))
                (error "Context expects 2 values" _g24418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target57125763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24417_
                                                            0)))
                                                        (_tl57145766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g24417_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl57145766_)
                                                        (letrec ((_loop57155769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd57135773_ _clauses57195776_)
                            (if (gx#stx-pair? _hd57135773_)
                                (let ((_e57165779_ (gx#syntax-e _hd57135773_)))
                                  (let ((_lp-hd57175783_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e57165779_)))
                                        (_lp-tl57185786_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e57165779_))))
                                    (_loop57155769_
                                     _lp-tl57185786_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd57175783_
                                             _clauses57195776_)))))
                                (let ((_clauses57205789_
                                       (reverse _clauses57195776_)))
                                  ((lambda (_L5793_ _L5795_ _L5796_)
                                     (if (gx#identifier? _L5796_)
                                         (let ((__tmp24425
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp24419
                                                (let ((__tmp24420
                                                       (let ((__tmp24421
                                                              (let ((__tmp24424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp24422
                             (let ((__tmp24423
                                    (foldr (lambda (_g58185821_ _g58195824_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g58185821_ _g58195824_)))
                                           '()
                                           _L5793_)))
                               (declare (not safe))
                               (cons _L5795_ __tmp24423))))
                        (declare (not safe))
                        (cons __tmp24424 __tmp24422))))
                 (declare (not safe))
                 (cons __tmp24421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L5796_ __tmp24420))))
                                           (declare (not safe))
                                           (cons __tmp24425 __tmp24419))
                                         (_g56985726_ _g56995730_)))
                                   _clauses57205789_
                                   _hd57105757_
                                   _hd57075747_))))))
                  (_loop57155769_ _target57125763_ '()))
                (_g56985726_ _g56995730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g56985726_ _g56995730_))))
                                      (_g56985726_ _g56995730_))))
                              (_g56985726_ _g56995730_))))
                      (_g56985726_ _g56995730_)))))
          (_g56975827_ _$stx5694_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx5832_)
        (let* ((___stx2206622067_ _$stx5832_)
               (_g58375876_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2206622067_))))
          (let ((___kont2206922070_
                 (lambda (_L5998_ _L6000_ _L6001_)
                   (let ((__tmp24432 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24426
                          (let ((__tmp24427
                                 (let ((__tmp24428
                                        (let ((__tmp24431
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24429
                                               (let ((__tmp24430
                                                      (foldr (lambda (_g60206023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g60216026_)
                       (let ()
                         (declare (not safe))
                         (cons _g60206023_ _g60216026_)))
                     '()
                     _L5998_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6000_ __tmp24430))))
                                          (declare (not safe))
                                          (cons __tmp24431 __tmp24429))))
                                   (declare (not safe))
                                   (cons __tmp24428 '()))))
                            (declare (not safe))
                            (cons _L6001_ __tmp24427))))
                     (declare (not safe))
                     (cons __tmp24432 __tmp24426))))
                (___kont2207322074_
                 (lambda (_L5913_ _L5915_)
                   (let ((__tmp24435 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp24433
                          (let ((__tmp24434
                                 (let ()
                                   (declare (not safe))
                                   (cons _L5913_ '()))))
                            (declare (not safe))
                            (cons _L5915_ __tmp24434))))
                     (declare (not safe))
                     (cons __tmp24435 __tmp24433)))))
            (let* ((___match2212122122_
                    (lambda (_e58625883_
                             _hd58635887_
                             _tl58645890_
                             _e58655893_
                             _hd58665897_
                             _tl58675900_
                             _e58685903_
                             _hd58695907_
                             _tl58705910_)
                      (let ((_L5913_ _hd58695907_) (_L5915_ _hd58665897_))
                        (if (gx#identifier? _L5915_)
                            (___kont2207322074_ _L5913_ _L5915_)
                            (let () (declare (not safe)) (_g58375876_))))))
                   (___match2211322114_
                    (lambda (_e58625883_
                             _hd58635887_
                             _tl58645890_
                             _e58655893_
                             _hd58665897_
                             _tl58675900_)
                      (if (gx#stx-pair? _tl58675900_)
                          (let ((_e58685903_ (gx#syntax-e _tl58675900_)))
                            (let ((_tl58705910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58685903_)))
                                  (_hd58695907_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58685903_))))
                              (if (gx#stx-null? _tl58705910_)
                                  (___match2212122122_
                                   _e58625883_
                                   _hd58635887_
                                   _tl58645890_
                                   _e58655893_
                                   _hd58665897_
                                   _tl58675900_
                                   _e58685903_
                                   _hd58695907_
                                   _tl58705910_)
                                  (let ()
                                    (declare (not safe))
                                    (_g58375876_)))))
                          (let () (declare (not safe)) (_g58375876_)))))
                   (___match2210122102_
                    (lambda (_e58425938_
                             _hd58435942_
                             _tl58445945_
                             _e58455948_
                             _hd58465952_
                             _tl58475955_
                             _e58485958_
                             _hd58495962_
                             _tl58505965_
                             ___splice2207122072_
                             _target58515968_
                             _tl58535971_)
                      (letrec ((_loop58545974_
                                (lambda (_hd58525978_ _body58585981_)
                                  (if (gx#stx-pair? _hd58525978_)
                                      (let ((_e58555984_
                                             (gx#syntax-e _hd58525978_)))
                                        (let ((_lp-tl58575991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58555984_)))
                                              (_lp-hd58565988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58555984_))))
                                          (_loop58545974_
                                           _lp-tl58575991_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd58565988_
                                                   _body58585981_)))))
                                      (let ((_body58595994_
                                             (reverse _body58585981_)))
                                        (let ((_L5998_ _body58595994_)
                                              (_L6000_ _tl58505965_)
                                              (_L6001_ _hd58495962_))
                                          (if (gx#identifier? _L6001_)
                                              (___kont2206922070_
                                               _L5998_
                                               _L6000_
                                               _L6001_)
                                              (___match2211322114_
                                               _e58425938_
                                               _hd58435942_
                                               _tl58445945_
                                               _e58455948_
                                               _hd58465952_
                                               _tl58475955_))))))))
                        (_loop58545974_ _target58515968_ '())))))
              (if (gx#stx-pair? ___stx2206622067_)
                  (let ((_e58425938_ (gx#syntax-e ___stx2206622067_)))
                    (let ((_tl58445945_
                           (let () (declare (not safe)) (##cdr _e58425938_)))
                          (_hd58435942_
                           (let () (declare (not safe)) (##car _e58425938_))))
                      (if (gx#stx-pair? _tl58445945_)
                          (let ((_e58455948_ (gx#syntax-e _tl58445945_)))
                            (let ((_tl58475955_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e58455948_)))
                                  (_hd58465952_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e58455948_))))
                              (if (gx#stx-pair? _hd58465952_)
                                  (let ((_e58485958_
                                         (gx#syntax-e _hd58465952_)))
                                    (let ((_tl58505965_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e58485958_)))
                                          (_hd58495962_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e58485958_))))
                                      (if (gx#stx-pair/null? _tl58475955_)
                                          (let ((___splice2207122072_
                                                 (gx#syntax-split-splice
                                                  _tl58475955_
                                                  '0)))
                                            (let ((_tl58535971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207122072_
                                                      '1)))
                                                  (_target58515968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2207122072_
                                                      '0))))
                                              (if (gx#stx-null? _tl58535971_)
                                                  (___match2210122102_
                                                   _e58425938_
                                                   _hd58435942_
                                                   _tl58445945_
                                                   _e58455948_
                                                   _hd58465952_
                                                   _tl58475955_
                                                   _e58485958_
                                                   _hd58495962_
                                                   _tl58505965_
                                                   ___splice2207122072_
                                                   _target58515968_
                                                   _tl58535971_)
                                                  (if (gx#stx-pair?
                                                       _tl58475955_)
                                                      (let ((_e58685903_
                                                             (gx#syntax-e
                                                              _tl58475955_)))
                                                        (let ((_tl58705910_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e58685903_)))
                      (_hd58695907_
                       (let () (declare (not safe)) (##car _e58685903_))))
                  (if (gx#stx-null? _tl58705910_)
                      (___match2212122122_
                       _e58425938_
                       _hd58435942_
                       _tl58445945_
                       _e58455948_
                       _hd58465952_
                       _tl58475955_
                       _e58685903_
                       _hd58695907_
                       _tl58705910_)
                      (let () (declare (not safe)) (_g58375876_)))))
              (let () (declare (not safe)) (_g58375876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl58475955_)
                                              (let ((_e58685903_
                                                     (gx#syntax-e
                                                      _tl58475955_)))
                                                (let ((_tl58705910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e58685903_)))
                                                      (_hd58695907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e58685903_))))
                                                  (if (gx#stx-null?
                                                       _tl58705910_)
                                                      (___match2212122122_
                                                       _e58425938_
                                                       _hd58435942_
                                                       _tl58445945_
                                                       _e58455948_
                                                       _hd58465952_
                                                       _tl58475955_
                                                       _e58685903_
                                                       _hd58695907_
                                                       _tl58705910_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g58375876_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g58375876_))))))
                                  (if (gx#stx-pair? _tl58475955_)
                                      (let ((_e58685903_
                                             (gx#syntax-e _tl58475955_)))
                                        (let ((_tl58705910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58685903_)))
                                              (_hd58695907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58685903_))))
                                          (if (gx#stx-null? _tl58705910_)
                                              (___match2212122122_
                                               _e58425938_
                                               _hd58435942_
                                               _tl58445945_
                                               _e58455948_
                                               _hd58465952_
                                               _tl58475955_
                                               _e58685903_
                                               _hd58695907_
                                               _tl58705910_)
                                              (let ()
                                                (declare (not safe))
                                                (_g58375876_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g58375876_))))))
                          (let () (declare (not safe)) (_g58375876_)))))
                  (let () (declare (not safe)) (_g58375876_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#define|
      (lambda (_$stx6034_)
        (let* ((___stx2212422125_ _$stx6034_)
               (_g60396078_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2212422125_))))
          (let ((___kont2212722128_
                 (lambda (_L6200_ _L6202_ _L6203_)
                   (let ((__tmp24443 (gx#datum->syntax '#f 'define-values))
                         (__tmp24436
                          (let ((__tmp24442
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6203_ '())))
                                (__tmp24437
                                 (let ((__tmp24438
                                        (let ((__tmp24441
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp24439
                                               (let ((__tmp24440
                                                      (foldr (lambda (_g62226225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g62236228_)
                       (let ()
                         (declare (not safe))
                         (cons _g62226225_ _g62236228_)))
                     '()
                     _L6200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6202_ __tmp24440))))
                                          (declare (not safe))
                                          (cons __tmp24441 __tmp24439))))
                                   (declare (not safe))
                                   (cons __tmp24438 '()))))
                            (declare (not safe))
                            (cons __tmp24442 __tmp24437))))
                     (declare (not safe))
                     (cons __tmp24443 __tmp24436))))
                (___kont2213122132_
                 (lambda (_L6115_ _L6117_)
                   (let ((__tmp24447 (gx#datum->syntax '#f 'define-values))
                         (__tmp24444
                          (let ((__tmp24446
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6117_ '())))
                                (__tmp24445
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6115_ '()))))
                            (declare (not safe))
                            (cons __tmp24446 __tmp24445))))
                     (declare (not safe))
                     (cons __tmp24447 __tmp24444)))))
            (let* ((___match2217922180_
                    (lambda (_e60646085_
                             _hd60656089_
                             _tl60666092_
                             _e60676095_
                             _hd60686099_
                             _tl60696102_
                             _e60706105_
                             _hd60716109_
                             _tl60726112_)
                      (let ((_L6115_ _hd60716109_) (_L6117_ _hd60686099_))
                        (if (gx#identifier? _L6117_)
                            (___kont2213122132_ _L6115_ _L6117_)
                            (let () (declare (not safe)) (_g60396078_))))))
                   (___match2217122172_
                    (lambda (_e60646085_
                             _hd60656089_
                             _tl60666092_
                             _e60676095_
                             _hd60686099_
                             _tl60696102_)
                      (if (gx#stx-pair? _tl60696102_)
                          (let ((_e60706105_ (gx#syntax-e _tl60696102_)))
                            (let ((_tl60726112_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60706105_)))
                                  (_hd60716109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60706105_))))
                              (if (gx#stx-null? _tl60726112_)
                                  (___match2217922180_
                                   _e60646085_
                                   _hd60656089_
                                   _tl60666092_
                                   _e60676095_
                                   _hd60686099_
                                   _tl60696102_
                                   _e60706105_
                                   _hd60716109_
                                   _tl60726112_)
                                  (let ()
                                    (declare (not safe))
                                    (_g60396078_)))))
                          (let () (declare (not safe)) (_g60396078_)))))
                   (___match2215922160_
                    (lambda (_e60446140_
                             _hd60456144_
                             _tl60466147_
                             _e60476150_
                             _hd60486154_
                             _tl60496157_
                             _e60506160_
                             _hd60516164_
                             _tl60526167_
                             ___splice2212922130_
                             _target60536170_
                             _tl60556173_)
                      (letrec ((_loop60566176_
                                (lambda (_hd60546180_ _body60606183_)
                                  (if (gx#stx-pair? _hd60546180_)
                                      (let ((_e60576186_
                                             (gx#syntax-e _hd60546180_)))
                                        (let ((_lp-tl60596193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60576186_)))
                                              (_lp-hd60586190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60576186_))))
                                          (_loop60566176_
                                           _lp-tl60596193_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd60586190_
                                                   _body60606183_)))))
                                      (let ((_body60616196_
                                             (reverse _body60606183_)))
                                        (let ((_L6200_ _body60616196_)
                                              (_L6202_ _tl60526167_)
                                              (_L6203_ _hd60516164_))
                                          (if (gx#identifier? _L6203_)
                                              (___kont2212722128_
                                               _L6200_
                                               _L6202_
                                               _L6203_)
                                              (___match2217122172_
                                               _e60446140_
                                               _hd60456144_
                                               _tl60466147_
                                               _e60476150_
                                               _hd60486154_
                                               _tl60496157_))))))))
                        (_loop60566176_ _target60536170_ '())))))
              (if (gx#stx-pair? ___stx2212422125_)
                  (let ((_e60446140_ (gx#syntax-e ___stx2212422125_)))
                    (let ((_tl60466147_
                           (let () (declare (not safe)) (##cdr _e60446140_)))
                          (_hd60456144_
                           (let () (declare (not safe)) (##car _e60446140_))))
                      (if (gx#stx-pair? _tl60466147_)
                          (let ((_e60476150_ (gx#syntax-e _tl60466147_)))
                            (let ((_tl60496157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e60476150_)))
                                  (_hd60486154_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e60476150_))))
                              (if (gx#stx-pair? _hd60486154_)
                                  (let ((_e60506160_
                                         (gx#syntax-e _hd60486154_)))
                                    (let ((_tl60526167_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e60506160_)))
                                          (_hd60516164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e60506160_))))
                                      (if (gx#stx-pair/null? _tl60496157_)
                                          (let ((___splice2212922130_
                                                 (gx#syntax-split-splice
                                                  _tl60496157_
                                                  '0)))
                                            (let ((_tl60556173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2212922130_
                                                      '1)))
                                                  (_target60536170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2212922130_
                                                      '0))))
                                              (if (gx#stx-null? _tl60556173_)
                                                  (___match2215922160_
                                                   _e60446140_
                                                   _hd60456144_
                                                   _tl60466147_
                                                   _e60476150_
                                                   _hd60486154_
                                                   _tl60496157_
                                                   _e60506160_
                                                   _hd60516164_
                                                   _tl60526167_
                                                   ___splice2212922130_
                                                   _target60536170_
                                                   _tl60556173_)
                                                  (if (gx#stx-pair?
                                                       _tl60496157_)
                                                      (let ((_e60706105_
                                                             (gx#syntax-e
                                                              _tl60496157_)))
                                                        (let ((_tl60726112_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e60706105_)))
                      (_hd60716109_
                       (let () (declare (not safe)) (##car _e60706105_))))
                  (if (gx#stx-null? _tl60726112_)
                      (___match2217922180_
                       _e60446140_
                       _hd60456144_
                       _tl60466147_
                       _e60476150_
                       _hd60486154_
                       _tl60496157_
                       _e60706105_
                       _hd60716109_
                       _tl60726112_)
                      (let () (declare (not safe)) (_g60396078_)))))
              (let () (declare (not safe)) (_g60396078_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl60496157_)
                                              (let ((_e60706105_
                                                     (gx#syntax-e
                                                      _tl60496157_)))
                                                (let ((_tl60726112_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60706105_)))
                                                      (_hd60716109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60706105_))))
                                                  (if (gx#stx-null?
                                                       _tl60726112_)
                                                      (___match2217922180_
                                                       _e60446140_
                                                       _hd60456144_
                                                       _tl60466147_
                                                       _e60476150_
                                                       _hd60486154_
                                                       _tl60496157_
                                                       _e60706105_
                                                       _hd60716109_
                                                       _tl60726112_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g60396078_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g60396078_))))))
                                  (if (gx#stx-pair? _tl60496157_)
                                      (let ((_e60706105_
                                             (gx#syntax-e _tl60496157_)))
                                        (let ((_tl60726112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60706105_)))
                                              (_hd60716109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60706105_))))
                                          (if (gx#stx-null? _tl60726112_)
                                              (___match2217922180_
                                               _e60446140_
                                               _hd60456144_
                                               _tl60466147_
                                               _e60476150_
                                               _hd60486154_
                                               _tl60496157_
                                               _e60706105_
                                               _hd60716109_
                                               _tl60726112_)
                                              (let ()
                                                (declare (not safe))
                                                (_g60396078_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60396078_))))))
                          (let () (declare (not safe)) (_g60396078_)))))
                  (let () (declare (not safe)) (_g60396078_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx6236_)
        (let* ((___stx2218222183_ _$stx6236_)
               (_g62416286_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2218222183_))))
          (let ((___kont2218522186_
                 (lambda (_L6444_)
                   (let ((__tmp24450 (gx#datum->syntax '#f 'let-values))
                         (__tmp24448
                          (let ((__tmp24449
                                 (foldr (lambda (_g64606463_ _g64616466_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g64606463_ _g64616466_)))
                                        '()
                                        _L6444_)))
                            (declare (not safe))
                            (cons '() __tmp24449))))
                     (declare (not safe))
                     (cons __tmp24450 __tmp24448))))
                (___kont2218922190_
                 (lambda (_L6353_ _L6355_ _L6356_ _L6357_)
                   (let ((__tmp24457 (gx#datum->syntax '#f 'let-values))
                         (__tmp24451
                          (let ((__tmp24456
                                 (let ()
                                   (declare (not safe))
                                   (cons _L6356_ '())))
                                (__tmp24452
                                 (let ((__tmp24453
                                        (let ((__tmp24454
                                               (let ((__tmp24455
                                                      (foldr (lambda (_g63786381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g63796384_)
                       (let ()
                         (declare (not safe))
                         (cons _g63786381_ _g63796384_)))
                     '()
                     _L6353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L6355_ __tmp24455))))
                                          (declare (not safe))
                                          (cons _L6357_ __tmp24454))))
                                   (declare (not safe))
                                   (cons __tmp24453 '()))))
                            (declare (not safe))
                            (cons __tmp24456 __tmp24452))))
                     (declare (not safe))
                     (cons __tmp24457 __tmp24451)))))
            (let* ((___match2224122242_
                    (lambda (_e62636293_
                             _hd62646297_
                             _tl62656300_
                             _e62666303_
                             _hd62676307_
                             _tl62686310_
                             _e62696313_
                             _hd62706317_
                             _tl62716320_
                             ___splice2219122192_
                             _target62726323_
                             _tl62746326_)
                      (letrec ((_loop62756329_
                                (lambda (_hd62736333_ _body62796336_)
                                  (if (gx#stx-pair? _hd62736333_)
                                      (let ((_e62766339_
                                             (gx#syntax-e _hd62736333_)))
                                        (let ((_lp-tl62786346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62766339_)))
                                              (_lp-hd62776343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62766339_))))
                                          (_loop62756329_
                                           _lp-tl62786346_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62776343_
                                                   _body62796336_)))))
                                      (let ((_body62806349_
                                             (reverse _body62796336_)))
                                        (___kont2218922190_
                                         _body62806349_
                                         _tl62716320_
                                         _hd62706317_
                                         _hd62646297_))))))
                        (_loop62756329_ _target62726323_ '()))))
                   (___match2221522216_
                    (lambda (_e62446394_
                             _hd62456398_
                             _tl62466401_
                             _e62476404_
                             _hd62486408_
                             _tl62496411_
                             ___splice2218722188_
                             _target62506414_
                             _tl62526417_)
                      (letrec ((_loop62536420_
                                (lambda (_hd62516424_ _body62576427_)
                                  (if (gx#stx-pair? _hd62516424_)
                                      (let ((_e62546430_
                                             (gx#syntax-e _hd62516424_)))
                                        (let ((_lp-tl62566437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62546430_)))
                                              (_lp-hd62556434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62546430_))))
                                          (_loop62536420_
                                           _lp-tl62566437_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd62556434_
                                                   _body62576427_)))))
                                      (let ((_body62586440_
                                             (reverse _body62576427_)))
                                        (___kont2218522186_
                                         _body62586440_))))))
                        (_loop62536420_ _target62506414_ '())))))
              (if (gx#stx-pair? ___stx2218222183_)
                  (let ((_e62446394_ (gx#syntax-e ___stx2218222183_)))
                    (let ((_tl62466401_
                           (let () (declare (not safe)) (##cdr _e62446394_)))
                          (_hd62456398_
                           (let () (declare (not safe)) (##car _e62446394_))))
                      (if (gx#stx-pair? _tl62466401_)
                          (let ((_e62476404_ (gx#syntax-e _tl62466401_)))
                            (let ((_tl62496411_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e62476404_)))
                                  (_hd62486408_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e62476404_))))
                              (if (gx#stx-null? _hd62486408_)
                                  (if (gx#stx-pair/null? _tl62496411_)
                                      (let ((___splice2218722188_
                                             (gx#syntax-split-splice
                                              _tl62496411_
                                              '0)))
                                        (let ((_tl62526417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218722188_
                                                  '1)))
                                              (_target62506414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2218722188_
                                                  '0))))
                                          (if (gx#stx-null? _tl62526417_)
                                              (___match2221522216_
                                               _e62446394_
                                               _hd62456398_
                                               _tl62466401_
                                               _e62476404_
                                               _hd62486408_
                                               _tl62496411_
                                               ___splice2218722188_
                                               _target62506414_
                                               _tl62526417_)
                                              (let ()
                                                (declare (not safe))
                                                (_g62416286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62416286_)))
                                  (if (gx#stx-pair? _hd62486408_)
                                      (let ((_e62696313_
                                             (gx#syntax-e _hd62486408_)))
                                        (let ((_tl62716320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e62696313_)))
                                              (_hd62706317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e62696313_))))
                                          (if (gx#stx-pair/null? _tl62496411_)
                                              (let ((___splice2219122192_
                                                     (gx#syntax-split-splice
                                                      _tl62496411_
                                                      '0)))
                                                (let ((_tl62746326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219122192_
                                                          '1)))
                                                      (_target62726323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2219122192_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl62746326_)
                                                      (___match2224122242_
                                                       _e62446394_
                                                       _hd62456398_
                                                       _tl62466401_
                                                       _e62476404_
                                                       _hd62486408_
                                                       _tl62496411_
                                                       _e62696313_
                                                       _hd62706317_
                                                       _tl62716320_
                                                       ___splice2219122192_
                                                       _target62726323_
                                                       _tl62746326_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g62416286_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g62416286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62416286_))))))
                          (let () (declare (not safe)) (_g62416286_)))))
                  (let () (declare (not safe)) (_g62416286_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let|
      (lambda (_$stx6475_)
        (let* ((___stx2224422245_ _$stx6475_)
               (_g64806544_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2224422245_))))
          (let ((___kont2224722248_
                 (lambda (_L6750_ _L6752_ _L6753_ _L6754_ _L6755_)
                   (let ((__tmp24459
                          (let ((__tmp24471
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp24460
                                 (let ((__tmp24462
                                        (let ((__tmp24463
                                               (let ((__tmp24470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L6755_ '())))
                                                     (__tmp24464
                                                      (let ((__tmp24465
                                                             (let ((__tmp24469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp24466
                            (let ((__tmp24468
                                   (foldr (lambda (_g67806787_ _g67816790_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67806787_ _g67816790_)))
                                          _L6752_
                                          _L6754_))
                                  (__tmp24467
                                   (foldr (lambda (_g67826793_ _g67836796_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g67826793_ _g67836796_)))
                                          '()
                                          _L6750_)))
                              (declare (not safe))
                              (cons __tmp24468 __tmp24467))))
                       (declare (not safe))
                       (cons __tmp24469 __tmp24466))))
                (declare (not safe))
                (cons __tmp24465 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24470
                                                       __tmp24464))))
                                          (declare (not safe))
                                          (cons __tmp24463 '())))
                                       (__tmp24461
                                        (let ()
                                          (declare (not safe))
                                          (cons _L6755_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24462 __tmp24461))))
                            (declare (not safe))
                            (cons __tmp24471 __tmp24460)))
                         (__tmp24458
                          (foldr (lambda (_g67846799_ _g67856802_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g67846799_ _g67856802_)))
                                 '()
                                 _L6753_)))
                     (declare (not safe))
                     (cons __tmp24459 __tmp24458))))
                (___kont2225322254_
                 (lambda (_L6601_ _L6603_)
                   (let ((__tmp24476 (gx#datum->syntax '#f '~let))
                         (__tmp24472
                          (let ((__tmp24475 (gx#datum->syntax '#f 'let-values))
                                (__tmp24473
                                 (let ((__tmp24474
                                        (foldr (lambda (_g66206623_
                                                        _g66216626_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g66206623_
                                                         _g66216626_)))
                                               '()
                                               _L6601_)))
                                   (declare (not safe))
                                   (cons _L6603_ __tmp24474))))
                            (declare (not safe))
                            (cons __tmp24475 __tmp24473))))
                     (declare (not safe))
                     (cons __tmp24476 __tmp24472)))))
            (let* ((___match2230122302_
                    (lambda (_e65246551_
                             _hd65256555_
                             _tl65266558_
                             _e65276561_
                             _hd65286565_
                             _tl65296568_
                             ___splice2225522256_
                             _target65306571_
                             _tl65326574_)
                      (letrec ((_loop65336577_
                                (lambda (_hd65316581_ _body65376584_)
                                  (if (gx#stx-pair? _hd65316581_)
                                      (let ((_e65346587_
                                             (gx#syntax-e _hd65316581_)))
                                        (let ((_lp-tl65366594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65346587_)))
                                              (_lp-hd65356591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65346587_))))
                                          (_loop65336577_
                                           _lp-tl65366594_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd65356591_
                                                   _body65376584_)))))
                                      (let ((_body65386597_
                                             (reverse _body65376584_)))
                                        (___kont2225322254_
                                         _body65386597_
                                         _hd65286565_))))))
                        (_loop65336577_ _target65306571_ '()))))
                   (___match2229322294_
                    (lambda (_e65246551_
                             _hd65256555_
                             _tl65266558_
                             _e65276561_
                             _hd65286565_
                             _tl65296568_)
                      (if (gx#stx-pair/null? _tl65296568_)
                          (let ((___splice2225522256_
                                 (gx#syntax-split-splice _tl65296568_ '0)))
                            (let ((_tl65326574_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225522256_ '1)))
                                  (_target65306571_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2225522256_ '0))))
                              (if (gx#stx-null? _tl65326574_)
                                  (___match2230122302_
                                   _e65246551_
                                   _hd65256555_
                                   _tl65266558_
                                   _e65276561_
                                   _hd65286565_
                                   _tl65296568_
                                   ___splice2225522256_
                                   _target65306571_
                                   _tl65326574_)
                                  (let ()
                                    (declare (not safe))
                                    (_g64806544_)))))
                          (let () (declare (not safe)) (_g64806544_)))))
                   (___match2228122282_
                    (lambda (_e64876636_
                             _hd64886640_
                             _tl64896643_
                             _e64906646_
                             _hd64916650_
                             _tl64926653_
                             _e64936656_
                             _hd64946660_
                             _tl64956663_
                             ___splice2224922250_
                             _target64966666_
                             _tl64986669_)
                      (letrec ((_loop64996672_
                                (lambda (_hd64976676_
                                         _arg65036679_
                                         _var65046681_)
                                  (if (gx#stx-pair? _hd64976676_)
                                      (let ((_e65006684_
                                             (gx#syntax-e _hd64976676_)))
                                        (let ((_lp-tl65026691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65006684_)))
                                              (_lp-hd65016688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65006684_))))
                                          (if (gx#stx-pair? _lp-hd65016688_)
                                              (let ((_e65076694_
                                                     (gx#syntax-e
                                                      _lp-hd65016688_)))
                                                (let ((_tl65096701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e65076694_)))
                                                      (_hd65086698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e65076694_))))
                                                  (if (gx#stx-pair?
                                                       _tl65096701_)
                                                      (let ((_e65106704_
                                                             (gx#syntax-e
                                                              _tl65096701_)))
                                                        (let ((_tl65126711_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e65106704_)))
                      (_hd65116708_
                       (let () (declare (not safe)) (##car _e65106704_))))
                  (if (gx#stx-null? _tl65126711_)
                      (_loop64996672_
                       _lp-tl65026691_
                       (let ()
                         (declare (not safe))
                         (cons _hd65116708_ _arg65036679_))
                       (let ()
                         (declare (not safe))
                         (cons _hd65086698_ _var65046681_)))
                      (___match2229322294_
                       _e64876636_
                       _hd64886640_
                       _tl64896643_
                       _e64906646_
                       _hd64916650_
                       _tl64926653_))))
              (___match2229322294_
               _e64876636_
               _hd64886640_
               _tl64896643_
               _e64906646_
               _hd64916650_
               _tl64926653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2229322294_
                                               _e64876636_
                                               _hd64886640_
                                               _tl64896643_
                                               _e64906646_
                                               _hd64916650_
                                               _tl64926653_))))
                                      (let ((_var65066717_
                                             (reverse _var65046681_))
                                            (_arg65056714_
                                             (reverse _arg65036679_)))
                                        (if (gx#stx-pair/null? _tl64956663_)
                                            (let ((___splice2225122252_
                                                   (gx#syntax-split-splice
                                                    _tl64956663_
                                                    '0)))
                                              (let ((_tl65156723_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225122252_
                                                        '1)))
                                                    (_target65136720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2225122252_
                                                        '0))))
                                                (if (gx#stx-null? _tl65156723_)
                                                    (letrec ((_loop65166726_
                                                              (lambda (_hd65146730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body65206733_)
                        (if (gx#stx-pair? _hd65146730_)
                            (let ((_e65176736_ (gx#syntax-e _hd65146730_)))
                              (let ((_lp-tl65196743_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65176736_)))
                                    (_lp-hd65186740_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65176736_))))
                                (_loop65166726_
                                 _lp-tl65196743_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd65186740_ _body65206733_)))))
                            (let ((_body65216746_ (reverse _body65206733_)))
                              (let ((_L6750_ _body65216746_)
                                    (_L6752_ _tl64986669_)
                                    (_L6753_ _arg65056714_)
                                    (_L6754_ _var65066717_)
                                    (_L6755_ _hd64916650_))
                                (if (gx#identifier? _L6755_)
                                    (___kont2224722248_
                                     _L6750_
                                     _L6752_
                                     _L6753_
                                     _L6754_
                                     _L6755_)
                                    (___match2229322294_
                                     _e64876636_
                                     _hd64886640_
                                     _tl64896643_
                                     _e64906646_
                                     _hd64916650_
                                     _tl64926653_))))))))
              (_loop65166726_ _target65136720_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2229322294_
                                                     _e64876636_
                                                     _hd64886640_
                                                     _tl64896643_
                                                     _e64906646_
                                                     _hd64916650_
                                                     _tl64926653_))))
                                            (___match2229322294_
                                             _e64876636_
                                             _hd64886640_
                                             _tl64896643_
                                             _e64906646_
                                             _hd64916650_
                                             _tl64926653_)))))))
                        (_loop64996672_ _target64966666_ '() '())))))
              (if (gx#stx-pair? ___stx2224422245_)
                  (let ((_e64876636_ (gx#syntax-e ___stx2224422245_)))
                    (let ((_tl64896643_
                           (let () (declare (not safe)) (##cdr _e64876636_)))
                          (_hd64886640_
                           (let () (declare (not safe)) (##car _e64876636_))))
                      (if (gx#stx-pair? _tl64896643_)
                          (let ((_e64906646_ (gx#syntax-e _tl64896643_)))
                            (let ((_tl64926653_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e64906646_)))
                                  (_hd64916650_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e64906646_))))
                              (if (gx#stx-pair? _tl64926653_)
                                  (let ((_e64936656_
                                         (gx#syntax-e _tl64926653_)))
                                    (let ((_tl64956663_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e64936656_)))
                                          (_hd64946660_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e64936656_))))
                                      (if (gx#stx-pair/null? _hd64946660_)
                                          (let ((___splice2224922250_
                                                 (gx#syntax-split-splice
                                                  _hd64946660_
                                                  '0)))
                                            (let ((_tl64986669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2224922250_
                                                      '1)))
                                                  (_target64966666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2224922250_
                                                      '0))))
                                              (___match2228122282_
                                               _e64876636_
                                               _hd64886640_
                                               _tl64896643_
                                               _e64906646_
                                               _hd64916650_
                                               _tl64926653_
                                               _e64936656_
                                               _hd64946660_
                                               _tl64956663_
                                               ___splice2224922250_
                                               _target64966666_
                                               _tl64986669_)))
                                          (if (gx#stx-pair/null? _tl64926653_)
                                              (let ((___splice2225522256_
                                                     (gx#syntax-split-splice
                                                      _tl64926653_
                                                      '0)))
                                                (let ((_tl65326574_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225522256_
                                                          '1)))
                                                      (_target65306571_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2225522256_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl65326574_)
                                                      (___match2230122302_
                                                       _e64876636_
                                                       _hd64886640_
                                                       _tl64896643_
                                                       _e64906646_
                                                       _hd64916650_
                                                       _tl64926653_
                                                       ___splice2225522256_
                                                       _target65306571_
                                                       _tl65326574_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g64806544_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g64806544_))))))
                                  (if (gx#stx-pair/null? _tl64926653_)
                                      (let ((___splice2225522256_
                                             (gx#syntax-split-splice
                                              _tl64926653_
                                              '0)))
                                        (let ((_tl65326574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225522256_
                                                  '1)))
                                              (_target65306571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2225522256_
                                                  '0))))
                                          (if (gx#stx-null? _tl65326574_)
                                              (___match2230122302_
                                               _e64876636_
                                               _hd64886640_
                                               _tl64896643_
                                               _e64906646_
                                               _hd64916650_
                                               _tl64926653_
                                               ___splice2225522256_
                                               _target65306571_
                                               _tl65326574_)
                                              (let ()
                                                (declare (not safe))
                                                (_g64806544_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g64806544_))))))
                          (let () (declare (not safe)) (_g64806544_)))))
                  (let () (declare (not safe)) (_g64806544_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#let*|
      (lambda (_$stx6812_)
        (let* ((_g68166840_
                (lambda (_g68176836_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g68176836_)))
               (_g68156925_
                (lambda (_g68176844_)
                  (if (gx#stx-pair? _g68176844_)
                      (let ((_e68206847_ (gx#syntax-e _g68176844_)))
                        (let ((_hd68216851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68206847_)))
                              (_tl68226854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68206847_))))
                          (if (gx#stx-pair? _tl68226854_)
                              (let ((_e68236857_ (gx#syntax-e _tl68226854_)))
                                (let ((_hd68246861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68236857_)))
                                      (_tl68256864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68236857_))))
                                  (if (gx#stx-pair/null? _tl68256864_)
                                      (let ((_g24477_
                                             (gx#syntax-split-splice
                                              _tl68256864_
                                              '0)))
                                        (begin
                                          (let ((_g24478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24477_)
                                                       (##vector-length
                                                        _g24477_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24478_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24478_)))
                                          (let ((_target68266867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24477_ 0)))
                                                (_tl68286870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24477_ 1))))
                                            (if (gx#stx-null? _tl68286870_)
                                                (letrec ((_loop68296873_
                                                          (lambda (_hd68276877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body68336880_)
                    (if (gx#stx-pair? _hd68276877_)
                        (let ((_e68306883_ (gx#syntax-e _hd68276877_)))
                          (let ((_lp-hd68316887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68306883_)))
                                (_lp-tl68326890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68306883_))))
                            (_loop68296873_
                             _lp-tl68326890_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd68316887_ _body68336880_)))))
                        (let ((_body68346893_ (reverse _body68336880_)))
                          ((lambda (_L6897_ _L6899_)
                             (let ((__tmp24483 (gx#datum->syntax '#f '~let))
                                   (__tmp24479
                                    (let ((__tmp24482
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp24480
                                           (let ((__tmp24481
                                                  (foldr (lambda (_g69166919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g69176922_)
                   (let ()
                     (declare (not safe))
                     (cons _g69166919_ _g69176922_)))
                 '()
                 _L6897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L6899_ __tmp24481))))
                                      (declare (not safe))
                                      (cons __tmp24482 __tmp24480))))
                               (declare (not safe))
                               (cons __tmp24483 __tmp24479)))
                           _body68346893_
                           _hd68246861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop68296873_
                                                   _target68266867_
                                                   '()))
                                                (_g68166840_ _g68176844_)))))
                                      (_g68166840_ _g68176844_))))
                              (_g68166840_ _g68176844_))))
                      (_g68166840_ _g68176844_)))))
          (_g68156925_ _$stx6812_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec|
      (lambda (_$stx6930_)
        (let* ((_g69346958_
                (lambda (_g69356954_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g69356954_)))
               (_g69337043_
                (lambda (_g69356962_)
                  (if (gx#stx-pair? _g69356962_)
                      (let ((_e69386965_ (gx#syntax-e _g69356962_)))
                        (let ((_hd69396969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69386965_)))
                              (_tl69406972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69386965_))))
                          (if (gx#stx-pair? _tl69406972_)
                              (let ((_e69416975_ (gx#syntax-e _tl69406972_)))
                                (let ((_hd69426979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e69416975_)))
                                      (_tl69436982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e69416975_))))
                                  (if (gx#stx-pair/null? _tl69436982_)
                                      (let ((_g24484_
                                             (gx#syntax-split-splice
                                              _tl69436982_
                                              '0)))
                                        (begin
                                          (let ((_g24485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24484_)
                                                       (##vector-length
                                                        _g24484_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24485_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24485_)))
                                          (let ((_target69446985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24484_ 0)))
                                                (_tl69466988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24484_ 1))))
                                            (if (gx#stx-null? _tl69466988_)
                                                (letrec ((_loop69476991_
                                                          (lambda (_hd69456995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body69516998_)
                    (if (gx#stx-pair? _hd69456995_)
                        (let ((_e69487001_ (gx#syntax-e _hd69456995_)))
                          (let ((_lp-hd69497005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e69487001_)))
                                (_lp-tl69507008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e69487001_))))
                            (_loop69476991_
                             _lp-tl69507008_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd69497005_ _body69516998_)))))
                        (let ((_body69527011_ (reverse _body69516998_)))
                          ((lambda (_L7015_ _L7017_)
                             (let ((__tmp24490 (gx#datum->syntax '#f '~let))
                                   (__tmp24486
                                    (let ((__tmp24489
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp24487
                                           (let ((__tmp24488
                                                  (foldr (lambda (_g70347037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g70357040_)
                   (let ()
                     (declare (not safe))
                     (cons _g70347037_ _g70357040_)))
                 '()
                 _L7015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7017_ __tmp24488))))
                                      (declare (not safe))
                                      (cons __tmp24489 __tmp24487))))
                               (declare (not safe))
                               (cons __tmp24490 __tmp24486)))
                           _body69527011_
                           _hd69426979_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop69476991_
                                                   _target69446985_
                                                   '()))
                                                (_g69346958_ _g69356962_)))))
                                      (_g69346958_ _g69356962_))))
                              (_g69346958_ _g69356962_))))
                      (_g69346958_ _g69356962_)))))
          (_g69337043_ _$stx6930_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx7048_)
        (let* ((_g70527076_
                (lambda (_g70537072_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g70537072_)))
               (_g70517161_
                (lambda (_g70537080_)
                  (if (gx#stx-pair? _g70537080_)
                      (let ((_e70567083_ (gx#syntax-e _g70537080_)))
                        (let ((_hd70577087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e70567083_)))
                              (_tl70587090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e70567083_))))
                          (if (gx#stx-pair? _tl70587090_)
                              (let ((_e70597093_ (gx#syntax-e _tl70587090_)))
                                (let ((_hd70607097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e70597093_)))
                                      (_tl70617100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e70597093_))))
                                  (if (gx#stx-pair/null? _tl70617100_)
                                      (let ((_g24491_
                                             (gx#syntax-split-splice
                                              _tl70617100_
                                              '0)))
                                        (begin
                                          (let ((_g24492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24491_)
                                                       (##vector-length
                                                        _g24491_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24492_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24492_)))
                                          (let ((_target70627103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24491_ 0)))
                                                (_tl70647106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24491_ 1))))
                                            (if (gx#stx-null? _tl70647106_)
                                                (letrec ((_loop70657109_
                                                          (lambda (_hd70637113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body70697116_)
                    (if (gx#stx-pair? _hd70637113_)
                        (let ((_e70667119_ (gx#syntax-e _hd70637113_)))
                          (let ((_lp-hd70677123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70667119_)))
                                (_lp-tl70687126_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70667119_))))
                            (_loop70657109_
                             _lp-tl70687126_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd70677123_ _body70697116_)))))
                        (let ((_body70707129_ (reverse _body70697116_)))
                          ((lambda (_L7133_ _L7135_)
                             (let ((__tmp24497 (gx#datum->syntax '#f '~let))
                                   (__tmp24493
                                    (let ((__tmp24496
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp24494
                                           (let ((__tmp24495
                                                  (foldr (lambda (_g71527155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g71537158_)
                   (let ()
                     (declare (not safe))
                     (cons _g71527155_ _g71537158_)))
                 '()
                 _L7133_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L7135_ __tmp24495))))
                                      (declare (not safe))
                                      (cons __tmp24496 __tmp24494))))
                               (declare (not safe))
                               (cons __tmp24497 __tmp24493)))
                           _body70707129_
                           _hd70607097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop70657109_
                                                   _target70627103_
                                                   '()))
                                                (_g70527076_ _g70537080_)))))
                                      (_g70527076_ _g70537080_))))
                              (_g70527076_ _g70537080_))))
                      (_g70527076_ _g70537080_)))))
          (_g70517161_ _$stx7048_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#~let|
      (lambda (_stx7166_)
        (letrec ((_let-head?7169_
                  (lambda (_x7649_)
                    (let* ((___stx2230422305_ _x7649_)
                           (_g76537664_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2230422305_))))
                      (let ((___kont2230722308_
                             (lambda (_L7692_)
                               (gx#stx-andmap gx#identifier? _L7692_)))
                            (___kont2230922310_
                             (lambda () (gx#identifier? _x7649_))))
                        (if (gx#stx-pair? ___stx2230422305_)
                            (let ((_e76567682_
                                   (gx#syntax-e ___stx2230422305_)))
                              (let ((_tl76587689_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76567682_)))
                                    (_hd76577686_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76567682_))))
                                (if (gx#identifier? _hd76577686_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24498_|
                                         _hd76577686_)
                                        (___kont2230722308_ _tl76587689_)
                                        (___kont2230922310_))
                                    (___kont2230922310_))))
                            (___kont2230922310_))))))
                 (_let-head7171_
                  (lambda (_x7589_)
                    (let* ((___stx2232422325_ _x7589_)
                           (_g75937604_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2232422325_))))
                      (let ((___kont2232722328_ (lambda (_L7632_) _L7632_))
                            (___kont2232922330_ (lambda () (list _x7589_))))
                        (if (gx#stx-pair? ___stx2232422325_)
                            (let ((_e75967622_
                                   (gx#syntax-e ___stx2232422325_)))
                              (let ((_tl75987629_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e75967622_)))
                                    (_hd75977626_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e75967622_))))
                                (if (gx#identifier? _hd75977626_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:1>[1]#_g24499_|
                                         _hd75977626_)
                                        (___kont2232722328_ _tl75987629_)
                                        (___kont2232922330_))
                                    (___kont2232922330_))))
                            (___kont2232922330_)))))))
          (let* ((___stx2234422345_ _stx7166_)
                 (_g71747240_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2234422345_))))
            (let ((___kont2234722348_
                   (lambda (_L7558_ _L7560_ _L7561_ _L7562_ _L7563_)
                     (let ((__tmp24500
                            (let ((__tmp24501
                                   (let ((__tmp24502
                                          (let ((__tmp24503
                                                 (let ((__tmp24504
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L7560_ '()))))
                                                   (declare (not safe))
                                                   (cons _L7561_ __tmp24504))))
                                            (declare (not safe))
                                            (cons __tmp24503 '()))))
                                     (declare (not safe))
                                     (cons __tmp24502 _L7558_))))
                              (declare (not safe))
                              (cons _L7562_ __tmp24501))))
                       (declare (not safe))
                       (cons _L7563_ __tmp24500))))
                  (___kont2234922350_
                   (lambda (_L7361_ _L7363_ _L7364_ _L7365_)
                     (let* ((_g74007417_
                             (lambda (_g74017413_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g74017413_)))
                            (_g73997489_
                             (lambda (_g74017421_)
                               (if (gx#stx-pair/null? _g74017421_)
                                   (let ((_g24505_
                                          (gx#syntax-split-splice
                                           _g74017421_
                                           '0)))
                                     (begin
                                       (let ((_g24506_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g24505_)
                                                    (##vector-length _g24505_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g24506_ 2)))
                                             (error "Context expects 2 values"
                                                    _g24506_)))
                                       (let ((_target74037424_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24505_ 0)))
                                             (_tl74057427_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g24505_ 1))))
                                         (if (gx#stx-null? _tl74057427_)
                                             (letrec ((_loop74067430_
                                                       (lambda (_hd74047434_
                                                                _hd-bind74107437_)
                                                         (if (gx#stx-pair?
                                                              _hd74047434_)
                                                             (let ((_e74077440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd74047434_)))
                       (let ((_lp-hd74087444_
                              (let ()
                                (declare (not safe))
                                (##car _e74077440_)))
                             (_lp-tl74097447_
                              (let ()
                                (declare (not safe))
                                (##cdr _e74077440_))))
                         (_loop74067430_
                          _lp-tl74097447_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd74087444_ _hd-bind74107437_)))))
                     (let ((_hd-bind74117450_ (reverse _hd-bind74107437_)))
                       ((lambda (_L7454_)
                          (let ()
                            (let ((__tmp24507
                                   (let ((__tmp24509
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L7363_
                                             _L7454_)
                                            (foldr (lambda (_g74697475_
                                                            _g74707478_
                                                            _g74717480_)
                                                     (let ((__tmp24510
                                                            (let ((__tmp24511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g74697475_ '()))))
                      (declare (not safe))
                      (cons _g74707478_ __tmp24511))))
               (declare (not safe))
               (cons __tmp24510 _g74717480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L7363_
                                                   _L7454_)))
                                         (__tmp24508
                                          (foldr (lambda (_g74727483_
                                                          _g74737486_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g74727483_
                                                           _g74737486_)))
                                                 '()
                                                 _L7361_)))
                                     (declare (not safe))
                                     (cons __tmp24509 __tmp24508))))
                              (declare (not safe))
                              (cons _L7365_ __tmp24507))))
                        _hd-bind74117450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop74067430_
                                                _target74037424_
                                                '()))
                                             (_g74007417_ _g74017421_)))))
                                   (_g74007417_ _g74017421_)))))
                       (_g73997489_
                        (gx#stx-map
                         _let-head7171_
                         (foldr (lambda (_g74927495_ _g74937498_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g74927495_ _g74937498_)))
                                '()
                                _L7364_)))))))
              (let* ((___match2241322414_
                      (lambda (_e72007247_
                               _hd72017251_
                               _tl72027254_
                               _e72037257_
                               _hd72047261_
                               _tl72057264_
                               _e72067267_
                               _hd72077271_
                               _tl72087274_
                               ___splice2235122352_
                               _target72097277_
                               _tl72117280_)
                        (letrec ((_loop72127283_
                                  (lambda (_hd72107287_
                                           _e72167290_
                                           _hd72177292_)
                                    (if (gx#stx-pair? _hd72107287_)
                                        (let ((_e72137295_
                                               (gx#syntax-e _hd72107287_)))
                                          (let ((_lp-tl72157302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72137295_)))
                                                (_lp-hd72147299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72137295_))))
                                            (if (gx#stx-pair? _lp-hd72147299_)
                                                (let ((_e72207305_
                                                       (gx#syntax-e
                                                        _lp-hd72147299_)))
                                                  (let ((_tl72227312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e72207305_)))
                                                        (_hd72217309_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e72207305_))))
                                                    (if (gx#stx-pair?
                                                         _tl72227312_)
                                                        (let ((_e72237315_
                                                               (gx#syntax-e
                                                                _tl72227312_)))
                                                          (let ((_tl72257322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e72237315_)))
                        (_hd72247319_
                         (let () (declare (not safe)) (##car _e72237315_))))
                    (if (gx#stx-null? _tl72257322_)
                        (_loop72127283_
                         _lp-tl72157302_
                         (let ()
                           (declare (not safe))
                           (cons _hd72247319_ _e72167290_))
                         (let ()
                           (declare (not safe))
                           (cons _hd72217309_ _hd72177292_)))
                        (let () (declare (not safe)) (_g71747240_)))))
                (let () (declare (not safe)) (_g71747240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71747240_)))))
                                        (let ((_hd72197328_
                                               (reverse _hd72177292_))
                                              (_e72187325_
                                               (reverse _e72167290_)))
                                          (if (gx#stx-pair/null? _tl72087274_)
                                              (let ((___splice2235322354_
                                                     (gx#syntax-split-splice
                                                      _tl72087274_
                                                      '0)))
                                                (let ((_tl72287334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235322354_
                                                          '1)))
                                                      (_target72267331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2235322354_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl72287334_)
                                                      (letrec ((_loop72297337_
                                                                (lambda (_hd72277341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body72337344_)
                          (if (gx#stx-pair? _hd72277341_)
                              (let ((_e72307347_ (gx#syntax-e _hd72277341_)))
                                (let ((_lp-tl72327354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e72307347_)))
                                      (_lp-hd72317351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e72307347_))))
                                  (_loop72297337_
                                   _lp-tl72327354_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd72317351_ _body72337344_)))))
                              (let ((_body72347357_ (reverse _body72337344_)))
                                (let ((_L7361_ _body72347357_)
                                      (_L7363_ _e72187325_)
                                      (_L7364_ _hd72197328_)
                                      (_L7365_ _hd72047261_))
                                  (if (gx#stx-andmap
                                       _let-head?7169_
                                       (foldr (lambda (_g73917394_ _g73927397_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g73917394_
                                                        _g73927397_)))
                                              '()
                                              _L7364_))
                                      (___kont2234922350_
                                       _L7361_
                                       _L7363_
                                       _L7364_
                                       _L7365_)
                                      (let ()
                                        (declare (not safe))
                                        (_g71747240_)))))))))
                (_loop72297337_ _target72267331_ '()))
              (let () (declare (not safe)) (_g71747240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g71747240_))))))))
                          (_loop72127283_ _target72097277_ '() '()))))
                     (___match2238722388_
                      (lambda (_e71817508_
                               _hd71827512_
                               _tl71837515_
                               _e71847518_
                               _hd71857522_
                               _tl71867525_
                               _e71877528_
                               _hd71887532_
                               _tl71897535_
                               _e71907538_
                               _hd71917542_
                               _tl71927545_
                               _e71937548_
                               _hd71947552_
                               _tl71957555_)
                        (let ((_L7558_ _tl71897535_)
                              (_L7560_ _hd71947552_)
                              (_L7561_ _hd71917542_)
                              (_L7562_ _hd71857522_)
                              (_L7563_ _hd71827512_))
                          (if (_let-head?7169_ _L7561_)
                              (___kont2234722348_
                               _L7558_
                               _L7560_
                               _L7561_
                               _L7562_
                               _L7563_)
                              (if (gx#stx-pair/null? _hd71887532_)
                                  (let ((___splice2235122352_
                                         (gx#syntax-split-splice
                                          _hd71887532_
                                          '0)))
                                    (let ((_tl72117280_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235122352_
                                              '1)))
                                          (_target72097277_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2235122352_
                                              '0))))
                                      (if (gx#stx-null? _tl72117280_)
                                          (___match2241322414_
                                           _e71817508_
                                           _hd71827512_
                                           _tl71837515_
                                           _e71847518_
                                           _hd71857522_
                                           _tl71867525_
                                           _e71877528_
                                           _hd71887532_
                                           _tl71897535_
                                           ___splice2235122352_
                                           _target72097277_
                                           _tl72117280_)
                                          (let ()
                                            (declare (not safe))
                                            (_g71747240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g71747240_))))))))
                (if (gx#stx-pair? ___stx2234422345_)
                    (let ((_e71817508_ (gx#syntax-e ___stx2234422345_)))
                      (let ((_tl71837515_
                             (let () (declare (not safe)) (##cdr _e71817508_)))
                            (_hd71827512_
                             (let ()
                               (declare (not safe))
                               (##car _e71817508_))))
                        (if (gx#stx-pair? _tl71837515_)
                            (let ((_e71847518_ (gx#syntax-e _tl71837515_)))
                              (let ((_tl71867525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e71847518_)))
                                    (_hd71857522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e71847518_))))
                                (if (gx#stx-pair? _tl71867525_)
                                    (let ((_e71877528_
                                           (gx#syntax-e _tl71867525_)))
                                      (let ((_tl71897535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e71877528_)))
                                            (_hd71887532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e71877528_))))
                                        (if (gx#stx-pair? _hd71887532_)
                                            (let ((_e71907538_
                                                   (gx#syntax-e _hd71887532_)))
                                              (let ((_tl71927545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e71907538_)))
                                                    (_hd71917542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e71907538_))))
                                                (if (gx#stx-pair? _tl71927545_)
                                                    (let ((_e71937548_
                                                           (gx#syntax-e
                                                            _tl71927545_)))
                                                      (let ((_tl71957555_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e71937548_)))
                    (_hd71947552_
                     (let () (declare (not safe)) (##car _e71937548_))))
                (if (gx#stx-null? _tl71957555_)
                    (___match2238722388_
                     _e71817508_
                     _hd71827512_
                     _tl71837515_
                     _e71847518_
                     _hd71857522_
                     _tl71867525_
                     _e71877528_
                     _hd71887532_
                     _tl71897535_
                     _e71907538_
                     _hd71917542_
                     _tl71927545_
                     _e71937548_
                     _hd71947552_
                     _tl71957555_)
                    (if (gx#stx-pair/null? _hd71887532_)
                        (let ((___splice2235122352_
                               (gx#syntax-split-splice _hd71887532_ '0)))
                          (let ((_tl72117280_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235122352_ '1)))
                                (_target72097277_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2235122352_ '0))))
                            (if (gx#stx-null? _tl72117280_)
                                (___match2241322414_
                                 _e71817508_
                                 _hd71827512_
                                 _tl71837515_
                                 _e71847518_
                                 _hd71857522_
                                 _tl71867525_
                                 _e71877528_
                                 _hd71887532_
                                 _tl71897535_
                                 ___splice2235122352_
                                 _target72097277_
                                 _tl72117280_)
                                (let () (declare (not safe)) (_g71747240_)))))
                        (let () (declare (not safe)) (_g71747240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd71887532_)
                                                        (let ((___splice2235122352_
                                                               (gx#syntax-split-splice
                                                                _hd71887532_
                                                                '0)))
                                                          (let ((_tl72117280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235122352_ '1)))
                        (_target72097277_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2235122352_ '0))))
                    (if (gx#stx-null? _tl72117280_)
                        (___match2241322414_
                         _e71817508_
                         _hd71827512_
                         _tl71837515_
                         _e71847518_
                         _hd71857522_
                         _tl71867525_
                         _e71877528_
                         _hd71887532_
                         _tl71897535_
                         ___splice2235122352_
                         _target72097277_
                         _tl72117280_)
                        (let () (declare (not safe)) (_g71747240_)))))
                (let () (declare (not safe)) (_g71747240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd71887532_)
                                                (let ((___splice2235122352_
                                                       (gx#syntax-split-splice
                                                        _hd71887532_
                                                        '0)))
                                                  (let ((_tl72117280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235122352_
                                                            '1)))
                                                        (_target72097277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2235122352_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl72117280_)
                                                        (___match2241322414_
                                                         _e71817508_
                                                         _hd71827512_
                                                         _tl71837515_
                                                         _e71847518_
                                                         _hd71857522_
                                                         _tl71867525_
                                                         _e71877528_
                                                         _hd71887532_
                                                         _tl71897535_
                                                         ___splice2235122352_
                                                         _target72097277_
                                                         _tl72117280_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g71747240_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g71747240_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g71747240_)))))
                            (let () (declare (not safe)) (_g71747240_)))))
                    (let () (declare (not safe)) (_g71747240_)))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#and|
      (lambda (_$stx7712_)
        (let* ((___stx2241622417_ _$stx7712_)
               (_g77187744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2241622417_))))
          (let ((___kont2241922420_ (lambda () '#t))
                (___kont2242122422_ (lambda (_L7816_) _L7816_))
                (___kont2242322424_
                 (lambda (_L7771_ _L7773_ _L7774_)
                   (let ((__tmp24516 (gx#datum->syntax '#f 'if))
                         (__tmp24512
                          (let ((__tmp24513
                                 (let ((__tmp24515
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7774_ _L7771_)))
                                       (__tmp24514
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp24515 __tmp24514))))
                            (declare (not safe))
                            (cons _L7773_ __tmp24513))))
                     (declare (not safe))
                     (cons __tmp24516 __tmp24512)))))
            (if (gx#stx-pair? ___stx2241622417_)
                (let ((_e77207836_ (gx#syntax-e ___stx2241622417_)))
                  (let ((_tl77227843_
                         (let () (declare (not safe)) (##cdr _e77207836_)))
                        (_hd77217840_
                         (let () (declare (not safe)) (##car _e77207836_))))
                    (if (gx#stx-null? _tl77227843_)
                        (___kont2241922420_)
                        (if (gx#stx-pair? _tl77227843_)
                            (let ((_e77277806_ (gx#syntax-e _tl77227843_)))
                              (let ((_tl77297813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e77277806_)))
                                    (_hd77287810_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e77277806_))))
                                (if (gx#stx-null? _tl77297813_)
                                    (___kont2242122422_ _hd77287810_)
                                    (___kont2242322424_
                                     _tl77297813_
                                     _hd77287810_
                                     _hd77217840_))))
                            (let () (declare (not safe)) (_g77187744_))))))
                (let () (declare (not safe)) (_g77187744_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#or|
      (lambda (_$stx7854_)
        (let* ((___stx2246222463_ _$stx7854_)
               (_g78607886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2246222463_))))
          (let ((___kont2246522466_ (lambda () '#f))
                (___kont2246722468_ (lambda (_L7958_) _L7958_))
                (___kont2246922470_
                 (lambda (_L7913_ _L7915_ _L7916_)
                   (let ((__tmp24530 (gx#datum->syntax '#f 'let))
                         (__tmp24517
                          (let ((__tmp24527
                                 (let ((__tmp24529 (gx#datum->syntax '#f '$e))
                                       (__tmp24528
                                        (let ()
                                          (declare (not safe))
                                          (cons _L7915_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24529 __tmp24528)))
                                (__tmp24518
                                 (let ((__tmp24519
                                        (let ((__tmp24526
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24520
                                               (let ((__tmp24525
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24521
                                                      (let ((__tmp24524
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24522
                                                             (let ((__tmp24523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L7916_ _L7913_))))
                       (declare (not safe))
                       (cons __tmp24523 '()))))
                (declare (not safe))
                (cons __tmp24524 __tmp24522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24525
                                                       __tmp24521))))
                                          (declare (not safe))
                                          (cons __tmp24526 __tmp24520))))
                                   (declare (not safe))
                                   (cons __tmp24519 '()))))
                            (declare (not safe))
                            (cons __tmp24527 __tmp24518))))
                     (declare (not safe))
                     (cons __tmp24530 __tmp24517)))))
            (if (gx#stx-pair? ___stx2246222463_)
                (let ((_e78627978_ (gx#syntax-e ___stx2246222463_)))
                  (let ((_tl78647985_
                         (let () (declare (not safe)) (##cdr _e78627978_)))
                        (_hd78637982_
                         (let () (declare (not safe)) (##car _e78627978_))))
                    (if (gx#stx-null? _tl78647985_)
                        (___kont2246522466_)
                        (if (gx#stx-pair? _tl78647985_)
                            (let ((_e78697948_ (gx#syntax-e _tl78647985_)))
                              (let ((_tl78717955_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e78697948_)))
                                    (_hd78707952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e78697948_))))
                                (if (gx#stx-null? _tl78717955_)
                                    (___kont2246722468_ _hd78707952_)
                                    (___kont2246922470_
                                     _tl78717955_
                                     _hd78707952_
                                     _hd78637982_))))
                            (let () (declare (not safe)) (_g78607886_))))))
                (let () (declare (not safe)) (_g78607886_)))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#cond|
      (lambda (_$stx7996_)
        (let* ((___stx2250822509_ _$stx7996_)
               (_g80058096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2250822509_))))
          (let ((___kont2251122512_ (lambda () '#!void))
                (___kont2251322514_
                 (lambda (_L8443_)
                   (let ((__tmp24535 (gx#datum->syntax '#f '%#expression))
                         (__tmp24531
                          (let ((__tmp24532
                                 (let ((__tmp24534
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp24533
                                        (foldr (lambda (_g84628465_
                                                        _g84638468_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g84628465_
                                                         _g84638468_)))
                                               '()
                                               _L8443_)))
                                   (declare (not safe))
                                   (cons __tmp24534 __tmp24533))))
                            (declare (not safe))
                            (cons __tmp24532 '()))))
                     (declare (not safe))
                     (cons __tmp24535 __tmp24531))))
                (___kont2251722518_
                 (lambda ()
                   (let ((__tmp24537 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp24536
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp24537 __tmp24536))))
                (___kont2251922520_
                 (lambda (_L8316_ _L8318_ _L8319_)
                   (let ((__tmp24551 (gx#datum->syntax '#f 'let))
                         (__tmp24538
                          (let ((__tmp24548
                                 (let ((__tmp24550 (gx#datum->syntax '#f '$e))
                                       (__tmp24549
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8318_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24550 __tmp24549)))
                                (__tmp24539
                                 (let ((__tmp24540
                                        (let ((__tmp24547
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24541
                                               (let ((__tmp24546
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24542
                                                      (let ((__tmp24545
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp24543
                                                             (let ((__tmp24544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L8319_ _L8316_))))
                       (declare (not safe))
                       (cons __tmp24544 '()))))
                (declare (not safe))
                (cons __tmp24545 __tmp24543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24546
                                                       __tmp24542))))
                                          (declare (not safe))
                                          (cons __tmp24547 __tmp24541))))
                                   (declare (not safe))
                                   (cons __tmp24540 '()))))
                            (declare (not safe))
                            (cons __tmp24548 __tmp24539))))
                     (declare (not safe))
                     (cons __tmp24551 __tmp24538))))
                (___kont2252122522_
                 (lambda (_L8254_ _L8256_ _L8257_ _L8258_)
                   (let ((__tmp24567 (gx#datum->syntax '#f 'let))
                         (__tmp24552
                          (let ((__tmp24564
                                 (let ((__tmp24566 (gx#datum->syntax '#f '$e))
                                       (__tmp24565
                                        (let ()
                                          (declare (not safe))
                                          (cons _L8257_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24566 __tmp24565)))
                                (__tmp24553
                                 (let ((__tmp24554
                                        (let ((__tmp24563
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24555
                                               (let ((__tmp24562
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp24556
                                                      (let ((__tmp24559
                                                             (let ((__tmp24560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24561 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp24561 '()))))
                       (declare (not safe))
                       (cons _L8256_ __tmp24560)))
                    (__tmp24557
                     (let ((__tmp24558
                            (let ()
                              (declare (not safe))
                              (cons _L8258_ _L8254_))))
                       (declare (not safe))
                       (cons __tmp24558 '()))))
                (declare (not safe))
                (cons __tmp24559 __tmp24557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24562
                                                       __tmp24556))))
                                          (declare (not safe))
                                          (cons __tmp24563 __tmp24555))))
                                   (declare (not safe))
                                   (cons __tmp24554 '()))))
                            (declare (not safe))
                            (cons __tmp24564 __tmp24553))))
                     (declare (not safe))
                     (cons __tmp24567 __tmp24552))))
                (___kont2252322524_
                 (lambda (_L8163_ _L8165_ _L8166_ _L8167_)
                   (let ((__tmp24575 (gx#datum->syntax '#f 'if))
                         (__tmp24568
                          (let ((__tmp24569
                                 (let ((__tmp24572
                                        (let ((__tmp24574
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp24573
                                               (foldr (lambda (_g81888191_
                                                               _g81898194_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g81888191_
                                                                _g81898194_)))
                                                      '()
                                                      _L8165_)))
                                          (declare (not safe))
                                          (cons __tmp24574 __tmp24573)))
                                       (__tmp24570
                                        (let ((__tmp24571
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L8167_ _L8163_))))
                                          (declare (not safe))
                                          (cons __tmp24571 '()))))
                                   (declare (not safe))
                                   (cons __tmp24572 __tmp24570))))
                            (declare (not safe))
                            (cons _L8166_ __tmp24569))))
                     (declare (not safe))
                     (cons __tmp24575 __tmp24568)))))
            (let* ((___match2266922670_
                    (lambda (_e80738103_
                             _hd80748107_
                             _tl80758110_
                             _e80768113_
                             _hd80778117_
                             _tl80788120_
                             _e80798123_
                             _hd80808127_
                             _tl80818130_
                             ___splice2252522526_
                             _target80828133_
                             _tl80848136_)
                      (letrec ((_loop80858139_
                                (lambda (_hd80838143_ _body80898146_)
                                  (if (gx#stx-pair? _hd80838143_)
                                      (let ((_e80868149_
                                             (gx#syntax-e _hd80838143_)))
                                        (let ((_lp-tl80888156_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80868149_)))
                                              (_lp-hd80878153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80868149_))))
                                          (_loop80858139_
                                           _lp-tl80888156_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80878153_
                                                   _body80898146_)))))
                                      (let ((_body80908159_
                                             (reverse _body80898146_)))
                                        (___kont2252322524_
                                         _tl80788120_
                                         _body80908159_
                                         _hd80808127_
                                         _hd80748107_))))))
                        (_loop80858139_ _target80828133_ '()))))
                   (___match2256522566_
                    (lambda (_e80118383_
                             _hd80128387_
                             _tl80138390_
                             _e80148393_
                             _hd80158397_
                             _tl80168400_
                             _e80178403_
                             _hd80188407_
                             _tl80198410_
                             ___splice2251522516_
                             _target80208413_
                             _tl80228416_)
                      (letrec ((_loop80238419_
                                (lambda (_hd80218423_ _body80278426_)
                                  (if (gx#stx-pair? _hd80218423_)
                                      (let ((_e80248429_
                                             (gx#syntax-e _hd80218423_)))
                                        (let ((_lp-tl80268436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80248429_)))
                                              (_lp-hd80258433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80248429_))))
                                          (_loop80238419_
                                           _lp-tl80268436_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd80258433_
                                                   _body80278426_)))))
                                      (let ((_body80288439_
                                             (reverse _body80278426_)))
                                        (if (gx#stx-null? _tl80168400_)
                                            (___kont2251322514_ _body80288439_)
                                            (___kont2251722518_)))))))
                        (_loop80238419_ _target80208413_ '())))))
              (if (gx#stx-pair? ___stx2250822509_)
                  (let ((_e80078478_ (gx#syntax-e ___stx2250822509_)))
                    (let ((_tl80098485_
                           (let () (declare (not safe)) (##cdr _e80078478_)))
                          (_hd80088482_
                           (let () (declare (not safe)) (##car _e80078478_))))
                      (if (gx#stx-null? _tl80098485_)
                          (___kont2251122512_)
                          (if (gx#stx-pair? _tl80098485_)
                              (let ((_e80148393_ (gx#syntax-e _tl80098485_)))
                                (let ((_tl80168400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80148393_)))
                                      (_hd80158397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80148393_))))
                                  (if (gx#stx-pair? _hd80158397_)
                                      (let ((_e80178403_
                                             (gx#syntax-e _hd80158397_)))
                                        (let ((_tl80198410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80178403_)))
                                              (_hd80188407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80178403_))))
                                          (if (gx#identifier? _hd80188407_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:1>[1]#_g24576_|
                                                   _hd80188407_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80198410_)
                                                      (let ((___splice2251522516_
                                                             (gx#syntax-split-splice
                                                              _tl80198410_
                                                              '0)))
                                                        (let ((_tl80228416_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2251522516_ '1)))
                      (_target80208413_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2251522516_ '0))))
                  (if (gx#stx-null? _tl80228416_)
                      (___match2256522566_
                       _e80078478_
                       _hd80088482_
                       _tl80098485_
                       _e80148393_
                       _hd80158397_
                       _tl80168400_
                       _e80178403_
                       _hd80188407_
                       _tl80198410_
                       ___splice2251522516_
                       _target80208413_
                       _tl80228416_)
                      (___kont2251722518_))))
              (___kont2251722518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl80198410_)
                                                      (___kont2251922520_
                                                       _tl80168400_
                                                       _hd80188407_
                                                       _hd80088482_)
                                                      (if (gx#stx-pair?
                                                           _tl80198410_)
                                                          (let ((_e80638234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80198410_)))
                    (let ((_tl80658241_
                           (let () (declare (not safe)) (##cdr _e80638234_)))
                          (_hd80648238_
                           (let () (declare (not safe)) (##car _e80638234_))))
                      (if (gx#identifier? _hd80648238_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
                               _hd80648238_)
                              (if (gx#stx-pair? _tl80658241_)
                                  (let ((_e80668244_
                                         (gx#syntax-e _tl80658241_)))
                                    (let ((_tl80688251_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80668244_)))
                                          (_hd80678248_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80668244_))))
                                      (if (gx#stx-null? _tl80688251_)
                                          (___kont2252122522_
                                           _tl80168400_
                                           _hd80678248_
                                           _hd80188407_
                                           _hd80088482_)
                                          (if (gx#stx-pair/null? _tl80198410_)
                                              (let ((___splice2252522526_
                                                     (gx#syntax-split-splice
                                                      _tl80198410_
                                                      '0)))
                                                (let ((_tl80848136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252522526_
                                                          '1)))
                                                      (_target80828133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2252522526_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl80848136_)
                                                      (___match2266922670_
                                                       _e80078478_
                                                       _hd80088482_
                                                       _tl80098485_
                                                       _e80148393_
                                                       _hd80158397_
                                                       _tl80168400_
                                                       _e80178403_
                                                       _hd80188407_
                                                       _tl80198410_
                                                       ___splice2252522526_
                                                       _target80828133_
                                                       _tl80848136_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g80058096_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g80058096_))))))
                                  (if (gx#stx-pair/null? _tl80198410_)
                                      (let ((___splice2252522526_
                                             (gx#syntax-split-splice
                                              _tl80198410_
                                              '0)))
                                        (let ((_tl80848136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252522526_
                                                  '1)))
                                              (_target80828133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2252522526_
                                                  '0))))
                                          (if (gx#stx-null? _tl80848136_)
                                              (___match2266922670_
                                               _e80078478_
                                               _hd80088482_
                                               _tl80098485_
                                               _e80148393_
                                               _hd80158397_
                                               _tl80168400_
                                               _e80178403_
                                               _hd80188407_
                                               _tl80198410_
                                               ___splice2252522526_
                                               _target80828133_
                                               _tl80848136_)
                                              (let ()
                                                (declare (not safe))
                                                (_g80058096_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80058096_))))
                              (if (gx#stx-pair/null? _tl80198410_)
                                  (let ((___splice2252522526_
                                         (gx#syntax-split-splice
                                          _tl80198410_
                                          '0)))
                                    (let ((_tl80848136_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252522526_
                                              '1)))
                                          (_target80828133_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252522526_
                                              '0))))
                                      (if (gx#stx-null? _tl80848136_)
                                          (___match2266922670_
                                           _e80078478_
                                           _hd80088482_
                                           _tl80098485_
                                           _e80148393_
                                           _hd80158397_
                                           _tl80168400_
                                           _e80178403_
                                           _hd80188407_
                                           _tl80198410_
                                           ___splice2252522526_
                                           _target80828133_
                                           _tl80848136_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80058096_)))))
                                  (let () (declare (not safe)) (_g80058096_))))
                          (if (gx#stx-pair/null? _tl80198410_)
                              (let ((___splice2252522526_
                                     (gx#syntax-split-splice _tl80198410_ '0)))
                                (let ((_tl80848136_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252522526_
                                          '1)))
                                      (_target80828133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252522526_
                                          '0))))
                                  (if (gx#stx-null? _tl80848136_)
                                      (___match2266922670_
                                       _e80078478_
                                       _hd80088482_
                                       _tl80098485_
                                       _e80148393_
                                       _hd80158397_
                                       _tl80168400_
                                       _e80178403_
                                       _hd80188407_
                                       _tl80198410_
                                       ___splice2252522526_
                                       _target80828133_
                                       _tl80848136_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80058096_)))))
                              (let () (declare (not safe)) (_g80058096_))))))
                  (if (gx#stx-pair/null? _tl80198410_)
                      (let ((___splice2252522526_
                             (gx#syntax-split-splice _tl80198410_ '0)))
                        (let ((_tl80848136_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252522526_ '1)))
                              (_target80828133_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2252522526_ '0))))
                          (if (gx#stx-null? _tl80848136_)
                              (___match2266922670_
                               _e80078478_
                               _hd80088482_
                               _tl80098485_
                               _e80148393_
                               _hd80158397_
                               _tl80168400_
                               _e80178403_
                               _hd80188407_
                               _tl80198410_
                               ___splice2252522526_
                               _target80828133_
                               _tl80848136_)
                              (let () (declare (not safe)) (_g80058096_)))))
                      (let () (declare (not safe)) (_g80058096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl80198410_)
                                                  (___kont2251922520_
                                                   _tl80168400_
                                                   _hd80188407_
                                                   _hd80088482_)
                                                  (if (gx#stx-pair?
                                                       _tl80198410_)
                                                      (let ((_e80638234_
                                                             (gx#syntax-e
                                                              _tl80198410_)))
                                                        (let ((_tl80658241_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e80638234_)))
                      (_hd80648238_
                       (let () (declare (not safe)) (##car _e80638234_))))
                  (if (gx#identifier? _hd80648238_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar$<sugar:1>[1]#_g24577_|
                           _hd80648238_)
                          (if (gx#stx-pair? _tl80658241_)
                              (let ((_e80668244_ (gx#syntax-e _tl80658241_)))
                                (let ((_tl80688251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80668244_)))
                                      (_hd80678248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80668244_))))
                                  (if (gx#stx-null? _tl80688251_)
                                      (___kont2252122522_
                                       _tl80168400_
                                       _hd80678248_
                                       _hd80188407_
                                       _hd80088482_)
                                      (if (gx#stx-pair/null? _tl80198410_)
                                          (let ((___splice2252522526_
                                                 (gx#syntax-split-splice
                                                  _tl80198410_
                                                  '0)))
                                            (let ((_tl80848136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252522526_
                                                      '1)))
                                                  (_target80828133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2252522526_
                                                      '0))))
                                              (if (gx#stx-null? _tl80848136_)
                                                  (___match2266922670_
                                                   _e80078478_
                                                   _hd80088482_
                                                   _tl80098485_
                                                   _e80148393_
                                                   _hd80158397_
                                                   _tl80168400_
                                                   _e80178403_
                                                   _hd80188407_
                                                   _tl80198410_
                                                   ___splice2252522526_
                                                   _target80828133_
                                                   _tl80848136_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g80058096_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g80058096_))))))
                              (if (gx#stx-pair/null? _tl80198410_)
                                  (let ((___splice2252522526_
                                         (gx#syntax-split-splice
                                          _tl80198410_
                                          '0)))
                                    (let ((_tl80848136_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252522526_
                                              '1)))
                                          (_target80828133_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2252522526_
                                              '0))))
                                      (if (gx#stx-null? _tl80848136_)
                                          (___match2266922670_
                                           _e80078478_
                                           _hd80088482_
                                           _tl80098485_
                                           _e80148393_
                                           _hd80158397_
                                           _tl80168400_
                                           _e80178403_
                                           _hd80188407_
                                           _tl80198410_
                                           ___splice2252522526_
                                           _target80828133_
                                           _tl80848136_)
                                          (let ()
                                            (declare (not safe))
                                            (_g80058096_)))))
                                  (let () (declare (not safe)) (_g80058096_))))
                          (if (gx#stx-pair/null? _tl80198410_)
                              (let ((___splice2252522526_
                                     (gx#syntax-split-splice _tl80198410_ '0)))
                                (let ((_tl80848136_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252522526_
                                          '1)))
                                      (_target80828133_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2252522526_
                                          '0))))
                                  (if (gx#stx-null? _tl80848136_)
                                      (___match2266922670_
                                       _e80078478_
                                       _hd80088482_
                                       _tl80098485_
                                       _e80148393_
                                       _hd80158397_
                                       _tl80168400_
                                       _e80178403_
                                       _hd80188407_
                                       _tl80198410_
                                       ___splice2252522526_
                                       _target80828133_
                                       _tl80848136_)
                                      (let ()
                                        (declare (not safe))
                                        (_g80058096_)))))
                              (let () (declare (not safe)) (_g80058096_))))
                      (if (gx#stx-pair/null? _tl80198410_)
                          (let ((___splice2252522526_
                                 (gx#syntax-split-splice _tl80198410_ '0)))
                            (let ((_tl80848136_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252522526_ '1)))
                                  (_target80828133_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2252522526_ '0))))
                              (if (gx#stx-null? _tl80848136_)
                                  (___match2266922670_
                                   _e80078478_
                                   _hd80088482_
                                   _tl80098485_
                                   _e80148393_
                                   _hd80158397_
                                   _tl80168400_
                                   _e80178403_
                                   _hd80188407_
                                   _tl80198410_
                                   ___splice2252522526_
                                   _target80828133_
                                   _tl80848136_)
                                  (let ()
                                    (declare (not safe))
                                    (_g80058096_)))))
                          (let () (declare (not safe)) (_g80058096_))))))
              (if (gx#stx-pair/null? _tl80198410_)
                  (let ((___splice2252522526_
                         (gx#syntax-split-splice _tl80198410_ '0)))
                    (let ((_tl80848136_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252522526_ '1)))
                          (_target80828133_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2252522526_ '0))))
                      (if (gx#stx-null? _tl80848136_)
                          (___match2266922670_
                           _e80078478_
                           _hd80088482_
                           _tl80098485_
                           _e80148393_
                           _hd80158397_
                           _tl80168400_
                           _e80178403_
                           _hd80188407_
                           _tl80198410_
                           ___splice2252522526_
                           _target80828133_
                           _tl80848136_)
                          (let () (declare (not safe)) (_g80058096_)))))
                  (let () (declare (not safe)) (_g80058096_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g80058096_)))))
                              (let () (declare (not safe)) (_g80058096_))))))
                  (let () (declare (not safe)) (_g80058096_))))))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#when|
      (lambda (_$stx8498_)
        (let* ((_g85028526_
                (lambda (_g85038522_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g85038522_)))
               (_g85018611_
                (lambda (_g85038530_)
                  (if (gx#stx-pair? _g85038530_)
                      (let ((_e85068533_ (gx#syntax-e _g85038530_)))
                        (let ((_hd85078537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85068533_)))
                              (_tl85088540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85068533_))))
                          (if (gx#stx-pair? _tl85088540_)
                              (let ((_e85098543_ (gx#syntax-e _tl85088540_)))
                                (let ((_hd85108547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85098543_)))
                                      (_tl85118550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85098543_))))
                                  (if (gx#stx-pair/null? _tl85118550_)
                                      (let ((_g24578_
                                             (gx#syntax-split-splice
                                              _tl85118550_
                                              '0)))
                                        (begin
                                          (let ((_g24579_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24578_)
                                                       (##vector-length
                                                        _g24578_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24579_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24579_)))
                                          (let ((_target85128553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24578_ 0)))
                                                (_tl85148556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24578_ 1))))
                                            (if (gx#stx-null? _tl85148556_)
                                                (letrec ((_loop85158559_
                                                          (lambda (_hd85138563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr85198566_)
                    (if (gx#stx-pair? _hd85138563_)
                        (let ((_e85168569_ (gx#syntax-e _hd85138563_)))
                          (let ((_lp-hd85178573_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85168569_)))
                                (_lp-tl85188576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85168569_))))
                            (_loop85158559_
                             _lp-tl85188576_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd85178573_ _expr85198566_)))))
                        (let ((_expr85208579_ (reverse _expr85198566_)))
                          ((lambda (_L8583_ _L8585_)
                             (let ((__tmp24586 (gx#datum->syntax '#f 'if))
                                   (__tmp24580
                                    (let ((__tmp24581
                                           (let ((__tmp24583
                                                  (let ((__tmp24585
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp24584
                                                         (foldr (lambda (_g86028605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g86038608_)
                          (let ()
                            (declare (not safe))
                            (cons _g86028605_ _g86038608_)))
                        '()
                        _L8583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24585
                                                          __tmp24584)))
                                                 (__tmp24582
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp24583 __tmp24582))))
                                      (declare (not safe))
                                      (cons _L8585_ __tmp24581))))
                               (declare (not safe))
                               (cons __tmp24586 __tmp24580)))
                           _expr85208579_
                           _hd85108547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85158559_
                                                   _target85128553_
                                                   '()))
                                                (_g85028526_ _g85038530_)))))
                                      (_g85028526_ _g85038530_))))
                              (_g85028526_ _g85038530_))))
                      (_g85028526_ _g85038530_)))))
          (_g85018611_ _$stx8498_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#unless|
      (lambda (_$stx8616_)
        (let* ((_g86208644_
                (lambda (_g86218640_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g86218640_)))
               (_g86198729_
                (lambda (_g86218648_)
                  (if (gx#stx-pair? _g86218648_)
                      (let ((_e86248651_ (gx#syntax-e _g86218648_)))
                        (let ((_hd86258655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86248651_)))
                              (_tl86268658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86248651_))))
                          (if (gx#stx-pair? _tl86268658_)
                              (let ((_e86278661_ (gx#syntax-e _tl86268658_)))
                                (let ((_hd86288665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86278661_)))
                                      (_tl86298668_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86278661_))))
                                  (if (gx#stx-pair/null? _tl86298668_)
                                      (let ((_g24587_
                                             (gx#syntax-split-splice
                                              _tl86298668_
                                              '0)))
                                        (begin
                                          (let ((_g24588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24587_)
                                                       (##vector-length
                                                        _g24587_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24588_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24588_)))
                                          (let ((_target86308671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24587_ 0)))
                                                (_tl86328674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24587_ 1))))
                                            (if (gx#stx-null? _tl86328674_)
                                                (letrec ((_loop86338677_
                                                          (lambda (_hd86318681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr86378684_)
                    (if (gx#stx-pair? _hd86318681_)
                        (let ((_e86348687_ (gx#syntax-e _hd86318681_)))
                          (let ((_lp-hd86358691_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86348687_)))
                                (_lp-tl86368694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86348687_))))
                            (_loop86338677_
                             _lp-tl86368694_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd86358691_ _expr86378684_)))))
                        (let ((_expr86388697_ (reverse _expr86378684_)))
                          ((lambda (_L8701_ _L8703_)
                             (let ((__tmp24595 (gx#datum->syntax '#f 'if))
                                   (__tmp24589
                                    (let ((__tmp24590
                                           (let ((__tmp24591
                                                  (let ((__tmp24592
                                                         (let ((__tmp24594
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp24593
                        (foldr (lambda (_g87208723_ _g87218726_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g87208723_ _g87218726_)))
                               '()
                               _L8701_)))
                   (declare (not safe))
                   (cons __tmp24594 __tmp24593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24592 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp24591))))
                                      (declare (not safe))
                                      (cons _L8703_ __tmp24590))))
                               (declare (not safe))
                               (cons __tmp24595 __tmp24589)))
                           _expr86388697_
                           _hd86288665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86338677_
                                                   _target86308671_
                                                   '()))
                                                (_g86208644_ _g86218648_)))))
                                      (_g86208644_ _g86218648_))))
                              (_g86208644_ _g86218648_))))
                      (_g86208644_ _g86218648_)))))
          (_g86198729_ _$stx8616_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx8734_)
        (let* ((_g87378761_
                (lambda (_g87388757_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g87388757_)))
               (_g87368846_
                (lambda (_g87388765_)
                  (if (gx#stx-pair? _g87388765_)
                      (let ((_e87418768_ (gx#syntax-e _g87388765_)))
                        (let ((_hd87428772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87418768_)))
                              (_tl87438775_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87418768_))))
                          (if (gx#stx-pair? _tl87438775_)
                              (let ((_e87448778_ (gx#syntax-e _tl87438775_)))
                                (let ((_hd87458782_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87448778_)))
                                      (_tl87468785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87448778_))))
                                  (if (gx#stx-pair/null? _tl87468785_)
                                      (let ((_g24596_
                                             (gx#syntax-split-splice
                                              _tl87468785_
                                              '0)))
                                        (begin
                                          (let ((_g24597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24596_)
                                                       (##vector-length
                                                        _g24596_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24597_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24597_)))
                                          (let ((_target87478788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24596_ 0)))
                                                (_tl87498791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24596_ 1))))
                                            (if (gx#stx-null? _tl87498791_)
                                                (letrec ((_loop87508794_
                                                          (lambda (_hd87488798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail87548801_)
                    (if (gx#stx-pair? _hd87488798_)
                        (let ((_e87518804_ (gx#syntax-e _hd87488798_)))
                          (let ((_lp-hd87528808_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e87518804_)))
                                (_lp-tl87538811_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e87518804_))))
                            (_loop87508794_
                             _lp-tl87538811_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd87528808_ _detail87548801_)))))
                        (let ((_detail87558814_ (reverse _detail87548801_)))
                          ((lambda (_L8818_ _L8820_)
                             (if (gx#stx-string? _L8820_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L8820_)
                                        _stx8734_
                                        (gx#syntax->list
                                         (foldr (lambda (_g88378840_
                                                         _g88388843_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g88378840_
                                                          _g88388843_)))
                                                '()
                                                _L8818_)))
                                 (_g87378761_ _g87388765_)))
                           _detail87558814_
                           _hd87458782_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87508794_
                                                   _target87478788_
                                                   '()))
                                                (_g87378761_ _g87388765_)))))
                                      (_g87378761_ _g87388765_))))
                              (_g87378761_ _g87388765_))))
                      (_g87378761_ _g87388765_)))))
          (_g87368846_ _stx8734_))))
    (define |gerbil/core/sugar$<sugar:1>[:0:]#defmutable|
      (lambda (_$stx8851_)
        (let* ((_g88558873_
                (lambda (_g88568869_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g88568869_)))
               (_g88548928_
                (lambda (_g88568877_)
                  (if (gx#stx-pair? _g88568877_)
                      (let ((_e88598880_ (gx#syntax-e _g88568877_)))
                        (let ((_hd88608884_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88598880_)))
                              (_tl88618887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88598880_))))
                          (if (gx#stx-pair? _tl88618887_)
                              (let ((_e88628890_ (gx#syntax-e _tl88618887_)))
                                (let ((_hd88638894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88628890_)))
                                      (_tl88648897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88628890_))))
                                  (if (gx#stx-pair? _tl88648897_)
                                      (let ((_e88658900_
                                             (gx#syntax-e _tl88648897_)))
                                        (let ((_hd88668904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88658900_)))
                                              (_tl88678907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88658900_))))
                                          (if (gx#stx-null? _tl88678907_)
                                              ((lambda (_L8910_ _L8912_)
                                                 (let ((__tmp24611
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24598
                                                        (let ((__tmp24607
                                                               (let ((__tmp24610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp24608
                              (let ((__tmp24609
                                     (let ()
                                       (declare (not safe))
                                       (cons _L8910_ '()))))
                                (declare (not safe))
                                (cons _L8912_ __tmp24609))))
                         (declare (not safe))
                         (cons __tmp24610 __tmp24608)))
                      (__tmp24599
                       (let ((__tmp24603
                              (let ((__tmp24606 (gx#datum->syntax '#f '%#set!))
                                    (__tmp24604
                                     (let ((__tmp24605
                                            (let ()
                                              (declare (not safe))
                                              (cons _L8912_ '()))))
                                       (declare (not safe))
                                       (cons _L8912_ __tmp24605))))
                                (declare (not safe))
                                (cons __tmp24606 __tmp24604)))
                             (__tmp24600
                              (let ((__tmp24601
                                     (let ((__tmp24602
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp24602 '()))))
                                (declare (not safe))
                                (cons __tmp24601 '()))))
                         (declare (not safe))
                         (cons __tmp24603 __tmp24600))))
                  (declare (not safe))
                  (cons __tmp24607 __tmp24599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24611
                                                         __tmp24598)))
                                               _hd88668904_
                                               _hd88638894_)
                                              (_g88558873_ _g88568877_))))
                                      (_g88558873_ _g88568877_))))
                              (_g88558873_ _g88568877_))))
                      (_g88558873_ _g88568877_)))))
          (_g88548928_ _$stx8851_))))))
