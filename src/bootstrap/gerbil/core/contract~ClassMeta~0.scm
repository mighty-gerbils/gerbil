(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1769384623)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57004%_)
      (let ((_%$e57006%_
             (let ((__obj92525 _%klass57004%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj92525
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj92525 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj92525
                    'precedence-list)))))
        (if _%$e57006%_
            _%$e57006%_
            (let ((_g92581_
                   (c4-linearize
                    '()
                    (let ((__obj92526 _%klass57004%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92526
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92526 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92526
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57010%_)
                      (cons _%klass-id57010%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57010%_))))
                    'struct:
                    (lambda (_%klass-id57012%_)
                      (let ((__obj92527
                             (gx#syntax-local-value _%klass-id57012%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj92527
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj92527
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj92527
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g92582_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g92581_)
                             (##values-length _g92581_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g92582_ 2)))
                      (error "Context expects 2 values" _g92582_)))
                (let ((_%precedence-list57014%_
                       (let () (declare (not safe)) (##values-ref _g92581_ 0)))
                      (_%base-struct57015%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g92581_ 1))))
                  (let ((_%precedence-list57059%_
                         (if (let ((__tmp92583
                                    (let ((__obj92528 _%klass57004%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj92528
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj92528
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj92528
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp92583 '(t object class)))
                             _%precedence-list57014%_
                             (if (member ':object
                                         _%precedence-list57014%_
                                         gx#free-identifier=?)
                                 _%precedence-list57014%_
                                 (if (let ((__obj92529 _%klass57004%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj92529
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj92529
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj92529
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57014%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57014%_
                                         (let ((__tmp92584
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57014%_
                                            __tmp92584)))
                                     (let _%loop57021%_ ((_%tail57023%_
                                                          _%precedence-list57014%_)
                                                         (_%head57024%_ '()))
                                       (let* ((_%tail5702557033%_
                                               _%tail57023%_)
                                              (_%else5702757041%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5702957047%_
                                               (lambda (_%rest57044%_
                                                        _%hd57045%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57045%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57023%_)
                    _%head57024%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57021%_
                                                      _%rest57044%_
                                                      (cons _%hd57045%_
                                                            _%head57024%_))))))
                                         (if (pair? _%tail5702557033%_)
                                             (let ((_%hd5703057050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5702557033%_)))
                                                   (_%tl5703157052%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5702557033%_))))
                                               (let* ((_%hd57055%_
                                                       _%hd5703057050%_)
                                                      (_%rest57057%_
                                                       _%tl5703157052%_))
                                                 (_%K5702957047%_
                                                  _%rest57057%_
                                                  _%hd57055%_)))
                                             (_%else5702757041%_)))))))))
                    (let ((__obj92530 _%klass57004%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92530
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj92530
                             _%precedence-list57059%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92530
                           'precedence-list
                           _%precedence-list57059%_)))
                    _%precedence-list57059%_)))))))))
