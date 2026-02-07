(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770505702)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57290%_)
      (let ((_%$e57292%_
             (let ((__obj97564 _%klass57290%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj97564
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj97564 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj97564
                    'precedence-list)))))
        (if _%$e57292%_
            _%$e57292%_
            (let ((_g97621_
                   (c4-linearize
                    '()
                    (let ((__obj97565 _%klass57290%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97565
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97565 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97565
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57296%_)
                      (cons _%klass-id57296%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57296%_))))
                    'struct:
                    (lambda (_%klass-id57298%_)
                      (let ((__obj97566
                             (gx#syntax-local-value _%klass-id57298%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97566
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97566
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj97566
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g97622_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97621_)
                             (##values-length _g97621_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97622_ 2)))
                      (error "Context expects 2 values" _g97622_)))
                (let ((_%precedence-list57300%_
                       (let () (declare (not safe)) (##values-ref _g97621_ 0)))
                      (_%base-struct57301%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g97621_ 1))))
                  (let ((_%precedence-list57345%_
                         (if (let ((__tmp97623
                                    (let ((__obj97567 _%klass57290%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj97567
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj97567
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj97567
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp97623 '(t object class)))
                             _%precedence-list57300%_
                             (if (member ':object
                                         _%precedence-list57300%_
                                         gx#free-identifier=?)
                                 _%precedence-list57300%_
                                 (if (let ((__obj97568 _%klass57290%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj97568
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj97568
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj97568
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57300%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57300%_
                                         (let ((__tmp97624
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57300%_
                                            __tmp97624)))
                                     (let _%loop57307%_ ((_%tail57309%_
                                                          _%precedence-list57300%_)
                                                         (_%head57310%_ '()))
                                       (let* ((_%tail5731157319%_
                                               _%tail57309%_)
                                              (_%else5731357327%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5731557333%_
                                               (lambda (_%rest57330%_
                                                        _%hd57331%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57331%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57309%_)
                    _%head57310%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57307%_
                                                      _%rest57330%_
                                                      (cons _%hd57331%_
                                                            _%head57310%_))))))
                                         (if (pair? _%tail5731157319%_)
                                             (let ((_%hd5731657336%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5731157319%_)))
                                                   (_%tl5731757338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5731157319%_))))
                                               (let* ((_%hd57341%_
                                                       _%hd5731657336%_)
                                                      (_%rest57343%_
                                                       _%tl5731757338%_))
                                                 (_%K5731557333%_
                                                  _%rest57343%_
                                                  _%hd57341%_)))
                                             (_%else5731357327%_)))))))))
                    (let ((__obj97569 _%klass57290%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97569
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj97569
                             _%precedence-list57345%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97569
                           'precedence-list
                           _%precedence-list57345%_)))
                    _%precedence-list57345%_)))))))))
