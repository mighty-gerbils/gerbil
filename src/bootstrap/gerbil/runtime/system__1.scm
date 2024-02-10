(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#defmutable|
  (lambda (_$stx64681_)
    (let* ((_g6468564703_
            (lambda (_g6468664699_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g6468664699_)))
           (_g6468464759_
            (lambda (_g6468664707_)
              (if (gx#stx-pair? _g6468664707_)
                  (let ((_e6469164710_ (gx#syntax-e _g6468664707_)))
                    (let ((_hd6469064714_
                           (let () (declare (not safe)) (##car _e6469164710_)))
                          (_tl6468964717_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6469164710_))))
                      (if (gx#stx-pair? _tl6468964717_)
                          (let ((_e6469464720_ (gx#syntax-e _tl6468964717_)))
                            (let ((_hd6469364724_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6469464720_)))
                                  (_tl6469264727_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6469464720_))))
                              (if (gx#stx-pair? _tl6469264727_)
                                  (let ((_e6469764730_
                                         (gx#syntax-e _tl6469264727_)))
                                    (let ((_hd6469664734_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6469764730_)))
                                          (_tl6469564737_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6469764730_))))
                                      (if (gx#stx-null? _tl6469564737_)
                                          ((lambda (_L64740_ _L64742_)
                                             (let ((__tmp69341
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp69328
                                                    (let ((__tmp69337
                                                           (let ((__tmp69340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'def))
                         (__tmp69338
                          (let ((__tmp69339
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64740_ '()))))
                            (declare (not safe))
                            (cons _L64742_ __tmp69339))))
                     (declare (not safe))
                     (cons __tmp69340 __tmp69338)))
                  (__tmp69329
                   (let ((__tmp69333
                          (let ((__tmp69336 (gx#datum->syntax '#f 'set!))
                                (__tmp69334
                                 (let ((__tmp69335
                                        (let ()
                                          (declare (not safe))
                                          (cons _L64742_ '()))))
                                   (declare (not safe))
                                   (cons _L64742_ __tmp69335))))
                            (declare (not safe))
                            (cons __tmp69336 __tmp69334)))
                         (__tmp69330
                          (let ((__tmp69331
                                 (let ((__tmp69332
                                        (gx#datum->syntax '#f 'void)))
                                   (declare (not safe))
                                   (cons __tmp69332 '()))))
                            (declare (not safe))
                            (cons __tmp69331 '()))))
                     (declare (not safe))
                     (cons __tmp69333 __tmp69330))))
              (declare (not safe))
              (cons __tmp69337 __tmp69329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69341 __tmp69328)))
                                           _hd6469664734_
                                           _hd6469364724_)
                                          (_g6468564703_ _g6468664707_))))
                                  (_g6468564703_ _g6468664707_))))
                          (_g6468564703_ _g6468664707_))))
                  (_g6468564703_ _g6468664707_)))))
      (_g6468464759_ _$stx64681_))))
