(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx155943_)
      (let* ((_g155947155961_
              (lambda (_g155948155957_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155948155957_))))
             (_g155946156003_
              (lambda (_g155948155965_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155948155965_))
                    (let ((_e155952155968_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155948155965_))))
                      (let ((_hd155951155972_
                             (let ()
                               (declare (not safe))
                               (##car _e155952155968_)))
                            (_tl155950155975_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155952155968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155950155975_))
                            (let ((_e155955155978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155950155975_))))
                              (let ((_hd155954155982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155955155978_)))
                                    (_tl155953155985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155955155978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155953155985_))
                                    ((lambda (_L155988_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'with-lock))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons '() (cons _L155988_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd155954155982_)
                                    (_g155947155961_ _g155948155965_))))
                            (_g155947155961_ _g155948155965_))))
                    (_g155947155961_ _g155948155965_)))))
        (_g155946156003_ _$stx155943_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx156007_)
      (let* ((_g156011156025_
              (lambda (_g156012156021_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156012156021_))))
             (_g156010156066_
              (lambda (_g156012156029_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156012156029_))
                    (let ((_e156016156032_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156012156029_))))
                      (let ((_hd156015156036_
                             (let ()
                               (declare (not safe))
                               (##car _e156016156032_)))
                            (_tl156014156039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156016156032_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156014156039_))
                            (let ((_e156019156042_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156014156039_))))
                              (let ((_hd156018156046_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156019156042_)))
                                    (_tl156017156049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156019156042_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156017156049_))
                                    ((lambda (_L156052_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'spawn))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'lambda))
                                                         (cons '()
                                                               (cons _L156052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _hd156018156046_)
                                    (_g156011156025_ _g156012156029_))))
                            (_g156011156025_ _g156012156029_))))
                    (_g156011156025_ _g156012156029_)))))
        (_g156010156066_ _$stx156007_)))))
