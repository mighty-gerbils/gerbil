(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770513289)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57297%_)
      (let ((_%$e57299%_
             (let ((__obj97646 _%klass57297%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj97646
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj97646 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj97646
                    'precedence-list)))))
        (if _%$e57299%_
            _%$e57299%_
            (let ((_g97703_
                   (c4-linearize
                    '()
                    (let ((__obj97647 _%klass57297%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97647
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97647 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97647
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57303%_)
                      (cons _%klass-id57303%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57303%_))))
                    'struct:
                    (lambda (_%klass-id57305%_)
                      (let ((__obj97648
                             (gx#syntax-local-value _%klass-id57305%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97648
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97648
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj97648
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g97704_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97703_)
                             (##values-length _g97703_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97704_ 2)))
                      (error "Context expects 2 values" _g97704_)))
                (let ((_%precedence-list57307%_
                       (let () (declare (not safe)) (##values-ref _g97703_ 0)))
                      (_%base-struct57308%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g97703_ 1))))
                  (let ((_%precedence-list57352%_
                         (if (let ((__tmp97705
                                    (let ((__obj97649 _%klass57297%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj97649
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj97649
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj97649
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp97705 '(t object class)))
                             _%precedence-list57307%_
                             (if (member ':object
                                         _%precedence-list57307%_
                                         gx#free-identifier=?)
                                 _%precedence-list57307%_
                                 (if (let ((__obj97650 _%klass57297%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj97650
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj97650
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj97650
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57307%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57307%_
                                         (let ((__tmp97706
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57307%_
                                            __tmp97706)))
                                     (let _%loop57314%_ ((_%tail57316%_
                                                          _%precedence-list57307%_)
                                                         (_%head57317%_ '()))
                                       (let* ((_%tail5731857326%_
                                               _%tail57316%_)
                                              (_%else5732057334%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5732257340%_
                                               (lambda (_%rest57337%_
                                                        _%hd57338%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57338%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57316%_)
                    _%head57317%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57314%_
                                                      _%rest57337%_
                                                      (cons _%hd57338%_
                                                            _%head57317%_))))))
                                         (if (pair? _%tail5731857326%_)
                                             (let ((_%hd5732357343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5731857326%_)))
                                                   (_%tl5732457345%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5731857326%_))))
                                               (let* ((_%hd57348%_
                                                       _%hd5732357343%_)
                                                      (_%rest57350%_
                                                       _%tl5732457345%_))
                                                 (_%K5732257340%_
                                                  _%rest57350%_
                                                  _%hd57348%_)))
                                             (_%else5732057334%_)))))))))
                    (let ((__obj97651 _%klass57297%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97651
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj97651
                             _%precedence-list57352%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97651
                           'precedence-list
                           _%precedence-list57352%_)))
                    _%precedence-list57352%_)))))))))
