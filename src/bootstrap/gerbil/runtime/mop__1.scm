(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9405_)
    (let* ((_g94099435_
            (lambda (_g94109431_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g94109431_)))
           (_g94089519_
            (lambda (_g94109439_)
              (if (gx#stx-pair? _g94109439_)
                  (let ((_e94179442_ (gx#syntax-e _g94109439_)))
                    (let ((_hd94169446_
                           (let () (declare (not safe)) (##car _e94179442_)))
                          (_tl94159449_
                           (let () (declare (not safe)) (##cdr _e94179442_))))
                      (if (gx#stx-pair? _tl94159449_)
                          (let ((_e94209452_ (gx#syntax-e _tl94159449_)))
                            (let ((_hd94199456_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e94209452_)))
                                  (_tl94189459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e94209452_))))
                              (if (gx#stx-pair? _tl94189459_)
                                  (let ((_e94239462_
                                         (gx#syntax-e _tl94189459_)))
                                    (let ((_hd94229466_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94239462_)))
                                          (_tl94219469_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94239462_))))
                                      (if (gx#stx-pair? _tl94219469_)
                                          (let ((_e94269472_
                                                 (gx#syntax-e _tl94219469_)))
                                            (let ((_hd94259476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e94269472_)))
                                                  (_tl94249479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e94269472_))))
                                              (if (gx#stx-pair? _tl94249479_)
                                                  (let ((_e94299482_
                                                         (gx#syntax-e
                                                          _tl94249479_)))
                                                    (let ((_hd94289486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e94299482_)))
                                                          (_tl94279489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e94299482_))))
                                                      (if (gx#stx-null?
                                                           _tl94279489_)
                                                          ((lambda (_L9492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9494_
                            _L9495_
                            _L9496_)
                     (let ((__tmp10860 (gx#datum->syntax '#f 'if))
                           (__tmp10814
                            (let ((__tmp10857
                                   (let ((__tmp10859
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10858
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9496_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10859 __tmp10858)))
                                  (__tmp10815
                                   (let ((__tmp10820
                                          (let ((__tmp10856
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10821
                                                 (let ((__tmp10850
                                                        (let ((__tmp10855
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10851
                                                               (let ((__tmp10852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10854
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10853
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9496_ '()))))
                                (declare (not safe))
                                (cons __tmp10854 __tmp10853))))
                         (declare (not safe))
                         (cons __tmp10852 '()))))
                  (declare (not safe))
                  (cons __tmp10855 __tmp10851)))
               (__tmp10822
                (let ((__tmp10823
                       (let ((__tmp10849 (gx#datum->syntax '#f 'cond))
                             (__tmp10824
                              (let ((__tmp10832
                                     (let ((__tmp10836
                                            (let ((__tmp10848
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10837
                                                   (let ((__tmp10844
                                                          (let ((__tmp10847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10845
                         (let ((__tmp10846 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10846 '()))))
                    (declare (not safe))
                    (cons __tmp10847 __tmp10845)))
                 (__tmp10838
                  (let ((__tmp10839
                         (let ((__tmp10843
                                (gx#datum->syntax '#f 'class-slot-offset*))
                               (__tmp10840
                                (let ((__tmp10842
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10841
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9495_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10842 __tmp10841))))
                           (declare (not safe))
                           (cons __tmp10843 __tmp10840))))
                    (declare (not safe))
                    (cons __tmp10839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10844
                                                           __tmp10838))))
                                              (declare (not safe))
                                              (cons __tmp10848 __tmp10837)))
                                           (__tmp10833
                                            (let ((__tmp10835
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10834
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9494_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10835 __tmp10834))))
                                       (declare (not safe))
                                       (cons __tmp10836 __tmp10833)))
                                    (__tmp10825
                                     (let ((__tmp10826
                                            (let ((__tmp10831
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10827
                                                   (let ((__tmp10828
                                                          (let ((__tmp10829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10830
                                (let ()
                                  (declare (not safe))
                                  (cons _L9495_ '()))))
                           (declare (not safe))
                           (cons _L9496_ __tmp10830))))
                    (declare (not safe))
                    (cons _L9492_ __tmp10829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10828 '()))))
                                              (declare (not safe))
                                              (cons __tmp10831 __tmp10827))))
                                       (declare (not safe))
                                       (cons __tmp10826 '()))))
                                (declare (not safe))
                                (cons __tmp10832 __tmp10825))))
                         (declare (not safe))
                         (cons __tmp10849 __tmp10824))))
                  (declare (not safe))
                  (cons __tmp10823 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10850
                                                         __tmp10822))))
                                            (declare (not safe))
                                            (cons __tmp10856 __tmp10821)))
                                         (__tmp10816
                                          (let ((__tmp10817
                                                 (let ((__tmp10818
                                                        (let ((__tmp10819
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9495_ '()))))
                  (declare (not safe))
                  (cons _L9496_ __tmp10819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9492_ __tmp10818))))
                                            (declare (not safe))
                                            (cons __tmp10817 '()))))
                                     (declare (not safe))
                                     (cons __tmp10820 __tmp10816))))
                              (declare (not safe))
                              (cons __tmp10857 __tmp10815))))
                       (declare (not safe))
                       (cons __tmp10860 __tmp10814)))
                   _hd94289486_
                   _hd94259476_
                   _hd94229466_
                   _hd94199456_)
                  (_g94099435_ _g94109439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94099435_ _g94109439_))))
                                          (_g94099435_ _g94109439_))))
                                  (_g94099435_ _g94109439_))))
                          (_g94099435_ _g94109439_))))
                  (_g94099435_ _g94109439_)))))
      (_g94089519_ _$stx9405_))))
