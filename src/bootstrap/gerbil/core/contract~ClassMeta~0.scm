(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1771092621)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57826%_)
      (let ((_%$e57828%_
             (let ((__obj100046 _%klass57826%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj100046
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj100046 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj100046
                    'precedence-list)))))
        (if _%$e57828%_
            _%$e57828%_
            (let ((_g100103_
                   (c4-linearize
                    '()
                    (let ((__obj100047 _%klass57826%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100047
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj100047 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100047
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57832%_)
                      (cons _%klass-id57832%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57832%_))))
                    'struct:
                    (lambda (_%klass-id57834%_)
                      (let ((__obj100048
                             (gx#syntax-local-value _%klass-id57834%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj100048
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj100048
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj100048
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g100104_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g100103_)
                             (##values-length _g100103_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100104_ 2)))
                      (error "Context expects 2 values" _g100104_)))
                (let ((_%precedence-list57836%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100103_ 0)))
                      (_%base-struct57837%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100103_ 1))))
                  (let ((_%precedence-list57881%_
                         (if (let ((__tmp100105
                                    (let ((__obj100049 _%klass57826%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj100049
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj100049
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj100049
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp100105 '(t object class)))
                             _%precedence-list57836%_
                             (if (member ':object
                                         _%precedence-list57836%_
                                         gx#free-identifier=?)
                                 _%precedence-list57836%_
                                 (if (let ((__obj100050 _%klass57826%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj100050
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj100050
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj100050
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57836%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57836%_
                                         (let ((__tmp100106
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57836%_
                                            __tmp100106)))
                                     (let _%loop57843%_ ((_%tail57845%_
                                                          _%precedence-list57836%_)
                                                         (_%head57846%_ '()))
                                       (let* ((_%tail5784757855%_
                                               _%tail57845%_)
                                              (_%else5784957863%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5785157869%_
                                               (lambda (_%rest57866%_
                                                        _%hd57867%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57867%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57845%_)
                    _%head57846%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57843%_
                                                      _%rest57866%_
                                                      (cons _%hd57867%_
                                                            _%head57846%_))))))
                                         (if (pair? _%tail5784757855%_)
                                             (let ((_%hd5785257872%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5784757855%_)))
                                                   (_%tl5785357874%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5784757855%_))))
                                               (let* ((_%hd57877%_
                                                       _%hd5785257872%_)
                                                      (_%rest57879%_
                                                       _%tl5785357874%_))
                                                 (_%K5785157869%_
                                                  _%rest57879%_
                                                  _%hd57877%_)))
                                             (_%else5784957863%_)))))))))
                    (let ((__obj100051 _%klass57826%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100051
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj100051
                             _%precedence-list57881%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100051
                           'precedence-list
                           _%precedence-list57881%_)))
                    _%precedence-list57881%_)))))))))
