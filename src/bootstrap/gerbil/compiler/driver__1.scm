(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_$stx158529_)
      (let* ((_g158533158547_
              (lambda (_g158534158543_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158534158543_))))
             (_g158532158589_
              (lambda (_g158534158551_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158534158551_))
                    (let ((_e158538158554_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158534158551_))))
                      (let ((_hd158537158558_
                             (let ()
                               (declare (not safe))
                               (##car _e158538158554_)))
                            (_tl158536158561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158538158554_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158536158561_))
                            (let ((_e158541158564_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158536158561_))))
                              (let ((_hd158540158568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158541158564_)))
                                    (_tl158539158571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158541158564_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158539158571_))
                                    ((lambda (_L158574_)
                                       (let ((__tmp160327
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'with-lock)))
                                             (__tmp160320
                                              (let ((__tmp160326
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+driver-mutex+)))
                                                    (__tmp160321
                                                     (let ((__tmp160322
                                                            (let ((__tmp160325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'lambda)))
                          (__tmp160323
                           (let ((__tmp160324
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158574_ '()))))
                             (declare (not safe))
                             (cons '() __tmp160324))))
                      (declare (not safe))
                      (cons __tmp160325 __tmp160323))))
               (declare (not safe))
               (cons __tmp160322 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160326
                                                      __tmp160321))))
                                         (declare (not safe))
                                         (cons __tmp160327 __tmp160320)))
                                     _hd158540158568_)
                                    (_g158533158547_ _g158534158551_))))
                            (_g158533158547_ _g158534158551_))))
                    (_g158533158547_ _g158534158551_)))))
        (_g158532158589_ _$stx158529_))))
  (define |gxc[:0:]#go!|
    (lambda (_$stx158593_)
      (let* ((_g158597158611_
              (lambda (_g158598158607_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158598158607_))))
             (_g158596158652_
              (lambda (_g158598158615_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158598158615_))
                    (let ((_e158602158618_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158598158615_))))
                      (let ((_hd158601158622_
                             (let ()
                               (declare (not safe))
                               (##car _e158602158618_)))
                            (_tl158600158625_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158602158618_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158600158625_))
                            (let ((_e158605158628_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158600158625_))))
                              (let ((_hd158604158632_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158605158628_)))
                                    (_tl158603158635_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158605158628_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158603158635_))
                                    ((lambda (_L158638_)
                                       (let ((__tmp160333
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'spawn)))
                                             (__tmp160328
                                              (let ((__tmp160329
                                                     (let ((__tmp160332
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'lambda)))
                                                           (__tmp160330
                                                            (let ((__tmp160331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L158638_ '()))))
                      (declare (not safe))
                      (cons '() __tmp160331))))
               (declare (not safe))
               (cons __tmp160332 __tmp160330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160329 '()))))
                                         (declare (not safe))
                                         (cons __tmp160333 __tmp160328)))
                                     _hd158604158632_)
                                    (_g158597158611_ _g158598158615_))))
                            (_g158597158611_ _g158598158615_))))
                    (_g158597158611_ _g158598158615_)))))
        (_g158596158652_ _$stx158593_)))))
