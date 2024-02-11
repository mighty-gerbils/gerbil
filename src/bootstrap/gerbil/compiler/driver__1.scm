(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx287269_)
      (let* ((_g287273287287_
              (lambda (_g287274287283_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287274287283_))))
             (_g287272287329_
              (lambda (_g287274287291_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287274287291_))
                    (let ((_e287278287294_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287274287291_))))
                      (let ((_hd287277287298_
                             (let ()
                               (declare (not safe))
                               (##car _e287278287294_)))
                            (_tl287276287301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287278287294_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287276287301_))
                            (let ((_e287281287304_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287276287301_))))
                              (let ((_hd287280287308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287281287304_)))
                                    (_tl287279287311_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287281287304_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287279287311_))
                                    ((lambda (_L287314_)
                                       (let ((__tmp293566
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293559
                                              (let ((__tmp293565
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293560
                                                     (let ((__tmp293561
                                                            (let ((__tmp293564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293562
                           (let ((__tmp293563
                                  (let ()
                                    (declare (not safe))
                                    (cons _L287314_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293563))))
                      (declare (not safe))
                      (cons __tmp293564 __tmp293562))))
               (declare (not safe))
               (cons __tmp293561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293565
                                                      __tmp293560))))
                                         (declare (not safe))
                                         (cons __tmp293566 __tmp293559)))
                                     _hd287280287308_)
                                    (_g287273287287_ _g287274287291_))))
                            (_g287273287287_ _g287274287291_))))
                    (_g287273287287_ _g287274287291_)))))
        (_g287272287329_ _$stx287269_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx287333_)
      (let* ((_g287337287351_
              (lambda (_g287338287347_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287338287347_))))
             (_g287336287392_
              (lambda (_g287338287355_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287338287355_))
                    (let ((_e287342287358_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287338287355_))))
                      (let ((_hd287341287362_
                             (let ()
                               (declare (not safe))
                               (##car _e287342287358_)))
                            (_tl287340287365_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287342287358_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287340287365_))
                            (let ((_e287345287368_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287340287365_))))
                              (let ((_hd287344287372_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287345287368_)))
                                    (_tl287343287375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287345287368_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287343287375_))
                                    ((lambda (_L287378_)
                                       (let ((__tmp293572
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293567
                                              (let ((__tmp293568
                                                     (let ((__tmp293571
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293569
                                                            (let ((__tmp293570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287378_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293570))))
               (declare (not safe))
               (cons __tmp293571 __tmp293569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293568 '()))))
                                         (declare (not safe))
                                         (cons __tmp293572 __tmp293567)))
                                     _hd287344287372_)
                                    (_g287337287351_ _g287338287355_))))
                            (_g287337287351_ _g287338287355_))))
                    (_g287337287351_ _g287338287355_)))))
        (_g287336287392_ _$stx287333_)))))
