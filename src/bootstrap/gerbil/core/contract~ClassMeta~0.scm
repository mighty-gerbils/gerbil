(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770744569)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57297%_)
      (let ((_%$e57299%_
             (let ((__obj98714 _%klass57297%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj98714
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj98714 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj98714
                    'precedence-list)))))
        (if _%$e57299%_
            _%$e57299%_
            (let ((_g98771_
                   (c4-linearize
                    '()
                    (let ((__obj98715 _%klass57297%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj98715
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj98715 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj98715
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57303%_)
                      (cons _%klass-id57303%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57303%_))))
                    'struct:
                    (lambda (_%klass-id57305%_)
                      (let ((__obj98716
                             (gx#syntax-local-value _%klass-id57305%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj98716
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj98716
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj98716
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g98772_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98771_)
                             (##values-length _g98771_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98772_ 2)))
                      (error "Context expects 2 values" _g98772_)))
                (let ((_%precedence-list57307%_
                       (let () (declare (not safe)) (##values-ref _g98771_ 0)))
                      (_%base-struct57308%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g98771_ 1))))
                  (let ((_%precedence-list57352%_
                         (if (let ((__tmp98773
                                    (let ((__obj98717 _%klass57297%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj98717
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj98717
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj98717
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp98773 '(t object class)))
                             _%precedence-list57307%_
                             (if (member ':object
                                         _%precedence-list57307%_
                                         gx#free-identifier=?)
                                 _%precedence-list57307%_
                                 (if (let ((__obj98718 _%klass57297%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj98718
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj98718
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj98718
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57307%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57307%_
                                         (let ((__tmp98774
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57307%_
                                            __tmp98774)))
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
                    (let ((__obj98719 _%klass57297%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj98719
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj98719
                             _%precedence-list57352%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj98719
                           'precedence-list
                           _%precedence-list57352%_)))
                    _%precedence-list57352%_)))))))))
