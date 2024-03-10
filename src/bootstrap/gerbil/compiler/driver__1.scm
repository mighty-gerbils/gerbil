(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156219_)
      (let* ((_g156223156237_
              (lambda (_g156224156233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156224156233_))))
             (_g156222156279_
              (lambda (_g156224156241_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156224156241_))
                    (let ((_e156228156244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156224156241_))))
                      (let ((_hd156227156248_
                             (let ()
                               (declare (not safe))
                               (##car _e156228156244_)))
                            (_tl156226156251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156228156244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156226156251_))
                            (let ((_e156231156254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156226156251_))))
                              (let ((_hd156230156258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156231156254_)))
                                    (_tl156229156261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156231156254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156229156261_))
                                    ((lambda (_L156264_)
                                       (let ((__tmp158017
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158010
                                              (let ((__tmp158016
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158011
                                                     (let ((__tmp158012
                                                            (let ((__tmp158015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158013
                           (let ((__tmp158014
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156264_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158014))))
                      (declare (not safe))
                      (cons __tmp158015 __tmp158013))))
               (declare (not safe))
               (cons __tmp158012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158016
                                                      __tmp158011))))
                                         (declare (not safe))
                                         (cons __tmp158017 __tmp158010)))
                                     _hd156230156258_)
                                    (_g156223156237_ _g156224156241_))))
                            (_g156223156237_ _g156224156241_))))
                    (_g156223156237_ _g156224156241_)))))
        (_g156222156279_ _$stx156219_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156283_)
      (let* ((_g156287156301_
              (lambda (_g156288156297_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156288156297_))))
             (_g156286156342_
              (lambda (_g156288156305_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156288156305_))
                    (let ((_e156292156308_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156288156305_))))
                      (let ((_hd156291156312_
                             (let ()
                               (declare (not safe))
                               (##car _e156292156308_)))
                            (_tl156290156315_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156292156308_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156290156315_))
                            (let ((_e156295156318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156290156315_))))
                              (let ((_hd156294156322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156295156318_)))
                                    (_tl156293156325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156295156318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156293156325_))
                                    ((lambda (_L156328_)
                                       (let ((__tmp158023
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158018
                                              (let ((__tmp158019
                                                     (let ((__tmp158022
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158020
                                                            (let ((__tmp158021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156328_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158021))))
               (declare (not safe))
               (cons __tmp158022 __tmp158020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158019 '()))))
                                         (declare (not safe))
                                         (cons __tmp158023 __tmp158018)))
                                     _hd156294156322_)
                                    (_g156287156301_ _g156288156305_))))
                            (_g156287156301_ _g156288156305_))))
                    (_g156287156301_ _g156288156305_)))))
        (_g156286156342_ _$stx156283_)))))
