(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx291740_)
      (let* ((_g291744291758_
              (lambda (_g291745291754_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291745291754_))))
             (_g291743291800_
              (lambda (_g291745291762_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291745291762_))
                    (let ((_e291749291765_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291745291762_))))
                      (let ((_hd291748291769_
                             (let ()
                               (declare (not safe))
                               (##car _e291749291765_)))
                            (_tl291747291772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291749291765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291747291772_))
                            (let ((_e291752291775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291747291772_))))
                              (let ((_hd291751291779_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291752291775_)))
                                    (_tl291750291782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291752291775_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291750291782_))
                                    ((lambda (_L291785_)
                                       (let ((__tmp298105
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp298098
                                              (let ((__tmp298104
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp298099
                                                     (let ((__tmp298100
                                                            (let ((__tmp298103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp298101
                           (let ((__tmp298102
                                  (let ()
                                    (declare (not safe))
                                    (cons _L291785_ '()))))
                             (declare (not safe))
                             (cons '() __tmp298102))))
                      (declare (not safe))
                      (cons __tmp298103 __tmp298101))))
               (declare (not safe))
               (cons __tmp298100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298104
                                                      __tmp298099))))
                                         (declare (not safe))
                                         (cons __tmp298105 __tmp298098)))
                                     _hd291751291779_)
                                    (_g291744291758_ _g291745291762_))))
                            (_g291744291758_ _g291745291762_))))
                    (_g291744291758_ _g291745291762_)))))
        (_g291743291800_ _$stx291740_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx291804_)
      (let* ((_g291808291822_
              (lambda (_g291809291818_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291809291818_))))
             (_g291807291863_
              (lambda (_g291809291826_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291809291826_))
                    (let ((_e291813291829_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291809291826_))))
                      (let ((_hd291812291833_
                             (let ()
                               (declare (not safe))
                               (##car _e291813291829_)))
                            (_tl291811291836_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291813291829_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291811291836_))
                            (let ((_e291816291839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291811291836_))))
                              (let ((_hd291815291843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291816291839_)))
                                    (_tl291814291846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291816291839_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291814291846_))
                                    ((lambda (_L291849_)
                                       (let ((__tmp298111
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp298106
                                              (let ((__tmp298107
                                                     (let ((__tmp298110
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp298108
                                                            (let ((__tmp298109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L291849_ '()))))
                      (declare (not safe))
                      (cons '() __tmp298109))))
               (declare (not safe))
               (cons __tmp298110 __tmp298108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298107 '()))))
                                         (declare (not safe))
                                         (cons __tmp298111 __tmp298106)))
                                     _hd291815291843_)
                                    (_g291808291822_ _g291809291826_))))
                            (_g291808291822_ _g291809291826_))))
                    (_g291808291822_ _g291809291826_)))))
        (_g291807291863_ _$stx291804_)))))
