(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770342542)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57047%_)
      (let ((_%$e57049%_
             (let ((__obj97321 _%klass57047%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj97321
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj97321 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj97321
                    'precedence-list)))))
        (if _%$e57049%_
            _%$e57049%_
            (let ((_g97378_
                   (c4-linearize
                    '()
                    (let ((__obj97322 _%klass57047%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97322
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97322 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97322
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57053%_)
                      (cons _%klass-id57053%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57053%_))))
                    'struct:
                    (lambda (_%klass-id57055%_)
                      (let ((__obj97323
                             (gx#syntax-local-value _%klass-id57055%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97323
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97323
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj97323
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g97379_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97378_)
                             (##values-length _g97378_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97379_ 2)))
                      (error "Context expects 2 values" _g97379_)))
                (let ((_%precedence-list57057%_
                       (let () (declare (not safe)) (##values-ref _g97378_ 0)))
                      (_%base-struct57058%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g97378_ 1))))
                  (let ((_%precedence-list57102%_
                         (if (let ((__tmp97380
                                    (let ((__obj97324 _%klass57047%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj97324
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj97324
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj97324
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp97380 '(t object class)))
                             _%precedence-list57057%_
                             (if (member ':object
                                         _%precedence-list57057%_
                                         gx#free-identifier=?)
                                 _%precedence-list57057%_
                                 (if (let ((__obj97325 _%klass57047%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj97325
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj97325
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj97325
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57057%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57057%_
                                         (let ((__tmp97381
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57057%_
                                            __tmp97381)))
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
                    (let ((__obj97326 _%klass57047%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97326
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj97326
                             _%precedence-list57102%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97326
                           'precedence-list
                           _%precedence-list57102%_)))
                    _%precedence-list57102%_)))))))))
