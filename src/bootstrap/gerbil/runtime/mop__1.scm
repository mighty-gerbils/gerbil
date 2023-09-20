(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx2535_)
    (let* ((_g25392565_
            (lambda (_g25402561_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g25402561_)))
           (_g25382649_
            (lambda (_g25402569_)
              (if (gx#stx-pair? _g25402569_)
                  (let ((_e25452572_ (gx#syntax-e _g25402569_)))
                    (let ((_hd25462576_
                           (let () (declare (not safe)) (##car _e25452572_)))
                          (_tl25472579_
                           (let () (declare (not safe)) (##cdr _e25452572_))))
                      (if (gx#stx-pair? _tl25472579_)
                          (let ((_e25482582_ (gx#syntax-e _tl25472579_)))
                            (let ((_hd25492586_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e25482582_)))
                                  (_tl25502589_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e25482582_))))
                              (if (gx#stx-pair? _tl25502589_)
                                  (let ((_e25512592_
                                         (gx#syntax-e _tl25502589_)))
                                    (let ((_hd25522596_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e25512592_)))
                                          (_tl25532599_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e25512592_))))
                                      (if (gx#stx-pair? _tl25532599_)
                                          (let ((_e25542602_
                                                 (gx#syntax-e _tl25532599_)))
                                            (let ((_hd25552606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e25542602_)))
                                                  (_tl25562609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e25542602_))))
                                              (if (gx#stx-pair? _tl25562609_)
                                                  (let ((_e25572612_
                                                         (gx#syntax-e
                                                          _tl25562609_)))
                                                    (let ((_hd25582616_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e25572612_)))
                                                          (_tl25592619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e25572612_))))
                                                      (if (gx#stx-null?
                                                           _tl25592619_)
                                                          ((lambda (_L2622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L2624_
                            _L2625_
                            _L2626_)
                     (cons (gx#datum->syntax '#f 'if)
                           (cons (cons (gx#datum->syntax '#f 'object?)
                                       (cons _L2626_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'klass)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'object-type)
                             (cons _L2626_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'and)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'type-descriptor?)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'klass)
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'class-slot-offset)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'klass)
                         (cons _L2625_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _L2624_ '())))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons _L2622_
                                                     (cons _L2626_
                                                           (cons _L2625_ '())))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons _L2622_
                                                   (cons _L2626_
                                                         (cons _L2625_ '())))
                                             '())))))
                   _hd25582616_
                   _hd25552606_
                   _hd25522596_
                   _hd25492586_)
                  (_g25392565_ _g25402569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g25392565_ _g25402569_))))
                                          (_g25392565_ _g25402569_))))
                                  (_g25392565_ _g25402569_))))
                          (_g25392565_ _g25402569_))))
                  (_g25392565_ _g25402569_)))))
      (_g25382649_ _$stx2535_))))
