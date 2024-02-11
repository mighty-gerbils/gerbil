(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx286915_)
      (let* ((_g286919286933_
              (lambda (_g286920286929_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286920286929_))))
             (_g286918286975_
              (lambda (_g286920286937_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286920286937_))
                    (let ((_e286924286940_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286920286937_))))
                      (let ((_hd286923286944_
                             (let ()
                               (declare (not safe))
                               (##car _e286924286940_)))
                            (_tl286922286947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286924286940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286922286947_))
                            (let ((_e286927286950_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286922286947_))))
                              (let ((_hd286926286954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286927286950_)))
                                    (_tl286925286957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286927286950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl286925286957_))
                                    ((lambda (_L286960_)
                                       (let ((__tmp293180
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp293173
                                              (let ((__tmp293179
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp293174
                                                     (let ((__tmp293175
                                                            (let ((__tmp293178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp293176
                           (let ((__tmp293177
                                  (let ()
                                    (declare (not safe))
                                    (cons _L286960_ '()))))
                             (declare (not safe))
                             (cons '() __tmp293177))))
                      (declare (not safe))
                      (cons __tmp293178 __tmp293176))))
               (declare (not safe))
               (cons __tmp293175 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293179
                                                      __tmp293174))))
                                         (declare (not safe))
                                         (cons __tmp293180 __tmp293173)))
                                     _hd286926286954_)
                                    (_g286919286933_ _g286920286937_))))
                            (_g286919286933_ _g286920286937_))))
                    (_g286919286933_ _g286920286937_)))))
        (_g286918286975_ _$stx286915_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx286979_)
      (let* ((_g286983286997_
              (lambda (_g286984286993_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286984286993_))))
             (_g286982287038_
              (lambda (_g286984287001_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286984287001_))
                    (let ((_e286988287004_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286984287001_))))
                      (let ((_hd286987287008_
                             (let ()
                               (declare (not safe))
                               (##car _e286988287004_)))
                            (_tl286986287011_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286988287004_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286986287011_))
                            (let ((_e286991287014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286986287011_))))
                              (let ((_hd286990287018_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286991287014_)))
                                    (_tl286989287021_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286991287014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl286989287021_))
                                    ((lambda (_L287024_)
                                       (let ((__tmp293186
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp293181
                                              (let ((__tmp293182
                                                     (let ((__tmp293185
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp293183
                                                            (let ((__tmp293184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L287024_ '()))))
                      (declare (not safe))
                      (cons '() __tmp293184))))
               (declare (not safe))
               (cons __tmp293185 __tmp293183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293182 '()))))
                                         (declare (not safe))
                                         (cons __tmp293186 __tmp293181)))
                                     _hd286990287018_)
                                    (_g286983286997_ _g286984287001_))))
                            (_g286983286997_ _g286984287001_))))
                    (_g286983286997_ _g286984287001_)))))
        (_g286982287038_ _$stx286979_)))))
