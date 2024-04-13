(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1713000273)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52329%_)
      (let ((_%$e52331%_
             (let ((__obj82476 _%klass52329%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj82476
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj82476 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj82476
                    'precedence-list)))))
        (if _%$e52331%_
            _%$e52331%_
            (let ((_g82523_
                   (c4-linearize
                    '()
                    (let ((__obj82477 _%klass52329%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82477
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82477 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82477
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52335%_)
                      (cons _%klass-id52335%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52335%_))))
                    'struct:
                    (lambda (_%klass-id52337%_)
                      (let ((__obj82478
                             (gx#syntax-local-value _%klass-id52337%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82478
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82478
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj82478
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g82524_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g82523_)
                             (##vector-length _g82523_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g82524_ 2)))
                      (error "Context expects 2 values" _g82524_)))
                (let ((_%precedence-list52339%_
                       (let () (declare (not safe)) (##vector-ref _g82523_ 0)))
                      (_%base-struct52340%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g82523_ 1))))
                  (let ((_%precedence-list52384%_
                         (if (let ((__tmp82525
                                    (let ((__obj82479 _%klass52329%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj82479
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj82479
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj82479
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp82525 '(t object class)))
                             _%precedence-list52339%_
                             (if (member ':object
                                         _%precedence-list52339%_
                                         gx#free-identifier=?)
                                 _%precedence-list52339%_
                                 (if (let ((__obj82480 _%klass52329%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj82480
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj82480
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj82480
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52339%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52339%_
                                         (let ((__tmp82526
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52339%_
                                            __tmp82526)))
                                     (let _%loop52346%_ ((_%tail52348%_
                                                          _%precedence-list52339%_)
                                                         (_%head52349%_ '()))
                                       (let* ((_%tail5235052358%_
                                               _%tail52348%_)
                                              (_%else5235252366%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5235452372%_
                                               (lambda (_%rest52369%_
                                                        _%hd52370%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52370%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52348%_)
                    _%head52349%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52346%_
                                                      _%rest52369%_
                                                      (cons _%hd52370%_
                                                            _%head52349%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5235052358%_))
                                             (let ((_%hd5235552375%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5235052358%_)))
                                                   (_%tl5235652377%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5235052358%_))))
                                               (let* ((_%hd52380%_
                                                       _%hd5235552375%_)
                                                      (_%rest52382%_
                                                       _%tl5235652377%_))
                                                 (_%K5235452372%_
                                                  _%rest52382%_
                                                  _%hd52380%_)))
                                             (_%else5235252366%_)))))))))
                    (let ((__obj82481 _%klass52329%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82481
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj82481
                             _%precedence-list52384%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82481
                           'precedence-list
                           _%precedence-list52384%_)))
                    _%precedence-list52384%_)))))))))
