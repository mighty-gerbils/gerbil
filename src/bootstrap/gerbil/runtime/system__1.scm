(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx80867_)
    (let* ((_g8087180889_
            (lambda (_g8087280885_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8087280885_)))
           (_g8087080945_
            (lambda (_g8087280893_)
              (if (gx#stx-pair? _g8087280893_)
                  (let ((_e8087780896_ (gx#syntax-e _g8087280893_)))
                    (let ((_hd8087680900_
                           (let () (declare (not safe)) (##car _e8087780896_)))
                          (_tl8087580903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8087780896_))))
                      (if (gx#stx-pair? _tl8087580903_)
                          (let ((_e8088080906_ (gx#syntax-e _tl8087580903_)))
                            (let ((_hd8087980910_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8088080906_)))
                                  (_tl8087880913_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8088080906_))))
                              (if (gx#stx-pair? _tl8087880913_)
                                  (let ((_e8088380916_
                                         (gx#syntax-e _tl8087880913_)))
                                    (let ((_hd8088280920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8088380916_)))
                                          (_tl8088180923_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8088380916_))))
                                      (if (gx#stx-null? _tl8088180923_)
                                          ((lambda (_L80926_ _L80928_)
                                             (let ((__tmp85627
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp85614
                                                    (let ((__tmp85623
                                                           (let ((__tmp85626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp85624
                          (let ((__tmp85625
                                 (let ()
                                   (declare (not safe))
                                   (cons _L80926_ '()))))
                            (declare (not safe))
                            (cons _L80928_ __tmp85625))))
                     (declare (not safe))
                     (cons __tmp85626 __tmp85624)))
                  (__tmp85615
                   (let ((__tmp85619
                          (let ((__tmp85622 (gx#datum->syntax '#f 'set!))
                                (__tmp85620
                                 (let ((__tmp85621
                                        (let ()
                                          (declare (not safe))
                                          (cons _L80928_ '()))))
                                   (declare (not safe))
                                   (cons _L80928_ __tmp85621))))
                            (declare (not safe))
                            (cons __tmp85622 __tmp85620)))
                         (__tmp85616
                          (let ((__tmp85617
                                 (let ((__tmp85618
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp85618 '()))))
                            (declare (not safe))
                            (cons __tmp85617 '()))))
                     (declare (not safe))
                     (cons __tmp85619 __tmp85616))))
              (declare (not safe))
              (cons __tmp85623 __tmp85615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp85627 __tmp85614)))
                                           _hd8088280920_
                                           _hd8087980910_)
                                          (_g8087180889_ _g8087280893_))))
                                  (_g8087180889_ _g8087280893_))))
                          (_g8087180889_ _g8087280893_))))
                  (_g8087180889_ _g8087280893_)))))
      (_g8087080945_ _$stx80867_))))
