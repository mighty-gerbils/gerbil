(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1733870069)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52363%_)
      (let ((_%$e52365%_
             (let ((__obj83916 _%klass52363%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj83916
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj83916 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj83916
                    'precedence-list)))))
        (if _%$e52365%_
            _%$e52365%_
            (let ((_g83963_
                   (c4-linearize
                    '()
                    (let ((__obj83917 _%klass52363%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83917
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83917 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83917
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52369%_)
                      (cons _%klass-id52369%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52369%_))))
                    'struct:
                    (lambda (_%klass-id52371%_)
                      (let ((__obj83918
                             (gx#syntax-local-value _%klass-id52371%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj83918
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj83918
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj83918
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g83964_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g83963_)
                             (##vector-length _g83963_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g83964_ 2)))
                      (error "Context expects 2 values" _g83964_)))
                (let ((_%precedence-list52373%_
                       (let () (declare (not safe)) (##vector-ref _g83963_ 0)))
                      (_%base-struct52374%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g83963_ 1))))
                  (let ((_%precedence-list52418%_
                         (if (let ((__tmp83965
                                    (let ((__obj83919 _%klass52363%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj83919
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj83919
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj83919
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp83965 '(t object class)))
                             _%precedence-list52373%_
                             (if (member ':object
                                         _%precedence-list52373%_
                                         gx#free-identifier=?)
                                 _%precedence-list52373%_
                                 (if (let ((__obj83920 _%klass52363%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj83920
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj83920
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj83920
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52373%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52373%_
                                         (let ((__tmp83966
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52373%_
                                            __tmp83966)))
                                     (let _%loop52380%_ ((_%tail52382%_
                                                          _%precedence-list52373%_)
                                                         (_%head52383%_ '()))
                                       (let* ((_%tail5238452392%_
                                               _%tail52382%_)
                                              (_%else5238652400%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52383%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5238852406%_
                                               (lambda (_%rest52403%_
                                                        _%hd52404%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52404%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52382%_)
                    _%head52383%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52380%_
                                                      _%rest52403%_
                                                      (cons _%hd52404%_
                                                            _%head52383%_))))))
                                         (if (pair? _%tail5238452392%_)
                                             (let ((_%hd5238952409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5238452392%_)))
                                                   (_%tl5239052411%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5238452392%_))))
                                               (let* ((_%hd52414%_
                                                       _%hd5238952409%_)
                                                      (_%rest52416%_
                                                       _%tl5239052411%_))
                                                 (_%K5238852406%_
                                                  _%rest52416%_
                                                  _%hd52414%_)))
                                             (_%else5238652400%_)))))))))
                    (let ((__obj83921 _%klass52363%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83921
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj83921
                             _%precedence-list52418%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83921
                           'precedence-list
                           _%precedence-list52418%_)))
                    _%precedence-list52418%_)))))))))
