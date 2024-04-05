(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712299480)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52218%_)
      (let ((_%$e52220%_
             (let ((__obj80548 _%klass52218%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj80548
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj80548 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj80548
                    'precedence-list)))))
        (if _%$e52220%_
            _%$e52220%_
            (let ((_g80600_
                   (c4-linearize
                    '()
                    (let ((__obj80549 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80549
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80549 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80549
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52224%_)
                      (cons _%klass-id52224%_
                            (let ((__tmp80602
                                   (gx#syntax-local-value _%klass-id52224%_)))
                              (declare (not safe))
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               __tmp80602))))
                    'struct:
                    (lambda (_%klass-id52226%_)
                      (let ((__obj80550
                             (gx#syntax-local-value _%klass-id52226%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80550
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80550
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80550
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g80601_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g80600_)
                             (##vector-length _g80600_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g80601_ 2)))
                      (error "Context expects 2 values" _g80601_)))
                (let ((_%precedence-list52228%_
                       (let () (declare (not safe)) (##vector-ref _g80600_ 0)))
                      (_%base-struct52229%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g80600_ 1))))
                  (let ((_%precedence-list52273%_
                         (if (let ((__tmp80603
                                    (let ((__obj80551 _%klass52218%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj80551
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj80551
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj80551
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp80603 '(t object class)))
                             (let () _%precedence-list52228%_)
                             (if (member ':object
                                         _%precedence-list52228%_
                                         gx#free-identifier=?)
                                 (let () _%precedence-list52228%_)
                                 (if (let ((__obj80552 _%klass52218%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj80552
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj80552
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj80552
                                            'system?)))
                                     (let ()
                                       (if (member ':t
                                                   _%precedence-list52228%_
                                                   gx#free-identifier=?)
                                           _%precedence-list52228%_
                                           (let ((__tmp80604
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list52228%_
                                              __tmp80604))))
                                     (let _%loop52235%_ ((_%tail52237%_
                                                          _%precedence-list52228%_)
                                                         (_%head52238%_ '()))
                                       (let* ((_%tail5223952247%_
                                               _%tail52237%_)
                                              (_%else5224152255%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5224352261%_
                                               (lambda (_%rest52258%_
                                                        _%hd52259%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52259%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52237%_)
                    _%head52238%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp80605
                                                            (cons _%hd52259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%head52238%_)))
               (declare (not safe))
               (_%loop52235%_ _%rest52258%_ __tmp80605))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5223952247%_))
                                             (let ((_%hd5224452264%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5223952247%_)))
                                                   (_%tl5224552266%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5223952247%_))))
                                               (let* ((_%hd52269%_
                                                       _%hd5224452264%_)
                                                      (_%rest52271%_
                                                       _%tl5224552266%_))
                                                 (declare (not safe))
                                                 (_%K5224352261%_
                                                  _%rest52271%_
                                                  _%hd52269%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%else5224152255%_))))))))))
                    (let ((__obj80553 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80553
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj80553
                             _%precedence-list52273%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80553
                           'precedence-list
                           _%precedence-list52273%_)))
                    _%precedence-list52273%_)))))))))
