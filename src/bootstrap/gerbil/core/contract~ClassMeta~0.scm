(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1712784661)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass52408%_)
      (let ((_%$e52410%_
             (let ((__obj81527 _%klass52408%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj81527
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj81527 '5 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj81527
                    'precedence-list)))))
        (if _%$e52410%_
            _%$e52410%_
            (let ((_g81574_
                   (c4-linearize
                    '()
                    (let ((__obj81528 _%klass52408%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj81528
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj81528 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj81528
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id52414%_)
                      (cons _%klass-id52414%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id52414%_))))
                    'struct:
                    (lambda (_%klass-id52416%_)
                      (let ((__obj81529
                             (gx#syntax-local-value _%klass-id52416%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj81529
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj81529
                               '7
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj81529
                             'struct?))))
                    'eq:
                    gx#free-identifier=?
                    'get-name:
                    gx#stx-e)))
              (begin
                (let ((_g81575_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g81574_)
                             (##vector-length _g81574_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g81575_ 2)))
                      (error "Context expects 2 values" _g81575_)))
                (let ((_%precedence-list52418%_
                       (let () (declare (not safe)) (##vector-ref _g81574_ 0)))
                      (_%base-struct52419%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g81574_ 1))))
                  (let ((_%precedence-list52463%_
                         (if (let ((__tmp81576
                                    (let ((__obj81530 _%klass52408%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj81530
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj81530
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj81530
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp81576 '(t object class)))
                             _%precedence-list52418%_
                             (if (member ':object
                                         _%precedence-list52418%_
                                         gx#free-identifier=?)
                                 _%precedence-list52418%_
                                 (if (let ((__obj81531 _%klass52408%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj81531
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj81531
                                              '9
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj81531
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list52418%_
                                                 gx#free-identifier=?)
                                         _%precedence-list52418%_
                                         (let ((__tmp81577
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list52418%_
                                            __tmp81577)))
                                     (let _%loop52425%_ ((_%tail52427%_
                                                          _%precedence-list52418%_)
                                                         (_%head52428%_ '()))
                                       (let* ((_%tail5242952437%_
                                               _%tail52427%_)
                                              (_%else5243152445%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head52428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5243352451%_
                                               (lambda (_%rest52448%_
                                                        _%hd52449%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd52449%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail52427%_)
                    _%head52428%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop52425%_
                                                      _%rest52448%_
                                                      (cons _%hd52449%_
                                                            _%head52428%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _%tail5242952437%_))
                                             (let ((_%hd5243452454%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5242952437%_)))
                                                   (_%tl5243552456%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5242952437%_))))
                                               (let* ((_%hd52459%_
                                                       _%hd5243452454%_)
                                                      (_%rest52461%_
                                                       _%tl5243552456%_))
                                                 (_%K5243352451%_
                                                  _%rest52461%_
                                                  _%hd52459%_)))
                                             (_%else5243152445%_)))))))))
                    (let ((__obj81532 _%klass52408%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj81532
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj81532
                             _%precedence-list52463%_
                             '5
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj81532
                           'precedence-list
                           _%precedence-list52463%_)))
                    _%precedence-list52463%_)))))))))
