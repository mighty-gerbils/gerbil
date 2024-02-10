(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx226216_)
      (let* ((_g226220226249_
              (lambda (_g226221226245_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226221226245_))))
             (_g226219226350_
              (lambda (_g226221226253_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226221226253_))
                    (let ((_e226226226256_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226221226253_))))
                      (let ((_hd226225226260_
                             (let ()
                               (declare (not safe))
                               (##car _e226226226256_)))
                            (_tl226224226263_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226226226256_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226224226263_))
                            (let ((_g241610_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226224226263_
                                      '0))))
                              (begin
                                (let ((_g241611_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241610_)
                                             (##vector-length _g241610_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241611_ 2)))
                                      (error "Context expects 2 values"
                                             _g241611_)))
                                (let ((_target226227226266_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241610_ 0)))
                                      (_tl226229226269_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241610_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226229226269_))
                                      (letrec ((_loop226230226272_
                                                (lambda (_hd226228226276_
                                                         _type-e226234226279_
                                                         _id226235226281_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226228226276_))
                                                      (let ((_e226231226284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226228226276_))))
                (let ((_lp-hd226232226288_
                       (let () (declare (not safe)) (##car _e226231226284_)))
                      (_lp-tl226233226291_
                       (let () (declare (not safe)) (##cdr _e226231226284_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226232226288_))
                      (let ((_e226240226294_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226232226288_))))
                        (let ((_hd226239226298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226240226294_)))
                              (_tl226238226301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226240226294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226238226301_))
                              (let ((_e226243226304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226238226301_))))
                                (let ((_hd226242226308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226243226304_)))
                                      (_tl226241226311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226243226304_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226241226311_))
                                      (_loop226230226272_
                                       _lp-tl226233226291_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226242226308_
                                               _type-e226234226279_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226239226298_
                                               _id226235226281_)))
                                      (_g226220226249_ _g226221226253_))))
                              (_g226220226249_ _g226221226253_))))
                      (_g226220226249_ _g226221226253_))))
              (let ((_type-e226236226314_ (reverse _type-e226234226279_))
                    (_id226237226317_ (reverse _id226235226281_)))
                ((lambda (_L226320_ _L226322_)
                   (let ((__tmp241623
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241612
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226320_
                               _L226322_))
                            (let ((__tmp241613
                                   (lambda (_g226338226342_
                                            _g226339226345_
                                            _g226340226347_)
                                     (let ((__tmp241614
                                            (let ((__tmp241622
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241615
                                                   (let ((__tmp241621
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp241616
                                                          (let ((__tmp241618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241620
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241619
                                (let ()
                                  (declare (not safe))
                                  (cons _g226339226345_ '()))))
                           (declare (not safe))
                           (cons __tmp241620 __tmp241619)))
                        (__tmp241617
                         (let ()
                           (declare (not safe))
                           (cons _g226338226342_ '()))))
                    (declare (not safe))
                    (cons __tmp241618 __tmp241617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241621
                                                           __tmp241616))))
                                              (declare (not safe))
                                              (cons __tmp241622 __tmp241615))))
                                       (declare (not safe))
                                       (cons __tmp241614 _g226340226347_)))))
                              (declare (not safe))
                              (foldr2 __tmp241613 '() _L226320_ _L226322_)))))
                     (declare (not safe))
                     (cons __tmp241623 __tmp241612)))
                 _type-e226236226314_
                 _id226237226317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226230226272_
                                         _target226227226266_
                                         '()
                                         '()))
                                      (_g226220226249_ _g226221226253_)))))
                            (_g226220226249_ _g226221226253_))))
                    (_g226220226249_ _g226221226253_)))))
        (_g226219226350_ _$stx226216_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx226355_)
      (let* ((_g226359226388_
              (lambda (_g226360226384_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g226360226384_))))
             (_g226358226488_
              (lambda (_g226360226392_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g226360226392_))
                    (let ((_e226365226395_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g226360226392_))))
                      (let ((_hd226364226399_
                             (let ()
                               (declare (not safe))
                               (##car _e226365226395_)))
                            (_tl226363226402_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226365226395_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl226363226402_))
                            (let ((_g241624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl226363226402_
                                      '0))))
                              (begin
                                (let ((_g241625_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g241624_)
                                             (##vector-length _g241624_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g241625_ 2)))
                                      (error "Context expects 2 values"
                                             _g241625_)))
                                (let ((_target226366226405_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241624_ 0)))
                                      (_tl226368226408_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g241624_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226368226408_))
                                      (letrec ((_loop226369226411_
                                                (lambda (_hd226367226415_
                                                         _type-e226373226418_
                                                         _id226374226420_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226367226415_))
                                                      (let ((_e226370226423_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd226367226415_))))
                (let ((_lp-hd226371226427_
                       (let () (declare (not safe)) (##car _e226370226423_)))
                      (_lp-tl226372226430_
                       (let () (declare (not safe)) (##cdr _e226370226423_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd226371226427_))
                      (let ((_e226379226433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd226371226427_))))
                        (let ((_hd226378226437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226379226433_)))
                              (_tl226377226440_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226379226433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226377226440_))
                              (let ((_e226382226443_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl226377226440_))))
                                (let ((_hd226381226447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226382226443_)))
                                      (_tl226380226450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226382226443_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226380226450_))
                                      (_loop226369226411_
                                       _lp-tl226372226430_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226381226447_
                                               _type-e226373226418_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd226378226437_
                                               _id226374226420_)))
                                      (_g226359226388_ _g226360226392_))))
                              (_g226359226388_ _g226360226392_))))
                      (_g226359226388_ _g226360226392_))))
              (let ((_type-e226375226453_ (reverse _type-e226373226418_))
                    (_id226376226456_ (reverse _id226374226420_)))
                ((lambda (_L226459_ _L226461_)
                   (let ((__tmp241637
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp241626
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L226459_
                               _L226461_))
                            (let ((__tmp241627
                                   (lambda (_g226476226480_
                                            _g226477226483_
                                            _g226478226485_)
                                     (let ((__tmp241628
                                            (let ((__tmp241636
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp241629
                                                   (let ((__tmp241635
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp241630
                                                          (let ((__tmp241632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241634
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp241633
                                (let ()
                                  (declare (not safe))
                                  (cons _g226477226483_ '()))))
                           (declare (not safe))
                           (cons __tmp241634 __tmp241633)))
                        (__tmp241631
                         (let ()
                           (declare (not safe))
                           (cons _g226476226480_ '()))))
                    (declare (not safe))
                    (cons __tmp241632 __tmp241631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241635
                                                           __tmp241630))))
                                              (declare (not safe))
                                              (cons __tmp241636 __tmp241629))))
                                       (declare (not safe))
                                       (cons __tmp241628 _g226478226485_)))))
                              (declare (not safe))
                              (foldr2 __tmp241627 '() _L226459_ _L226461_)))))
                     (declare (not safe))
                     (cons __tmp241637 __tmp241626)))
                 _type-e226375226453_
                 _id226376226456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop226369226411_
                                         _target226366226405_
                                         '()
                                         '()))
                                      (_g226359226388_ _g226360226392_)))))
                            (_g226359226388_ _g226360226392_))))
                    (_g226359226388_ _g226360226392_)))))
        (_g226358226488_ _$stx226355_)))))
