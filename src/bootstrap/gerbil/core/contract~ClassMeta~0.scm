(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770338916)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57047%_)
      (let ((_%$e57049%_
             (let ((__obj97007 _%klass57047%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj97007
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj97007 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj97007
                    'precedence-list)))))
        (if _%$e57049%_
            _%$e57049%_
            (let ((_g97064_
                   (c4-linearize
                    '()
                    (let ((__obj97008 _%klass57047%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97008
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97008 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97008
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57053%_)
                      (cons _%klass-id57053%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57053%_))))
                    'struct:
                    (lambda (_%klass-id57055%_)
                      (let ((__obj97009
                             (gx#syntax-local-value _%klass-id57055%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97009
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97009
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj97009
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g97065_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97064_)
                             (##values-length _g97064_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97065_ 2)))
                      (error "Context expects 2 values" _g97065_)))
                (let ((_%precedence-list57057%_
                       (let () (declare (not safe)) (##values-ref _g97064_ 0)))
                      (_%base-struct57058%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g97064_ 1))))
                  (let ((_%precedence-list57102%_
                         (if (let ((__tmp97066
                                    (let ((__obj97010 _%klass57047%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj97010
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj97010
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj97010
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp97066 '(t object class)))
                             _%precedence-list57057%_
                             (if (member ':object
                                         _%precedence-list57057%_
                                         gx#free-identifier=?)
                                 _%precedence-list57057%_
                                 (if (let ((__obj97011 _%klass57047%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj97011
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj97011
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj97011
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57057%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57057%_
                                         (let ((__tmp97067
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57057%_
                                            __tmp97067)))
                                     (let _%loop57064%_ ((_%tail57066%_
                                                          _%precedence-list57057%_)
                                                         (_%head57067%_ '()))
                                       (let* ((_%tail5706857076%_
                                               _%tail57066%_)
                                              (_%else5707057084%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5707257090%_
                                               (lambda (_%rest57087%_
                                                        _%hd57088%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57088%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57066%_)
                    _%head57067%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57064%_
                                                      _%rest57087%_
                                                      (cons _%hd57088%_
                                                            _%head57067%_))))))
                                         (if (pair? _%tail5706857076%_)
                                             (let ((_%hd5707357093%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5706857076%_)))
                                                   (_%tl5707457095%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5706857076%_))))
                                               (let* ((_%hd57098%_
                                                       _%hd5707357093%_)
                                                      (_%rest57100%_
                                                       _%tl5707457095%_))
                                                 (_%K5707257090%_
                                                  _%rest57100%_
                                                  _%hd57098%_)))
                                             (_%else5707057084%_)))))))))
                    (let ((__obj97012 _%klass57047%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97012
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj97012
                             _%precedence-list57102%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97012
                           'precedence-list
                           _%precedence-list57102%_)))
                    _%precedence-list57102%_)))))))))
