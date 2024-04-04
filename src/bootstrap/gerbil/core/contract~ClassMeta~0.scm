(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712256083)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52218%_)
      (let ((_%$e52220%_
             (let ((__obj80571 _%klass52218%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj80571
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj80571 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj80571
                    'precedence-list)))))
        (if _%$e52220%_
            _%$e52220%_
            (let ((_g80623_
                   (c4-linearize
                    '()
                    (let ((__obj80572 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80572
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80572 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80572
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52224%_)
                      (cons _%klass-id52224%_
                            (let ((__tmp80625
                                   (gx#syntax-local-value _%klass-id52224%_)))
                              (declare (not safe))
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               __tmp80625))))
                    'struct:
                    (lambda (_%klass-id52226%_)
                      (let ((__obj80573
                             (gx#syntax-local-value _%klass-id52226%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj80573
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj80573
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj80573
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g80624_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g80623_)
                             (##vector-length _g80623_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g80624_ 2)))
                      (error "Context expects 2 values" _g80624_)))
                (let ((_%precedence-list52228%_
                       (let () (declare (not safe)) (##vector-ref _g80623_ 0)))
                      (_%base-struct52229%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g80623_ 1))))
                  (let ((_%precedence-list52273%_
                         (if (let ((__tmp80626
                                    (let ((__obj80574 _%klass52218%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj80574
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj80574
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj80574
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp80626 '(t object class)))
                             (let () _%precedence-list52228%_)
                             (if (member ':object
                                         _%precedence-list52228%_
                                         gx#free-identifier=?)
                                 (let () _%precedence-list52228%_)
                                 (if (let ((__obj80575 _%klass52218%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj80575
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj80575
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj80575
                                            'system?)))
                                     (let ()
                                       (if (member ':t
                                                   _%precedence-list52228%_
                                                   gx#free-identifier=?)
                                           _%precedence-list52228%_
                                           (let ((__tmp80627
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list52228%_
                                              __tmp80627))))
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
                                                     (let ((__tmp80628
                                                            (cons _%hd52259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%head52238%_)))
               (declare (not safe))
               (_%loop52235%_ _%rest52258%_ __tmp80628))))))
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
                    (let ((__obj80576 _%klass52218%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80576
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj80576
                             _%precedence-list52273%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80576
                           'precedence-list
                           _%precedence-list52273%_)))
                    _%precedence-list52273%_)))))))))
