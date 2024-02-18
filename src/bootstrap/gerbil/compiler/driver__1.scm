(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx294809_)
      (let* ((_g294813294827_
              (lambda (_g294814294823_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294814294823_))))
             (_g294812294869_
              (lambda (_g294814294831_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294814294831_))
                    (let ((_e294816294834_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294814294831_))))
                      (let ((_hd294817294838_
                             (let ()
                               (declare (not safe))
                               (##car _e294816294834_)))
                            (_tl294818294841_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294816294834_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294818294841_))
                            (let ((_e294819294844_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294818294841_))))
                              (let ((_hd294820294848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294819294844_)))
                                    (_tl294821294851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294819294844_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294821294851_))
                                    ((lambda (_L294854_)
                                       (let ((__tmp300677
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp300670
                                              (let ((__tmp300676
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp300671
                                                     (let ((__tmp300672
                                                            (let ((__tmp300675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp300673
                           (let ((__tmp300674
                                  (let ()
                                    (declare (not safe))
                                    (cons _L294854_ '()))))
                             (declare (not safe))
                             (cons '() __tmp300674))))
                      (declare (not safe))
                      (cons __tmp300675 __tmp300673))))
               (declare (not safe))
               (cons __tmp300672 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300676
                                                      __tmp300671))))
                                         (declare (not safe))
                                         (cons __tmp300677 __tmp300670)))
                                     _hd294820294848_)
                                    (_g294813294827_ _g294814294831_))))
                            (_g294813294827_ _g294814294831_))))
                    (_g294813294827_ _g294814294831_)))))
        (_g294812294869_ _$stx294809_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx294873_)
      (let* ((_g294877294891_
              (lambda (_g294878294887_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294878294887_))))
             (_g294876294932_
              (lambda (_g294878294895_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294878294895_))
                    (let ((_e294880294898_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294878294895_))))
                      (let ((_hd294881294902_
                             (let ()
                               (declare (not safe))
                               (##car _e294880294898_)))
                            (_tl294882294905_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294880294898_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294882294905_))
                            (let ((_e294883294908_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294882294905_))))
                              (let ((_hd294884294912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294883294908_)))
                                    (_tl294885294915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294883294908_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294885294915_))
                                    ((lambda (_L294918_)
                                       (let ((__tmp300683
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp300678
                                              (let ((__tmp300679
                                                     (let ((__tmp300682
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp300680
                                                            (let ((__tmp300681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L294918_ '()))))
                      (declare (not safe))
                      (cons '() __tmp300681))))
               (declare (not safe))
               (cons __tmp300682 __tmp300680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300679 '()))))
                                         (declare (not safe))
                                         (cons __tmp300683 __tmp300678)))
                                     _hd294884294912_)
                                    (_g294877294891_ _g294878294895_))))
                            (_g294877294891_ _g294878294895_))))
                    (_g294877294891_ _g294878294895_)))))
        (_g294876294932_ _$stx294873_)))))
