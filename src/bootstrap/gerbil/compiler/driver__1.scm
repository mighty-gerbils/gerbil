(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx156222_)
      (let* ((_g156226156240_
              (lambda (_g156227156236_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156227156236_))))
             (_g156225156282_
              (lambda (_g156227156244_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156227156244_))
                    (let ((_e156231156247_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156227156244_))))
                      (let ((_hd156230156251_
                             (let ()
                               (declare (not safe))
                               (##car _e156231156247_)))
                            (_tl156229156254_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156231156247_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156229156254_))
                            (let ((_e156234156257_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156229156254_))))
                              (let ((_hd156233156261_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156234156257_)))
                                    (_tl156232156264_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156234156257_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156232156264_))
                                    ((lambda (_L156267_)
                                       (let ((__tmp158023
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp158016
                                              (let ((__tmp158022
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp158017
                                                     (let ((__tmp158018
                                                            (let ((__tmp158021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp158019
                           (let ((__tmp158020
                                  (let ()
                                    (declare (not safe))
                                    (cons _L156267_ '()))))
                             (declare (not safe))
                             (cons '() __tmp158020))))
                      (declare (not safe))
                      (cons __tmp158021 __tmp158019))))
               (declare (not safe))
               (cons __tmp158018 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158022
                                                      __tmp158017))))
                                         (declare (not safe))
                                         (cons __tmp158023 __tmp158016)))
                                     _hd156233156261_)
                                    (_g156226156240_ _g156227156244_))))
                            (_g156226156240_ _g156227156244_))))
                    (_g156226156240_ _g156227156244_)))))
        (_g156225156282_ _$stx156222_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156286_)
      (let* ((_g156290156304_
              (lambda (_g156291156300_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156291156300_))))
             (_g156289156345_
              (lambda (_g156291156308_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156291156308_))
                    (let ((_e156295156311_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156291156308_))))
                      (let ((_hd156294156315_
                             (let ()
                               (declare (not safe))
                               (##car _e156295156311_)))
                            (_tl156293156318_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156295156311_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156293156318_))
                            (let ((_e156298156321_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156293156318_))))
                              (let ((_hd156297156325_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156298156321_)))
                                    (_tl156296156328_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156298156321_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156296156328_))
                                    ((lambda (_L156331_)
                                       (let ((__tmp158029
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp158024
                                              (let ((__tmp158025
                                                     (let ((__tmp158028
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp158026
                                                            (let ((__tmp158027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L156331_ '()))))
                      (declare (not safe))
                      (cons '() __tmp158027))))
               (declare (not safe))
               (cons __tmp158028 __tmp158026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158025 '()))))
                                         (declare (not safe))
                                         (cons __tmp158029 __tmp158024)))
                                     _hd156297156325_)
                                    (_g156290156304_ _g156291156308_))))
                            (_g156290156304_ _g156291156308_))))
                    (_g156290156304_ _g156291156308_)))))
        (_g156289156345_ _$stx156286_)))))
