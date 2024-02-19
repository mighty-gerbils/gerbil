(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx295924_)
      (let* ((_g295928295942_
              (lambda (_g295929295938_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295929295938_))))
             (_g295927295984_
              (lambda (_g295929295946_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295929295946_))
                    (let ((_e295933295949_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295929295946_))))
                      (let ((_hd295932295953_
                             (let ()
                               (declare (not safe))
                               (##car _e295933295949_)))
                            (_tl295931295956_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295933295949_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295931295956_))
                            (let ((_e295936295959_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295931295956_))))
                              (let ((_hd295935295963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295936295959_)))
                                    (_tl295934295966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295936295959_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295934295966_))
                                    ((lambda (_L295969_)
                                       (let ((__tmp301792
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp301785
                                              (let ((__tmp301791
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp301786
                                                     (let ((__tmp301787
                                                            (let ((__tmp301790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp301788
                           (let ((__tmp301789
                                  (let ()
                                    (declare (not safe))
                                    (cons _L295969_ '()))))
                             (declare (not safe))
                             (cons '() __tmp301789))))
                      (declare (not safe))
                      (cons __tmp301790 __tmp301788))))
               (declare (not safe))
               (cons __tmp301787 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301791
                                                      __tmp301786))))
                                         (declare (not safe))
                                         (cons __tmp301792 __tmp301785)))
                                     _hd295935295963_)
                                    (_g295928295942_ _g295929295946_))))
                            (_g295928295942_ _g295929295946_))))
                    (_g295928295942_ _g295929295946_)))))
        (_g295927295984_ _$stx295924_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx295988_)
      (let* ((_g295992296006_
              (lambda (_g295993296002_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295993296002_))))
             (_g295991296047_
              (lambda (_g295993296010_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295993296010_))
                    (let ((_e295997296013_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295993296010_))))
                      (let ((_hd295996296017_
                             (let ()
                               (declare (not safe))
                               (##car _e295997296013_)))
                            (_tl295995296020_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295997296013_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295995296020_))
                            (let ((_e296000296023_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295995296020_))))
                              (let ((_hd295999296027_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296000296023_)))
                                    (_tl295998296030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296000296023_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295998296030_))
                                    ((lambda (_L296033_)
                                       (let ((__tmp301798
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp301793
                                              (let ((__tmp301794
                                                     (let ((__tmp301797
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp301795
                                                            (let ((__tmp301796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L296033_ '()))))
                      (declare (not safe))
                      (cons '() __tmp301796))))
               (declare (not safe))
               (cons __tmp301797 __tmp301795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301794 '()))))
                                         (declare (not safe))
                                         (cons __tmp301798 __tmp301793)))
                                     _hd295999296027_)
                                    (_g295992296006_ _g295993296010_))))
                            (_g295992296006_ _g295993296010_))))
                    (_g295992296006_ _g295993296010_)))))
        (_g295991296047_ _$stx295988_)))))
