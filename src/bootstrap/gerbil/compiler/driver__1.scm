(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx291745_)
      (let* ((_g291749291763_
              (lambda (_g291750291759_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291750291759_))))
             (_g291748291805_
              (lambda (_g291750291767_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291750291767_))
                    (let ((_e291754291770_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291750291767_))))
                      (let ((_hd291753291774_
                             (let ()
                               (declare (not safe))
                               (##car _e291754291770_)))
                            (_tl291752291777_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291754291770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291752291777_))
                            (let ((_e291757291780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291752291777_))))
                              (let ((_hd291756291784_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291757291780_)))
                                    (_tl291755291787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291757291780_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291755291787_))
                                    ((lambda (_L291790_)
                                       (let ((__tmp298114
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp298107
                                              (let ((__tmp298113
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp298108
                                                     (let ((__tmp298109
                                                            (let ((__tmp298112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp298110
                           (let ((__tmp298111
                                  (let ()
                                    (declare (not safe))
                                    (cons _L291790_ '()))))
                             (declare (not safe))
                             (cons '() __tmp298111))))
                      (declare (not safe))
                      (cons __tmp298112 __tmp298110))))
               (declare (not safe))
               (cons __tmp298109 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298113
                                                      __tmp298108))))
                                         (declare (not safe))
                                         (cons __tmp298114 __tmp298107)))
                                     _hd291756291784_)
                                    (_g291749291763_ _g291750291767_))))
                            (_g291749291763_ _g291750291767_))))
                    (_g291749291763_ _g291750291767_)))))
        (_g291748291805_ _$stx291745_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx291809_)
      (let* ((_g291813291827_
              (lambda (_g291814291823_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291814291823_))))
             (_g291812291868_
              (lambda (_g291814291831_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291814291831_))
                    (let ((_e291818291834_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291814291831_))))
                      (let ((_hd291817291838_
                             (let ()
                               (declare (not safe))
                               (##car _e291818291834_)))
                            (_tl291816291841_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291818291834_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291816291841_))
                            (let ((_e291821291844_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291816291841_))))
                              (let ((_hd291820291848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291821291844_)))
                                    (_tl291819291851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291821291844_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291819291851_))
                                    ((lambda (_L291854_)
                                       (let ((__tmp298120
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp298115
                                              (let ((__tmp298116
                                                     (let ((__tmp298119
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp298117
                                                            (let ((__tmp298118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L291854_ '()))))
                      (declare (not safe))
                      (cons '() __tmp298118))))
               (declare (not safe))
               (cons __tmp298119 __tmp298117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298116 '()))))
                                         (declare (not safe))
                                         (cons __tmp298120 __tmp298115)))
                                     _hd291820291848_)
                                    (_g291813291827_ _g291814291831_))))
                            (_g291813291827_ _g291814291831_))))
                    (_g291813291827_ _g291814291831_)))))
        (_g291812291868_ _$stx291809_)))))
