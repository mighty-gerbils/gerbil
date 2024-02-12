(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34437_)
      (let* ((___stx4705647057_ _$stx34437_)
             (_g3444234461_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4705647057_))))
        (let ((___kont4705947060_
               (lambda ()
                 (let ((__tmp50564 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50564 '()))))
              (___kont4706147062_
               (lambda (_L34488_ _L34490_ _L34491_)
                 (let ((__tmp50577 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50565
                        (let ((__tmp50574
                               (let ((__tmp50575
                                      (let ((__tmp50576
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34491_ _L34488_))))
                                        (declare (not safe))
                                        (cons __tmp50576 '()))))
                                 (declare (not safe))
                                 (cons _L34490_ __tmp50575)))
                              (__tmp50566
                               (let ((__tmp50567
                                      (let ((__tmp50573
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50568
                                             (let ((__tmp50569
                                                    (let ((__tmp50572
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50570
                                                           (let ((__tmp50571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34490_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50571))))
              (declare (not safe))
              (cons __tmp50572 __tmp50570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50569 '()))))
                                        (declare (not safe))
                                        (cons __tmp50573 __tmp50568))))
                                 (declare (not safe))
                                 (cons __tmp50567 '()))))
                          (declare (not safe))
                          (cons __tmp50574 __tmp50566))))
                   (declare (not safe))
                   (cons __tmp50577 __tmp50565)))))
          (if (gx#stx-pair? ___stx4705647057_)
              (let ((_e3444634514_ (gx#syntax-e ___stx4705647057_)))
                (let ((_tl3444434521_
                       (let () (declare (not safe)) (##cdr _e3444634514_)))
                      (_hd3444534518_
                       (let () (declare (not safe)) (##car _e3444634514_))))
                  (if (gx#stx-null? _tl3444434521_)
                      (___kont4705947060_)
                      (if (gx#stx-pair? _tl3444434521_)
                          (let ((_e3445534478_ (gx#syntax-e _tl3444434521_)))
                            (let ((_tl3445334485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3445534478_)))
                                  (_hd3445434482_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3445534478_))))
                              (___kont4706147062_
                               _tl3445334485_
                               _hd3445434482_
                               _hd3444534518_)))
                          (let () (declare (not safe)) (_g3444234461_))))))
              (let () (declare (not safe)) (_g3444234461_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34532_)
      (let* ((___stx4708647087_ _$stx34532_)
             (_g3453734577_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4708647087_))))
        (let ((___kont4708947090_
               (lambda (_L34715_ _L34717_)
                 (let ((__tmp50583 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50578
                        (let ((__tmp50579
                               (let ((__tmp50580
                                      (let ((__tmp50582
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50581
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34715_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50582 __tmp50581))))
                                 (declare (not safe))
                                 (cons __tmp50580 '()))))
                          (declare (not safe))
                          (cons _L34717_ __tmp50579))))
                   (declare (not safe))
                   (cons __tmp50583 __tmp50578))))
              (___kont4709147092_
               (lambda (_L34644_ _L34646_ _L34647_ _L34648_)
                 (let ((__tmp50584
                        (let ((__tmp50585
                               (let ((__tmp50586
                                      (let ((__tmp50590
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50587
                                             (let ((__tmp50588
                                                    (let ((__tmp50589
                                                           (lambda (_g3466934672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3467034675_)
                     (let ()
                       (declare (not safe))
                       (cons _g3466934672_ _g3467034675_)))))
              (declare (not safe))
              (foldr1 __tmp50589 '() _L34644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34646_ __tmp50588))))
                                        (declare (not safe))
                                        (cons __tmp50590 __tmp50587))))
                                 (declare (not safe))
                                 (cons __tmp50586 '()))))
                          (declare (not safe))
                          (cons _L34647_ __tmp50585))))
                   (declare (not safe))
                   (cons _L34648_ __tmp50584)))))
          (let* ((___match4714147142_
                  (lambda (_e3455634584_
                           _hd3455534588_
                           _tl3455434591_
                           _e3455934594_
                           _hd3455834598_
                           _tl3455734601_
                           _e3456234604_
                           _hd3456134608_
                           _tl3456034611_
                           ___splice4709347094_
                           _target3456334614_
                           _tl3456534617_)
                    (letrec ((_loop3456634620_
                              (lambda (_hd3456434624_ _body3457034627_)
                                (if (gx#stx-pair? _hd3456434624_)
                                    (let ((_e3456734630_
                                           (gx#syntax-e _hd3456434624_)))
                                      (let ((_lp-tl3456934637_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3456734630_)))
                                            (_lp-hd3456834634_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3456734630_))))
                                        (_loop3456634620_
                                         _lp-tl3456934637_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3456834634_
                                                 _body3457034627_)))))
                                    (let ((_body3457134640_
                                           (reverse _body3457034627_)))
                                      (let ((_L34644_ _body3457134640_)
                                            (_L34646_ _tl3456034611_)
                                            (_L34647_ _hd3456134608_)
                                            (_L34648_ _hd3455534588_))
                                        (if (gx#identifier? _L34647_)
                                            (___kont4709147092_
                                             _L34644_
                                             _L34646_
                                             _L34647_
                                             _L34648_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3453734577_)))))))))
                      (_loop3456634620_ _target3456334614_ '()))))
                 (___match4711547116_
                  (lambda (_e3454334685_
                           _hd3454234689_
                           _tl3454134692_
                           _e3454634695_
                           _hd3454534699_
                           _tl3454434702_
                           _e3454934705_
                           _hd3454834709_
                           _tl3454734712_)
                    (let ((_L34715_ _hd3454834709_) (_L34717_ _hd3454534699_))
                      (if (gx#identifier? _L34717_)
                          (___kont4708947090_ _L34715_ _L34717_)
                          (if (gx#stx-pair? _hd3454534699_)
                              (let ((_e3456234604_
                                     (gx#syntax-e _hd3454534699_)))
                                (let ((_tl3456034611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3456234604_)))
                                      (_hd3456134608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3456234604_))))
                                  (if (gx#stx-pair/null? _tl3454434702_)
                                      (let ((___splice4709347094_
                                             (gx#syntax-split-splice
                                              _tl3454434702_
                                              '0)))
                                        (let ((_tl3456534617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4709347094_
                                                  '1)))
                                              (_target3456334614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4709347094_
                                                  '0))))
                                          (if (gx#stx-null? _tl3456534617_)
                                              (___match4714147142_
                                               _e3454334685_
                                               _hd3454234689_
                                               _tl3454134692_
                                               _e3454634695_
                                               _hd3454534699_
                                               _tl3454434702_
                                               _e3456234604_
                                               _hd3456134608_
                                               _tl3456034611_
                                               ___splice4709347094_
                                               _target3456334614_
                                               _tl3456534617_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3453734577_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3453734577_)))))
                              (let ()
                                (declare (not safe))
                                (_g3453734577_))))))))
            (if (gx#stx-pair? ___stx4708647087_)
                (let ((_e3454334685_ (gx#syntax-e ___stx4708647087_)))
                  (let ((_tl3454134692_
                         (let () (declare (not safe)) (##cdr _e3454334685_)))
                        (_hd3454234689_
                         (let () (declare (not safe)) (##car _e3454334685_))))
                    (if (gx#stx-pair? _tl3454134692_)
                        (let ((_e3454634695_ (gx#syntax-e _tl3454134692_)))
                          (let ((_tl3454434702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3454634695_)))
                                (_hd3454534699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3454634695_))))
                            (if (gx#stx-pair? _tl3454434702_)
                                (let ((_e3454934705_
                                       (gx#syntax-e _tl3454434702_)))
                                  (let ((_tl3454734712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3454934705_)))
                                        (_hd3454834709_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3454934705_))))
                                    (if (gx#stx-null? _tl3454734712_)
                                        (___match4711547116_
                                         _e3454334685_
                                         _hd3454234689_
                                         _tl3454134692_
                                         _e3454634695_
                                         _hd3454534699_
                                         _tl3454434702_
                                         _e3454934705_
                                         _hd3454834709_
                                         _tl3454734712_)
                                        (if (gx#stx-pair? _hd3454534699_)
                                            (let ((_e3456234604_
                                                   (gx#syntax-e
                                                    _hd3454534699_)))
                                              (let ((_tl3456034611_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3456234604_)))
                                                    (_hd3456134608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3456234604_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3454434702_)
                                                    (let ((___splice4709347094_
                                                           (gx#syntax-split-splice
                                                            _tl3454434702_
                                                            '0)))
                                                      (let ((_tl3456534617_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4709347094_ '1)))
                    (_target3456334614_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4709347094_ '0))))
                (if (gx#stx-null? _tl3456534617_)
                    (___match4714147142_
                     _e3454334685_
                     _hd3454234689_
                     _tl3454134692_
                     _e3454634695_
                     _hd3454534699_
                     _tl3454434702_
                     _e3456234604_
                     _hd3456134608_
                     _tl3456034611_
                     ___splice4709347094_
                     _target3456334614_
                     _tl3456534617_)
                    (let () (declare (not safe)) (_g3453734577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3453734577_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3453734577_))))))
                                (if (gx#stx-pair? _hd3454534699_)
                                    (let ((_e3456234604_
                                           (gx#syntax-e _hd3454534699_)))
                                      (let ((_tl3456034611_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3456234604_)))
                                            (_hd3456134608_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3456234604_))))
                                        (if (gx#stx-pair/null? _tl3454434702_)
                                            (let ((___splice4709347094_
                                                   (gx#syntax-split-splice
                                                    _tl3454434702_
                                                    '0)))
                                              (let ((_tl3456534617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4709347094_
                                                        '1)))
                                                    (_target3456334614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4709347094_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3456534617_)
                                                    (___match4714147142_
                                                     _e3454334685_
                                                     _hd3454234689_
                                                     _tl3454134692_
                                                     _e3454634695_
                                                     _hd3454534699_
                                                     _tl3454434702_
                                                     _e3456234604_
                                                     _hd3456134608_
                                                     _tl3456034611_
                                                     ___splice4709347094_
                                                     _target3456334614_
                                                     _tl3456534617_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3453734577_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3453734577_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3453734577_))))))
                        (let () (declare (not safe)) (_g3453734577_)))))
                (let () (declare (not safe)) (_g3453734577_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34737_)
      (let* ((___stx4714447145_ _$stx34737_)
             (_g3474234782_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4714447145_))))
        (let ((___kont4714747148_
               (lambda (_L34920_ _L34922_)
                 (let ((__tmp50596 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50591
                        (let ((__tmp50592
                               (let ((__tmp50593
                                      (let ((__tmp50595
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50594
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34920_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50595 __tmp50594))))
                                 (declare (not safe))
                                 (cons __tmp50593 '()))))
                          (declare (not safe))
                          (cons _L34922_ __tmp50592))))
                   (declare (not safe))
                   (cons __tmp50596 __tmp50591))))
              (___kont4714947150_
               (lambda (_L34849_ _L34851_ _L34852_ _L34853_)
                 (let ((__tmp50597
                        (let ((__tmp50598
                               (let ((__tmp50599
                                      (let ((__tmp50603
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50600
                                             (let ((__tmp50601
                                                    (let ((__tmp50602
                                                           (lambda (_g3487434877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3487534880_)
                     (let ()
                       (declare (not safe))
                       (cons _g3487434877_ _g3487534880_)))))
              (declare (not safe))
              (foldr1 __tmp50602 '() _L34849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34851_ __tmp50601))))
                                        (declare (not safe))
                                        (cons __tmp50603 __tmp50600))))
                                 (declare (not safe))
                                 (cons __tmp50599 '()))))
                          (declare (not safe))
                          (cons _L34852_ __tmp50598))))
                   (declare (not safe))
                   (cons _L34853_ __tmp50597)))))
          (let* ((___match4719947200_
                  (lambda (_e3476134789_
                           _hd3476034793_
                           _tl3475934796_
                           _e3476434799_
                           _hd3476334803_
                           _tl3476234806_
                           _e3476734809_
                           _hd3476634813_
                           _tl3476534816_
                           ___splice4715147152_
                           _target3476834819_
                           _tl3477034822_)
                    (letrec ((_loop3477134825_
                              (lambda (_hd3476934829_ _body3477534832_)
                                (if (gx#stx-pair? _hd3476934829_)
                                    (let ((_e3477234835_
                                           (gx#syntax-e _hd3476934829_)))
                                      (let ((_lp-tl3477434842_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3477234835_)))
                                            (_lp-hd3477334839_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3477234835_))))
                                        (_loop3477134825_
                                         _lp-tl3477434842_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3477334839_
                                                 _body3477534832_)))))
                                    (let ((_body3477634845_
                                           (reverse _body3477534832_)))
                                      (let ((_L34849_ _body3477634845_)
                                            (_L34851_ _tl3476534816_)
                                            (_L34852_ _hd3476634813_)
                                            (_L34853_ _hd3476034793_))
                                        (if (gx#identifier? _L34852_)
                                            (___kont4714947150_
                                             _L34849_
                                             _L34851_
                                             _L34852_
                                             _L34853_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3474234782_)))))))))
                      (_loop3477134825_ _target3476834819_ '()))))
                 (___match4717347174_
                  (lambda (_e3474834890_
                           _hd3474734894_
                           _tl3474634897_
                           _e3475134900_
                           _hd3475034904_
                           _tl3474934907_
                           _e3475434910_
                           _hd3475334914_
                           _tl3475234917_)
                    (let ((_L34920_ _hd3475334914_) (_L34922_ _hd3475034904_))
                      (if (gx#identifier? _L34922_)
                          (___kont4714747148_ _L34920_ _L34922_)
                          (if (gx#stx-pair? _hd3475034904_)
                              (let ((_e3476734809_
                                     (gx#syntax-e _hd3475034904_)))
                                (let ((_tl3476534816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3476734809_)))
                                      (_hd3476634813_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3476734809_))))
                                  (if (gx#stx-pair/null? _tl3474934907_)
                                      (let ((___splice4715147152_
                                             (gx#syntax-split-splice
                                              _tl3474934907_
                                              '0)))
                                        (let ((_tl3477034822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4715147152_
                                                  '1)))
                                              (_target3476834819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4715147152_
                                                  '0))))
                                          (if (gx#stx-null? _tl3477034822_)
                                              (___match4719947200_
                                               _e3474834890_
                                               _hd3474734894_
                                               _tl3474634897_
                                               _e3475134900_
                                               _hd3475034904_
                                               _tl3474934907_
                                               _e3476734809_
                                               _hd3476634813_
                                               _tl3476534816_
                                               ___splice4715147152_
                                               _target3476834819_
                                               _tl3477034822_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3474234782_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3474234782_)))))
                              (let ()
                                (declare (not safe))
                                (_g3474234782_))))))))
            (if (gx#stx-pair? ___stx4714447145_)
                (let ((_e3474834890_ (gx#syntax-e ___stx4714447145_)))
                  (let ((_tl3474634897_
                         (let () (declare (not safe)) (##cdr _e3474834890_)))
                        (_hd3474734894_
                         (let () (declare (not safe)) (##car _e3474834890_))))
                    (if (gx#stx-pair? _tl3474634897_)
                        (let ((_e3475134900_ (gx#syntax-e _tl3474634897_)))
                          (let ((_tl3474934907_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3475134900_)))
                                (_hd3475034904_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3475134900_))))
                            (if (gx#stx-pair? _tl3474934907_)
                                (let ((_e3475434910_
                                       (gx#syntax-e _tl3474934907_)))
                                  (let ((_tl3475234917_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3475434910_)))
                                        (_hd3475334914_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3475434910_))))
                                    (if (gx#stx-null? _tl3475234917_)
                                        (___match4717347174_
                                         _e3474834890_
                                         _hd3474734894_
                                         _tl3474634897_
                                         _e3475134900_
                                         _hd3475034904_
                                         _tl3474934907_
                                         _e3475434910_
                                         _hd3475334914_
                                         _tl3475234917_)
                                        (if (gx#stx-pair? _hd3475034904_)
                                            (let ((_e3476734809_
                                                   (gx#syntax-e
                                                    _hd3475034904_)))
                                              (let ((_tl3476534816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3476734809_)))
                                                    (_hd3476634813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3476734809_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3474934907_)
                                                    (let ((___splice4715147152_
                                                           (gx#syntax-split-splice
                                                            _tl3474934907_
                                                            '0)))
                                                      (let ((_tl3477034822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4715147152_ '1)))
                    (_target3476834819_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4715147152_ '0))))
                (if (gx#stx-null? _tl3477034822_)
                    (___match4719947200_
                     _e3474834890_
                     _hd3474734894_
                     _tl3474634897_
                     _e3475134900_
                     _hd3475034904_
                     _tl3474934907_
                     _e3476734809_
                     _hd3476634813_
                     _tl3476534816_
                     ___splice4715147152_
                     _target3476834819_
                     _tl3477034822_)
                    (let () (declare (not safe)) (_g3474234782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3474234782_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3474234782_))))))
                                (if (gx#stx-pair? _hd3475034904_)
                                    (let ((_e3476734809_
                                           (gx#syntax-e _hd3475034904_)))
                                      (let ((_tl3476534816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3476734809_)))
                                            (_hd3476634813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3476734809_))))
                                        (if (gx#stx-pair/null? _tl3474934907_)
                                            (let ((___splice4715147152_
                                                   (gx#syntax-split-splice
                                                    _tl3474934907_
                                                    '0)))
                                              (let ((_tl3477034822_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4715147152_
                                                        '1)))
                                                    (_target3476834819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4715147152_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3477034822_)
                                                    (___match4719947200_
                                                     _e3474834890_
                                                     _hd3474734894_
                                                     _tl3474634897_
                                                     _e3475134900_
                                                     _hd3475034904_
                                                     _tl3474934907_
                                                     _e3476734809_
                                                     _hd3476634813_
                                                     _tl3476534816_
                                                     ___splice4715147152_
                                                     _target3476834819_
                                                     _tl3477034822_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3474234782_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3474234782_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3474234782_))))))
                        (let () (declare (not safe)) (_g3474234782_)))))
                (let () (declare (not safe)) (_g3474234782_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34942_)
      (let* ((___stx4720247203_ _$stx34942_)
             (_g3494734987_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4720247203_))))
        (let ((___kont4720547206_
               (lambda (_L35125_ _L35127_)
                 (let ((__tmp50609 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50604
                        (let ((__tmp50605
                               (let ((__tmp50606
                                      (let ((__tmp50608
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50607
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35125_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50608 __tmp50607))))
                                 (declare (not safe))
                                 (cons __tmp50606 '()))))
                          (declare (not safe))
                          (cons _L35127_ __tmp50605))))
                   (declare (not safe))
                   (cons __tmp50609 __tmp50604))))
              (___kont4720747208_
               (lambda (_L35054_ _L35056_ _L35057_ _L35058_)
                 (let ((__tmp50610
                        (let ((__tmp50611
                               (let ((__tmp50612
                                      (let ((__tmp50616
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50613
                                             (let ((__tmp50614
                                                    (let ((__tmp50615
                                                           (lambda (_g3507935082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3508035085_)
                     (let ()
                       (declare (not safe))
                       (cons _g3507935082_ _g3508035085_)))))
              (declare (not safe))
              (foldr1 __tmp50615 '() _L35054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35056_ __tmp50614))))
                                        (declare (not safe))
                                        (cons __tmp50616 __tmp50613))))
                                 (declare (not safe))
                                 (cons __tmp50612 '()))))
                          (declare (not safe))
                          (cons _L35057_ __tmp50611))))
                   (declare (not safe))
                   (cons _L35058_ __tmp50610)))))
          (let* ((___match4725747258_
                  (lambda (_e3496634994_
                           _hd3496534998_
                           _tl3496435001_
                           _e3496935004_
                           _hd3496835008_
                           _tl3496735011_
                           _e3497235014_
                           _hd3497135018_
                           _tl3497035021_
                           ___splice4720947210_
                           _target3497335024_
                           _tl3497535027_)
                    (letrec ((_loop3497635030_
                              (lambda (_hd3497435034_ _body3498035037_)
                                (if (gx#stx-pair? _hd3497435034_)
                                    (let ((_e3497735040_
                                           (gx#syntax-e _hd3497435034_)))
                                      (let ((_lp-tl3497935047_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3497735040_)))
                                            (_lp-hd3497835044_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3497735040_))))
                                        (_loop3497635030_
                                         _lp-tl3497935047_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3497835044_
                                                 _body3498035037_)))))
                                    (let ((_body3498135050_
                                           (reverse _body3498035037_)))
                                      (let ((_L35054_ _body3498135050_)
                                            (_L35056_ _tl3497035021_)
                                            (_L35057_ _hd3497135018_)
                                            (_L35058_ _hd3496534998_))
                                        (if (gx#identifier? _L35057_)
                                            (___kont4720747208_
                                             _L35054_
                                             _L35056_
                                             _L35057_
                                             _L35058_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3494734987_)))))))))
                      (_loop3497635030_ _target3497335024_ '()))))
                 (___match4723147232_
                  (lambda (_e3495335095_
                           _hd3495235099_
                           _tl3495135102_
                           _e3495635105_
                           _hd3495535109_
                           _tl3495435112_
                           _e3495935115_
                           _hd3495835119_
                           _tl3495735122_)
                    (let ((_L35125_ _hd3495835119_) (_L35127_ _hd3495535109_))
                      (if (gx#identifier? _L35127_)
                          (___kont4720547206_ _L35125_ _L35127_)
                          (if (gx#stx-pair? _hd3495535109_)
                              (let ((_e3497235014_
                                     (gx#syntax-e _hd3495535109_)))
                                (let ((_tl3497035021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3497235014_)))
                                      (_hd3497135018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3497235014_))))
                                  (if (gx#stx-pair/null? _tl3495435112_)
                                      (let ((___splice4720947210_
                                             (gx#syntax-split-splice
                                              _tl3495435112_
                                              '0)))
                                        (let ((_tl3497535027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4720947210_
                                                  '1)))
                                              (_target3497335024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4720947210_
                                                  '0))))
                                          (if (gx#stx-null? _tl3497535027_)
                                              (___match4725747258_
                                               _e3495335095_
                                               _hd3495235099_
                                               _tl3495135102_
                                               _e3495635105_
                                               _hd3495535109_
                                               _tl3495435112_
                                               _e3497235014_
                                               _hd3497135018_
                                               _tl3497035021_
                                               ___splice4720947210_
                                               _target3497335024_
                                               _tl3497535027_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3494734987_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3494734987_)))))
                              (let ()
                                (declare (not safe))
                                (_g3494734987_))))))))
            (if (gx#stx-pair? ___stx4720247203_)
                (let ((_e3495335095_ (gx#syntax-e ___stx4720247203_)))
                  (let ((_tl3495135102_
                         (let () (declare (not safe)) (##cdr _e3495335095_)))
                        (_hd3495235099_
                         (let () (declare (not safe)) (##car _e3495335095_))))
                    (if (gx#stx-pair? _tl3495135102_)
                        (let ((_e3495635105_ (gx#syntax-e _tl3495135102_)))
                          (let ((_tl3495435112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3495635105_)))
                                (_hd3495535109_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3495635105_))))
                            (if (gx#stx-pair? _tl3495435112_)
                                (let ((_e3495935115_
                                       (gx#syntax-e _tl3495435112_)))
                                  (let ((_tl3495735122_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3495935115_)))
                                        (_hd3495835119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3495935115_))))
                                    (if (gx#stx-null? _tl3495735122_)
                                        (___match4723147232_
                                         _e3495335095_
                                         _hd3495235099_
                                         _tl3495135102_
                                         _e3495635105_
                                         _hd3495535109_
                                         _tl3495435112_
                                         _e3495935115_
                                         _hd3495835119_
                                         _tl3495735122_)
                                        (if (gx#stx-pair? _hd3495535109_)
                                            (let ((_e3497235014_
                                                   (gx#syntax-e
                                                    _hd3495535109_)))
                                              (let ((_tl3497035021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3497235014_)))
                                                    (_hd3497135018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3497235014_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3495435112_)
                                                    (let ((___splice4720947210_
                                                           (gx#syntax-split-splice
                                                            _tl3495435112_
                                                            '0)))
                                                      (let ((_tl3497535027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4720947210_ '1)))
                    (_target3497335024_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4720947210_ '0))))
                (if (gx#stx-null? _tl3497535027_)
                    (___match4725747258_
                     _e3495335095_
                     _hd3495235099_
                     _tl3495135102_
                     _e3495635105_
                     _hd3495535109_
                     _tl3495435112_
                     _e3497235014_
                     _hd3497135018_
                     _tl3497035021_
                     ___splice4720947210_
                     _target3497335024_
                     _tl3497535027_)
                    (let () (declare (not safe)) (_g3494734987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3494734987_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3494734987_))))))
                                (if (gx#stx-pair? _hd3495535109_)
                                    (let ((_e3497235014_
                                           (gx#syntax-e _hd3495535109_)))
                                      (let ((_tl3497035021_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3497235014_)))
                                            (_hd3497135018_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3497235014_))))
                                        (if (gx#stx-pair/null? _tl3495435112_)
                                            (let ((___splice4720947210_
                                                   (gx#syntax-split-splice
                                                    _tl3495435112_
                                                    '0)))
                                              (let ((_tl3497535027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4720947210_
                                                        '1)))
                                                    (_target3497335024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4720947210_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3497535027_)
                                                    (___match4725747258_
                                                     _e3495335095_
                                                     _hd3495235099_
                                                     _tl3495135102_
                                                     _e3495635105_
                                                     _hd3495535109_
                                                     _tl3495435112_
                                                     _e3497235014_
                                                     _hd3497135018_
                                                     _tl3497035021_
                                                     ___splice4720947210_
                                                     _target3497335024_
                                                     _tl3497535027_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3494734987_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3494734987_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3494734987_))))))
                        (let () (declare (not safe)) (_g3494734987_)))))
                (let () (declare (not safe)) (_g3494734987_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35147_)
       (let* ((_g3515035170_
               (lambda (_g3515135166_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3515135166_)))
              (_g3514935241_
               (lambda (_g3515135174_)
                 (if (gx#stx-pair? _g3515135174_)
                     (let ((_e3515535177_ (gx#syntax-e _g3515135174_)))
                       (let ((_hd3515435181_
                              (let ()
                                (declare (not safe))
                                (##car _e3515535177_)))
                             (_tl3515335184_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3515535177_))))
                         (if (gx#stx-pair/null? _tl3515335184_)
                             (let ((_g50617_
                                    (gx#syntax-split-splice
                                     _tl3515335184_
                                     '0)))
                               (begin
                                 (let ((_g50618_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50617_)
                                              (##vector-length _g50617_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50618_ 2)))
                                       (error "Context expects 2 values"
                                              _g50618_)))
                                 (let ((_target3515635187_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50617_ 0)))
                                       (_tl3515835190_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50617_ 1))))
                                   (if (gx#stx-null? _tl3515835190_)
                                       (letrec ((_loop3515935193_
                                                 (lambda (_hd3515735197_
                                                          _body3516335200_)
                                                   (if (gx#stx-pair?
                                                        _hd3515735197_)
                                                       (let ((_e3516035203_
                                                              (gx#syntax-e
                                                               _hd3515735197_)))
                                                         (let ((_lp-hd3516135207_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3516035203_)))
                       (_lp-tl3516235210_
                        (let () (declare (not safe)) (##cdr _e3516035203_))))
                   (_loop3515935193_
                    _lp-tl3516235210_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3516135207_ _body3516335200_)))))
               (let ((_body3516435213_ (reverse _body3516335200_)))
                 ((lambda (_L35217_)
                    (let ((__tmp50619
                           (let ((__tmp50620
                                  (let ((__tmp50621
                                         (lambda (_g3523235235_ _g3523335238_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3523235235_
                                                   _g3523335238_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50621 '() _L35217_))))
                             (declare (not safe))
                             (cons '1 __tmp50620))))
                      (declare (not safe))
                      (cons 'phi: __tmp50619)))
                  _body3516435213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3515935193_
                                          _target3515635187_
                                          '()))
                                       (_g3515035170_ _g3515135174_)))))
                             (_g3515035170_ _g3515135174_))))
                     (_g3515035170_ _g3515135174_)))))
         (_g3514935241_ _stx35147_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35246_)
       (let* ((_g3524935269_
               (lambda (_g3525035265_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3525035265_)))
              (_g3524835340_
               (lambda (_g3525035273_)
                 (if (gx#stx-pair? _g3525035273_)
                     (let ((_e3525435276_ (gx#syntax-e _g3525035273_)))
                       (let ((_hd3525335280_
                              (let ()
                                (declare (not safe))
                                (##car _e3525435276_)))
                             (_tl3525235283_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3525435276_))))
                         (if (gx#stx-pair/null? _tl3525235283_)
                             (let ((_g50622_
                                    (gx#syntax-split-splice
                                     _tl3525235283_
                                     '0)))
                               (begin
                                 (let ((_g50623_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50622_)
                                              (##vector-length _g50622_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50623_ 2)))
                                       (error "Context expects 2 values"
                                              _g50623_)))
                                 (let ((_target3525535286_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50622_ 0)))
                                       (_tl3525735289_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50622_ 1))))
                                   (if (gx#stx-null? _tl3525735289_)
                                       (letrec ((_loop3525835292_
                                                 (lambda (_hd3525635296_
                                                          _body3526235299_)
                                                   (if (gx#stx-pair?
                                                        _hd3525635296_)
                                                       (let ((_e3525935302_
                                                              (gx#syntax-e
                                                               _hd3525635296_)))
                                                         (let ((_lp-hd3526035306_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3525935302_)))
                       (_lp-tl3526135309_
                        (let () (declare (not safe)) (##cdr _e3525935302_))))
                   (_loop3525835292_
                    _lp-tl3526135309_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3526035306_ _body3526235299_)))))
               (let ((_body3526335312_ (reverse _body3526235299_)))
                 ((lambda (_L35316_)
                    (let ((__tmp50624
                           (let ((__tmp50625
                                  (let ((__tmp50626
                                         (lambda (_g3533135334_ _g3533235337_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3533135334_
                                                   _g3533235337_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50626 '() _L35316_))))
                             (declare (not safe))
                             (cons '-1 __tmp50625))))
                      (declare (not safe))
                      (cons 'phi: __tmp50624)))
                  _body3526335312_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3525835292_
                                          _target3525535286_
                                          '()))
                                       (_g3524935269_ _g3525035273_)))))
                             (_g3524935269_ _g3525035273_))))
                     (_g3524935269_ _g3525035273_)))))
         (_g3524835340_ _stx35246_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35345_)
       (let* ((_g3534835372_
               (lambda (_g3534935368_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3534935368_)))
              (_g3534735494_
               (lambda (_g3534935376_)
                 (if (gx#stx-pair? _g3534935376_)
                     (let ((_e3535435379_ (gx#syntax-e _g3534935376_)))
                       (let ((_hd3535335383_
                              (let ()
                                (declare (not safe))
                                (##car _e3535435379_)))
                             (_tl3535235386_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3535435379_))))
                         (if (gx#stx-pair? _tl3535235386_)
                             (let ((_e3535735389_
                                    (gx#syntax-e _tl3535235386_)))
                               (let ((_hd3535635393_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3535735389_)))
                                     (_tl3535535396_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3535735389_))))
                                 (if (gx#stx-pair/null? _tl3535535396_)
                                     (let ((_g50627_
                                            (gx#syntax-split-splice
                                             _tl3535535396_
                                             '0)))
                                       (begin
                                         (let ((_g50628_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50627_)
                                                      (##vector-length
                                                       _g50627_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50628_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50628_)))
                                         (let ((_target3535835399_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50627_ 0)))
                                               (_tl3536035402_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50627_ 1))))
                                           (if (gx#stx-null? _tl3536035402_)
                                               (letrec ((_loop3536135405_
                                                         (lambda (_hd3535935409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3536535412_)
                   (if (gx#stx-pair? _hd3535935409_)
                       (let ((_e3536235415_ (gx#syntax-e _hd3535935409_)))
                         (let ((_lp-hd3536335419_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3536235415_)))
                               (_lp-tl3536435422_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3536235415_))))
                           (_loop3536135405_
                            _lp-tl3536435422_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3536335419_ _id3536535412_)))))
                       (let ((_id3536635425_ (reverse _id3536535412_)))
                         ((lambda (_L35429_ _L35431_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50633
                                        (lambda (_g3544835451_ _g3544935454_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3544835451_
                                                  _g3544935454_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50633 '() _L35429_)))
                                (let* ((_keys35465_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50629
                                                (lambda (_g3545635459_
                                                         _g3545735462_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3545635459_
                                                          _g3545735462_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50629 '() _L35429_))))
                                       (_keytab35476_
                                        (let ((_ht35468_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3547035472_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35468_
                                                _g3547035472_
                                                '#t)))
                                           _keys35465_)
                                          _ht35468_))
                                       (_imports35479_
                                        (gx#core-expand-import-source
                                         _L35431_))
                                       (_fold-e35489_
                                        (letrec ((_fold-e35482_
                                                  (lambda (_in35485_ _r35487_)
                                                    (if (gx#module-import?
                                                         _in35485_)
                                                        (if (let ((__tmp50631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35485_)))
                      (declare (not safe))
                      (table-ref _keytab35476_ __tmp50631 '#f))
                    (let () (declare (not safe)) (cons _in35485_ _r35487_))
                    _r35487_)
                (if (gx#import-set? _in35485_)
                    (let ((__tmp50630 (gx#import-set-imports _in35485_)))
                      (declare (not safe))
                      (foldl1 _fold-e35482_ _r35487_ __tmp50630))
                    _r35487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35482_)))
                                  (let ((__tmp50632
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35489_
                                                   '()
                                                   _imports35479_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50632)))
                                (_g3534835372_ _g3534935376_)))
                          _id3536635425_
                          _hd3535635393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3536135405_
                                                  _target3535835399_
                                                  '()))
                                               (_g3534835372_
                                                _g3534935376_)))))
                                     (_g3534835372_ _g3534935376_))))
                             (_g3534835372_ _g3534935376_))))
                     (_g3534835372_ _g3534935376_)))))
         (_g3534735494_ _stx35345_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35499_)
       (let* ((_g3550235526_
               (lambda (_g3550335522_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3550335522_)))
              (_g3550135648_
               (lambda (_g3550335530_)
                 (if (gx#stx-pair? _g3550335530_)
                     (let ((_e3550835533_ (gx#syntax-e _g3550335530_)))
                       (let ((_hd3550735537_
                              (let ()
                                (declare (not safe))
                                (##car _e3550835533_)))
                             (_tl3550635540_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3550835533_))))
                         (if (gx#stx-pair? _tl3550635540_)
                             (let ((_e3551135543_
                                    (gx#syntax-e _tl3550635540_)))
                               (let ((_hd3551035547_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3551135543_)))
                                     (_tl3550935550_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3551135543_))))
                                 (if (gx#stx-pair/null? _tl3550935550_)
                                     (let ((_g50634_
                                            (gx#syntax-split-splice
                                             _tl3550935550_
                                             '0)))
                                       (begin
                                         (let ((_g50635_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50634_)
                                                      (##vector-length
                                                       _g50634_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50635_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50635_)))
                                         (let ((_target3551235553_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50634_ 0)))
                                               (_tl3551435556_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50634_ 1))))
                                           (if (gx#stx-null? _tl3551435556_)
                                               (letrec ((_loop3551535559_
                                                         (lambda (_hd3551335563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3551935566_)
                   (if (gx#stx-pair? _hd3551335563_)
                       (let ((_e3551635569_ (gx#syntax-e _hd3551335563_)))
                         (let ((_lp-hd3551735573_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3551635569_)))
                               (_lp-tl3551835576_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3551635569_))))
                           (_loop3551535559_
                            _lp-tl3551835576_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3551735573_ _id3551935566_)))))
                       (let ((_id3552035579_ (reverse _id3551935566_)))
                         ((lambda (_L35583_ _L35585_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50640
                                        (lambda (_g3560235605_ _g3560335608_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3560235605_
                                                  _g3560335608_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50640 '() _L35583_)))
                                (let* ((_keys35619_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50636
                                                (lambda (_g3561035613_
                                                         _g3561135616_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3561035613_
                                                          _g3561135616_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50636 '() _L35583_))))
                                       (_keytab35630_
                                        (let ((_ht35622_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3562435626_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35622_
                                                _g3562435626_
                                                '#t)))
                                           _keys35619_)
                                          _ht35622_))
                                       (_imports35633_
                                        (gx#core-expand-import-source
                                         _L35585_))
                                       (_fold-e35643_
                                        (letrec ((_fold-e35636_
                                                  (lambda (_in35639_ _r35641_)
                                                    (if (gx#module-import?
                                                         _in35639_)
                                                        (if (let ((__tmp50638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35639_)))
                      (declare (not safe))
                      (table-ref _keytab35630_ __tmp50638 '#f))
                    _r35641_
                    (let () (declare (not safe)) (cons _in35639_ _r35641_)))
                (if (gx#import-set? _in35639_)
                    (let ((__tmp50637 (gx#import-set-imports _in35639_)))
                      (declare (not safe))
                      (foldl1 _fold-e35636_ _r35641_ __tmp50637))
                    (let ()
                      (declare (not safe))
                      (cons _in35639_ _r35641_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35636_)))
                                  (let ((__tmp50639
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35643_
                                                   '()
                                                   _imports35633_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50639)))
                                (_g3550235526_ _g3550335530_)))
                          _id3552035579_
                          _hd3551035547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3551535559_
                                                  _target3551235553_
                                                  '()))
                                               (_g3550235526_
                                                _g3550335530_)))))
                                     (_g3550235526_ _g3550335530_))))
                             (_g3550235526_ _g3550335530_))))
                     (_g3550235526_ _g3550335530_)))))
         (_g3550135648_ _stx35499_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35700_ _rename35702_)
      (gx#make-module-import
       (gx#module-import-source _in35700_)
       _rename35702_
       (gx#module-import-phi _in35700_)
       (gx#module-import-weak? _in35700_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35653_ _pre35655_)
      (let* ((_name3565635664_ _name35653_)
             (_else3565835676_
              (lambda () (make-symbol _pre35655_ _name35653_)))
             (_K3566035684_
              (lambda (_mark35680_ _id35682_)
                (let ((__tmp50641 (make-symbol _pre35655_ _id35682_)))
                  (declare (not safe))
                  (cons __tmp50641 _mark35680_)))))
        (if (let () (declare (not safe)) (##pair? _name3565635664_))
            (let ((_hd3566135688_
                   (let () (declare (not safe)) (##car _name3565635664_)))
                  (_tl3566235691_
                   (let () (declare (not safe)) (##cdr _name3565635664_))))
              (let* ((_id35694_ _hd3566135688_) (_mark35697_ _tl3566235691_))
                (declare (not safe))
                (_K3566035684_ _mark35697_ _id35694_)))
            (let () (declare (not safe)) (_else3565835676_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35704_)
       (let* ((_g3570735740_
               (lambda (_g3570835736_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3570835736_)))
              (_g3570635926_
               (lambda (_g3570835744_)
                 (if (gx#stx-pair? _g3570835744_)
                     (let ((_e3571435747_ (gx#syntax-e _g3570835744_)))
                       (let ((_hd3571335751_
                              (let ()
                                (declare (not safe))
                                (##car _e3571435747_)))
                             (_tl3571235754_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3571435747_))))
                         (if (gx#stx-pair? _tl3571235754_)
                             (let ((_e3571735757_
                                    (gx#syntax-e _tl3571235754_)))
                               (let ((_hd3571635761_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3571735757_)))
                                     (_tl3571535764_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3571735757_))))
                                 (if (gx#stx-pair/null? _tl3571535764_)
                                     (let ((_g50642_
                                            (gx#syntax-split-splice
                                             _tl3571535764_
                                             '0)))
                                       (begin
                                         (let ((_g50643_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50642_)
                                                      (##vector-length
                                                       _g50642_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50643_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50643_)))
                                         (let ((_target3571835767_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50642_ 0)))
                                               (_tl3572035770_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50642_ 1))))
                                           (if (gx#stx-null? _tl3572035770_)
                                               (letrec ((_loop3572135773_
                                                         (lambda (_hd3571935777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3572535780_
                          _id3572635782_)
                   (if (gx#stx-pair? _hd3571935777_)
                       (let ((_e3572235785_ (gx#syntax-e _hd3571935777_)))
                         (let ((_lp-hd3572335789_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3572235785_)))
                               (_lp-tl3572435792_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3572235785_))))
                           (if (gx#stx-pair? _lp-hd3572335789_)
                               (let ((_e3573135795_
                                      (gx#syntax-e _lp-hd3572335789_)))
                                 (let ((_hd3573035799_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3573135795_)))
                                       (_tl3572935802_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3573135795_))))
                                   (if (gx#stx-pair? _tl3572935802_)
                                       (let ((_e3573435805_
                                              (gx#syntax-e _tl3572935802_)))
                                         (let ((_hd3573335809_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3573435805_)))
                                               (_tl3573235812_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3573435805_))))
                                           (if (gx#stx-null? _tl3573235812_)
                                               (_loop3572135773_
                                                _lp-tl3572435792_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3573335809_
                                                        _new-id3572535780_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3573035799_
                                                        _id3572635782_)))
                                               (_g3570735740_ _g3570835744_))))
                                       (_g3570735740_ _g3570835744_))))
                               (_g3570735740_ _g3570835744_))))
                       (let ((_new-id3572735815_ (reverse _new-id3572535780_))
                             (_id3572835818_ (reverse _id3572635782_)))
                         ((lambda (_L35821_ _L35823_ _L35824_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50654
                                             (lambda (_g3584235845_
                                                      _g3584335848_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3584235845_
                                                       _g3584335848_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50654 '() _L35823_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50653
                                             (lambda (_g3585035853_
                                                      _g3585135856_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3585035853_
                                                       _g3585135856_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50653 '() _L35821_))))
                                (let* ((_keytab35859_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found35862_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50648_
                                        (for-each
                                         (lambda (_id35865_ _new-id35867_)
                                           (let ((__tmp50645
                                                  (gx#core-identifier-key
                                                   _id35865_))
                                                 (__tmp50644
                                                  (gx#core-identifier-key
                                                   _new-id35867_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab35859_
                                              __tmp50645
                                              __tmp50644)))
                                         (let ((__tmp50646
                                                (lambda (_g3586835871_
                                                         _g3586935874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3586835871_
                                                          _g3586935874_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50646 '() _L35823_))
                                         (let ((__tmp50647
                                                (lambda (_g3587635879_
                                                         _g3587735882_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3587635879_
                                                          _g3587735882_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50647 '() _L35821_))))
                                       (_imports35887_
                                        (gx#core-expand-import-source
                                         _L35824_))
                                       (_fold-e35907_
                                        (letrec ((_fold-e35890_
                                                  (lambda (_in35893_ _r35895_)
                                                    (if (gx#module-import?
                                                         _in35893_)
                                                        (let* ((_name35897_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35893_))
                       (_$e35900_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab35859_ _name35897_ '#f))))
                  (if _$e35900_
                      ((lambda (_rename35904_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found35862_ _name35897_ '#t))
                         (let ((__tmp50650
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in35893_
                                   _rename35904_))))
                           (declare (not safe))
                           (cons __tmp50650 _r35895_)))
                       _$e35900_)
                      (let () (declare (not safe)) (cons _in35893_ _r35895_))))
                (if (gx#import-set? _in35893_)
                    (let ((__tmp50649 (gx#import-set-imports _in35893_)))
                      (declare (not safe))
                      (foldl1 _fold-e35890_ _r35895_ __tmp50649))
                    (let ()
                      (declare (not safe))
                      (cons _in35893_ _r35895_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35890_))
                                       (_new-imports35910_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e35907_
                                                  '()
                                                  _imports35887_))))
                                  (for-each
                                   (lambda (_id35915_)
                                     (if (let ((__tmp50651
                                                (gx#core-identifier-key
                                                 _id35915_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found35862_
                                            __tmp50651
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35704_
                                          _id35915_)))
                                   (let ((__tmp50652
                                          (lambda (_g3591735920_ _g3591835923_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3591735920_
                                                    _g3591835923_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50652 '() _L35823_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports35910_)))
                                (_g3570735740_ _g3570835744_)))
                          _new-id3572735815_
                          _id3572835818_
                          _hd3571635761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3572135773_
                                                  _target3571835767_
                                                  '()
                                                  '()))
                                               (_g3570735740_
                                                _g3570835744_)))))
                                     (_g3570735740_ _g3570835744_))))
                             (_g3570735740_ _g3570835744_))))
                     (_g3570735740_ _g3570835744_)))))
         (_g3570635926_ _stx35704_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35932_)
       (let* ((_g3593535953_
               (lambda (_g3593635949_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3593635949_)))
              (_g3593436032_
               (lambda (_g3593635957_)
                 (if (gx#stx-pair? _g3593635957_)
                     (let ((_e3594135960_ (gx#syntax-e _g3593635957_)))
                       (let ((_hd3594035964_
                              (let ()
                                (declare (not safe))
                                (##car _e3594135960_)))
                             (_tl3593935967_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3594135960_))))
                         (if (gx#stx-pair? _tl3593935967_)
                             (let ((_e3594435970_
                                    (gx#syntax-e _tl3593935967_)))
                               (let ((_hd3594335974_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3594435970_)))
                                     (_tl3594235977_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3594435970_))))
                                 (if (gx#stx-pair? _tl3594235977_)
                                     (let ((_e3594735980_
                                            (gx#syntax-e _tl3594235977_)))
                                       (let ((_hd3594635984_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3594735980_)))
                                             (_tl3594535987_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3594735980_))))
                                         (if (gx#stx-null? _tl3594535987_)
                                             ((lambda (_L35990_ _L35992_)
                                                (if (gx#identifier? _L35990_)
                                                    (let* ((_pre36008_
                                                            (gx#stx-e
                                                             _L35990_))
                                                           (_imports36011_
                                                            (gx#core-expand-import-source
                                                             _L35992_))
                                                           (_rename-e36017_
                                                            (lambda (_name36014_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36014_
                         _pre36008_))))
                   (_fold-e36027_
                    (letrec ((_fold-e36020_
                              (lambda (_in36023_ _r36025_)
                                (if (gx#module-import? _in36023_)
                                    (let ((__tmp50656
                                           (let ((__tmp50657
                                                  (_rename-e36017_
                                                   (gx#module-import-name
                                                    _in36023_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36023_
                                              __tmp50657))))
                                      (declare (not safe))
                                      (cons __tmp50656 _r36025_))
                                    (if (gx#import-set? _in36023_)
                                        (let ((__tmp50655
                                               (gx#import-set-imports
                                                _in36023_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36020_
                                                  _r36025_
                                                  __tmp50655))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36023_ _r36025_)))))))
                      _fold-e36020_)))
              (let ((__tmp50658
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36027_ '() _imports36011_))))
                (declare (not safe))
                (cons 'begin: __tmp50658)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3593535953_
                                                     _g3593635957_)))
                                              _hd3594635984_
                                              _hd3594335974_)
                                             (_g3593535953_ _g3593635957_))))
                                     (_g3593535953_ _g3593635957_))))
                             (_g3593535953_ _g3593635957_))))
                     (_g3593535953_ _g3593635957_)))))
         (_g3593436032_ _stx35932_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36036_)
       (letrec ((_flatten36039_
                 (lambda (_list-of-lists36294_)
                   (let ((__tmp50659
                          (lambda (_v36297_ _acc36299_)
                            (if (let () (declare (not safe)) (null? _v36297_))
                                _acc36299_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36297_))
                                    (append (_flatten36039_ _v36297_)
                                            _acc36299_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36297_ _acc36299_)))))))
                     (declare (not safe))
                     (foldr1 __tmp50659 '() _list-of-lists36294_))))
                (_expand-path36041_
                 (lambda (_top36162_ _mod36164_)
                   (let* ((___stx4726047261_ _mod36164_)
                          (_g3616736189_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4726047261_))))
                     (let ((___kont4726347264_
                            (lambda (_L36257_ _L36259_)
                              (map (lambda (_mod36274_)
                                     (gx#stx-identifier
                                      _top36162_
                                      _top36162_
                                      '"/"
                                      _mod36274_))
                                   (_flatten36039_
                                    (map (lambda (_g3627636278_)
                                           (_expand-path36041_
                                            _L36259_
                                            _g3627636278_))
                                         (let ((__tmp50660
                                                (lambda (_g3628136284_
                                                         _g3628236287_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3628136284_
                                                          _g3628236287_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50660
                                                   '()
                                                   _L36257_)))))))
                           (___kont4726747268_
                            (lambda (_L36196_)
                              (gx#stx-identifier
                               _top36162_
                               _top36162_
                               '"/"
                               _L36196_))))
                       (let* ((_g3616636210_
                               (lambda ()
                                 (let ((_L36196_ ___stx4726047261_))
                                   (if (or (gx#identifier? _L36196_)
                                           (gx#stx-fixnum? _L36196_))
                                       (___kont4726747268_ _L36196_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3616736189_))))))
                              (___match4728347284_
                               (lambda (_e3617336217_
                                        _hd3617236221_
                                        _tl3617136224_
                                        ___splice4726547266_
                                        _target3617436227_
                                        _tl3617636230_)
                                 (letrec ((_loop3617736233_
                                           (lambda (_hd3617536237_
                                                    _mod3618136240_)
                                             (if (gx#stx-pair? _hd3617536237_)
                                                 (let ((_e3617836243_
                                                        (gx#syntax-e
                                                         _hd3617536237_)))
                                                   (let ((_lp-tl3618036250_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3617836243_)))
                                                         (_lp-hd3617936247_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3617836243_))))
                                                     (_loop3617736233_
                                                      _lp-tl3618036250_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd3617936247_
                                                              _mod3618136240_)))))
                                                 (let ((_mod3618236253_
                                                        (reverse _mod3618136240_)))
                                                   (___kont4726347264_
                                                    _mod3618236253_
                                                    _hd3617236221_))))))
                                   (_loop3617736233_
                                    _target3617436227_
                                    '())))))
                         (if (gx#stx-pair? ___stx4726047261_)
                             (let ((_e3617336217_
                                    (gx#syntax-e ___stx4726047261_)))
                               (let ((_tl3617136224_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3617336217_)))
                                     (_hd3617236221_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3617336217_))))
                                 (if (gx#stx-pair/null? _tl3617136224_)
                                     (let ((___splice4726547266_
                                            (gx#syntax-split-splice
                                             _tl3617136224_
                                             '0)))
                                       (let ((_tl3617636230_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4726547266_
                                                 '1)))
                                             (_target3617436227_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4726547266_
                                                 '0))))
                                         (if (gx#stx-null? _tl3617636230_)
                                             (___match4728347284_
                                              _e3617336217_
                                              _hd3617236221_
                                              _tl3617136224_
                                              ___splice4726547266_
                                              _target3617436227_
                                              _tl3617636230_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3616636210_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3616636210_)))))
                             (let ()
                               (declare (not safe))
                               (_g3616636210_)))))))))
         (let* ((_g3604336067_
                 (lambda (_g3604436063_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3604436063_)))
                (_g3604236158_
                 (lambda (_g3604436071_)
                   (if (gx#stx-pair? _g3604436071_)
                       (let ((_e3604936074_ (gx#syntax-e _g3604436071_)))
                         (let ((_hd3604836078_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3604936074_)))
                               (_tl3604736081_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3604936074_))))
                           (if (gx#stx-pair? _tl3604736081_)
                               (let ((_e3605236084_
                                      (gx#syntax-e _tl3604736081_)))
                                 (let ((_hd3605136088_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3605236084_)))
                                       (_tl3605036091_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3605236084_))))
                                   (if (gx#stx-pair/null? _tl3605036091_)
                                       (let ((_g50661_
                                              (gx#syntax-split-splice
                                               _tl3605036091_
                                               '0)))
                                         (begin
                                           (let ((_g50662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50661_)
                                                        (##vector-length
                                                         _g50661_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50662_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50662_)))
                                           (let ((_target3605336094_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50661_ 0)))
                                                 (_tl3605536097_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50661_
                                                     1))))
                                             (if (gx#stx-null? _tl3605536097_)
                                                 (letrec ((_loop3605636100_
                                                           (lambda (_hd3605436104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3606036107_)
                     (if (gx#stx-pair? _hd3605436104_)
                         (let ((_e3605736110_ (gx#syntax-e _hd3605436104_)))
                           (let ((_lp-hd3605836114_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3605736110_)))
                                 (_lp-tl3605936117_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3605736110_))))
                             (_loop3605636100_
                              _lp-tl3605936117_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3605836114_ _mod3606036107_)))))
                         (let ((_mod3606136120_ (reverse _mod3606036107_)))
                           ((lambda (_L36124_ _L36126_)
                              (let ((__tmp50663
                                     (_flatten36039_
                                      (map (lambda (_g3614436146_)
                                             (_expand-path36041_
                                              _L36126_
                                              _g3614436146_))
                                           (let ((__tmp50664
                                                  (lambda (_g3614936152_
                                                           _g3615036155_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3614936152_
                                                            _g3615036155_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50664
                                                     '()
                                                     _L36124_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp50663)))
                            _mod3606136120_
                            _hd3605136088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3605636100_
                                                    _target3605336094_
                                                    '()))
                                                 (_g3604336067_
                                                  _g3604436071_)))))
                                       (_g3604336067_ _g3604436071_))))
                               (_g3604336067_ _g3604436071_))))
                       (_g3604336067_ _g3604436071_)))))
           (_g3604236158_ _stx36036_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36303_)
       (let* ((_g3630636330_
               (lambda (_g3630736326_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3630736326_)))
              (_g3630536452_
               (lambda (_g3630736334_)
                 (if (gx#stx-pair? _g3630736334_)
                     (let ((_e3631236337_ (gx#syntax-e _g3630736334_)))
                       (let ((_hd3631136341_
                              (let ()
                                (declare (not safe))
                                (##car _e3631236337_)))
                             (_tl3631036344_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3631236337_))))
                         (if (gx#stx-pair? _tl3631036344_)
                             (let ((_e3631536347_
                                    (gx#syntax-e _tl3631036344_)))
                               (let ((_hd3631436351_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3631536347_)))
                                     (_tl3631336354_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3631536347_))))
                                 (if (gx#stx-pair/null? _tl3631336354_)
                                     (let ((_g50665_
                                            (gx#syntax-split-splice
                                             _tl3631336354_
                                             '0)))
                                       (begin
                                         (let ((_g50666_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50665_)
                                                      (##vector-length
                                                       _g50665_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50666_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50666_)))
                                         (let ((_target3631636357_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50665_ 0)))
                                               (_tl3631836360_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50665_ 1))))
                                           (if (gx#stx-null? _tl3631836360_)
                                               (letrec ((_loop3631936363_
                                                         (lambda (_hd3631736367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3632336370_)
                   (if (gx#stx-pair? _hd3631736367_)
                       (let ((_e3632036373_ (gx#syntax-e _hd3631736367_)))
                         (let ((_lp-hd3632136377_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3632036373_)))
                               (_lp-tl3632236380_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3632036373_))))
                           (_loop3631936363_
                            _lp-tl3632236380_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3632136377_ _id3632336370_)))))
                       (let ((_id3632436383_ (reverse _id3632336370_)))
                         ((lambda (_L36387_ _L36389_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50671
                                        (lambda (_g3640636409_ _g3640736412_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3640636409_
                                                  _g3640736412_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50671 '() _L36387_)))
                                (let* ((_keys36423_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50667
                                                (lambda (_g3641436417_
                                                         _g3641536420_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3641436417_
                                                          _g3641536420_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50667 '() _L36387_))))
                                       (_keytab36434_
                                        (let ((_ht36426_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3642836430_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht36426_
                                                _g3642836430_
                                                '#t)))
                                           _keys36423_)
                                          _ht36426_))
                                       (_exports36437_
                                        (gx#core-expand-export-source
                                         _L36389_))
                                       (_fold-e36447_
                                        (letrec ((_fold-e36440_
                                                  (lambda (_out36443_ _r36445_)
                                                    (if (gx#module-export?
                                                         _out36443_)
                                                        (if (let ((__tmp50669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36443_)))
                      (declare (not safe))
                      (table-ref _keytab36434_ __tmp50669 '#f))
                    _r36445_
                    (let () (declare (not safe)) (cons _out36443_ _r36445_)))
                (if (gx#export-set? _out36443_)
                    (let ((__tmp50668 (gx#export-set-exports _out36443_)))
                      (declare (not safe))
                      (foldl1 _fold-e36440_ _r36445_ __tmp50668))
                    _r36445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36440_)))
                                  (let ((__tmp50670
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36447_
                                                   '()
                                                   _exports36437_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50670)))
                                (_g3630636330_ _g3630736334_)))
                          _id3632436383_
                          _hd3631436351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3631936363_
                                                  _target3631636357_
                                                  '()))
                                               (_g3630636330_
                                                _g3630736334_)))))
                                     (_g3630636330_ _g3630736334_))))
                             (_g3630636330_ _g3630736334_))))
                     (_g3630636330_ _g3630736334_)))))
         (_g3630536452_ _stx36303_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36457_ _rename36459_)
      (gx#make-module-export
       (gx#module-export-context _out36457_)
       (gx#module-export-key _out36457_)
       (gx#module-export-phi _out36457_)
       _rename36459_
       (gx#module-export-weak? _out36457_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36461_)
       (let* ((_g3646436497_
               (lambda (_g3646536493_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3646536493_)))
              (_g3646336683_
               (lambda (_g3646536501_)
                 (if (gx#stx-pair? _g3646536501_)
                     (let ((_e3647136504_ (gx#syntax-e _g3646536501_)))
                       (let ((_hd3647036508_
                              (let ()
                                (declare (not safe))
                                (##car _e3647136504_)))
                             (_tl3646936511_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3647136504_))))
                         (if (gx#stx-pair? _tl3646936511_)
                             (let ((_e3647436514_
                                    (gx#syntax-e _tl3646936511_)))
                               (let ((_hd3647336518_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3647436514_)))
                                     (_tl3647236521_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3647436514_))))
                                 (if (gx#stx-pair/null? _tl3647236521_)
                                     (let ((_g50672_
                                            (gx#syntax-split-splice
                                             _tl3647236521_
                                             '0)))
                                       (begin
                                         (let ((_g50673_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50672_)
                                                      (##vector-length
                                                       _g50672_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50673_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50673_)))
                                         (let ((_target3647536524_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50672_ 0)))
                                               (_tl3647736527_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50672_ 1))))
                                           (if (gx#stx-null? _tl3647736527_)
                                               (letrec ((_loop3647836530_
                                                         (lambda (_hd3647636534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3648236537_
                          _id3648336539_)
                   (if (gx#stx-pair? _hd3647636534_)
                       (let ((_e3647936542_ (gx#syntax-e _hd3647636534_)))
                         (let ((_lp-hd3648036546_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3647936542_)))
                               (_lp-tl3648136549_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3647936542_))))
                           (if (gx#stx-pair? _lp-hd3648036546_)
                               (let ((_e3648836552_
                                      (gx#syntax-e _lp-hd3648036546_)))
                                 (let ((_hd3648736556_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3648836552_)))
                                       (_tl3648636559_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3648836552_))))
                                   (if (gx#stx-pair? _tl3648636559_)
                                       (let ((_e3649136562_
                                              (gx#syntax-e _tl3648636559_)))
                                         (let ((_hd3649036566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3649136562_)))
                                               (_tl3648936569_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3649136562_))))
                                           (if (gx#stx-null? _tl3648936569_)
                                               (_loop3647836530_
                                                _lp-tl3648136549_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3649036566_
                                                        _new-id3648236537_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3648736556_
                                                        _id3648336539_)))
                                               (_g3646436497_ _g3646536501_))))
                                       (_g3646436497_ _g3646536501_))))
                               (_g3646436497_ _g3646536501_))))
                       (let ((_new-id3648436572_ (reverse _new-id3648236537_))
                             (_id3648536575_ (reverse _id3648336539_)))
                         ((lambda (_L36578_ _L36580_ _L36581_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50684
                                             (lambda (_g3659936602_
                                                      _g3660036605_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3659936602_
                                                       _g3660036605_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50684 '() _L36580_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50683
                                             (lambda (_g3660736610_
                                                      _g3660836613_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3660736610_
                                                       _g3660836613_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50683 '() _L36578_))))
                                (let* ((_keytab36616_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found36619_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50678_
                                        (for-each
                                         (lambda (_id36622_ _new-id36624_)
                                           (let ((__tmp50675
                                                  (gx#core-identifier-key
                                                   _id36622_))
                                                 (__tmp50674
                                                  (gx#core-identifier-key
                                                   _new-id36624_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab36616_
                                              __tmp50675
                                              __tmp50674)))
                                         (let ((__tmp50676
                                                (lambda (_g3662536628_
                                                         _g3662636631_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3662536628_
                                                          _g3662636631_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50676 '() _L36580_))
                                         (let ((__tmp50677
                                                (lambda (_g3663336636_
                                                         _g3663436639_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3663336636_
                                                          _g3663436639_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50677 '() _L36578_))))
                                       (_exports36644_
                                        (gx#core-expand-export-source
                                         _L36581_))
                                       (_fold-e36664_
                                        (letrec ((_fold-e36647_
                                                  (lambda (_out36650_ _r36652_)
                                                    (if (gx#module-export?
                                                         _out36650_)
                                                        (let* ((_name36654_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36650_))
                       (_$e36657_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab36616_ _name36654_ '#f))))
                  (if _$e36657_
                      ((lambda (_rename36661_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found36619_ _name36654_ '#t))
                         (let ((__tmp50680
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36650_
                                   _rename36661_))))
                           (declare (not safe))
                           (cons __tmp50680 _r36652_)))
                       _$e36657_)
                      (let ()
                        (declare (not safe))
                        (cons _out36650_ _r36652_))))
                (if (gx#export-set? _out36650_)
                    (let ((__tmp50679 (gx#export-set-exports _out36650_)))
                      (declare (not safe))
                      (foldl1 _fold-e36647_ _r36652_ __tmp50679))
                    (let ()
                      (declare (not safe))
                      (cons _out36650_ _r36652_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36647_))
                                       (_new-exports36667_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36664_
                                                  '()
                                                  _exports36644_))))
                                  (for-each
                                   (lambda (_id36672_)
                                     (if (let ((__tmp50681
                                                (gx#core-identifier-key
                                                 _id36672_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found36619_
                                            __tmp50681
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36461_
                                          _id36672_)))
                                   (let ((__tmp50682
                                          (lambda (_g3667436677_ _g3667536680_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3667436677_
                                                    _g3667536680_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50682 '() _L36580_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports36667_)))
                                (_g3646436497_ _g3646536501_)))
                          _new-id3648436572_
                          _id3648536575_
                          _hd3647336518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3647836530_
                                                  _target3647536524_
                                                  '()
                                                  '()))
                                               (_g3646436497_
                                                _g3646536501_)))))
                                     (_g3646436497_ _g3646536501_))))
                             (_g3646436497_ _g3646536501_))))
                     (_g3646436497_ _g3646536501_)))))
         (_g3646336683_ _stx36461_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36689_)
       (let* ((_g3669236710_
               (lambda (_g3669336706_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3669336706_)))
              (_g3669136789_
               (lambda (_g3669336714_)
                 (if (gx#stx-pair? _g3669336714_)
                     (let ((_e3669836717_ (gx#syntax-e _g3669336714_)))
                       (let ((_hd3669736721_
                              (let ()
                                (declare (not safe))
                                (##car _e3669836717_)))
                             (_tl3669636724_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3669836717_))))
                         (if (gx#stx-pair? _tl3669636724_)
                             (let ((_e3670136727_
                                    (gx#syntax-e _tl3669636724_)))
                               (let ((_hd3670036731_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3670136727_)))
                                     (_tl3669936734_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3670136727_))))
                                 (if (gx#stx-pair? _tl3669936734_)
                                     (let ((_e3670436737_
                                            (gx#syntax-e _tl3669936734_)))
                                       (let ((_hd3670336741_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3670436737_)))
                                             (_tl3670236744_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3670436737_))))
                                         (if (gx#stx-null? _tl3670236744_)
                                             ((lambda (_L36747_ _L36749_)
                                                (if (gx#identifier? _L36747_)
                                                    (let* ((_pre36765_
                                                            (gx#stx-e
                                                             _L36747_))
                                                           (_exports36768_
                                                            (gx#core-expand-export-source
                                                             _L36749_))
                                                           (_rename-e36774_
                                                            (lambda (_name36771_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36771_
                         _pre36765_))))
                   (_fold-e36784_
                    (letrec ((_fold-e36777_
                              (lambda (_out36780_ _r36782_)
                                (if (gx#module-export? _out36780_)
                                    (let ((__tmp50686
                                           (let ((__tmp50687
                                                  (_rename-e36774_
                                                   (gx#module-export-name
                                                    _out36780_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36780_
                                              __tmp50687))))
                                      (declare (not safe))
                                      (cons __tmp50686 _r36782_))
                                    (if (gx#export-set? _out36780_)
                                        (let ((__tmp50685
                                               (gx#export-set-exports
                                                _out36780_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36777_
                                                  _r36782_
                                                  __tmp50685))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36780_ _r36782_)))))))
                      _fold-e36777_)))
              (let ((__tmp50688
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36784_ '() _exports36768_))))
                (declare (not safe))
                (cons 'begin: __tmp50688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3669236710_
                                                     _g3669336714_)))
                                              _hd3670336741_
                                              _hd3670036731_)
                                             (_g3669236710_ _g3669336714_))))
                                     (_g3669236710_ _g3669336714_))))
                             (_g3669236710_ _g3669336714_))))
                     (_g3669236710_ _g3669336714_)))))
         (_g3669136789_ _stx36689_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36793_)
       (letrec ((_identifiers36796_
                 (lambda (_id37028_ _unchecked?37030_)
                   (let ((_info37032_ (gx#syntax-local-value _id37028_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            _info37032_))
                         (let ((__tmp50689
                                (let ((__tmp50701
                                       (let ((__obj47363 _info37032_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj47363
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj47363
                                                '8
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj47363
                                              'type-descriptor))))
                                      (__tmp50690
                                       (let ((__tmp50692
                                              (let ((__tmp50700
                                                     (let ((__obj47364
                                                            _info37032_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47364
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47364
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47364
                                                            'predicate))))
                                                    (__tmp50693
                                                     (let ((__tmp50695
                                                            (let ((__tmp50697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37030_
                               (let ((__tmp50699
                                      (map cdr
                                           (let ((__obj47365 _info37032_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47365
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47365
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47365
                                                  'unchecked-mutators)))))
                                     (__tmp50698
                                      (map cdr
                                           (let ((__obj47366 _info37032_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47366
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47366
                                                    '13
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47366
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp50699 __tmp50698))
                               '()))
                          (__tmp50696
                           (map cdr
                                (let ((__obj47367 _info37032_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj47367
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj47367
                                         '12
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj47367
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp50697 __tmp50696)))
                   (__tmp50694
                    (map cdr
                         (let ((__obj47368 _info37032_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj47368
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj47368
                                  '11
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj47368
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp50695 __tmp50694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50700 __tmp50693)))
                                             (__tmp50691
                                              (let ((_ctor37035_
                                                     (let ((__obj47369
                                                            _info37032_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47369
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47369
                                                              '9
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47369
                                                            'constructor)))))
                                                (if _ctor37035_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37035_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp50692 __tmp50691))))
                                  (declare (not safe))
                                  (cons __tmp50701 __tmp50690))))
                           (declare (not safe))
                           (cons _id37028_ __tmp50689))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36793_
                          _id37028_))))))
         (let* ((___stx4728647287_ _stx36793_)
                (_g3680036841_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4728647287_))))
           (let ((___kont4728947290_
                  (lambda (_L36989_ _L36991_)
                    (let ((__tmp50702
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3701037012_)
                               (_identifiers36796_
                                _g3701037012_
                                (gx#stx-e _L36991_)))
                             (let ((__tmp50703
                                    (lambda (_g3701537018_ _g3701637021_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3701537018_ _g3701637021_)))))
                               (declare (not safe))
                               (foldr1 __tmp50703 '() _L36989_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50702))))
                 (___kont4729347294_
                  (lambda (_L36888_)
                    (let ((__tmp50704
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3690436906_)
                               (_identifiers36796_ _g3690436906_ '#f))
                             (let ((__tmp50705
                                    (lambda (_g3690936912_ _g3691036915_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3690936912_ _g3691036915_)))))
                               (declare (not safe))
                               (foldr1 __tmp50705 '() _L36888_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50704)))))
             (let* ((___match4734347344_
                     (lambda (_e3682636848_
                              _hd3682536852_
                              _tl3682436855_
                              ___splice4729547296_
                              _target3682736858_
                              _tl3682936861_)
                       (letrec ((_loop3683036864_
                                 (lambda (_hd3682836868_ _id3683436871_)
                                   (if (gx#stx-pair? _hd3682836868_)
                                       (let ((_e3683136874_
                                              (gx#syntax-e _hd3682836868_)))
                                         (let ((_lp-tl3683336881_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3683136874_)))
                                               (_lp-hd3683236878_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3683136874_))))
                                           (_loop3683036864_
                                            _lp-tl3683336881_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3683236878_
                                                    _id3683436871_)))))
                                       (let ((_id3683536884_
                                              (reverse _id3683436871_)))
                                         (___kont4729347294_
                                          _id3683536884_))))))
                         (_loop3683036864_ _target3682736858_ '()))))
                    (___match4732947330_
                     (lambda (_e3680636925_
                              _hd3680536929_
                              _tl3680436932_
                              _e3680936935_
                              _hd3680836939_
                              _tl3680736942_
                              _e3681036945_
                              _e3681336949_
                              _hd3681236953_
                              _tl3681136956_
                              ___splice4729147292_
                              _target3681436959_
                              _tl3681636962_)
                       (letrec ((_loop3681736965_
                                 (lambda (_hd3681536969_ _id3682136972_)
                                   (if (gx#stx-pair? _hd3681536969_)
                                       (let ((_e3681836975_
                                              (gx#syntax-e _hd3681536969_)))
                                         (let ((_lp-tl3682036982_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3681836975_)))
                                               (_lp-hd3681936979_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3681836975_))))
                                           (_loop3681736965_
                                            _lp-tl3682036982_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3681936979_
                                                    _id3682136972_)))))
                                       (let ((_id3682236985_
                                              (reverse _id3682136972_)))
                                         (___kont4728947290_
                                          _id3682236985_
                                          _hd3681236953_))))))
                         (_loop3681736965_ _target3681436959_ '())))))
               (if (gx#stx-pair? ___stx4728647287_)
                   (let ((_e3680636925_ (gx#syntax-e ___stx4728647287_)))
                     (let ((_tl3680436932_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3680636925_)))
                           (_hd3680536929_
                            (let ()
                              (declare (not safe))
                              (##car _e3680636925_))))
                       (if (gx#stx-pair? _tl3680436932_)
                           (let ((_e3680936935_ (gx#syntax-e _tl3680436932_)))
                             (let ((_tl3680736942_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3680936935_)))
                                   (_hd3680836939_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3680936935_))))
                               (if (gx#stx-datum? _hd3680836939_)
                                   (let ((_e3681036945_
                                          (gx#stx-e _hd3680836939_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3681036945_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3680736942_)
                                             (let ((_e3681336949_
                                                    (gx#syntax-e
                                                     _tl3680736942_)))
                                               (let ((_tl3681136956_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3681336949_)))
                                                     (_hd3681236953_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3681336949_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3681136956_)
                                                     (let ((___splice4729147292_
                                                            (gx#syntax-split-splice
                                                             _tl3681136956_
                                                             '0)))
                                                       (let ((_tl3681636962_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4729147292_ '1)))
                     (_target3681436959_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4729147292_ '0))))
                 (if (gx#stx-null? _tl3681636962_)
                     (___match4732947330_
                      _e3680636925_
                      _hd3680536929_
                      _tl3680436932_
                      _e3680936935_
                      _hd3680836939_
                      _tl3680736942_
                      _e3681036945_
                      _e3681336949_
                      _hd3681236953_
                      _tl3681136956_
                      ___splice4729147292_
                      _target3681436959_
                      _tl3681636962_)
                     (if (gx#stx-pair/null? _tl3680436932_)
                         (let ((___splice4729547296_
                                (gx#syntax-split-splice _tl3680436932_ '0)))
                           (let ((_tl3682936861_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4729547296_ '1)))
                                 (_target3682736858_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4729547296_ '0))))
                             (if (gx#stx-null? _tl3682936861_)
                                 (___match4734347344_
                                  _e3680636925_
                                  _hd3680536929_
                                  _tl3680436932_
                                  ___splice4729547296_
                                  _target3682736858_
                                  _tl3682936861_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3680036841_)))))
                         (let () (declare (not safe)) (_g3680036841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3680436932_)
                                                         (let ((___splice4729547296_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3680436932_
                         '0)))
                   (let ((_tl3682936861_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4729547296_ '1)))
                         (_target3682736858_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4729547296_ '0))))
                     (if (gx#stx-null? _tl3682936861_)
                         (___match4734347344_
                          _e3680636925_
                          _hd3680536929_
                          _tl3680436932_
                          ___splice4729547296_
                          _target3682736858_
                          _tl3682936861_)
                         (let () (declare (not safe)) (_g3680036841_)))))
                 (let () (declare (not safe)) (_g3680036841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3680436932_)
                                                 (let ((___splice4729547296_
                                                        (gx#syntax-split-splice
                                                         _tl3680436932_
                                                         '0)))
                                                   (let ((_tl3682936861_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4729547296_
                                                             '1)))
                                                         (_target3682736858_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4729547296_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3682936861_)
                                                         (___match4734347344_
                                                          _e3680636925_
                                                          _hd3680536929_
                                                          _tl3680436932_
                                                          ___splice4729547296_
                                                          _target3682736858_
                                                          _tl3682936861_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3680036841_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3680036841_))))
                                         (if (gx#stx-pair/null? _tl3680436932_)
                                             (let ((___splice4729547296_
                                                    (gx#syntax-split-splice
                                                     _tl3680436932_
                                                     '0)))
                                               (let ((_tl3682936861_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4729547296_
                                                         '1)))
                                                     (_target3682736858_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4729547296_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3682936861_)
                                                     (___match4734347344_
                                                      _e3680636925_
                                                      _hd3680536929_
                                                      _tl3680436932_
                                                      ___splice4729547296_
                                                      _target3682736858_
                                                      _tl3682936861_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3680036841_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3680036841_)))))
                                   (if (gx#stx-pair/null? _tl3680436932_)
                                       (let ((___splice4729547296_
                                              (gx#syntax-split-splice
                                               _tl3680436932_
                                               '0)))
                                         (let ((_tl3682936861_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4729547296_
                                                   '1)))
                                               (_target3682736858_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4729547296_
                                                   '0))))
                                           (if (gx#stx-null? _tl3682936861_)
                                               (___match4734347344_
                                                _e3680636925_
                                                _hd3680536929_
                                                _tl3680436932_
                                                ___splice4729547296_
                                                _target3682736858_
                                                _tl3682936861_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3680036841_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3680036841_))))))
                           (if (gx#stx-pair/null? _tl3680436932_)
                               (let ((___splice4729547296_
                                      (gx#syntax-split-splice
                                       _tl3680436932_
                                       '0)))
                                 (let ((_tl3682936861_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4729547296_
                                           '1)))
                                       (_target3682736858_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4729547296_
                                           '0))))
                                   (if (gx#stx-null? _tl3682936861_)
                                       (___match4734347344_
                                        _e3680636925_
                                        _hd3680536929_
                                        _tl3680436932_
                                        ___splice4729547296_
                                        _target3682736858_
                                        _tl3682936861_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3680036841_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3680036841_))))))
                   (let () (declare (not safe)) (_g3680036841_)))))))))))
