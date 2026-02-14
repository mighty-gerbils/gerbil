(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1771104492)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57845%_)
      (let ((_%$e57847%_
             (let ((__obj100065 _%klass57845%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj100065
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj100065 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj100065
                    'precedence-list)))))
        (if _%$e57847%_
            _%$e57847%_
            (let ((_g100122_
                   (c4-linearize
                    '()
                    (let ((__obj100066 _%klass57845%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100066
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj100066 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100066
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57851%_)
                      (cons _%klass-id57851%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57851%_))))
                    'struct:
                    (lambda (_%klass-id57853%_)
                      (let ((__obj100067
                             (gx#syntax-local-value _%klass-id57853%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100067
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100067
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100067
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g100123_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g100122_)
                             (##values-length _g100122_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100123_ 2)))
                      (error "Context expects 2 values" _g100123_)))
                (let ((_%precedence-list57855%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100122_ 0)))
                      (_%base-struct57856%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100122_ 1))))
                  (let ((_%precedence-list57900%_
                         (if (let ((__tmp100124
                                    (let ((__obj100068 _%klass57845%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj100068
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj100068
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj100068
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp100124 '(t object class)))
                             _%precedence-list57855%_
                             (if (member ':object
                                         _%precedence-list57855%_
                                         gx#free-identifier=?)
                                 _%precedence-list57855%_
                                 (if (let ((__obj100069 _%klass57845%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj100069
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj100069
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj100069
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57855%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57855%_
                                         (let ((__tmp100125
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57855%_
                                            __tmp100125)))
                                     (let _%loop57862%_ ((_%tail57864%_
                                                          _%precedence-list57855%_)
                                                         (_%head57865%_ '()))
                                       (let* ((_%tail5786657874%_
                                               _%tail57864%_)
                                              (_%else5786857882%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57865%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5787057888%_
                                               (lambda (_%rest57885%_
                                                        _%hd57886%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57886%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57864%_)
                    _%head57865%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57862%_
                                                      _%rest57885%_
                                                      (cons _%hd57886%_
                                                            _%head57865%_))))))
                                         (if (pair? _%tail5786657874%_)
                                             (let ((_%hd5787157891%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5786657874%_)))
                                                   (_%tl5787257893%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5786657874%_))))
                                               (let* ((_%hd57896%_
                                                       _%hd5787157891%_)
                                                      (_%rest57898%_
                                                       _%tl5787257893%_))
                                                 (_%K5787057888%_
                                                  _%rest57898%_
                                                  _%hd57896%_)))
                                             (_%else5786857882%_)))))))))
                    (let ((__obj100070 _%klass57845%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100070
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj100070
                             _%precedence-list57900%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100070
                           'precedence-list
                           _%precedence-list57900%_)))
                    _%precedence-list57900%_)))))))))
