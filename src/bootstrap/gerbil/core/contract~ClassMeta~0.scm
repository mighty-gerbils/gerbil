(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1734225189)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52396%_)
      (let ((_%$e52398%_
             (let ((__obj84759 _%klass52396%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj84759
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj84759 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj84759
                    'precedence-list)))))
        (if _%$e52398%_
            _%$e52398%_
            (let ((_g84812_
                   (c4-linearize
                    '()
                    (let ((__obj84760 _%klass52396%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84760
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj84760 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84760
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52402%_)
                      (cons _%klass-id52402%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52402%_))))
                    'struct:
                    (lambda (_%klass-id52404%_)
                      (let ((__obj84761
                             (gx#syntax-local-value _%klass-id52404%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84761
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84761
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj84761
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g84813_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g84812_)
                             (##values-length _g84812_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g84813_ 2)))
                      (error "Context expects 2 values" _g84813_)))
                (let ((_%precedence-list52406%_
                       (let () (declare (not safe)) (##values-ref _g84812_ 0)))
                      (_%base-struct52407%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g84812_ 1))))
                  (let ((_%precedence-list52451%_
                         (if (let ((__tmp84814
                                    (let ((__obj84762 _%klass52396%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj84762
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj84762
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj84762
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp84814 '(t object class)))
                             _%precedence-list52406%_
                             (if (member ':object
                                         _%precedence-list52406%_
                                         gx#free-identifier=?)
                                 _%precedence-list52406%_
                                 (if (let ((__obj84763 _%klass52396%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84763
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84763
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84763
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52406%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52406%_
                                         (let ((__tmp84815
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52406%_
                                            __tmp84815)))
                                     (let _%loop52413%_ ((_%tail52415%_
                                                          _%precedence-list52406%_)
                                                         (_%head52416%_ '()))
                                       (let* ((_%tail5241752425%_
                                               _%tail52415%_)
                                              (_%else5241952433%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52416%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5242152439%_
                                               (lambda (_%rest52436%_
                                                        _%hd52437%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52437%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52415%_)
                    _%head52416%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52413%_
                                                      _%rest52436%_
                                                      (cons _%hd52437%_
                                                            _%head52416%_))))))
                                         (if (pair? _%tail5241752425%_)
                                             (let ((_%hd5242252442%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5241752425%_)))
                                                   (_%tl5242352444%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5241752425%_))))
                                               (let* ((_%hd52447%_
                                                       _%hd5242252442%_)
                                                      (_%rest52449%_
                                                       _%tl5242352444%_))
                                                 (_%K5242152439%_
                                                  _%rest52449%_
                                                  _%hd52447%_)))
                                             (_%else5241952433%_)))))))))
                    (let ((__obj84764 _%klass52396%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj84764
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj84764
                             _%precedence-list52451%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj84764
                           'precedence-list
                           _%precedence-list52451%_)))
                    _%precedence-list52451%_)))))))))
