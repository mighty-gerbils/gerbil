(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx81208_)
    (let* ((_g8121281238_
            (lambda (_g8121381234_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8121381234_)))
           (_g8121181322_
            (lambda (_g8121381242_)
              (if (gx#stx-pair? _g8121381242_)
                  (let ((_e8122081245_ (gx#syntax-e _g8121381242_)))
                    (let ((_hd8121981249_
                           (let () (declare (not safe)) (##car _e8122081245_)))
                          (_tl8121881252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8122081245_))))
                      (if (gx#stx-pair? _tl8121881252_)
                          (let ((_e8122381255_ (gx#syntax-e _tl8121881252_)))
                            (let ((_hd8122281259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8122381255_)))
                                  (_tl8122181262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8122381255_))))
                              (if (gx#stx-pair? _tl8122181262_)
                                  (let ((_e8122681265_
                                         (gx#syntax-e _tl8122181262_)))
                                    (let ((_hd8122581269_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8122681265_)))
                                          (_tl8122481272_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8122681265_))))
                                      (if (gx#stx-pair? _tl8122481272_)
                                          (let ((_e8122981275_
                                                 (gx#syntax-e _tl8122481272_)))
                                            (let ((_hd8122881279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8122981275_)))
                                                  (_tl8122781282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8122981275_))))
                                              (if (gx#stx-pair? _tl8122781282_)
                                                  (let ((_e8123281285_
                                                         (gx#syntax-e
                                                          _tl8122781282_)))
                                                    (let ((_hd8123181289_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8123281285_)))
                                                          (_tl8123081292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8123281285_))))
                                                      (if (gx#stx-null?
                                                           _tl8123081292_)
                                                          ((lambda (_L81295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L81297_
                            _L81298_
                            _L81299_)
                     (let ((__tmp86900 (gx#datum->syntax '#f 'if))
                           (__tmp86854
                            (let ((__tmp86897
                                   (let ((__tmp86899
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp86898
                                          (let ()
                                            (declare (not safe))
                                            (cons _L81299_ '()))))
                                     (declare (not safe))
                                     (cons __tmp86899 __tmp86898)))
                                  (__tmp86855
                                   (let ((__tmp86860
                                          (let ((__tmp86896
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp86861
                                                 (let ((__tmp86890
                                                        (let ((__tmp86895
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp86891
                                                               (let ((__tmp86892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp86894
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp86893
                                     (let ()
                                       (declare (not safe))
                                       (cons _L81299_ '()))))
                                (declare (not safe))
                                (cons __tmp86894 __tmp86893))))
                         (declare (not safe))
                         (cons __tmp86892 '()))))
                  (declare (not safe))
                  (cons __tmp86895 __tmp86891)))
               (__tmp86862
                (let ((__tmp86863
                       (let ((__tmp86889 (gx#datum->syntax '#f 'cond))
                             (__tmp86864
                              (let ((__tmp86872
                                     (let ((__tmp86876
                                            (let ((__tmp86888
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp86877
                                                   (let ((__tmp86884
                                                          (let ((__tmp86887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp86885
                         (let ((__tmp86886 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp86886 '()))))
                    (declare (not safe))
                    (cons __tmp86887 __tmp86885)))
                 (__tmp86878
                  (let ((__tmp86879
                         (let ((__tmp86883
                                (gx#datum->syntax '#f 'class-slot-offset*))
                               (__tmp86880
                                (let ((__tmp86882
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp86881
                                       (let ()
                                         (declare (not safe))
                                         (cons _L81298_ '()))))
                                  (declare (not safe))
                                  (cons __tmp86882 __tmp86881))))
                           (declare (not safe))
                           (cons __tmp86883 __tmp86880))))
                    (declare (not safe))
                    (cons __tmp86879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86884
                                                           __tmp86878))))
                                              (declare (not safe))
                                              (cons __tmp86888 __tmp86877)))
                                           (__tmp86873
                                            (let ((__tmp86875
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp86874
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L81297_ '()))))
                                              (declare (not safe))
                                              (cons __tmp86875 __tmp86874))))
                                       (declare (not safe))
                                       (cons __tmp86876 __tmp86873)))
                                    (__tmp86865
                                     (let ((__tmp86866
                                            (let ((__tmp86871
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp86867
                                                   (let ((__tmp86868
                                                          (let ((__tmp86869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp86870
                                (let ()
                                  (declare (not safe))
                                  (cons _L81298_ '()))))
                           (declare (not safe))
                           (cons _L81299_ __tmp86870))))
                    (declare (not safe))
                    (cons _L81295_ __tmp86869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp86868 '()))))
                                              (declare (not safe))
                                              (cons __tmp86871 __tmp86867))))
                                       (declare (not safe))
                                       (cons __tmp86866 '()))))
                                (declare (not safe))
                                (cons __tmp86872 __tmp86865))))
                         (declare (not safe))
                         (cons __tmp86889 __tmp86864))))
                  (declare (not safe))
                  (cons __tmp86863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp86890
                                                         __tmp86862))))
                                            (declare (not safe))
                                            (cons __tmp86896 __tmp86861)))
                                         (__tmp86856
                                          (let ((__tmp86857
                                                 (let ((__tmp86858
                                                        (let ((__tmp86859
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L81298_ '()))))
                  (declare (not safe))
                  (cons _L81299_ __tmp86859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L81295_
                                                         __tmp86858))))
                                            (declare (not safe))
                                            (cons __tmp86857 '()))))
                                     (declare (not safe))
                                     (cons __tmp86860 __tmp86856))))
                              (declare (not safe))
                              (cons __tmp86897 __tmp86855))))
                       (declare (not safe))
                       (cons __tmp86900 __tmp86854)))
                   _hd8123181289_
                   _hd8122881279_
                   _hd8122581269_
                   _hd8122281259_)
                  (_g8121281238_ _g8121381242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8121281238_
                                                   _g8121381242_))))
                                          (_g8121281238_ _g8121381242_))))
                                  (_g8121281238_ _g8121381242_))))
                          (_g8121281238_ _g8121381242_))))
                  (_g8121281238_ _g8121381242_)))))
      (_g8121181322_ _$stx81208_))))
