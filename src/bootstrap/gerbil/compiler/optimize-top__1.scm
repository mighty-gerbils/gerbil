(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx236621_)
      (let* ((_g236625236654_
              (lambda (_g236626236650_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236626236650_))))
             (_g236624236755_
              (lambda (_g236626236658_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236626236658_))
                    (let ((_e236631236661_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236626236658_))))
                      (let ((_hd236630236665_
                             (let ()
                               (declare (not safe))
                               (##car _e236631236661_)))
                            (_tl236629236668_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236631236661_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236629236668_))
                            (let ((_g251631_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236629236668_
                                      '0))))
                              (begin
                                (let ((_g251632_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251631_)
                                             (##vector-length _g251631_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251632_ 2)))
                                      (error "Context expects 2 values"
                                             _g251632_)))
                                (let ((_target236632236671_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251631_ 0)))
                                      (_tl236634236674_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251631_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236634236674_))
                                      (letrec ((_loop236635236677_
                                                (lambda (_hd236633236681_
                                                         _type-e236639236684_
                                                         _id236640236686_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236633236681_))
                                                      (let ((_e236636236689_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236633236681_))))
                (let ((_lp-hd236637236693_
                       (let () (declare (not safe)) (##car _e236636236689_)))
                      (_lp-tl236638236696_
                       (let () (declare (not safe)) (##cdr _e236636236689_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236637236693_))
                      (let ((_e236645236699_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236637236693_))))
                        (let ((_hd236644236703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236645236699_)))
                              (_tl236643236706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236645236699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236643236706_))
                              (let ((_e236648236709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236643236706_))))
                                (let ((_hd236647236713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236648236709_)))
                                      (_tl236646236716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236648236709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236646236716_))
                                      (_loop236635236677_
                                       _lp-tl236638236696_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236647236713_
                                               _type-e236639236684_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236644236703_
                                               _id236640236686_)))
                                      (_g236625236654_ _g236626236658_))))
                              (_g236625236654_ _g236626236658_))))
                      (_g236625236654_ _g236626236658_))))
              (let ((_type-e236641236719_ (reverse _type-e236639236684_))
                    (_id236642236722_ (reverse _id236640236686_)))
                ((lambda (_L236725_ _L236727_)
                   (let ((__tmp251644
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251633
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236725_
                               _L236727_))
                            (let ((__tmp251634
                                   (lambda (_g236743236747_
                                            _g236744236750_
                                            _g236745236752_)
                                     (let ((__tmp251635
                                            (let ((__tmp251643
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251636
                                                   (let ((__tmp251642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp251637
                                                          (let ((__tmp251639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251641
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251640
                                (let ()
                                  (declare (not safe))
                                  (cons _g236744236750_ '()))))
                           (declare (not safe))
                           (cons __tmp251641 __tmp251640)))
                        (__tmp251638
                         (let ()
                           (declare (not safe))
                           (cons _g236743236747_ '()))))
                    (declare (not safe))
                    (cons __tmp251639 __tmp251638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251642
                                                           __tmp251637))))
                                              (declare (not safe))
                                              (cons __tmp251643 __tmp251636))))
                                       (declare (not safe))
                                       (cons __tmp251635 _g236745236752_)))))
                              (declare (not safe))
                              (foldr2 __tmp251634 '() _L236725_ _L236727_)))))
                     (declare (not safe))
                     (cons __tmp251644 __tmp251633)))
                 _type-e236641236719_
                 _id236642236722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236635236677_
                                         _target236632236671_
                                         '()
                                         '()))
                                      (_g236625236654_ _g236626236658_)))))
                            (_g236625236654_ _g236626236658_))))
                    (_g236625236654_ _g236626236658_)))))
        (_g236624236755_ _$stx236621_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx236760_)
      (let* ((_g236764236793_
              (lambda (_g236765236789_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236765236789_))))
             (_g236763236893_
              (lambda (_g236765236797_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236765236797_))
                    (let ((_e236770236800_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236765236797_))))
                      (let ((_hd236769236804_
                             (let ()
                               (declare (not safe))
                               (##car _e236770236800_)))
                            (_tl236768236807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236770236800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236768236807_))
                            (let ((_g251645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236768236807_
                                      '0))))
                              (begin
                                (let ((_g251646_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251645_)
                                             (##vector-length _g251645_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251646_ 2)))
                                      (error "Context expects 2 values"
                                             _g251646_)))
                                (let ((_target236771236810_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251645_ 0)))
                                      (_tl236773236813_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251645_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236773236813_))
                                      (letrec ((_loop236774236816_
                                                (lambda (_hd236772236820_
                                                         _type-e236778236823_
                                                         _id236779236825_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236772236820_))
                                                      (let ((_e236775236828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236772236820_))))
                (let ((_lp-hd236776236832_
                       (let () (declare (not safe)) (##car _e236775236828_)))
                      (_lp-tl236777236835_
                       (let () (declare (not safe)) (##cdr _e236775236828_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236776236832_))
                      (let ((_e236784236838_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236776236832_))))
                        (let ((_hd236783236842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236784236838_)))
                              (_tl236782236845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236784236838_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236782236845_))
                              (let ((_e236787236848_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236782236845_))))
                                (let ((_hd236786236852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236787236848_)))
                                      (_tl236785236855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236787236848_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236785236855_))
                                      (_loop236774236816_
                                       _lp-tl236777236835_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236786236852_
                                               _type-e236778236823_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236783236842_
                                               _id236779236825_)))
                                      (_g236764236793_ _g236765236797_))))
                              (_g236764236793_ _g236765236797_))))
                      (_g236764236793_ _g236765236797_))))
              (let ((_type-e236780236858_ (reverse _type-e236778236823_))
                    (_id236781236861_ (reverse _id236779236825_)))
                ((lambda (_L236864_ _L236866_)
                   (let ((__tmp251658
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251647
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236864_
                               _L236866_))
                            (let ((__tmp251648
                                   (lambda (_g236881236885_
                                            _g236882236888_
                                            _g236883236890_)
                                     (let ((__tmp251649
                                            (let ((__tmp251657
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251650
                                                   (let ((__tmp251656
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp251651
                                                          (let ((__tmp251653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251655
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251654
                                (let ()
                                  (declare (not safe))
                                  (cons _g236882236888_ '()))))
                           (declare (not safe))
                           (cons __tmp251655 __tmp251654)))
                        (__tmp251652
                         (let ()
                           (declare (not safe))
                           (cons _g236881236885_ '()))))
                    (declare (not safe))
                    (cons __tmp251653 __tmp251652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251656
                                                           __tmp251651))))
                                              (declare (not safe))
                                              (cons __tmp251657 __tmp251650))))
                                       (declare (not safe))
                                       (cons __tmp251649 _g236883236890_)))))
                              (declare (not safe))
                              (foldr2 __tmp251648 '() _L236864_ _L236866_)))))
                     (declare (not safe))
                     (cons __tmp251658 __tmp251647)))
                 _type-e236780236858_
                 _id236781236861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236774236816_
                                         _target236771236810_
                                         '()
                                         '()))
                                      (_g236764236793_ _g236765236797_)))))
                            (_g236764236793_ _g236765236797_))))
                    (_g236764236793_ _g236765236797_)))))
        (_g236763236893_ _$stx236760_)))))
