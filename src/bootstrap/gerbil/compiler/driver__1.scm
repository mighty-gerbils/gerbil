(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156233_)
      (let* ((_g156237156251_
              (lambda (_g156238156247_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156238156247_))))
             (_g156236156293_
              (lambda (_g156238156255_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156238156255_))
                    (let ((_e156242156258_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156238156255_))))
                      (let ((_hd156241156262_
                             (let ()
                               (declare (not safe))
                               (##car _e156242156258_)))
                            (_tl156240156265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156242156258_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156240156265_))
                            (let ((_e156245156268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156240156265_))))
                              (let ((_hd156244156272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156245156268_)))
                                    (_tl156243156275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156245156268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156243156275_))
                                    ((lambda (_L156278_)
                                       (let ((__tmp158034
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158027
                                              (let ((__tmp158033
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158028
                                                     (let ((__tmp158029
                                                            (let ((__tmp158032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158030
                           (let ((__tmp158031
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156278_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158031))))
                      (declare (not safe))
                      (cons __tmp158032 __tmp158030))))
               (declare (not safe))
               (cons __tmp158029 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158033
                                                      __tmp158028))))
                                         (declare (not safe))
                                         (cons __tmp158034 __tmp158027)))
                                     _hd156244156272_)
                                    (_g156237156251_ _g156238156255_))))
                            (_g156237156251_ _g156238156255_))))
                    (_g156237156251_ _g156238156255_)))))
        (_g156236156293_ _$stx156233_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156297_)
      (let* ((_g156301156315_
              (lambda (_g156302156311_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156302156311_))))
             (_g156300156356_
              (lambda (_g156302156319_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156302156319_))
                    (let ((_e156306156322_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156302156319_))))
                      (let ((_hd156305156326_
                             (let ()
                               (declare (not safe))
                               (##car _e156306156322_)))
                            (_tl156304156329_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156306156322_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156304156329_))
                            (let ((_e156309156332_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156304156329_))))
                              (let ((_hd156308156336_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156309156332_)))
                                    (_tl156307156339_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156309156332_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156307156339_))
                                    ((lambda (_L156342_)
                                       (let ((__tmp158040
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158035
                                              (let ((__tmp158036
                                                     (let ((__tmp158039
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158037
                                                            (let ((__tmp158038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156342_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158038))))
               (declare (not safe))
               (cons __tmp158039 __tmp158037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158036 '()))))
                                         (declare (not safe))
                                         (cons __tmp158040 __tmp158035)))
                                     _hd156308156336_)
                                    (_g156301156315_ _g156302156319_))))
                            (_g156301156315_ _g156302156319_))))
                    (_g156301156315_ _g156302156319_)))))
        (_g156300156356_ _$stx156297_)))))
