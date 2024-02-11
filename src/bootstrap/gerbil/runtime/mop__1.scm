(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx82956_)
    (let* ((_g8296082986_
            (lambda (_g8296182982_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8296182982_)))
           (_g8295983070_
            (lambda (_g8296182990_)
              (if (gx#stx-pair? _g8296182990_)
                  (let ((_e8296882993_ (gx#syntax-e _g8296182990_)))
                    (let ((_hd8296782997_
                           (let () (declare (not safe)) (##car _e8296882993_)))
                          (_tl8296683000_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8296882993_))))
                      (if (gx#stx-pair? _tl8296683000_)
                          (let ((_e8297183003_ (gx#syntax-e _tl8296683000_)))
                            (let ((_hd8297083007_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8297183003_)))
                                  (_tl8296983010_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8297183003_))))
                              (if (gx#stx-pair? _tl8296983010_)
                                  (let ((_e8297483013_
                                         (gx#syntax-e _tl8296983010_)))
                                    (let ((_hd8297383017_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8297483013_)))
                                          (_tl8297283020_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8297483013_))))
                                      (if (gx#stx-pair? _tl8297283020_)
                                          (let ((_e8297783023_
                                                 (gx#syntax-e _tl8297283020_)))
                                            (let ((_hd8297683027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8297783023_)))
                                                  (_tl8297583030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8297783023_))))
                                              (if (gx#stx-pair? _tl8297583030_)
                                                  (let ((_e8298083033_
                                                         (gx#syntax-e
                                                          _tl8297583030_)))
                                                    (let ((_hd8297983037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8298083033_)))
                                                          (_tl8297883040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8298083033_))))
                                                      (if (gx#stx-null?
                                                           _tl8297883040_)
                                                          ((lambda (_L83043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83045_
                            _L83046_
                            _L83047_)
                     (let ((__tmp88762 (gx#datum->syntax '#f 'if))
                           (__tmp88716
                            (let ((__tmp88759
                                   (let ((__tmp88761
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp88760
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83047_ '()))))
                                     (declare (not safe))
                                     (cons __tmp88761 __tmp88760)))
                                  (__tmp88717
                                   (let ((__tmp88722
                                          (let ((__tmp88758
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp88723
                                                 (let ((__tmp88752
                                                        (let ((__tmp88757
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp88753
                                                               (let ((__tmp88754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88756
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp88755
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83047_ '()))))
                                (declare (not safe))
                                (cons __tmp88756 __tmp88755))))
                         (declare (not safe))
                         (cons __tmp88754 '()))))
                  (declare (not safe))
                  (cons __tmp88757 __tmp88753)))
               (__tmp88724
                (let ((__tmp88725
                       (let ((__tmp88751 (gx#datum->syntax '#f 'cond))
                             (__tmp88726
                              (let ((__tmp88734
                                     (let ((__tmp88738
                                            (let ((__tmp88750
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp88739
                                                   (let ((__tmp88746
                                                          (let ((__tmp88749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp88747
                         (let ((__tmp88748 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp88748 '()))))
                    (declare (not safe))
                    (cons __tmp88749 __tmp88747)))
                 (__tmp88740
                  (let ((__tmp88741
                         (let ((__tmp88745
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp88742
                                (let ((__tmp88744
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp88743
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83046_ '()))))
                                  (declare (not safe))
                                  (cons __tmp88744 __tmp88743))))
                           (declare (not safe))
                           (cons __tmp88745 __tmp88742))))
                    (declare (not safe))
                    (cons __tmp88741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88746
                                                           __tmp88740))))
                                              (declare (not safe))
                                              (cons __tmp88750 __tmp88739)))
                                           (__tmp88735
                                            (let ((__tmp88737
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp88736
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83045_ '()))))
                                              (declare (not safe))
                                              (cons __tmp88737 __tmp88736))))
                                       (declare (not safe))
                                       (cons __tmp88738 __tmp88735)))
                                    (__tmp88727
                                     (let ((__tmp88728
                                            (let ((__tmp88733
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp88729
                                                   (let ((__tmp88730
                                                          (let ((__tmp88731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp88732
                                (let ()
                                  (declare (not safe))
                                  (cons _L83046_ '()))))
                           (declare (not safe))
                           (cons _L83047_ __tmp88732))))
                    (declare (not safe))
                    (cons _L83043_ __tmp88731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp88730 '()))))
                                              (declare (not safe))
                                              (cons __tmp88733 __tmp88729))))
                                       (declare (not safe))
                                       (cons __tmp88728 '()))))
                                (declare (not safe))
                                (cons __tmp88734 __tmp88727))))
                         (declare (not safe))
                         (cons __tmp88751 __tmp88726))))
                  (declare (not safe))
                  (cons __tmp88725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp88752
                                                         __tmp88724))))
                                            (declare (not safe))
                                            (cons __tmp88758 __tmp88723)))
                                         (__tmp88718
                                          (let ((__tmp88719
                                                 (let ((__tmp88720
                                                        (let ((__tmp88721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83046_ '()))))
                  (declare (not safe))
                  (cons _L83047_ __tmp88721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83043_
                                                         __tmp88720))))
                                            (declare (not safe))
                                            (cons __tmp88719 '()))))
                                     (declare (not safe))
                                     (cons __tmp88722 __tmp88718))))
                              (declare (not safe))
                              (cons __tmp88759 __tmp88717))))
                       (declare (not safe))
                       (cons __tmp88762 __tmp88716)))
                   _hd8297983037_
                   _hd8297683027_
                   _hd8297383017_
                   _hd8297083007_)
                  (_g8296082986_ _g8296182990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8296082986_
                                                   _g8296182990_))))
                                          (_g8296082986_ _g8296182990_))))
                                  (_g8296082986_ _g8296182990_))))
                          (_g8296082986_ _g8296182990_))))
                  (_g8296082986_ _g8296182990_)))))
      (_g8295983070_ _$stx82956_))))
