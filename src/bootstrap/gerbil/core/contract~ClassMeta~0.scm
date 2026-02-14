(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1771030465)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57240%_)
      (let ((_%$e57242%_
             (let ((__obj99456 _%klass57240%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj99456
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj99456 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj99456
                    'precedence-list)))))
        (if _%$e57242%_
            _%$e57242%_
            (let ((_g99513_
                   (c4-linearize
                    '()
                    (let ((__obj99457 _%klass57240%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj99457
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj99457 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj99457
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57246%_)
                      (cons _%klass-id57246%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57246%_))))
                    'struct:
                    (lambda (_%klass-id57248%_)
                      (let ((__obj99458
                             (gx#syntax-local-value _%klass-id57248%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj99458
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj99458
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj99458
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g99514_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g99513_)
                             (##values-length _g99513_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g99514_ 2)))
                      (error "Context expects 2 values" _g99514_)))
                (let ((_%precedence-list57250%_
                       (let () (declare (not safe)) (##values-ref _g99513_ 0)))
                      (_%base-struct57251%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g99513_ 1))))
                  (let ((_%precedence-list57295%_
                         (if (let ((__tmp99515
                                    (let ((__obj99459 _%klass57240%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj99459
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj99459
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj99459
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp99515 '(t object class)))
                             _%precedence-list57250%_
                             (if (member ':object
                                         _%precedence-list57250%_
                                         gx#free-identifier=?)
                                 _%precedence-list57250%_
                                 (if (let ((__obj99460 _%klass57240%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj99460
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj99460
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj99460
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57250%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57250%_
                                         (let ((__tmp99516
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57250%_
                                            __tmp99516)))
                                     (let _%loop57257%_ ((_%tail57259%_
                                                          _%precedence-list57250%_)
                                                         (_%head57260%_ '()))
                                       (let* ((_%tail5726157269%_
                                               _%tail57259%_)
                                              (_%else5726357277%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5726557283%_
                                               (lambda (_%rest57280%_
                                                        _%hd57281%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57281%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57259%_)
                    _%head57260%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57257%_
                                                      _%rest57280%_
                                                      (cons _%hd57281%_
                                                            _%head57260%_))))))
                                         (if (pair? _%tail5726157269%_)
                                             (let ((_%hd5726657286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5726157269%_)))
                                                   (_%tl5726757288%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5726157269%_))))
                                               (let* ((_%hd57291%_
                                                       _%hd5726657286%_)
                                                      (_%rest57293%_
                                                       _%tl5726757288%_))
                                                 (_%K5726557283%_
                                                  _%rest57293%_
                                                  _%hd57291%_)))
                                             (_%else5726357277%_)))))))))
                    (let ((__obj99461 _%klass57240%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj99461
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj99461
                             _%precedence-list57295%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj99461
                           'precedence-list
                           _%precedence-list57295%_)))
                    _%precedence-list57295%_)))))))))
