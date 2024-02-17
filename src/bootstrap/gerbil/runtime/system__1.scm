(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx80426_)
    (let* ((_g8043080448_
            (lambda (_g8043180444_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8043180444_)))
           (_g8042980504_
            (lambda (_g8043180452_)
              (if (gx#stx-pair? _g8043180452_)
                  (let ((_e8043680455_ (gx#syntax-e _g8043180452_)))
                    (let ((_hd8043580459_
                           (let () (declare (not safe)) (##car _e8043680455_)))
                          (_tl8043480462_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8043680455_))))
                      (if (gx#stx-pair? _tl8043480462_)
                          (let ((_e8043980465_ (gx#syntax-e _tl8043480462_)))
                            (let ((_hd8043880469_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8043980465_)))
                                  (_tl8043780472_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8043980465_))))
                              (if (gx#stx-pair? _tl8043780472_)
                                  (let ((_e8044280475_
                                         (gx#syntax-e _tl8043780472_)))
                                    (let ((_hd8044180479_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8044280475_)))
                                          (_tl8044080482_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8044280475_))))
                                      (if (gx#stx-null? _tl8044080482_)
                                          ((lambda (_L80485_ _L80487_)
                                             (let ((__tmp85186
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp85173
                                                    (let ((__tmp85182
                                                           (let ((__tmp85185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp85183
                          (let ((__tmp85184
                                 (let ()
                                   (declare (not safe))
                                   (cons _L80485_ '()))))
                            (declare (not safe))
                            (cons _L80487_ __tmp85184))))
                     (declare (not safe))
                     (cons __tmp85185 __tmp85183)))
                  (__tmp85174
                   (let ((__tmp85178
                          (let ((__tmp85181 (gx#datum->syntax '#f 'set!))
                                (__tmp85179
                                 (let ((__tmp85180
                                        (let ()
                                          (declare (not safe))
                                          (cons _L80487_ '()))))
                                   (declare (not safe))
                                   (cons _L80487_ __tmp85180))))
                            (declare (not safe))
                            (cons __tmp85181 __tmp85179)))
                         (__tmp85175
                          (let ((__tmp85176
                                 (let ((__tmp85177
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp85177 '()))))
                            (declare (not safe))
                            (cons __tmp85176 '()))))
                     (declare (not safe))
                     (cons __tmp85178 __tmp85175))))
              (declare (not safe))
              (cons __tmp85182 __tmp85174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp85186 __tmp85173)))
                                           _hd8044180479_
                                           _hd8043880469_)
                                          (_g8043080448_ _g8043180452_))))
                                  (_g8043080448_ _g8043180452_))))
                          (_g8043080448_ _g8043180452_))))
                  (_g8043080448_ _g8043180452_)))))
      (_g8042980504_ _$stx80426_))))
