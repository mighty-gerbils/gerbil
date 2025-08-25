(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1756156295)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass55475%_)
      (let ((_%$e55477%_
             (let ((__obj91298 _%klass55475%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj91298
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj91298 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj91298
                    'precedence-list)))))
        (if _%$e55477%_
            _%$e55477%_
            (let ((_g91353_
                   (c4-linearize
                    '()
                    (let ((__obj91299 _%klass55475%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91299
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91299 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91299
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id55481%_)
                      (cons _%klass-id55481%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id55481%_))))
                    'struct:
                    (lambda (_%klass-id55483%_)
                      (let ((__obj91300
                             (gx#syntax-local-value _%klass-id55483%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj91300
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj91300
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj91300
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g91354_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g91353_)
                             (##values-length _g91353_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g91354_ 2)))
                      (error "Context expects 2 values" _g91354_)))
                (let ((_%precedence-list55485%_
                       (let () (declare (not safe)) (##values-ref _g91353_ 0)))
                      (_%base-struct55486%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g91353_ 1))))
                  (let ((_%precedence-list55530%_
                         (if (let ((__tmp91355
                                    (let ((__obj91301 _%klass55475%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj91301
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj91301
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj91301
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp91355 '(t object class)))
                             _%precedence-list55485%_
                             (if (member ':object
                                         _%precedence-list55485%_
                                         gx#free-identifier=?)
                                 _%precedence-list55485%_
                                 (if (let ((__obj91302 _%klass55475%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj91302
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj91302
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj91302
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list55485%_
                                                 gx#free-identifier=?)
                                         _%precedence-list55485%_
                                         (let ((__tmp91356
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list55485%_
                                            __tmp91356)))
                                     (let _%loop55492%_ ((_%tail55494%_
                                                          _%precedence-list55485%_)
                                                         (_%head55495%_ '()))
                                       (let* ((_%tail5549655504%_
                                               _%tail55494%_)
                                              (_%else5549855512%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head55495%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5550055518%_
                                               (lambda (_%rest55515%_
                                                        _%hd55516%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd55516%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail55494%_)
                    _%head55495%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop55492%_
                                                      _%rest55515%_
                                                      (cons _%hd55516%_
                                                            _%head55495%_))))))
                                         (if (pair? _%tail5549655504%_)
                                             (let ((_%hd5550155521%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5549655504%_)))
                                                   (_%tl5550255523%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5549655504%_))))
                                               (let* ((_%hd55526%_
                                                       _%hd5550155521%_)
                                                      (_%rest55528%_
                                                       _%tl5550255523%_))
                                                 (_%K5550055518%_
                                                  _%rest55528%_
                                                  _%hd55526%_)))
                                             (_%else5549855512%_)))))))))
                    (let ((__obj91303 _%klass55475%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91303
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj91303
                             _%precedence-list55530%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91303
                           'precedence-list
                           _%precedence-list55530%_)))
                    _%precedence-list55530%_)))))))))
