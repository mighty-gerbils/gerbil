(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1770405367)
  (define gerbil/core/contract~ClassMeta#!class-precedence-list
    (lambda (_%klass57284%_)
      (let ((_%$e57286%_
             (let ((__obj97558 _%klass57284%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj97558
                      'gerbil.core#class-type-info::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj97558 '6 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#class-type-info::t
                    __obj97558
                    'precedence-list)))))
        (if _%$e57286%_
            _%$e57286%_
            (let ((_g97615_
                   (c4-linearize
                    '()
                    (let ((__obj97559 _%klass57284%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97559
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj97559 '4 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97559
                           'super)))
                    'get-precedence-list:
                    (lambda (_%klass-id57290%_)
                      (cons _%klass-id57290%_
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             (gx#syntax-local-value _%klass-id57290%_))))
                    'struct:
                    (lambda (_%klass-id57292%_)
                      (let ((__obj97560
                             (gx#syntax-local-value _%klass-id57292%_)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj97560
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj97560
                               '8
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj97560
                             'struct?))))
                    'eq:
                    gx#free-identifier=?)))
              (begin
                (let ((_g97616_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97615_)
                             (##values-length _g97615_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97616_ 2)))
                      (error "Context expects 2 values" _g97616_)))
                (let ((_%precedence-list57294%_
                       (let () (declare (not safe)) (##values-ref _g97615_ 0)))
                      (_%base-struct57295%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g97615_ 1))))
                  (let ((_%precedence-list57339%_
                         (if (let ((__tmp97617
                                    (let ((__obj97561 _%klass57284%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj97561
                                             'gerbil.core#class-type-info::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj97561
                                             '1
                                             '#f
                                             '#f))
                                          (class-slot-ref
                                           gerbil/core/mop~MOP-2#class-type-info::t
                                           __obj97561
                                           'id)))))
                               (declare (not safe))
                               (##memq __tmp97617 '(t object class)))
                             _%precedence-list57294%_
                             (if (member ':object
                                         _%precedence-list57294%_
                                         gx#free-identifier=?)
                                 _%precedence-list57294%_
                                 (if (let ((__obj97562 _%klass57284%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj97562
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj97562
                                              '10
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj97562
                                            'system?)))
                                     (if (member ':t
                                                 _%precedence-list57294%_
                                                 gx#free-identifier=?)
                                         _%precedence-list57294%_
                                         (let ((__tmp97618
                                                (cons (gx#core-quote-syntax
                                                       ':t)
                                                      '())))
                                           (declare (not safe))
                                           (##append
                                            _%precedence-list57294%_
                                            __tmp97618)))
                                     (let _%loop57301%_ ((_%tail57303%_
                                                          _%precedence-list57294%_)
                                                         (_%head57304%_ '()))
                                       (let* ((_%tail5730557313%_
                                               _%tail57303%_)
                                              (_%else5730757321%_
                                               (lambda ()
                                                 (foldl cons
                                                        (cons (gx#core-quote-syntax
                                                               ':object)
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':t)
                            '()))
                _%head57304%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%K5730957327%_
                                               (lambda (_%rest57324%_
                                                        _%hd57325%_)
                                                 (if (gx#free-identifier=?
                                                      _%hd57325%_
                                                      ':t)
                                                     (foldl cons
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           ':object)
                          _%tail57303%_)
                    _%head57304%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%loop57301%_
                                                      _%rest57324%_
                                                      (cons _%hd57325%_
                                                            _%head57304%_))))))
                                         (if (pair? _%tail5730557313%_)
                                             (let ((_%hd5731057330%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%tail5730557313%_)))
                                                   (_%tl5731157332%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%tail5730557313%_))))
                                               (let* ((_%hd57335%_
                                                       _%hd5731057330%_)
                                                      (_%rest57337%_
                                                       _%tl5731157332%_))
                                                 (_%K5730957327%_
                                                  _%rest57337%_
                                                  _%hd57335%_)))
                                             (_%else5730757321%_)))))))))
                    (let ((__obj97563 _%klass57284%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj97563
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             __obj97563
                             _%precedence-list57339%_
                             '6
                             '#f
                             '#f))
                          (class-slot-set!
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj97563
                           'precedence-list
                           _%precedence-list57339%_)))
                    _%precedence-list57339%_)))))))))
