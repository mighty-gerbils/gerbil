(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx291744_)
      (let* ((_g291748291762_
              (lambda (_g291749291758_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291749291758_))))
             (_g291747291804_
              (lambda (_g291749291766_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291749291766_))
                    (let ((_e291753291769_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291749291766_))))
                      (let ((_hd291752291773_
                             (let ()
                               (declare (not safe))
                               (##car _e291753291769_)))
                            (_tl291751291776_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291753291769_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291751291776_))
                            (let ((_e291756291779_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291751291776_))))
                              (let ((_hd291755291783_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291756291779_)))
                                    (_tl291754291786_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291756291779_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291754291786_))
                                    ((lambda (_L291789_)
                                       (let ((__tmp298109
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp298102
                                              (let ((__tmp298108
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp298103
                                                     (let ((__tmp298104
                                                            (let ((__tmp298107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp298105
                           (let ((__tmp298106
                                  (let ()
                                    (declare (not safe))
                                    (cons _L291789_ '()))))
                             (declare (not safe))
                             (cons '() __tmp298106))))
                      (declare (not safe))
                      (cons __tmp298107 __tmp298105))))
               (declare (not safe))
               (cons __tmp298104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298108
                                                      __tmp298103))))
                                         (declare (not safe))
                                         (cons __tmp298109 __tmp298102)))
                                     _hd291755291783_)
                                    (_g291748291762_ _g291749291766_))))
                            (_g291748291762_ _g291749291766_))))
                    (_g291748291762_ _g291749291766_)))))
        (_g291747291804_ _$stx291744_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx291808_)
      (let* ((_g291812291826_
              (lambda (_g291813291822_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g291813291822_))))
             (_g291811291867_
              (lambda (_g291813291830_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g291813291830_))
                    (let ((_e291817291833_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g291813291830_))))
                      (let ((_hd291816291837_
                             (let ()
                               (declare (not safe))
                               (##car _e291817291833_)))
                            (_tl291815291840_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291817291833_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291815291840_))
                            (let ((_e291820291843_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl291815291840_))))
                              (let ((_hd291819291847_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291820291843_)))
                                    (_tl291818291850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291820291843_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl291818291850_))
                                    ((lambda (_L291853_)
                                       (let ((__tmp298115
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp298110
                                              (let ((__tmp298111
                                                     (let ((__tmp298114
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp298112
                                                            (let ((__tmp298113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L291853_ '()))))
                      (declare (not safe))
                      (cons '() __tmp298113))))
               (declare (not safe))
               (cons __tmp298114 __tmp298112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298111 '()))))
                                         (declare (not safe))
                                         (cons __tmp298115 __tmp298110)))
                                     _hd291819291847_)
                                    (_g291812291826_ _g291813291830_))))
                            (_g291812291826_ _g291813291830_))))
                    (_g291812291826_ _g291813291830_)))))
        (_g291811291867_ _$stx291808_)))))
