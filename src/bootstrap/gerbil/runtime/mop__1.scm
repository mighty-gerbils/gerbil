(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx9131_)
    (let* ((_g91359161_
            (lambda (_g91369157_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g91369157_)))
           (_g91349245_
            (lambda (_g91369165_)
              (if (gx#stx-pair? _g91369165_)
                  (let ((_e91439168_ (gx#syntax-e _g91369165_)))
                    (let ((_hd91429172_
                           (let () (declare (not safe)) (##car _e91439168_)))
                          (_tl91419175_
                           (let () (declare (not safe)) (##cdr _e91439168_))))
                      (if (gx#stx-pair? _tl91419175_)
                          (let ((_e91469178_ (gx#syntax-e _tl91419175_)))
                            (let ((_hd91459182_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e91469178_)))
                                  (_tl91449185_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e91469178_))))
                              (if (gx#stx-pair? _tl91449185_)
                                  (let ((_e91499188_
                                         (gx#syntax-e _tl91449185_)))
                                    (let ((_hd91489192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e91499188_)))
                                          (_tl91479195_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e91499188_))))
                                      (if (gx#stx-pair? _tl91479195_)
                                          (let ((_e91529198_
                                                 (gx#syntax-e _tl91479195_)))
                                            (let ((_hd91519202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e91529198_)))
                                                  (_tl91509205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e91529198_))))
                                              (if (gx#stx-pair? _tl91509205_)
                                                  (let ((_e91559208_
                                                         (gx#syntax-e
                                                          _tl91509205_)))
                                                    (let ((_hd91549212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e91559208_)))
                                                          (_tl91539215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e91559208_))))
                                                      (if (gx#stx-null?
                                                           _tl91539215_)
                                                          ((lambda (_L9218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9220_
                            _L9221_
                            _L9222_)
                     (let ((__tmp10859 (gx#datum->syntax '#f 'if))
                           (__tmp10813
                            (let ((__tmp10856
                                   (let ((__tmp10858
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp10857
                                          (let ()
                                            (declare (not safe))
                                            (cons _L9222_ '()))))
                                     (declare (not safe))
                                     (cons __tmp10858 __tmp10857)))
                                  (__tmp10814
                                   (let ((__tmp10819
                                          (let ((__tmp10855
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp10820
                                                 (let ((__tmp10849
                                                        (let ((__tmp10854
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp10850
                                                               (let ((__tmp10851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10853
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp10852
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9222_ '()))))
                                (declare (not safe))
                                (cons __tmp10853 __tmp10852))))
                         (declare (not safe))
                         (cons __tmp10851 '()))))
                  (declare (not safe))
                  (cons __tmp10854 __tmp10850)))
               (__tmp10821
                (let ((__tmp10822
                       (let ((__tmp10848 (gx#datum->syntax '#f 'cond))
                             (__tmp10823
                              (let ((__tmp10831
                                     (let ((__tmp10835
                                            (let ((__tmp10847
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp10836
                                                   (let ((__tmp10843
                                                          (let ((__tmp10846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp10844
                         (let ((__tmp10845 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp10845 '()))))
                    (declare (not safe))
                    (cons __tmp10846 __tmp10844)))
                 (__tmp10837
                  (let ((__tmp10838
                         (let ((__tmp10842
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp10839
                                (let ((__tmp10841
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp10840
                                       (let ()
                                         (declare (not safe))
                                         (cons _L9221_ '()))))
                                  (declare (not safe))
                                  (cons __tmp10841 __tmp10840))))
                           (declare (not safe))
                           (cons __tmp10842 __tmp10839))))
                    (declare (not safe))
                    (cons __tmp10838 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10843
                                                           __tmp10837))))
                                              (declare (not safe))
                                              (cons __tmp10847 __tmp10836)))
                                           (__tmp10832
                                            (let ((__tmp10834
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp10833
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L9220_ '()))))
                                              (declare (not safe))
                                              (cons __tmp10834 __tmp10833))))
                                       (declare (not safe))
                                       (cons __tmp10835 __tmp10832)))
                                    (__tmp10824
                                     (let ((__tmp10825
                                            (let ((__tmp10830
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp10826
                                                   (let ((__tmp10827
                                                          (let ((__tmp10828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp10829
                                (let ()
                                  (declare (not safe))
                                  (cons _L9221_ '()))))
                           (declare (not safe))
                           (cons _L9222_ __tmp10829))))
                    (declare (not safe))
                    (cons _L9218_ __tmp10828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp10827 '()))))
                                              (declare (not safe))
                                              (cons __tmp10830 __tmp10826))))
                                       (declare (not safe))
                                       (cons __tmp10825 '()))))
                                (declare (not safe))
                                (cons __tmp10831 __tmp10824))))
                         (declare (not safe))
                         (cons __tmp10848 __tmp10823))))
                  (declare (not safe))
                  (cons __tmp10822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp10849
                                                         __tmp10821))))
                                            (declare (not safe))
                                            (cons __tmp10855 __tmp10820)))
                                         (__tmp10815
                                          (let ((__tmp10816
                                                 (let ((__tmp10817
                                                        (let ((__tmp10818
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L9221_ '()))))
                  (declare (not safe))
                  (cons _L9222_ __tmp10818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L9218_ __tmp10817))))
                                            (declare (not safe))
                                            (cons __tmp10816 '()))))
                                     (declare (not safe))
                                     (cons __tmp10819 __tmp10815))))
                              (declare (not safe))
                              (cons __tmp10856 __tmp10814))))
                       (declare (not safe))
                       (cons __tmp10859 __tmp10813)))
                   _hd91549212_
                   _hd91519202_
                   _hd91489192_
                   _hd91459182_)
                  (_g91359161_ _g91369165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g91359161_ _g91369165_))))
                                          (_g91359161_ _g91369165_))))
                                  (_g91359161_ _g91369165_))))
                          (_g91359161_ _g91369165_))))
                  (_g91359161_ _g91369165_)))))
      (_g91349245_ _$stx9131_))))
